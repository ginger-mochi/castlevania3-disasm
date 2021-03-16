; songs (dummy)
nse_emptySong:
    .db SONG_MACRO_DATA_OFFSET
    .dsw NUM_CHANS, @nse_emptyChannelData ; channel data table
    .db $10 ; use the first pattern (empty music pattern)
    .db 0 ; end of loop

@nse_emptyChannelData:
@nse_nullTablePtr:
.rept $10
    .dw nullTable
.endr
@nse_silentPhrasePtr:
    .dw nse_silentPhrase

    
nse_silentPhrase:
    .db 1
    .db $5F
    .db 0

nse_emptySFX:
    ; channels in this sfx
    .rept 3
    .db 2 ; duration of sfx on this channel
    .dw nse_silentSFXPhrase
    .endr

nse_silentSFXPhrase:
    .db 0
    .db 0


; tables ---------------------------------------------------

; pointers to hardware struct for each channel
_nse_hardwareTable_lo:
    .db <SQ1_VOL
    .db <SQ2_VOL
    .db <TRI_LINEAR
    .db <NOISE_VOL
    .db UNUSED
    .db <MMC5_PULSE1_VOL
    .db <MMC5_PULSE2_VOL

_nse_hardwareTable_hi:
    .db >SQ1_VOL
    .db >SQ2_VOL
    .db >TRI_LINEAR
    .db >NOISE_VOL
    .db UNUSED
    .db >MMC5_PULSE1_VOL
    .db >MMC5_PULSE2_VOL

pitchFrequencies_hi:
    .db $07 ; A-0
    .db $07 ; A#0
    .db $07 ; B-0
    .db $06 ; C-1
    .db $06 ; C#1
    .db $05 ; D-1
    .db $05 ; D#1
    .db $05 ; E-1
    .db $04 ; F-1
    .db $04 ; F#1
    .db $04 ; G-1
    .db $04 ; G#1
    .db $03 ; A-1
    .db $03 ; A#1
    .db $03 ; B-1
    .db $03 ; C-2
    .db $03 ; C#2
    .db $02 ; D-2
    .db $02 ; D#2
    .db $02 ; E-2
    .db $02 ; F-2
    .db $02 ; F#2
    .db $02 ; G-2
    .db $02 ; G#2
    .db $01 ; A-2
    .db $01 ; A#2
    .db $01 ; B-2
    .db $01 ; C-3
    .db $01 ; C#3
    .db $01 ; D-3
    .db $01 ; D#3
    .db $01 ; E-3
    .db $01 ; F-3
    .db $01 ; F#3
    .db $01 ; G-3
    .db $01 ; G#3
    .db $00 ; A-3
    .db $00 ; A#3
    .db $00 ; B-3
    .db $00 ; C-4
    .db $00 ; C#4
    .db $00 ; D-4
    .db $00 ; D#4
    .db $00 ; E-4
    .db $00 ; F-4
    .db $00 ; F#4
    .db $00 ; G-4
    .db $00 ; G#4
    .db $00 ; A-4
    .db $00 ; A#4
    .db $00 ; B-4
    .db $00 ; C-5
    .db $00 ; C#5
    .db $00 ; D-5
    .db $00 ; D#5
    .db $00 ; E-5
    .db $00 ; F-5
    .db $00 ; F#5
    .db $00 ; G-5
    .db $00 ; G#5
    .db $00 ; A-5
    .db $00 ; A#5
    .db $00 ; B-5
    .db $00 ; C-6
    .db $00 ; C#6
    .db $00 ; D-6
    .db $00 ; D#6
    .db $00 ; E-6
    .db $00 ; F-6
    .db $00 ; F#6
    .db $00 ; G-6
    .db $00 ; G#6
    .db $00 ; A-6
    .db $00 ; A#6
    .db $00 ; B-6
    .db $00 ; C-7
    .db $00 ; C#7
    .db $00 ; D-7

pitchFrequencies_lo:
    ; detuned from 440 Hz specifically for AoC.
    
    .db $DC ; A-0
    .db $6B ; A#0
    .db $00 ; B-0
    .db $9C ; C-1
    .db $ED ; C#1
    .db $E3 ; D-1
    .db $8E ; D#1
    .db $3E ; E-1
    .db $F3 ; F-1
    .db $AC ; F#1
    .db $69 ; G-1
    .db $29 ; G#1
    .db $ED ; A-1
    .db $B5 ; A#1
    .db $80 ; B-1
    .db $4D ; C-2
    .db $1E ; C#2
    .db $F1 ; D-2
    .db $C7 ; D#2
    .db $9F ; E-2
    .db $79 ; F-2
    .db $55 ; F#2
    .db $34 ; G-2
    .db $14 ; G#2
    .db $F6 ; A-2
    .db $DA ; A#2
    .db $BF ; B-2
    .db $A6 ; C-3
    .db $8E ; C#3
    .db $78 ; D-3
    .db $63 ; D#3
    .db $4F ; E-3
    .db $3C ; F-3
    .db $2A ; F#3
    .db $19 ; G-3
    .db $0A ; G#3
    .db $FB ; A-3
    .db $EC ; A#3
    .db $DF ; B-3
    .db $D8 ; C-4
    .db $C7 ; C#4
    .db $BB ; D-4
    .db $B1 ; D#4
    .db $A7 ; E-4
    .db $9D ; F-4
    .db $95 ; F#4
    .db $8C ; G-4
    .db $84 ; G#4
    .db $7D ; A-4
    .db $76 ; A#4
    .db $6F ; B-4
    .db $69 ; C-5
    .db $63 ; C#5
    .db $6D ; D-5
    .db $58 ; D#5
    .db $53 ; E-5
    .db $4E ; F-5
    .db $4A ; F#5
    .db $46 ; G-5
    .db $42 ; G#5
    .db $3E ; A-5
    .db $3A ; A#5
    .db $37 ; B-5
    .db $34 ; C-6
    .db $31 ; C#6
    .db $2E ; D-6
    .db $2B ; D#6
    .db $29 ; E-6
    .db $27 ; F-6
    .db $24 ; F#6
    .db $22 ; G-6
    .db $20 ; G#6
    .db $1E ; A-6
    .db $1D ; A#6
    .db $1B ; B-6
    .db $19 ; C-7
    .db $18 ; C#7
    .dw $17 ; D-7

channelMacroVibratoTable:
    .db wMacro@Sq1_Vib-wMacro_start
    .db wMacro@Sq2_Vib-wMacro_start
    .db wMacro@Tri_Vib-wMacro_start
    .db 0 ; 0 lets us beq to skip this.
    .db 0
    .db wMacro@Sq3_Vib-wMacro_start
    .db wMacro@Sq4_Vib-wMacro_start

channelMacroVolAddrTable_a2:
    .db wMacro@Sq1_Vol-wMacro_start+2
    .db wMacro@Sq1_Vol-wMacro_start+2
    .db UNUSED
    .db wMacro@Noise_Vol-wMacro_start+2
    .db UNUSED
    .db wMacro@Sq3_Vol-wMacro_start+2
    .db wMacro@Sq4_Vol-wMacro_start+2
channelMacroPortamentoAddrTable:
channelMacroArpAddrTable:
channelMacroBaseAddrTable:
    .db wMacro_Sq1_Base-wMacro_start
    .db wMacro_Sq1_Base-wMacro_start
    .db wMacro_Tri_Base-wMacro_start
    .db wMacro_Noise_Base-wMacro_start
    .db UNUSED
    .db wMacro_Sq3_Base-wMacro_start
    .db wMacro_Sq4_Base-wMacro_start
channelMacroEndAddrTable:
    .db wMacro_Sq1_End-wMacro_start
    .db wMacro_Sq2_End-wMacro_start
    .db wMacro_Tri_End-wMacro_start
    .db wMacro_Noise_End-wMacro_start
    .db UNUSED
    .db wMacro_Sq3_End-wMacro_start
    .db wMacro_Sq4_End-wMacro_start
bitIndexTable:
    .db $01 $02 $04 $08 $10 $20 $40 $80

volumeTable:
    .db     15,14,13,12,11,10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0
    .db     14,13,12,11,10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1, 0
    .db     13,12,11,10, 9, 8, 7, 6, 6, 5, 4, 3, 2, 1, 1, 0
    .db     12,11,10, 9, 8, 8, 7, 6, 5, 4, 4, 3, 2, 1, 1, 0
    .db     11,10, 9, 8, 8, 7, 6, 5, 5, 4, 3, 2, 2, 1, 1, 0
    .db     10, 9, 8, 8, 7, 6, 6, 5, 4, 4, 3, 2, 2, 1, 1, 0
    .db      9, 8, 7, 7, 6, 6, 5, 4, 4, 3, 3, 2, 1, 1, 1, 0
    .db      8, 7, 6, 6, 5, 5, 4, 4, 3, 3, 2, 2, 1, 1, 1, 0
    .db      7, 6, 6, 5, 5, 4, 4, 3, 3, 2, 2, 1, 1, 1, 1, 0
    .db      6, 5, 5, 4, 4, 4, 3, 3, 2, 2, 2, 1, 1, 1, 1, 0
    .db      5, 4, 4, 4, 3, 3, 3, 2, 2, 2, 1, 1, 1, 1, 1, 0
    .db      4, 3, 3, 3, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 0
    .db      3, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
    .db      2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
    .db      1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
nullTable: ; 32 zeros in a row (also part of volume table above)
    .rept 32
    .db      0
    .endr