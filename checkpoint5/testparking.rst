                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Thu Jan 16 00:25:28 2020
                                      5 ;--------------------------------------------------------
                                      6 	.module testparking
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _timer0_ISR
                                     13 	.globl __mcs51_genXRAMCLEAR
                                     14 	.globl __mcs51_genXINIT
                                     15 	.globl __mcs51_genRAMCLEAR
                                     16 	.globl __sdcc_gsinit_startup
                                     17 	.globl _main
                                     18 	.globl _makeCars
                                     19 	.globl _CarParking
                                     20 	.globl _delay
                                     21 	.globl _ThreadExit
                                     22 	.globl _ThreadCreate
                                     23 	.globl _CY
                                     24 	.globl _AC
                                     25 	.globl _F0
                                     26 	.globl _RS1
                                     27 	.globl _RS0
                                     28 	.globl _OV
                                     29 	.globl _F1
                                     30 	.globl _P
                                     31 	.globl _PS
                                     32 	.globl _PT1
                                     33 	.globl _PX1
                                     34 	.globl _PT0
                                     35 	.globl _PX0
                                     36 	.globl _RD
                                     37 	.globl _WR
                                     38 	.globl _T1
                                     39 	.globl _T0
                                     40 	.globl _INT1
                                     41 	.globl _INT0
                                     42 	.globl _TXD
                                     43 	.globl _RXD
                                     44 	.globl _P3_7
                                     45 	.globl _P3_6
                                     46 	.globl _P3_5
                                     47 	.globl _P3_4
                                     48 	.globl _P3_3
                                     49 	.globl _P3_2
                                     50 	.globl _P3_1
                                     51 	.globl _P3_0
                                     52 	.globl _EA
                                     53 	.globl _ES
                                     54 	.globl _ET1
                                     55 	.globl _EX1
                                     56 	.globl _ET0
                                     57 	.globl _EX0
                                     58 	.globl _P2_7
                                     59 	.globl _P2_6
                                     60 	.globl _P2_5
                                     61 	.globl _P2_4
                                     62 	.globl _P2_3
                                     63 	.globl _P2_2
                                     64 	.globl _P2_1
                                     65 	.globl _P2_0
                                     66 	.globl _SM0
                                     67 	.globl _SM1
                                     68 	.globl _SM2
                                     69 	.globl _REN
                                     70 	.globl _TB8
                                     71 	.globl _RB8
                                     72 	.globl _TI
                                     73 	.globl _RI
                                     74 	.globl _P1_7
                                     75 	.globl _P1_6
                                     76 	.globl _P1_5
                                     77 	.globl _P1_4
                                     78 	.globl _P1_3
                                     79 	.globl _P1_2
                                     80 	.globl _P1_1
                                     81 	.globl _P1_0
                                     82 	.globl _TF1
                                     83 	.globl _TR1
                                     84 	.globl _TF0
                                     85 	.globl _TR0
                                     86 	.globl _IE1
                                     87 	.globl _IT1
                                     88 	.globl _IE0
                                     89 	.globl _IT0
                                     90 	.globl _P0_7
                                     91 	.globl _P0_6
                                     92 	.globl _P0_5
                                     93 	.globl _P0_4
                                     94 	.globl _P0_3
                                     95 	.globl _P0_2
                                     96 	.globl _P0_1
                                     97 	.globl _P0_0
                                     98 	.globl _B
                                     99 	.globl _ACC
                                    100 	.globl _PSW
                                    101 	.globl _IP
                                    102 	.globl _P3
                                    103 	.globl _IE
                                    104 	.globl _P2
                                    105 	.globl _SBUF
                                    106 	.globl _SCON
                                    107 	.globl _P1
                                    108 	.globl _TH1
                                    109 	.globl _TH0
                                    110 	.globl _TL1
                                    111 	.globl _TL0
                                    112 	.globl _TMOD
                                    113 	.globl _TCON
                                    114 	.globl _PCON
                                    115 	.globl _DPH
                                    116 	.globl _DPL
                                    117 	.globl _SP
                                    118 	.globl _P0
                                    119 	.globl _empty
                                    120 	.globl _full
                                    121 	.globl _mutex
                                    122 	.globl _carCount
                                    123 	.globl _space
                                    124 	.globl _random
                                    125 	.globl _car
                                    126 	.globl _j
                                    127 	.globl _parkingSpot
                                    128 	.globl _carNum
                                    129 ;--------------------------------------------------------
                                    130 ; special function registers
                                    131 ;--------------------------------------------------------
                                    132 	.area RSEG    (ABS,DATA)
      000000                        133 	.org 0x0000
                           000080   134 _P0	=	0x0080
                           000081   135 _SP	=	0x0081
                           000082   136 _DPL	=	0x0082
                           000083   137 _DPH	=	0x0083
                           000087   138 _PCON	=	0x0087
                           000088   139 _TCON	=	0x0088
                           000089   140 _TMOD	=	0x0089
                           00008A   141 _TL0	=	0x008a
                           00008B   142 _TL1	=	0x008b
                           00008C   143 _TH0	=	0x008c
                           00008D   144 _TH1	=	0x008d
                           000090   145 _P1	=	0x0090
                           000098   146 _SCON	=	0x0098
                           000099   147 _SBUF	=	0x0099
                           0000A0   148 _P2	=	0x00a0
                           0000A8   149 _IE	=	0x00a8
                           0000B0   150 _P3	=	0x00b0
                           0000B8   151 _IP	=	0x00b8
                           0000D0   152 _PSW	=	0x00d0
                           0000E0   153 _ACC	=	0x00e0
                           0000F0   154 _B	=	0x00f0
                                    155 ;--------------------------------------------------------
                                    156 ; special function bits
                                    157 ;--------------------------------------------------------
                                    158 	.area RSEG    (ABS,DATA)
      000000                        159 	.org 0x0000
                           000080   160 _P0_0	=	0x0080
                           000081   161 _P0_1	=	0x0081
                           000082   162 _P0_2	=	0x0082
                           000083   163 _P0_3	=	0x0083
                           000084   164 _P0_4	=	0x0084
                           000085   165 _P0_5	=	0x0085
                           000086   166 _P0_6	=	0x0086
                           000087   167 _P0_7	=	0x0087
                           000088   168 _IT0	=	0x0088
                           000089   169 _IE0	=	0x0089
                           00008A   170 _IT1	=	0x008a
                           00008B   171 _IE1	=	0x008b
                           00008C   172 _TR0	=	0x008c
                           00008D   173 _TF0	=	0x008d
                           00008E   174 _TR1	=	0x008e
                           00008F   175 _TF1	=	0x008f
                           000090   176 _P1_0	=	0x0090
                           000091   177 _P1_1	=	0x0091
                           000092   178 _P1_2	=	0x0092
                           000093   179 _P1_3	=	0x0093
                           000094   180 _P1_4	=	0x0094
                           000095   181 _P1_5	=	0x0095
                           000096   182 _P1_6	=	0x0096
                           000097   183 _P1_7	=	0x0097
                           000098   184 _RI	=	0x0098
                           000099   185 _TI	=	0x0099
                           00009A   186 _RB8	=	0x009a
                           00009B   187 _TB8	=	0x009b
                           00009C   188 _REN	=	0x009c
                           00009D   189 _SM2	=	0x009d
                           00009E   190 _SM1	=	0x009e
                           00009F   191 _SM0	=	0x009f
                           0000A0   192 _P2_0	=	0x00a0
                           0000A1   193 _P2_1	=	0x00a1
                           0000A2   194 _P2_2	=	0x00a2
                           0000A3   195 _P2_3	=	0x00a3
                           0000A4   196 _P2_4	=	0x00a4
                           0000A5   197 _P2_5	=	0x00a5
                           0000A6   198 _P2_6	=	0x00a6
                           0000A7   199 _P2_7	=	0x00a7
                           0000A8   200 _EX0	=	0x00a8
                           0000A9   201 _ET0	=	0x00a9
                           0000AA   202 _EX1	=	0x00aa
                           0000AB   203 _ET1	=	0x00ab
                           0000AC   204 _ES	=	0x00ac
                           0000AF   205 _EA	=	0x00af
                           0000B0   206 _P3_0	=	0x00b0
                           0000B1   207 _P3_1	=	0x00b1
                           0000B2   208 _P3_2	=	0x00b2
                           0000B3   209 _P3_3	=	0x00b3
                           0000B4   210 _P3_4	=	0x00b4
                           0000B5   211 _P3_5	=	0x00b5
                           0000B6   212 _P3_6	=	0x00b6
                           0000B7   213 _P3_7	=	0x00b7
                           0000B0   214 _RXD	=	0x00b0
                           0000B1   215 _TXD	=	0x00b1
                           0000B2   216 _INT0	=	0x00b2
                           0000B3   217 _INT1	=	0x00b3
                           0000B4   218 _T0	=	0x00b4
                           0000B5   219 _T1	=	0x00b5
                           0000B6   220 _WR	=	0x00b6
                           0000B7   221 _RD	=	0x00b7
                           0000B8   222 _PX0	=	0x00b8
                           0000B9   223 _PT0	=	0x00b9
                           0000BA   224 _PX1	=	0x00ba
                           0000BB   225 _PT1	=	0x00bb
                           0000BC   226 _PS	=	0x00bc
                           0000D0   227 _P	=	0x00d0
                           0000D1   228 _F1	=	0x00d1
                           0000D2   229 _OV	=	0x00d2
                           0000D3   230 _RS0	=	0x00d3
                           0000D4   231 _RS1	=	0x00d4
                           0000D5   232 _F0	=	0x00d5
                           0000D6   233 _AC	=	0x00d6
                           0000D7   234 _CY	=	0x00d7
                                    235 ;--------------------------------------------------------
                                    236 ; overlayable register banks
                                    237 ;--------------------------------------------------------
                                    238 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        239 	.ds 8
                                    240 ;--------------------------------------------------------
                                    241 ; internal ram data
                                    242 ;--------------------------------------------------------
                                    243 	.area DSEG    (DATA)
                           000020   244 _carNum	=	0x0020
                           000021   245 _parkingSpot	=	0x0021
                           00002B   246 _j	=	0x002b
                           00002C   247 _car	=	0x002c
                           00002D   248 _random	=	0x002d
                           00002E   249 _space	=	0x002e
                           00002F   250 _carCount	=	0x002f
                           000036   251 _mutex	=	0x0036
                           000037   252 _full	=	0x0037
                           000038   253 _empty	=	0x0038
                                    254 ;--------------------------------------------------------
                                    255 ; overlayable items in internal ram 
                                    256 ;--------------------------------------------------------
                                    257 ;--------------------------------------------------------
                                    258 ; Stack segment in internal ram 
                                    259 ;--------------------------------------------------------
                                    260 	.area	SSEG
      000008                        261 __start__stack:
      000008                        262 	.ds	1
                                    263 
                                    264 ;--------------------------------------------------------
                                    265 ; indirectly addressable internal ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area ISEG    (DATA)
                                    268 ;--------------------------------------------------------
                                    269 ; absolute internal ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area IABS    (ABS,DATA)
                                    272 	.area IABS    (ABS,DATA)
                                    273 ;--------------------------------------------------------
                                    274 ; bit data
                                    275 ;--------------------------------------------------------
                                    276 	.area BSEG    (BIT)
                                    277 ;--------------------------------------------------------
                                    278 ; paged external ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area PSEG    (PAG,XDATA)
                                    281 ;--------------------------------------------------------
                                    282 ; external ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area XSEG    (XDATA)
                                    285 ;--------------------------------------------------------
                                    286 ; absolute external ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area XABS    (ABS,XDATA)
                                    289 ;--------------------------------------------------------
                                    290 ; external initialized ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area XISEG   (XDATA)
                                    293 	.area HOME    (CODE)
                                    294 	.area GSINIT0 (CODE)
                                    295 	.area GSINIT1 (CODE)
                                    296 	.area GSINIT2 (CODE)
                                    297 	.area GSINIT3 (CODE)
                                    298 	.area GSINIT4 (CODE)
                                    299 	.area GSINIT5 (CODE)
                                    300 	.area GSINIT  (CODE)
                                    301 	.area GSFINAL (CODE)
                                    302 	.area CSEG    (CODE)
                                    303 ;--------------------------------------------------------
                                    304 ; interrupt vector 
                                    305 ;--------------------------------------------------------
                                    306 	.area HOME    (CODE)
      000000                        307 __interrupt_vect:
      000000 02 01 42         [24]  308 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  309 	reti
      000004                        310 	.ds	7
      00000B 02 01 49         [24]  311 	ljmp	_timer0_ISR
                                    312 ;--------------------------------------------------------
                                    313 ; global & static initialisations
                                    314 ;--------------------------------------------------------
                                    315 	.area HOME    (CODE)
                                    316 	.area GSINIT  (CODE)
                                    317 	.area GSFINAL (CODE)
                                    318 	.area GSINIT  (CODE)
                                    319 	.globl __sdcc_gsinit_startup
                                    320 	.globl __sdcc_program_startup
                                    321 	.globl __start__stack
                                    322 	.globl __mcs51_genXINIT
                                    323 	.globl __mcs51_genXRAMCLEAR
                                    324 	.globl __mcs51_genRAMCLEAR
                                    325 	.area GSFINAL (CODE)
      000011 02 00 0E         [24]  326 	ljmp	__sdcc_program_startup
                                    327 ;--------------------------------------------------------
                                    328 ; Home
                                    329 ;--------------------------------------------------------
                                    330 	.area HOME    (CODE)
                                    331 	.area HOME    (CODE)
      00000E                        332 __sdcc_program_startup:
      00000E 02 01 19         [24]  333 	ljmp	_main
                                    334 ;	return from main will return to caller
                                    335 ;--------------------------------------------------------
                                    336 ; code
                                    337 ;--------------------------------------------------------
                                    338 	.area CSEG    (CODE)
                                    339 ;------------------------------------------------------------
                                    340 ;Allocation info for local variables in function 'CarParking'
                                    341 ;------------------------------------------------------------
                                    342 ;	testparking.c:55: void CarParking(){
                                    343 ;	-----------------------------------------
                                    344 ;	 function CarParking
                                    345 ;	-----------------------------------------
      000014                        346 _CarParking:
                           000007   347 	ar7 = 0x07
                           000006   348 	ar6 = 0x06
                           000005   349 	ar5 = 0x05
                           000004   350 	ar4 = 0x04
                           000003   351 	ar3 = 0x03
                           000002   352 	ar2 = 0x02
                           000001   353 	ar1 = 0x01
                           000000   354 	ar0 = 0x00
                                    355 ;	testparking.c:56: TMOD |= (0x20);
      000014 43 89 20         [24]  356 	orl	_TMOD,#0x20
                                    357 ;	testparking.c:57: TH1 = -6;
      000017 75 8D FA         [24]  358 	mov	_TH1,#0xFA
                                    359 ;	testparking.c:58: SCON = (0x50);
      00001A 75 98 50         [24]  360 	mov	_SCON,#0x50
                                    361 ;	testparking.c:59: TR1 = 1;
      00001D D2 8E            [12]  362 	setb	_TR1
                                    363 ;	testparking.c:60: random = 255-TL1;
      00001F 74 FF            [12]  364 	mov	a,#0xFF
      000021 C3               [12]  365 	clr	c
      000022 95 8B            [12]  366 	subb	a,_TL1
      000024 F5 2D            [12]  367 	mov	_random,a
                                    368 ;	testparking.c:77: delay(random);
      000026 85 2D 82         [24]  369 	mov	dpl,_random
      000029 12 01 4D         [24]  370 	lcall	_delay
                                    371 ;	testparking.c:79: SemaphoreWait(full);
      00002C                        372 	 0$:
      00002C 85 37 E0         [24]  373 	MOV ACC, _full 
      00002F 60 FB            [24]  374 	JZ 0$ 
      000031 20 E7 F8         [24]  375 	JB ACC.7, 0$ 
      000034 15 37            [12]  376 	dec _full 
                                    377 ;	testparking.c:80: SemaphoreWait(mutex);
      000036                        378 	 1$:
      000036 85 36 E0         [24]  379 	MOV ACC, _mutex 
      000039 60 FB            [24]  380 	JZ 1$ 
      00003B 20 E7 F8         [24]  381 	JB ACC.7, 1$ 
      00003E 15 36            [12]  382 	dec _mutex 
                                    383 ;	testparking.c:81: printCarLeaving(parkingSpot[j], random+48);
      000040 E5 2B            [12]  384 	mov	a,_j
      000042 24 21            [12]  385 	add	a,#_parkingSpot
      000044 F9               [12]  386 	mov	r1,a
      000045 87 99            [24]  387 	mov	_SBUF,@r1
      000047                        388 00101$:
      000047 10 99 02         [24]  389 	jbc	_TI,00148$
      00004A 80 FB            [24]  390 	sjmp	00101$
      00004C                        391 00148$:
      00004C 75 99 61         [24]  392 	mov	_SBUF,#0x61
      00004F                        393 00104$:
      00004F 10 99 02         [24]  394 	jbc	_TI,00149$
      000052 80 FB            [24]  395 	sjmp	00104$
      000054                        396 00149$:
      000054 75 99 74         [24]  397 	mov	_SBUF,#0x74
      000057                        398 00107$:
      000057 10 99 02         [24]  399 	jbc	_TI,00150$
      00005A 80 FB            [24]  400 	sjmp	00107$
      00005C                        401 00150$:
      00005C 74 30            [12]  402 	mov	a,#0x30
      00005E 25 2D            [12]  403 	add	a,_random
      000060 F5 99            [12]  404 	mov	_SBUF,a
      000062                        405 00110$:
      000062 10 99 02         [24]  406 	jbc	_TI,00151$
      000065 80 FB            [24]  407 	sjmp	00110$
      000067                        408 00151$:
                                    409 ;	testparking.c:82: parkingSpot[j] = 0;
      000067 E5 2B            [12]  410 	mov	a,_j
      000069 24 21            [12]  411 	add	a,#_parkingSpot
      00006B F8               [12]  412 	mov	r0,a
      00006C 76 00            [12]  413 	mov	@r0,#0x00
                                    414 ;	testparking.c:83: printSlash();
      00006E 75 99 2F         [24]  415 	mov	_SBUF,#0x2F
      000071                        416 00113$:
      000071 10 99 02         [24]  417 	jbc	_TI,00152$
      000074 80 FB            [24]  418 	sjmp	00113$
      000076                        419 00152$:
                                    420 ;	testparking.c:84: SemaphoreSignal(mutex);
      000076 05 36            [12]  421 	INC _mutex 
                                    422 ;	testparking.c:85: SemaphoreSignal(empty);
      000078 05 38            [12]  423 	INC _empty 
                                    424 ;	testparking.c:87: ThreadExit();    
      00007A 02 02 C7         [24]  425 	ljmp	_ThreadExit
                                    426 ;------------------------------------------------------------
                                    427 ;Allocation info for local variables in function 'makeCars'
                                    428 ;------------------------------------------------------------
                                    429 ;	testparking.c:90: void makeCars(void){
                                    430 ;	-----------------------------------------
                                    431 ;	 function makeCars
                                    432 ;	-----------------------------------------
      00007D                        433 _makeCars:
                                    434 ;	testparking.c:91: TMOD |= (0x20);
      00007D 43 89 20         [24]  435 	orl	_TMOD,#0x20
                                    436 ;	testparking.c:92: TH1 = -6;
      000080 75 8D FA         [24]  437 	mov	_TH1,#0xFA
                                    438 ;	testparking.c:93: SCON = (0x50);
      000083 75 98 50         [24]  439 	mov	_SCON,#0x50
                                    440 ;	testparking.c:94: TR1 = 1;
      000086 D2 8E            [12]  441 	setb	_TR1
                                    442 ;	testparking.c:95: random = 255-TL1;
      000088 74 FF            [12]  443 	mov	a,#0xFF
      00008A C3               [12]  444 	clr	c
      00008B 95 8B            [12]  445 	subb	a,_TL1
      00008D F5 2D            [12]  446 	mov	_random,a
                                    447 ;	testparking.c:97: do{
      00008F                        448 00121$:
                                    449 ;	testparking.c:98: car = ThreadCreate(CarParking);
      00008F 90 00 14         [24]  450 	mov	dptr,#_CarParking
      000092 12 01 DA         [24]  451 	lcall	_ThreadCreate
      000095 85 82 2C         [24]  452 	mov	_car,dpl
                                    453 ;	testparking.c:99: if( car == -1 ) 
      000098 74 FF            [12]  454 	mov	a,#0xFF
      00009A B5 2C 02         [24]  455 	cjne	a,_car,00177$
      00009D 80 6B            [24]  456 	sjmp	00122$
      00009F                        457 00177$:
                                    458 ;	testparking.c:103: SemaphoreWait(empty);
      00009F                        459 	 2$:
      00009F 85 38 E0         [24]  460 	MOV ACC, _empty 
      0000A2 60 FB            [24]  461 	JZ 2$ 
      0000A4 20 E7 F8         [24]  462 	JB ACC.7, 2$ 
      0000A7 15 38            [12]  463 	dec _empty 
                                    464 ;	testparking.c:104: SemaphoreWait(mutex);
      0000A9                        465 	 3$:
      0000A9 85 36 E0         [24]  466 	MOV ACC, _mutex 
      0000AC 60 FB            [24]  467 	JZ 3$ 
      0000AE 20 E7 F8         [24]  468 	JB ACC.7, 3$ 
      0000B1 15 36            [12]  469 	dec _mutex 
                                    470 ;	testparking.c:105: for( j=0; j<SPOT; j++ ){
      0000B3 75 2B 00         [24]  471 	mov	_j,#0x00
      0000B6                        472 00125$:
      0000B6 C3               [12]  473 	clr	c
      0000B7 E5 2B            [12]  474 	mov	a,_j
      0000B9 64 80            [12]  475 	xrl	a,#0x80
      0000BB 94 82            [12]  476 	subb	a,#0x82
      0000BD 50 18            [24]  477 	jnc	00105$
                                    478 ;	testparking.c:106: space = parkingSpot[j];
      0000BF E5 2B            [12]  479 	mov	a,_j
      0000C1 24 21            [12]  480 	add	a,#_parkingSpot
      0000C3 F9               [12]  481 	mov	r1,a
      0000C4 87 2E            [24]  482 	mov	_space,@r1
                                    483 ;	testparking.c:107: if( space == 0 ){
      0000C6 E5 2E            [12]  484 	mov	a,_space
      0000C8 70 09            [24]  485 	jnz	00126$
                                    486 ;	testparking.c:108: parkingSpot[j] = carNum;
      0000CA E5 2B            [12]  487 	mov	a,_j
      0000CC 24 21            [12]  488 	add	a,#_parkingSpot
      0000CE F8               [12]  489 	mov	r0,a
      0000CF A6 20            [24]  490 	mov	@r0,_carNum
                                    491 ;	testparking.c:109: break;
      0000D1 80 04            [24]  492 	sjmp	00105$
      0000D3                        493 00126$:
                                    494 ;	testparking.c:105: for( j=0; j<SPOT; j++ ){
      0000D3 05 2B            [12]  495 	inc	_j
      0000D5 80 DF            [24]  496 	sjmp	00125$
      0000D7                        497 00105$:
                                    498 ;	testparking.c:112: printCarParking(carNum, j+48);
      0000D7 85 20 99         [24]  499 	mov	_SBUF,_carNum
      0000DA                        500 00106$:
      0000DA 10 99 02         [24]  501 	jbc	_TI,00180$
      0000DD 80 FB            [24]  502 	sjmp	00106$
      0000DF                        503 00180$:
      0000DF 75 99 69         [24]  504 	mov	_SBUF,#0x69
      0000E2                        505 00109$:
      0000E2 10 99 02         [24]  506 	jbc	_TI,00181$
      0000E5 80 FB            [24]  507 	sjmp	00109$
      0000E7                        508 00181$:
      0000E7 75 99 6E         [24]  509 	mov	_SBUF,#0x6E
      0000EA                        510 00112$:
      0000EA 10 99 02         [24]  511 	jbc	_TI,00182$
      0000ED 80 FB            [24]  512 	sjmp	00112$
      0000EF                        513 00182$:
      0000EF 74 30            [12]  514 	mov	a,#0x30
      0000F1 25 2B            [12]  515 	add	a,_j
      0000F3 F5 99            [12]  516 	mov	_SBUF,a
      0000F5                        517 00115$:
      0000F5 10 99 02         [24]  518 	jbc	_TI,00183$
      0000F8 80 FB            [24]  519 	sjmp	00115$
      0000FA                        520 00183$:
                                    521 ;	testparking.c:113: printSlash();
      0000FA 75 99 2F         [24]  522 	mov	_SBUF,#0x2F
      0000FD                        523 00118$:
      0000FD 10 99 02         [24]  524 	jbc	_TI,00184$
      000100 80 FB            [24]  525 	sjmp	00118$
      000102                        526 00184$:
                                    527 ;	testparking.c:114: SemaphoreSignal(mutex);
      000102 05 36            [12]  528 	INC _mutex 
                                    529 ;	testparking.c:115: SemaphoreSignal(full);
      000104 05 37            [12]  530 	INC _full 
                                    531 ;	testparking.c:117: carCount++;
      000106 05 2F            [12]  532 	inc	_carCount
                                    533 ;	testparking.c:118: carNum++;
      000108 05 20            [12]  534 	inc	_carNum
      00010A                        535 00122$:
                                    536 ;	testparking.c:120: }while(carCount<CARS);
      00010A C3               [12]  537 	clr	c
      00010B E5 2F            [12]  538 	mov	a,_carCount
      00010D 64 80            [12]  539 	xrl	a,#0x80
      00010F 94 85            [12]  540 	subb	a,#0x85
      000111 50 03            [24]  541 	jnc	00185$
      000113 02 00 8F         [24]  542 	ljmp	00121$
      000116                        543 00185$:
                                    544 ;	testparking.c:122: ThreadExit();
      000116 02 02 C7         [24]  545 	ljmp	_ThreadExit
                                    546 ;------------------------------------------------------------
                                    547 ;Allocation info for local variables in function 'main'
                                    548 ;------------------------------------------------------------
                                    549 ;	testparking.c:125: void main(void){
                                    550 ;	-----------------------------------------
                                    551 ;	 function main
                                    552 ;	-----------------------------------------
      000119                        553 _main:
                                    554 ;	testparking.c:127: carNum = 'A';
      000119 75 20 41         [24]  555 	mov	_carNum,#0x41
                                    556 ;	testparking.c:128: carCount = 0;
      00011C 75 2F 00         [24]  557 	mov	_carCount,#0x00
                                    558 ;	testparking.c:129: for( j=0; j<SPOT; j++ )
      00011F 75 2B 00         [24]  559 	mov	_j,#0x00
      000122                        560 00103$:
      000122 C3               [12]  561 	clr	c
      000123 E5 2B            [12]  562 	mov	a,_j
      000125 64 80            [12]  563 	xrl	a,#0x80
      000127 94 82            [12]  564 	subb	a,#0x82
      000129 50 0B            [24]  565 	jnc	00101$
                                    566 ;	testparking.c:130: parkingSpot[j] = 0;
      00012B E5 2B            [12]  567 	mov	a,_j
      00012D 24 21            [12]  568 	add	a,#_parkingSpot
      00012F F8               [12]  569 	mov	r0,a
      000130 76 00            [12]  570 	mov	@r0,#0x00
                                    571 ;	testparking.c:129: for( j=0; j<SPOT; j++ )
      000132 05 2B            [12]  572 	inc	_j
      000134 80 EC            [24]  573 	sjmp	00103$
      000136                        574 00101$:
                                    575 ;	testparking.c:133: SemaphoreCreate(mutex, 1);
      000136 75 36 01         [24]  576 	mov	_mutex,#0x01
                                    577 ;	testparking.c:134: SemaphoreCreate(full, 0);
      000139 75 37 00         [24]  578 	mov	_full,#0x00
                                    579 ;	testparking.c:135: SemaphoreCreate(empty, SPOT);
      00013C 75 38 02         [24]  580 	mov	_empty,#0x02
                                    581 ;	testparking.c:138: makeCars();
      00013F 02 00 7D         [24]  582 	ljmp	_makeCars
                                    583 ;------------------------------------------------------------
                                    584 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    585 ;------------------------------------------------------------
                                    586 ;	testparking.c:141: void _sdcc_gsinit_startup(void) {
                                    587 ;	-----------------------------------------
                                    588 ;	 function _sdcc_gsinit_startup
                                    589 ;	-----------------------------------------
      000142                        590 __sdcc_gsinit_startup:
                                    591 ;	testparking.c:144: __endasm;
      000142 02 01 90         [24]  592 	ljmp _Bootstrap
      000145 22               [24]  593 	ret
                                    594 ;------------------------------------------------------------
                                    595 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    596 ;------------------------------------------------------------
                                    597 ;	testparking.c:147: void _mcs51_genRAMCLEAR(void) {}
                                    598 ;	-----------------------------------------
                                    599 ;	 function _mcs51_genRAMCLEAR
                                    600 ;	-----------------------------------------
      000146                        601 __mcs51_genRAMCLEAR:
      000146 22               [24]  602 	ret
                                    603 ;------------------------------------------------------------
                                    604 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    605 ;------------------------------------------------------------
                                    606 ;	testparking.c:148: void _mcs51_genXINIT(void) {}
                                    607 ;	-----------------------------------------
                                    608 ;	 function _mcs51_genXINIT
                                    609 ;	-----------------------------------------
      000147                        610 __mcs51_genXINIT:
      000147 22               [24]  611 	ret
                                    612 ;------------------------------------------------------------
                                    613 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    614 ;------------------------------------------------------------
                                    615 ;	testparking.c:149: void _mcs51_genXRAMCLEAR(void) {}
                                    616 ;	-----------------------------------------
                                    617 ;	 function _mcs51_genXRAMCLEAR
                                    618 ;	-----------------------------------------
      000148                        619 __mcs51_genXRAMCLEAR:
      000148 22               [24]  620 	ret
                                    621 ;------------------------------------------------------------
                                    622 ;Allocation info for local variables in function 'timer0_ISR'
                                    623 ;------------------------------------------------------------
                                    624 ;	testparking.c:151: void timer0_ISR(void) __interrupt(1){
                                    625 ;	-----------------------------------------
                                    626 ;	 function timer0_ISR
                                    627 ;	-----------------------------------------
      000149                        628 _timer0_ISR:
                                    629 ;	testparking.c:154: __endasm;
      000149 02 03 0B         [24]  630 	ljmp _myTimer0Handler
      00014C 32               [24]  631 	reti
                                    632 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    633 ;	eliminated unneeded push/pop psw
                                    634 ;	eliminated unneeded push/pop dpl
                                    635 ;	eliminated unneeded push/pop dph
                                    636 ;	eliminated unneeded push/pop b
                                    637 ;	eliminated unneeded push/pop acc
                                    638 	.area CSEG    (CODE)
                                    639 	.area CONST   (CODE)
                                    640 	.area XINIT   (CODE)
                                    641 	.area CABS    (ABS,CODE)
