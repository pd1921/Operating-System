                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Thu Jan 16 19:09:23 2020
                                      5 ;--------------------------------------------------------
                                      6 	.module testpreempt
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
                                     18 	.globl _Consumer
                                     19 	.globl _Producer
                                     20 	.globl _ThreadCreate
                                     21 	.globl _CY
                                     22 	.globl _AC
                                     23 	.globl _F0
                                     24 	.globl _RS1
                                     25 	.globl _RS0
                                     26 	.globl _OV
                                     27 	.globl _F1
                                     28 	.globl _P
                                     29 	.globl _PS
                                     30 	.globl _PT1
                                     31 	.globl _PX1
                                     32 	.globl _PT0
                                     33 	.globl _PX0
                                     34 	.globl _RD
                                     35 	.globl _WR
                                     36 	.globl _T1
                                     37 	.globl _T0
                                     38 	.globl _INT1
                                     39 	.globl _INT0
                                     40 	.globl _TXD
                                     41 	.globl _RXD
                                     42 	.globl _P3_7
                                     43 	.globl _P3_6
                                     44 	.globl _P3_5
                                     45 	.globl _P3_4
                                     46 	.globl _P3_3
                                     47 	.globl _P3_2
                                     48 	.globl _P3_1
                                     49 	.globl _P3_0
                                     50 	.globl _EA
                                     51 	.globl _ES
                                     52 	.globl _ET1
                                     53 	.globl _EX1
                                     54 	.globl _ET0
                                     55 	.globl _EX0
                                     56 	.globl _P2_7
                                     57 	.globl _P2_6
                                     58 	.globl _P2_5
                                     59 	.globl _P2_4
                                     60 	.globl _P2_3
                                     61 	.globl _P2_2
                                     62 	.globl _P2_1
                                     63 	.globl _P2_0
                                     64 	.globl _SM0
                                     65 	.globl _SM1
                                     66 	.globl _SM2
                                     67 	.globl _REN
                                     68 	.globl _TB8
                                     69 	.globl _RB8
                                     70 	.globl _TI
                                     71 	.globl _RI
                                     72 	.globl _P1_7
                                     73 	.globl _P1_6
                                     74 	.globl _P1_5
                                     75 	.globl _P1_4
                                     76 	.globl _P1_3
                                     77 	.globl _P1_2
                                     78 	.globl _P1_1
                                     79 	.globl _P1_0
                                     80 	.globl _TF1
                                     81 	.globl _TR1
                                     82 	.globl _TF0
                                     83 	.globl _TR0
                                     84 	.globl _IE1
                                     85 	.globl _IT1
                                     86 	.globl _IE0
                                     87 	.globl _IT0
                                     88 	.globl _P0_7
                                     89 	.globl _P0_6
                                     90 	.globl _P0_5
                                     91 	.globl _P0_4
                                     92 	.globl _P0_3
                                     93 	.globl _P0_2
                                     94 	.globl _P0_1
                                     95 	.globl _P0_0
                                     96 	.globl _B
                                     97 	.globl _ACC
                                     98 	.globl _PSW
                                     99 	.globl _IP
                                    100 	.globl _P3
                                    101 	.globl _IE
                                    102 	.globl _P2
                                    103 	.globl _SBUF
                                    104 	.globl _SCON
                                    105 	.globl _P1
                                    106 	.globl _TH1
                                    107 	.globl _TH0
                                    108 	.globl _TL1
                                    109 	.globl _TL0
                                    110 	.globl _TMOD
                                    111 	.globl _TCON
                                    112 	.globl _PCON
                                    113 	.globl _DPH
                                    114 	.globl _DPL
                                    115 	.globl _SP
                                    116 	.globl _P0
                                    117 	.globl _sharedVar
                                    118 	.globl _dataAvil
                                    119 ;--------------------------------------------------------
                                    120 ; special function registers
                                    121 ;--------------------------------------------------------
                                    122 	.area RSEG    (ABS,DATA)
      000000                        123 	.org 0x0000
                           000080   124 _P0	=	0x0080
                           000081   125 _SP	=	0x0081
                           000082   126 _DPL	=	0x0082
                           000083   127 _DPH	=	0x0083
                           000087   128 _PCON	=	0x0087
                           000088   129 _TCON	=	0x0088
                           000089   130 _TMOD	=	0x0089
                           00008A   131 _TL0	=	0x008a
                           00008B   132 _TL1	=	0x008b
                           00008C   133 _TH0	=	0x008c
                           00008D   134 _TH1	=	0x008d
                           000090   135 _P1	=	0x0090
                           000098   136 _SCON	=	0x0098
                           000099   137 _SBUF	=	0x0099
                           0000A0   138 _P2	=	0x00a0
                           0000A8   139 _IE	=	0x00a8
                           0000B0   140 _P3	=	0x00b0
                           0000B8   141 _IP	=	0x00b8
                           0000D0   142 _PSW	=	0x00d0
                           0000E0   143 _ACC	=	0x00e0
                           0000F0   144 _B	=	0x00f0
                                    145 ;--------------------------------------------------------
                                    146 ; special function bits
                                    147 ;--------------------------------------------------------
                                    148 	.area RSEG    (ABS,DATA)
      000000                        149 	.org 0x0000
                           000080   150 _P0_0	=	0x0080
                           000081   151 _P0_1	=	0x0081
                           000082   152 _P0_2	=	0x0082
                           000083   153 _P0_3	=	0x0083
                           000084   154 _P0_4	=	0x0084
                           000085   155 _P0_5	=	0x0085
                           000086   156 _P0_6	=	0x0086
                           000087   157 _P0_7	=	0x0087
                           000088   158 _IT0	=	0x0088
                           000089   159 _IE0	=	0x0089
                           00008A   160 _IT1	=	0x008a
                           00008B   161 _IE1	=	0x008b
                           00008C   162 _TR0	=	0x008c
                           00008D   163 _TF0	=	0x008d
                           00008E   164 _TR1	=	0x008e
                           00008F   165 _TF1	=	0x008f
                           000090   166 _P1_0	=	0x0090
                           000091   167 _P1_1	=	0x0091
                           000092   168 _P1_2	=	0x0092
                           000093   169 _P1_3	=	0x0093
                           000094   170 _P1_4	=	0x0094
                           000095   171 _P1_5	=	0x0095
                           000096   172 _P1_6	=	0x0096
                           000097   173 _P1_7	=	0x0097
                           000098   174 _RI	=	0x0098
                           000099   175 _TI	=	0x0099
                           00009A   176 _RB8	=	0x009a
                           00009B   177 _TB8	=	0x009b
                           00009C   178 _REN	=	0x009c
                           00009D   179 _SM2	=	0x009d
                           00009E   180 _SM1	=	0x009e
                           00009F   181 _SM0	=	0x009f
                           0000A0   182 _P2_0	=	0x00a0
                           0000A1   183 _P2_1	=	0x00a1
                           0000A2   184 _P2_2	=	0x00a2
                           0000A3   185 _P2_3	=	0x00a3
                           0000A4   186 _P2_4	=	0x00a4
                           0000A5   187 _P2_5	=	0x00a5
                           0000A6   188 _P2_6	=	0x00a6
                           0000A7   189 _P2_7	=	0x00a7
                           0000A8   190 _EX0	=	0x00a8
                           0000A9   191 _ET0	=	0x00a9
                           0000AA   192 _EX1	=	0x00aa
                           0000AB   193 _ET1	=	0x00ab
                           0000AC   194 _ES	=	0x00ac
                           0000AF   195 _EA	=	0x00af
                           0000B0   196 _P3_0	=	0x00b0
                           0000B1   197 _P3_1	=	0x00b1
                           0000B2   198 _P3_2	=	0x00b2
                           0000B3   199 _P3_3	=	0x00b3
                           0000B4   200 _P3_4	=	0x00b4
                           0000B5   201 _P3_5	=	0x00b5
                           0000B6   202 _P3_6	=	0x00b6
                           0000B7   203 _P3_7	=	0x00b7
                           0000B0   204 _RXD	=	0x00b0
                           0000B1   205 _TXD	=	0x00b1
                           0000B2   206 _INT0	=	0x00b2
                           0000B3   207 _INT1	=	0x00b3
                           0000B4   208 _T0	=	0x00b4
                           0000B5   209 _T1	=	0x00b5
                           0000B6   210 _WR	=	0x00b6
                           0000B7   211 _RD	=	0x00b7
                           0000B8   212 _PX0	=	0x00b8
                           0000B9   213 _PT0	=	0x00b9
                           0000BA   214 _PX1	=	0x00ba
                           0000BB   215 _PT1	=	0x00bb
                           0000BC   216 _PS	=	0x00bc
                           0000D0   217 _P	=	0x00d0
                           0000D1   218 _F1	=	0x00d1
                           0000D2   219 _OV	=	0x00d2
                           0000D3   220 _RS0	=	0x00d3
                           0000D4   221 _RS1	=	0x00d4
                           0000D5   222 _F0	=	0x00d5
                           0000D6   223 _AC	=	0x00d6
                           0000D7   224 _CY	=	0x00d7
                                    225 ;--------------------------------------------------------
                                    226 ; overlayable register banks
                                    227 ;--------------------------------------------------------
                                    228 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        229 	.ds 8
                                    230 ;--------------------------------------------------------
                                    231 ; internal ram data
                                    232 ;--------------------------------------------------------
                                    233 	.area DSEG    (DATA)
                           000021   234 _dataAvil	=	0x0021
                           000022   235 _sharedVar	=	0x0022
                                    236 ;--------------------------------------------------------
                                    237 ; overlayable items in internal ram 
                                    238 ;--------------------------------------------------------
                                    239 ;--------------------------------------------------------
                                    240 ; Stack segment in internal ram 
                                    241 ;--------------------------------------------------------
                                    242 	.area	SSEG
      000021                        243 __start__stack:
      000021                        244 	.ds	1
                                    245 
                                    246 ;--------------------------------------------------------
                                    247 ; indirectly addressable internal ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area ISEG    (DATA)
                                    250 ;--------------------------------------------------------
                                    251 ; absolute internal ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area IABS    (ABS,DATA)
                                    254 	.area IABS    (ABS,DATA)
                                    255 ;--------------------------------------------------------
                                    256 ; bit data
                                    257 ;--------------------------------------------------------
                                    258 	.area BSEG    (BIT)
      000000                        259 _Producer_sloc0_1_0:
      000000                        260 	.ds 1
      000001                        261 _Consumer_sloc0_1_0:
      000001                        262 	.ds 1
                                    263 ;--------------------------------------------------------
                                    264 ; paged external ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area PSEG    (PAG,XDATA)
                                    267 ;--------------------------------------------------------
                                    268 ; external ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area XSEG    (XDATA)
                                    271 ;--------------------------------------------------------
                                    272 ; absolute external ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area XABS    (ABS,XDATA)
                                    275 ;--------------------------------------------------------
                                    276 ; external initialized ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area XISEG   (XDATA)
                                    279 	.area HOME    (CODE)
                                    280 	.area GSINIT0 (CODE)
                                    281 	.area GSINIT1 (CODE)
                                    282 	.area GSINIT2 (CODE)
                                    283 	.area GSINIT3 (CODE)
                                    284 	.area GSINIT4 (CODE)
                                    285 	.area GSINIT5 (CODE)
                                    286 	.area GSINIT  (CODE)
                                    287 	.area GSFINAL (CODE)
                                    288 	.area CSEG    (CODE)
                                    289 ;--------------------------------------------------------
                                    290 ; interrupt vector 
                                    291 ;--------------------------------------------------------
                                    292 	.area HOME    (CODE)
      000000                        293 __interrupt_vect:
      000000 02 00 70         [24]  294 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  295 	reti
      000004                        296 	.ds	7
      00000B 02 00 77         [24]  297 	ljmp	_timer0_ISR
                                    298 ;--------------------------------------------------------
                                    299 ; global & static initialisations
                                    300 ;--------------------------------------------------------
                                    301 	.area HOME    (CODE)
                                    302 	.area GSINIT  (CODE)
                                    303 	.area GSFINAL (CODE)
                                    304 	.area GSINIT  (CODE)
                                    305 	.globl __sdcc_gsinit_startup
                                    306 	.globl __sdcc_program_startup
                                    307 	.globl __start__stack
                                    308 	.globl __mcs51_genXINIT
                                    309 	.globl __mcs51_genXRAMCLEAR
                                    310 	.globl __mcs51_genRAMCLEAR
                                    311 	.area GSFINAL (CODE)
      000011 02 00 0E         [24]  312 	ljmp	__sdcc_program_startup
                                    313 ;--------------------------------------------------------
                                    314 ; Home
                                    315 ;--------------------------------------------------------
                                    316 	.area HOME    (CODE)
                                    317 	.area HOME    (CODE)
      00000E                        318 __sdcc_program_startup:
      00000E 02 00 61         [24]  319 	ljmp	_main
                                    320 ;	return from main will return to caller
                                    321 ;--------------------------------------------------------
                                    322 ; code
                                    323 ;--------------------------------------------------------
                                    324 	.area CSEG    (CODE)
                                    325 ;------------------------------------------------------------
                                    326 ;Allocation info for local variables in function 'Producer'
                                    327 ;------------------------------------------------------------
                                    328 ;	testpreempt.c:24: void Producer(void) {
                                    329 ;	-----------------------------------------
                                    330 ;	 function Producer
                                    331 ;	-----------------------------------------
      000014                        332 _Producer:
                           000007   333 	ar7 = 0x07
                           000006   334 	ar6 = 0x06
                           000005   335 	ar5 = 0x05
                           000004   336 	ar4 = 0x04
                           000003   337 	ar3 = 0x03
                           000002   338 	ar2 = 0x02
                           000001   339 	ar1 = 0x01
                           000000   340 	ar0 = 0x00
                                    341 ;	testpreempt.c:34: while(dataAvil){}
      000014                        342 00101$:
      000014 E5 21            [12]  343 	mov	a,_dataAvil
      000016 70 FC            [24]  344 	jnz	00101$
                                    345 ;	testpreempt.c:40: }
      000018 D2 00            [12]  346 	setb	_Producer_sloc0_1_0
      00001A 10 AF 02         [24]  347 	jbc	ea,00121$
      00001D C2 00            [12]  348 	clr	_Producer_sloc0_1_0
      00001F                        349 00121$:
                                    350 ;	testpreempt.c:36: sharedVar++;
      00001F 05 22            [12]  351 	inc	_sharedVar
                                    352 ;	testpreempt.c:37: if( sharedVar > 'Z' )
      000021 C3               [12]  353 	clr	c
      000022 74 DA            [12]  354 	mov	a,#(0x5A ^ 0x80)
      000024 85 22 F0         [24]  355 	mov	b,_sharedVar
      000027 63 F0 80         [24]  356 	xrl	b,#0x80
      00002A 95 F0            [12]  357 	subb	a,b
      00002C 50 03            [24]  358 	jnc	00105$
                                    359 ;	testpreempt.c:38: sharedVar = 'A';
      00002E 75 22 41         [24]  360 	mov	_sharedVar,#0x41
      000031                        361 00105$:
                                    362 ;	testpreempt.c:39: dataAvil = 1;
      000031 75 21 01         [24]  363 	mov	_dataAvil,#0x01
      000034 A2 00            [12]  364 	mov	c,_Producer_sloc0_1_0
      000036 92 AF            [24]  365 	mov	ea,c
      000038 80 DA            [24]  366 	sjmp	00101$
                                    367 ;------------------------------------------------------------
                                    368 ;Allocation info for local variables in function 'Consumer'
                                    369 ;------------------------------------------------------------
                                    370 ;	testpreempt.c:50: void Consumer(void) {
                                    371 ;	-----------------------------------------
                                    372 ;	 function Consumer
                                    373 ;	-----------------------------------------
      00003A                        374 _Consumer:
                                    375 ;	testpreempt.c:52: TMOD |= (0x20);
      00003A 43 89 20         [24]  376 	orl	_TMOD,#0x20
                                    377 ;	testpreempt.c:53: TH1 = -6;
      00003D 75 8D FA         [24]  378 	mov	_TH1,#0xFA
                                    379 ;	testpreempt.c:54: SCON = (0x50);
      000040 75 98 50         [24]  380 	mov	_SCON,#0x50
                                    381 ;	testpreempt.c:55: TR1 = 1;
      000043 D2 8E            [12]  382 	setb	_TR1
                                    383 ;	testpreempt.c:59: while(!dataAvil){}
      000045                        384 00101$:
      000045 E5 21            [12]  385 	mov	a,_dataAvil
      000047 60 FC            [24]  386 	jz	00101$
                                    387 ;	testpreempt.c:60: SBUF = sharedVar;
      000049 85 22 99         [24]  388 	mov	_SBUF,_sharedVar
                                    389 ;	testpreempt.c:61: while(!TI){}
      00004C                        390 00104$:
                                    391 ;	testpreempt.c:62: TI = 0;
      00004C 10 99 02         [24]  392 	jbc	_TI,00125$
      00004F 80 FB            [24]  393 	sjmp	00104$
      000051                        394 00125$:
                                    395 ;	testpreempt.c:67: }
      000051 D2 01            [12]  396 	setb	_Consumer_sloc0_1_0
      000053 10 AF 02         [24]  397 	jbc	ea,00126$
      000056 C2 01            [12]  398 	clr	_Consumer_sloc0_1_0
      000058                        399 00126$:
                                    400 ;	testpreempt.c:66: dataAvil = 0;
      000058 75 21 00         [24]  401 	mov	_dataAvil,#0x00
      00005B A2 01            [12]  402 	mov	c,_Consumer_sloc0_1_0
      00005D 92 AF            [24]  403 	mov	ea,c
      00005F 80 E4            [24]  404 	sjmp	00101$
                                    405 ;------------------------------------------------------------
                                    406 ;Allocation info for local variables in function 'main'
                                    407 ;------------------------------------------------------------
                                    408 ;	testpreempt.c:76: void main(void) {
                                    409 ;	-----------------------------------------
                                    410 ;	 function main
                                    411 ;	-----------------------------------------
      000061                        412 _main:
                                    413 ;	testpreempt.c:78: dataAvil = 1;
      000061 75 21 01         [24]  414 	mov	_dataAvil,#0x01
                                    415 ;	testpreempt.c:79: sharedVar = 'A';
      000064 75 22 41         [24]  416 	mov	_sharedVar,#0x41
                                    417 ;	testpreempt.c:85: ThreadCreate(Producer);
      000067 90 00 14         [24]  418 	mov	dptr,#_Producer
      00006A 12 00 BB         [24]  419 	lcall	_ThreadCreate
                                    420 ;	testpreempt.c:86: Consumer();
      00006D 02 00 3A         [24]  421 	ljmp	_Consumer
                                    422 ;------------------------------------------------------------
                                    423 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    424 ;------------------------------------------------------------
                                    425 ;	testpreempt.c:89: void _sdcc_gsinit_startup(void) {
                                    426 ;	-----------------------------------------
                                    427 ;	 function _sdcc_gsinit_startup
                                    428 ;	-----------------------------------------
      000070                        429 __sdcc_gsinit_startup:
                                    430 ;	testpreempt.c:92: __endasm;
      000070 02 00 7B         [24]  431 	ljmp _Bootstrap
      000073 22               [24]  432 	ret
                                    433 ;------------------------------------------------------------
                                    434 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    435 ;------------------------------------------------------------
                                    436 ;	testpreempt.c:95: void _mcs51_genRAMCLEAR(void) {}
                                    437 ;	-----------------------------------------
                                    438 ;	 function _mcs51_genRAMCLEAR
                                    439 ;	-----------------------------------------
      000074                        440 __mcs51_genRAMCLEAR:
      000074 22               [24]  441 	ret
                                    442 ;------------------------------------------------------------
                                    443 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    444 ;------------------------------------------------------------
                                    445 ;	testpreempt.c:96: void _mcs51_genXINIT(void) {}
                                    446 ;	-----------------------------------------
                                    447 ;	 function _mcs51_genXINIT
                                    448 ;	-----------------------------------------
      000075                        449 __mcs51_genXINIT:
      000075 22               [24]  450 	ret
                                    451 ;------------------------------------------------------------
                                    452 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    453 ;------------------------------------------------------------
                                    454 ;	testpreempt.c:97: void _mcs51_genXRAMCLEAR(void) {}
                                    455 ;	-----------------------------------------
                                    456 ;	 function _mcs51_genXRAMCLEAR
                                    457 ;	-----------------------------------------
      000076                        458 __mcs51_genXRAMCLEAR:
      000076 22               [24]  459 	ret
                                    460 ;------------------------------------------------------------
                                    461 ;Allocation info for local variables in function 'timer0_ISR'
                                    462 ;------------------------------------------------------------
                                    463 ;	testpreempt.c:99: void timer0_ISR(void) __interrupt(1){
                                    464 ;	-----------------------------------------
                                    465 ;	 function timer0_ISR
                                    466 ;	-----------------------------------------
      000077                        467 _timer0_ISR:
                                    468 ;	testpreempt.c:102: __endasm;
      000077 02 01 FB         [24]  469 	ljmp _myTimer0Handler
      00007A 32               [24]  470 	reti
                                    471 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    472 ;	eliminated unneeded push/pop psw
                                    473 ;	eliminated unneeded push/pop dpl
                                    474 ;	eliminated unneeded push/pop dph
                                    475 ;	eliminated unneeded push/pop b
                                    476 ;	eliminated unneeded push/pop acc
                                    477 	.area CSEG    (CODE)
                                    478 	.area CONST   (CODE)
                                    479 	.area XINIT   (CODE)
                                    480 	.area CABS    (ABS,CODE)
