entitySpecGroupAnimationData:
	.dw data_1f_0fd2
	.dw data_1f_0fd2
	.dw data_1f_0fd2
	.dw data_1f_0fd2
	.dw data_1f_10b9
	.dw $f158
	.dw data_1f_1002
	.dw $f33e
	.dw $f257
	.dw data_1f_1131
	.dw $f362
	.dw data_1f_0fd2
	.dw data_1f_0fd2
	.dw data_1f_0fd2
	.dw data_1f_0fd2

data_1f_0fd2:
	.db $02 $08 $08
	.db $18 $08 $04
	.db $1e $08 $04
	.db $24 $08 $06
	.db $24 $04 $06
	.db $2a $06 $0c
	.db $34 $06 $0c
	.db $40 $06 $06
	.db $46 $06 $08
	.db $46 $06 $08
	.db $4e $06 $04
	.db $40 $04 $04
	.db $56 $04 $0c
	.db $36 $08 $04
	.db $66 $08 $06
	.db $6c $08 $04

data_1f_1002:
	.db $02 $0a $04
	.db $04 $0a $04
	.db $08 $08 $02
	.db $0a $08 $02
	.db $0c $08 $02
	.db $0e $08 $02
	.db $10 $08 $02
	.db $12 $08 $02
	.db $14 $08 $02
	.db $16 $08 $02
	.db $18 $08 $02
	.db $1a $08 $02
	.db $1c $08 $02
	.db $1e $08 $02
	.db $20 $08 $02
	.db $22 $08 $02
	.db $24 $08 $02
	.db $26 $08 $02
	.db $28 $08 $02
	.db $2a $08 $02
	.db $2c $08 $02
	.db $2e $08 $02
	.db $30 $08 $02
	.db $32 $08 $02
	.db $24 $08 $02
	.db $36 $08 $02
	.db $38 $08 $02
	.db $3a $08 $02
	.db $3c $08 $02
	.db $3e $08 $02
	.db $40 $08 $02
	.db $42 $08 $02
	.db $44 $08 $02
	.db $46 $08 $02
	.db $50 $08 $02
	.db $4e $08 $02
	.db $4c $08 $02
	.db $4a $08 $02
	.db $48 $08 $02
	.db $52 $08 $02
	.db $54 $08 $02
	.db $56 $08 $02
	.db $58 $08 $02
	.db $5a $08 $02
	.db $5c $08 $02
	.db $5e $08 $02
	.db $60 $08 $02
	.db $62 $08 $02
	.db $64 $08 $02
	.db $66 $08 $02
	.db $68 $08 $02
	.db $6a $08 $02
	.db $6c $08 $02
	.db $6e $08 $02
	.db $ba $08 $08
	.db $c2 $08 $08
	.db $ca $08 $08
	.db $e0 $09 $08
	.db $ec $07 $04
	.db $f0 $09 $04
	.db $fe $08 $02


data_1f_10b9:
	.db $02 $10 $04
	.db $0a $08 $08
	.db $1a $0a $04
	.db $20 $0a $08
	.db $28 $0a $04
	.db $92 $10 $04
	.db $a8 $0a $04
	.db $de $18 $04
	.db $8c $0c $04
	.db $4c $0a $04
	.db $62 $0a $04
	.db $34 $10 $04
	.db $bc $0c $04
	.db $2c $0e $04
	.db $30 $0e $04
	.db $42 $10 $04
	.db $58 $0a $04
	.db $62 $0a $04
	.db $68 $0c $08
	.db $88 $0c $04
	.db $74 $0c $0a
	.db $ac $0a $06
	.db $a2 $0c $06
	.db $96 $08 $06
	.db $b0 $0c $04
	.db $70 $0a $04
	.db $9c $0c $06
	.db $b8 $0a $04
	.db $bc $0c $04
	.db $ca $18 $04
	.db $de $0c $08
	.db $da $0c $04
	.db $e6 $18 $04
	.db $e6 $0c $08
	.db $9c $18 $06
	.db $14 $08 $06
	.db $d0 $0a $08
	.db $14 $08 $04
	.db $92 $14 $04
	.db $7e $0a $04


data_1f_1131:
B31_1131:	.db $1a
B31_1132:		php				; 08 
B31_1133:		asl $20			; 06 20
B31_1135:	.db $14
B31_1136:	.db $04
B31_1137:		bit $0c			; 24 0c
B31_1139:	.db $04
B31_113a:		plp				; 28 
B31_113b:		;removed
	.db $10 $06

B31_113d:		rol $0406		; 2e 06 04
B31_1140:	.db $34
B31_1141:		asl a			; 0a
B31_1142:		asl $0c			; 06 0c
B31_1144:		php				; 08 
B31_1145:	.db $04
B31_1146:		lsr $04, x		; 56 04
B31_1148:	.db $04
B31_1149:	.db $72
B31_114a:	.db $0c
B31_114b:	.db $04
B31_114c:		ror $0c, x		; 76 0c
B31_114e:	.db $04
B31_114f:	.db $64
B31_1150:	.db $04
B31_1151:	.db $04
B31_1152:		pla				; 68 
B31_1153:		php				; 08 
B31_1154:		php				; 08 
B31_1155:	.db $7a
B31_1156:		asl a			; 0a
B31_1157:	.db $04
B31_1158:	.db $02
B31_1159:		php				; 08 
B31_115a:		asl $0a			; 06 0a
B31_115c:	.db $04
B31_115d:	.db $02
B31_115e:	.db $0c
B31_115f:		clc				; 18 
B31_1160:	.db $02
B31_1161:		asl $0218		; 0e 18 02
B31_1164:		bpl B31_116e ; 10 08

B31_1166:	.db $02
B31_1167:	.db $12
B31_1168:		php				; 08 
B31_1169:		asl $18			; 06 18
B31_116b:		;removed
	.db $10 $08

B31_116d:		clc				; 18 
B31_116e:		php				; 08 
B31_116f:		php				; 08 
B31_1170:		jsr $0210		; 20 10 02
B31_1173:	.db $22
B31_1174:		bpl B31_1178 ; 10 02

B31_1176:		rol $08			; 26 08
B31_1178:	.db $02
B31_1179:		plp				; 28 
B31_117a:		php				; 08 
B31_117b:	.db $02
B31_117c:		rol $0208		; 2e 08 02
B31_117f:	.db $02
B31_1180:		php				; 08 
B31_1181:	.db $02
B31_1182:	.db $04
B31_1183:		php				; 08 
B31_1184:	.db $02
B31_1185:		asl $08			; 06 08
B31_1187:	.db $02
B31_1188:	.db $04
B31_1189:		php				; 08 
B31_118a:	.db $02
B31_118b:		sec				; 38 
B31_118c:		php				; 08 
B31_118d:	.db $02
B31_118e:	.db $3a
B31_118f:		php				; 08 
B31_1190:	.db $04
B31_1191:		rol $0408, x	; 3e 08 04
B31_1194:	.db $42
B31_1195:		php				; 08 
B31_1196:	.db $04
B31_1197:		lsr $08			; 46 08
B31_1199:	.db $04
B31_119a:		lsr $0808		; 4e 08 08
B31_119d:		jmp $0208		; 4c 08 02


B31_11a0:		lsr a			; 4a
B31_11a1:		php				; 08 
B31_11a2:	.db $02
B31_11a3:	.db $3a
B31_11a4:		php				; 08 
B31_11a5:	.db $02
B31_11a6:	.db $3c
B31_11a7:		php				; 08 
B31_11a8:	.db $02
B31_11a9:		lsr $08, x		; 56 08
B31_11ab:	.db $04
B31_11ac:	.db $5a
B31_11ad:		php				; 08 
B31_11ae:	.db $04
B31_11af:		lsr $0408, x	; 5e 08 04
B31_11b2:	.db $62
B31_11b3:		php				; 08 
B31_11b4:	.db $04
B31_11b5:		ror $08			; 66 08
B31_11b7:	.db $02
B31_11b8:		ror $08			; 66 08
B31_11ba:		asl $74			; 06 74
B31_11bc:		php				; 08 
B31_11bd:	.db $02
B31_11be:		ror $08, x		; 76 08
B31_11c0:	.db $02
B31_11c1:		sei				; 78 
B31_11c2:		php				; 08 
B31_11c3:	.db $02
B31_11c4:	.db $7a
B31_11c5:		php				; 08 
B31_11c6:	.db $04
B31_11c7:		ror $0408, x	; 7e 08 04
B31_11ca:	.db $80
B31_11cb:		php				; 08 
B31_11cc:	.db $04
B31_11cd:	.db $82
B31_11ce:		php				; 08 
B31_11cf:	.db $04
B31_11d0:	.db $72
B31_11d1:		php				; 08 
B31_11d2:	.db $02
B31_11d3:		;removed
	.db $70 $08

B31_11d5:	.db $02
B31_11d6:		ror $0208		; 6e 08 02
B31_11d9:		jmp ($0208)		; 6c 08 02


B31_11dc:		jmp ($0208)		; 6c 08 02


B31_11df:		ror $0208		; 6e 08 02
B31_11e2:		;removed
	.db $70 $08

B31_11e4:	.db $02
B31_11e5:	.db $72
B31_11e6:		php				; 08 
B31_11e7:	.db $02
B31_11e8:		sty $08			; 84 08
B31_11ea:	.db $02
B31_11eb:		stx $08			; 86 08
B31_11ed:	.db $02
B31_11ee:		dey				; 88 
B31_11ef:		php				; 08 
B31_11f0:	.db $02
B31_11f1:		txa				; 8a 
B31_11f2:		php				; 08 
B31_11f3:		asl a			; 0a
B31_11f4:		txs				; 9a 
B31_11f5:		php				; 08 
B31_11f6:	.db $02
B31_11f7:	.db $9c
B31_11f8:		php				; 08 
B31_11f9:	.db $02
B31_11fa:	.db $9e
B31_11fb:		php				; 08 
B31_11fc:	.db $02
B31_11fd:		ldy #$08		; a0 08
B31_11ff:	.db $02
B31_1200:		ldx #$08		; a2 08
B31_1202:	.db $02
B31_1203:		ldy $08			; a4 08
B31_1205:	.db $02
B31_1206:		ldx $08			; a6 08
B31_1208:	.db $02
B31_1209:		tay				; a8 
B31_120a:		php				; 08 
B31_120b:	.db $02
B31_120c:		tax				; aa 
B31_120d:		php				; 08 
B31_120e:	.db $02
B31_120f:		ldy $0208		; ac 08 02
B31_1212:		ldx $0208		; ae 08 02
B31_1215:		;removed
	.db $b0 $08

B31_1217:	.db $02
B31_1218:	.db $b2
B31_1219:		php				; 08 
B31_121a:	.db $02
B31_121b:		ldy $08, x		; b4 08
B31_121d:	.db $02
B31_121e:		ldx $08, y		; b6 08
B31_1220:	.db $02
B31_1221:		clv				; b8 
B31_1222:		php				; 08 
B31_1223:	.db $02
B31_1224:		tsx				; ba 
B31_1225:		php				; 08 
B31_1226:	.db $02
B31_1227:		ldy $0208, x	; bc 08 02
B31_122a:		ldx $0208, y	; be 08 02
B31_122d:		cpy #$08		; c0 08
B31_122f:	.db $02
B31_1230:	.db $c2
B31_1231:		php				; 08 
B31_1232:	.db $02
B31_1233:		cpy $08			; c4 08
B31_1235:	.db $02
B31_1236:		dec $08			; c6 08
B31_1238:	.db $02
B31_1239:		iny				; c8 
B31_123a:		php				; 08 
B31_123b:	.db $02
B31_123c:		dex				; ca 
B31_123d:		php				; 08 
B31_123e:	.db $02
B31_123f:		cpy $0208		; cc 08 02
B31_1242:		dec $0208		; ce 08 02
B31_1245:		;removed
	.db $d0 $08

B31_1247:	.db $02
B31_1248:	.db $d2
B31_1249:		php				; 08 
B31_124a:	.db $02
B31_124b:	.db $d4
B31_124c:		php				; 08 
B31_124d:	.db $02
B31_124e:		dec $08, x		; d6 08
B31_1250:	.db $02
B31_1251:		cld				; d8 
B31_1252:		php				; 08 
B31_1253:	.db $02
B31_1254:	.db $da
B31_1255:		php				; 08 
B31_1256:	.db $02
B31_1257:	.db $02
B31_1258:		php				; 08 
B31_1259:	.db $02
B31_125a:	.db $04
B31_125b:		php				; 08 
B31_125c:	.db $02
B31_125d:		asl $08			; 06 08
B31_125f:	.db $02
B31_1260:		php				; 08 
B31_1261:		php				; 08 
B31_1262:	.db $02
B31_1263:		asl a			; 0a
B31_1264:		php				; 08 
B31_1265:	.db $02
B31_1266:	.db $0c
B31_1267:		php				; 08 
B31_1268:	.db $02
B31_1269:		asl $0218		; 0e 18 02
B31_126c:		bpl B31_1286 ; 10 18

B31_126e:	.db $02
B31_126f:	.db $12
B31_1270:		php				; 08 
B31_1271:	.db $02
B31_1272:	.db $14
B31_1273:		php				; 08 
B31_1274:	.db $02
B31_1275:		asl $08, x		; 16 08
B31_1277:	.db $02
B31_1278:		clc				; 18 
B31_1279:		php				; 08 
B31_127a:	.db $02
B31_127b:	.db $1a
B31_127c:		php				; 08 
B31_127d:	.db $02
B31_127e:	.db $1c
B31_127f:		php				; 08 
B31_1280:	.db $02
B31_1281:		asl $0608, x	; 1e 08 06
B31_1284:		bit $08			; 24 08
B31_1286:	.db $02
B31_1287:		rol $08			; 26 08
B31_1289:	.db $02
B31_128a:		plp				; 28 
B31_128b:		php				; 08 
B31_128c:	.db $02
B31_128d:		rol a			; 2a
B31_128e:		php				; 08 
B31_128f:	.db $02
B31_1290:		bit $0608		; 2c 08 06
B31_1293:	.db $32
B31_1294:		php				; 08 
B31_1295:	.db $02
B31_1296:	.db $34
B31_1297:		php				; 08 
B31_1298:	.db $02
B31_1299:		rol $08, x		; 36 08
B31_129b:	.db $02
B31_129c:		sec				; 38 
B31_129d:		php				; 08 
B31_129e:	.db $02
B31_129f:	.db $3a
B31_12a0:		php				; 08 
B31_12a1:	.db $02
B31_12a2:	.db $3c
B31_12a3:		php				; 08 
B31_12a4:	.db $02
B31_12a5:		rol $0208, x	; 3e 08 02
B31_12a8:		rti				; 40 


B31_12a9:		php				; 08 
B31_12aa:	.db $04
B31_12ab:	.db $42
B31_12ac:		php				; 08 
B31_12ad:	.db $02
B31_12ae:	.db $44
B31_12af:		php				; 08 
B31_12b0:	.db $02
B31_12b1:		lsr $08			; 46 08
B31_12b3:	.db $02
B31_12b4:		pha				; 48 
B31_12b5:		php				; 08 
B31_12b6:	.db $02
B31_12b7:		bit $0208		; 2c 08 02
B31_12ba:		lsr a			; 4a
B31_12bb:		php				; 08 
B31_12bc:	.db $02
B31_12bd:		jmp $0208		; 4c 08 02


B31_12c0:		lsr $0208		; 4e 08 02
B31_12c3:		;removed
	.db $50 $08

B31_12c5:	.db $02
B31_12c6:	.db $52
B31_12c7:		php				; 08 
B31_12c8:	.db $02
B31_12c9:	.db $54
B31_12ca:		php				; 08 
B31_12cb:	.db $02
B31_12cc:		lsr $08, x		; 56 08
B31_12ce:	.db $02
B31_12cf:		cli				; 58 
B31_12d0:		php				; 08 
B31_12d1:	.db $02
B31_12d2:	.db $5a
B31_12d3:		php				; 08 
B31_12d4:	.db $02
B31_12d5:	.db $5c
B31_12d6:		php				; 08 
B31_12d7:	.db $02
B31_12d8:	.db $62
B31_12d9:		php				; 08 
B31_12da:	.db $02
B31_12db:	.db $64
B31_12dc:		php				; 08 
B31_12dd:	.db $02
B31_12de:		ror $08			; 66 08
B31_12e0:	.db $02
B31_12e1:		bvs B31_12eb ; 70 08

B31_12e3:	.db $02
B31_12e4:		pla				; 68 
B31_12e5:		php				; 08 
B31_12e6:	.db $02
B31_12e7:		pla				; 68 
B31_12e8:		php				; 08 
B31_12e9:		php				; 08 
B31_12ea:		pla				; 68 
B31_12eb:		php				; 08 
B31_12ec:	.db $02
B31_12ed:		bvs B31_12f7 ; 70 08

B31_12ef:	.db $02
B31_12f0:		jmp ($0208)		; 6c 08 02


B31_12f3:		ror a			; 6a
B31_12f4:		php				; 08 
B31_12f5:	.db $02
B31_12f6:		pla				; 68 
B31_12f7:		php				; 08 
B31_12f8:	.db $02
B31_12f9:		jmp ($0208)		; 6c 08 02


B31_12fc:		bvs B31_1306 ; 70 08

B31_12fe:	.db $02
B31_12ff:		pla				; 68 
B31_1300:		php				; 08 
B31_1301:	.db $02
B31_1302:	.db $72
B31_1303:		php				; 08 
B31_1304:		asl $78			; 06 78
B31_1306:		php				; 08 
B31_1307:	.db $02
B31_1308:	.db $7a
B31_1309:		php				; 08 
B31_130a:	.db $02
B31_130b:	.db $7c
B31_130c:		php				; 08 
B31_130d:	.db $02
B31_130e:		ror $0208, x	; 7e 08 02
B31_1311:	.db $7c
B31_1312:		php				; 08 
B31_1313:	.db $02
B31_1314:	.db $80
B31_1315:		php				; 08 
B31_1316:	.db $02
B31_1317:	.db $82
B31_1318:		php				; 08 
B31_1319:	.db $02
B31_131a:		sty $08			; 84 08
B31_131c:	.db $02
B31_131d:		stx $08			; 86 08
B31_131f:	.db $02
B31_1320:		dey				; 88 
B31_1321:		php				; 08 
B31_1322:	.db $04
B31_1323:		sty $0208		; 8c 08 02
B31_1326:		jmp ($0208)		; 6c 08 02


B31_1329:		tax				; aa 
B31_132a:		php				; 08 
B31_132b:	.db $02
B31_132c:		ldy $0208		; ac 08 02
B31_132f:		ldx $0608		; ae 08 06
B31_1332:	.db $b2
B31_1333:	.db $14
B31_1334:		asl $b8			; 06 b8
B31_1336:	.db $03
B31_1337:		php				; 08 
B31_1338:		lsr $0208, x	; 5e 08 02
B31_133b:		rts				; 60 


B31_133c:		php				; 08 
B31_133d:	.db $02
B31_133e:	.db $02
B31_133f:		php				; 08 
B31_1340:	.db $04
B31_1341:		rts				; 60 


B31_1342:		php				; 08 
B31_1343:		php				; 08 
B31_1344:		asl a			; 0a
B31_1345:		php				; 08 
B31_1346:	.db $04
B31_1347:		rol $04, x		; 36 04
B31_1349:		php				; 08 
B31_134a:		rol $0806, x	; 3e 06 08
B31_134d:		lsr $04			; 46 04
B31_134f:		asl a			; 0a
B31_1350:		pha				; 48 
B31_1351:		php				; 08 
B31_1352:	.db $02
B31_1353:		lsr a			; 4a
B31_1354:		php				; 08 
B31_1355:	.db $02
B31_1356:		jmp $0408		; 4c 08 04


B31_1359:		bvc B31_1363 ; 50 08

B31_135b:	.db $02
B31_135c:		clc				; 18 
B31_135d:		php				; 08 
B31_135e:	.db $02
B31_135f:	.db $5c
B31_1360:	.db $04
B31_1361:	.db $04
B31_1362:	.db $1c
B31_1363:		asl a			; 0a
B31_1364:		asl $22			; 06 22
B31_1366:		asl a			; 0a
B31_1367:		asl $28			; 06 28
B31_1369:		bpl B31_1371 ; 10 06

B31_136b:		rol $0808		; 2e 08 08
B31_136e:		rol $0a, x		; 36 0a
B31_1370:		php				; 08 
B31_1371:		rol $0460, x	; 3e 60 04
B31_1374:	.db $52
B31_1375:		asl a			; 0a
B31_1376:		php				; 08 
B31_1377:	.db $5a
B31_1378:	.db $04
B31_1379:	.db $04
B31_137a:		lsr $040c, x	; 5e 0c 04
B31_137d:	.db $62
B31_137e:		asl a			; 0a
B31_137f:		asl $68			; 06 68
B31_1381:	.db $04
B31_1382:	.db $04
B31_1383:		rts				; 60 