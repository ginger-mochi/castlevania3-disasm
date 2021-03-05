nse_execSq_SetVolume:
    lda wChannelIdx_a1
    bne nse_execChannelCommands_A ; guaranteed jump


nse_execSq_SetEcho:
    lda wChannelIdx_a1
    bne nse_execChannelCommands_A ; guaranteed jump


nse_execSq_SetEchoVolume:
    ldx wChannelIdx_a1
    ; fallthrough nse_execChannelCommands

; preconditions:
;    wChannelIdx_a1 = channel idx + 1
;    x = channel index + 1
nse_execChannelCommands:
    txa
    ; fallthrough nse_execChannelCommands_A

; preconditions: 
;    wChannelIdx_a1 = channel idx + 1
;    A = channel_idx + 1
nse_execChannelCommands_A:
    ; retrieve command byte for channel idx
    nse_nextMacroByte_inline ; OPTIMIZE: consider making this non-inlined?
    ; A is now the next command byte
    ; X is now 3*(channel_idx+1)

    cpx #(DPCM+1)*3
    beq nse_execDPCM
    cpx #(NSE_CONDUCTOR+1)*3
    beq nse_execConductor
    bne nse_execSqTriNoise ; guaranteed jump

; preconditions:
;   A = command byte
;   wChannelIdx_a1 = channel_idx + 1
;   X = channel_idx + 1
nse_exec_Note:
    sta wMusChannel_BasePitch-1, x
    ; fallthrough nse_exec_readInstrWait

nse_exec_readInstrWait:
    txa ; A <- channel idx + 1
    nse_nextMacroByte_inline ; A <- next phrase byte
    ; wNSE_genVar1 = channel_idx+1
    sta wNSE_genVar2 ; wNSE_genVar2 <- phrase byte

@setInstr:
    ; Y <- 2 * high nibble (i.e., 2 * new instrument)
    and #$F0
    ; OPTIMIZE: compare with cached instrument value?
    lsr
    lsr
    lsr
    tay
    
    ; X <- 2*(channel_idx + 1)
    asl wNSE_genVar1
    ldx wNSE_genVar1

    ; wSoundBankTempAddr2 <- wMusChannel_InstrTableAddr[channel_idx]
    lda wMusChannel_InstrTableAddr-2, X
    sta wSoundBankTempAddr2
    lda wMusChannel_InstrTableAddr-3, X
    sta wSoundBankTempAddr2+1
    
    ; wSoundBankTempAddr1 <- wInstrAddr[high nibble]
    lda (wSoundBankTempAddr2), Y
    sta wSoundBankTempAddr1
    iny
    lda (wSoundBankTempAddr2), Y
    sta wSoundBankTempAddr1+1

    ; X <- (channel base - wMacroStart)
    ; wNSE_genVar1 <- (channel end - wMacroStart)
    ; Y <- 0
    ldy wChannelIdx_a1
    lda @channelMacroEndAddrTable-1, y
    sta wNSE_genVar1
    ldx @channelMacroBaseAddrTable-1, y
    ldy #$0

    ; initialize macros to instrument defaults
    ; loop(channel macro data)
-   ; (macro.lo <- instrTable[y++]
    lda (wSoundBankTempAddr1), Y
    iny
    sta wMacro.start, x
    inx

    ; (macro.hi <- instrTable[y++]
    lda (wSoundBankTempAddr1), Y
    iny
    sta wMacro.start, x
    inx

    ; macro.offset <- 0
    lda #$0
    sta wMacro.start, x
    inx

    cpx wNSE_genVar1
    bmi -
    ; (end of loop)
    
@setWait:
    ldx wChannelIdx_a1
    jmp nse_execSetWaitFromLowNibbleGV2

@channelMacroBaseAddrTable:
    .db wMacro.Sq1_Base-wMacro.start
    .db wMacro.Sq1_Base-wMacro.start
    .db wMacro.Tri_Base-wMacro.start
    .db wMacro.Noise_Base-wMacro.start
    .db ; unused
    .db wMacro.Sq3_Base-wMacro.start
    .db wMacro.Sq4_Base-wMacro.start
@channelMacroEndAddrTable:
    .db wMacro.Sq1_End-wMacro.start
    .db wMacro.Sq2_End-wMacro.start
    .db wMacro.Tri_End-wMacro.start
    .db wMacro.Noise_End-wMacro.start
    .db wMacro.Sq3_End-wMacro.start
    .db wMacro.Sq4_End-wMacro.start

; preconditions:
;   A = amount to wait + 1
;   X = channel_idx + 1
nse_exec_Cut:
    ldy #$0
    sty wMusChannel_BaseVolume-1, x
    beq nse_setWait ; guaranteed jump

; preconditions:
;   wChannelIdx_a1 = channel_idx + 1
nse_exec_readVolWait:
    jsr nse_nextMacroByte
    ldx wChannelIdx_a1
    sta wNSE_genVar2

    ; volume[channel_idx] <- (high nibble)
    and #$F0
    lsr
    lsr
    lsr
    lsr
    sta wMusChannel_BaseVolume-1, x
    ; fallthrough

; preconditions:
;   X = channel_idx + 1
nse_execSetWaitFromLowNibbleGV2:
    lda wNSE_genVar2
    and #$0F
    ; fallthrough

; preconditions:
;   A = number of rows to wait + 1
;   X = channel_idx + 1
nse_setWait:
    sta wMusChannel_RowsToNextCommand_a1-1, x
    rts

; preconditions:
; A = (command - $90)
; command >= 90
nse_exec_effect:
; special case: if command == $ff, it's actually note A-0.
    cmp #$ff-#$90
    bne +
    lda #$0 ; $FF is an alias for 0 because macros cannot contain 0.
    beq nse_exec_Note ; guaranteed jump
; -----------------
; actual effects:
+   asl
    tay
    jsr jumpTableNoPreserveY
@nse_exec_effect_jumpTable:
    .dw nse_exec_effect_channelPitchOffset ; $90
    .dw nse_exec_effect_channelArpXY ; $91
    .dw nse_exec_effect_vibrato ; $92
    .dw nse_exec_effect_hardwareSweepUp ; $93
    .dw nse_exec_effect_hardwareSweepDown ; $94
    .dw nse_exec_effect_lengthCounter ; $95
    .dw nse_exec_effect_linearCounter ; $96

; preconditions:
;   A = command byte
;   wChannelIdx_a1 = channel_idx + 1
nse_execSqTriNoise:
    ldx wChannelIdx_a1
    cmp #$4E
    bcc nse_exec_Note
    beq nse_exec_readVolWait
    ; (+C)
    sbc #$90
    bcs nse_exec_effect
    ; (-C)
    adc #$90-#$50
    bpl nse_execSq_SetProperty
    ; fallthrough nse_execSq_Release

nse_execSq_Release:
    ; TODO
    rts
    
nse_execSq_SetProperty:
    sta wNSE_genVar2

    ; Y <- 2*(high nibble of command)
    and #$F0
    lsr
    lsr
    lsr
    tay

    ; A <- (low nibble of command)
    lda wNSE_genVar2
    and #$0F
    jsr jumpTableNoPreserveY
@nse_execSqSetProperty_JumpTable:
    .dw nse_exec_Cut ; $50-$5F
    .dw nse_execSq_SetEcho ; $60-$6F
    .dw nse_execSq_SetVolume ; $70-$7F
    .dw nse_execSq_SetEchoVolume ; $80-$8F