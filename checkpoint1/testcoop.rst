                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Thu Jan 16 19:00:44 2020
                                      5 ;--------------------------------------------------------
                                      6 	.module testcoop
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl __mcs51_genXRAMCLEAR
                                     13 	.globl __mcs51_genXINIT
                                     14 	.globl __mcs51_genRAMCLEAR
                                     15 	.globl __sdcc_gsinit_startup
                                     16 	.globl _main
                                     17 	.globl _Consumer
                                     18 	.globl _Producer
                                     19 	.globl _ThreadYield
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
                           000020   234 _dataAvil	=	0x0020
                           000022   235 _sharedVar	=	0x0022
                                    236 ;--------------------------------------------------------
                                    237 ; overlayable items in internal ram 
                                    238 ;--------------------------------------------------------
                                    239 ;--------------------------------------------------------
                                    240 ; Stack segment in internal ram 
                                    241 ;--------------------------------------------------------
                                    242 	.area	SSEG
      000008                        243 __start__stack:
      000008                        244 	.ds	1
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
                                    259 ;--------------------------------------------------------
                                    260 ; paged external ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area PSEG    (PAG,XDATA)
                                    263 ;--------------------------------------------------------
                                    264 ; external ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area XSEG    (XDATA)
                                    267 ;--------------------------------------------------------
                                    268 ; absolute external ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area XABS    (ABS,XDATA)
                                    271 ;--------------------------------------------------------
                                    272 ; external initialized ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area XISEG   (XDATA)
                                    275 	.area HOME    (CODE)
                                    276 	.area GSINIT0 (CODE)
                                    277 	.area GSINIT1 (CODE)
                                    278 	.area GSINIT2 (CODE)
                                    279 	.area GSINIT3 (CODE)
                                    280 	.area GSINIT4 (CODE)
                                    281 	.area GSINIT5 (CODE)
                                    282 	.area GSINIT  (CODE)
                                    283 	.area GSFINAL (CODE)
                                    284 	.area CSEG    (CODE)
                                    285 ;--------------------------------------------------------
                                    286 ; interrupt vector 
                                    287 ;--------------------------------------------------------
                                    288 	.area HOME    (CODE)
      000000                        289 __interrupt_vect:
      000000 02 00 59         [24]  290 	ljmp	__sdcc_gsinit_startup
                                    291 ;--------------------------------------------------------
                                    292 ; global & static initialisations
                                    293 ;--------------------------------------------------------
                                    294 	.area HOME    (CODE)
                                    295 	.area GSINIT  (CODE)
                                    296 	.area GSFINAL (CODE)
                                    297 	.area GSINIT  (CODE)
                                    298 	.globl __sdcc_gsinit_startup
                                    299 	.globl __sdcc_program_startup
                                    300 	.globl __start__stack
                                    301 	.globl __mcs51_genXINIT
                                    302 	.globl __mcs51_genXRAMCLEAR
                                    303 	.globl __mcs51_genRAMCLEAR
                                    304 	.area GSFINAL (CODE)
      000006 02 00 03         [24]  305 	ljmp	__sdcc_program_startup
                                    306 ;--------------------------------------------------------
                                    307 ; Home
                                    308 ;--------------------------------------------------------
                                    309 	.area HOME    (CODE)
                                    310 	.area HOME    (CODE)
      000003                        311 __sdcc_program_startup:
      000003 02 00 4D         [24]  312 	ljmp	_main
                                    313 ;	return from main will return to caller
                                    314 ;--------------------------------------------------------
                                    315 ; code
                                    316 ;--------------------------------------------------------
                                    317 	.area CSEG    (CODE)
                                    318 ;------------------------------------------------------------
                                    319 ;Allocation info for local variables in function 'Producer'
                                    320 ;------------------------------------------------------------
                                    321 ;	testcoop.c:24: void Producer(void) {
                                    322 ;	-----------------------------------------
                                    323 ;	 function Producer
                                    324 ;	-----------------------------------------
      000009                        325 _Producer:
                           000007   326 	ar7 = 0x07
                           000006   327 	ar6 = 0x06
                           000005   328 	ar5 = 0x05
                           000004   329 	ar4 = 0x04
                           000003   330 	ar3 = 0x03
                           000002   331 	ar2 = 0x02
                           000001   332 	ar1 = 0x01
                           000000   333 	ar0 = 0x00
                                    334 ;	testcoop.c:31: sharedVar = 'A';
      000009 75 22 41         [24]  335 	mov	_sharedVar,#0x41
                                    336 ;	testcoop.c:36: while(dataAvil)
      00000C                        337 00101$:
      00000C E5 20            [12]  338 	mov	a,_dataAvil
      00000E 60 05            [24]  339 	jz	00103$
                                    340 ;	testcoop.c:37: ThreadYield();
      000010 12 01 1F         [24]  341 	lcall	_ThreadYield
      000013 80 F7            [24]  342 	sjmp	00101$
      000015                        343 00103$:
                                    344 ;	testcoop.c:39: dataAvil = 1;
      000015 75 20 01         [24]  345 	mov	_dataAvil,#0x01
                                    346 ;	testcoop.c:40: sharedVar++;
      000018 05 22            [12]  347 	inc	_sharedVar
                                    348 ;	testcoop.c:41: if( sharedVar > 'Z' )
      00001A C3               [12]  349 	clr	c
      00001B 74 DA            [12]  350 	mov	a,#(0x5A ^ 0x80)
      00001D 85 22 F0         [24]  351 	mov	b,_sharedVar
      000020 63 F0 80         [24]  352 	xrl	b,#0x80
      000023 95 F0            [12]  353 	subb	a,b
      000025 50 E5            [24]  354 	jnc	00101$
                                    355 ;	testcoop.c:42: sharedVar = 'A';
      000027 75 22 41         [24]  356 	mov	_sharedVar,#0x41
      00002A 80 E0            [24]  357 	sjmp	00101$
                                    358 ;------------------------------------------------------------
                                    359 ;Allocation info for local variables in function 'Consumer'
                                    360 ;------------------------------------------------------------
                                    361 ;	testcoop.c:51: void Consumer(void) {
                                    362 ;	-----------------------------------------
                                    363 ;	 function Consumer
                                    364 ;	-----------------------------------------
      00002C                        365 _Consumer:
                                    366 ;	testcoop.c:53: TMOD = (0x20);
      00002C 75 89 20         [24]  367 	mov	_TMOD,#0x20
                                    368 ;	testcoop.c:54: TH1 = -6;
      00002F 75 8D FA         [24]  369 	mov	_TH1,#0xFA
                                    370 ;	testcoop.c:55: SCON = (0x50);
      000032 75 98 50         [24]  371 	mov	_SCON,#0x50
                                    372 ;	testcoop.c:56: TR1 = 1;
      000035 D2 8E            [12]  373 	setb	_TR1
                                    374 ;	testcoop.c:60: while(!dataAvil)
      000037                        375 00101$:
      000037 E5 20            [12]  376 	mov	a,_dataAvil
      000039 70 05            [24]  377 	jnz	00103$
                                    378 ;	testcoop.c:61: ThreadYield();
      00003B 12 01 1F         [24]  379 	lcall	_ThreadYield
      00003E 80 F7            [24]  380 	sjmp	00101$
      000040                        381 00103$:
                                    382 ;	testcoop.c:67: SBUF = sharedVar;//write data
      000040 85 22 99         [24]  383 	mov	_SBUF,_sharedVar
                                    384 ;	testcoop.c:68: dataAvil = 0;
      000043 75 20 00         [24]  385 	mov	_dataAvil,#0x00
                                    386 ;	testcoop.c:69: while(!TI){}
      000046                        387 00104$:
                                    388 ;	testcoop.c:70: TI = 0;
      000046 10 99 02         [24]  389 	jbc	_TI,00125$
      000049 80 FB            [24]  390 	sjmp	00104$
      00004B                        391 00125$:
      00004B 80 EA            [24]  392 	sjmp	00101$
                                    393 ;------------------------------------------------------------
                                    394 ;Allocation info for local variables in function 'main'
                                    395 ;------------------------------------------------------------
                                    396 ;	testcoop.c:80: void main(void) {
                                    397 ;	-----------------------------------------
                                    398 ;	 function main
                                    399 ;	-----------------------------------------
      00004D                        400 _main:
                                    401 ;	testcoop.c:82: dataAvil = 1;
      00004D 75 20 01         [24]  402 	mov	_dataAvil,#0x01
                                    403 ;	testcoop.c:88: ThreadCreate(Producer);
      000050 90 00 09         [24]  404 	mov	dptr,#_Producer
      000053 12 00 98         [24]  405 	lcall	_ThreadCreate
                                    406 ;	testcoop.c:89: Consumer();
      000056 02 00 2C         [24]  407 	ljmp	_Consumer
                                    408 ;------------------------------------------------------------
                                    409 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    410 ;------------------------------------------------------------
                                    411 ;	testcoop.c:92: void _sdcc_gsinit_startup(void) {
                                    412 ;	-----------------------------------------
                                    413 ;	 function _sdcc_gsinit_startup
                                    414 ;	-----------------------------------------
      000059                        415 __sdcc_gsinit_startup:
                                    416 ;	testcoop.c:95: __endasm;
      000059 02 00 60         [24]  417 	ljmp _Bootstrap
      00005C 22               [24]  418 	ret
                                    419 ;------------------------------------------------------------
                                    420 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    421 ;------------------------------------------------------------
                                    422 ;	testcoop.c:98: void _mcs51_genRAMCLEAR(void) {}
                                    423 ;	-----------------------------------------
                                    424 ;	 function _mcs51_genRAMCLEAR
                                    425 ;	-----------------------------------------
      00005D                        426 __mcs51_genRAMCLEAR:
      00005D 22               [24]  427 	ret
                                    428 ;------------------------------------------------------------
                                    429 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    430 ;------------------------------------------------------------
                                    431 ;	testcoop.c:99: void _mcs51_genXINIT(void) {}
                                    432 ;	-----------------------------------------
                                    433 ;	 function _mcs51_genXINIT
                                    434 ;	-----------------------------------------
      00005E                        435 __mcs51_genXINIT:
      00005E 22               [24]  436 	ret
                                    437 ;------------------------------------------------------------
                                    438 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    439 ;------------------------------------------------------------
                                    440 ;	testcoop.c:100: void _mcs51_genXRAMCLEAR(void) {}
                                    441 ;	-----------------------------------------
                                    442 ;	 function _mcs51_genXRAMCLEAR
                                    443 ;	-----------------------------------------
      00005F                        444 __mcs51_genXRAMCLEAR:
      00005F 22               [24]  445 	ret
                                    446 	.area CSEG    (CODE)
                                    447 	.area CONST   (CODE)
                                    448 	.area XINIT   (CODE)
                                    449 	.area CABS    (ABS,CODE)
