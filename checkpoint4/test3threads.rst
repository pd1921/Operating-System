                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Thu Jan 16 20:21:12 2020
                                      5 ;--------------------------------------------------------
                                      6 	.module test3threads
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
                                     19 	.globl _Producer2
                                     20 	.globl _Producer1
                                     21 	.globl _ThreadCreate
                                     22 	.globl _CY
                                     23 	.globl _AC
                                     24 	.globl _F0
                                     25 	.globl _RS1
                                     26 	.globl _RS0
                                     27 	.globl _OV
                                     28 	.globl _F1
                                     29 	.globl _P
                                     30 	.globl _PS
                                     31 	.globl _PT1
                                     32 	.globl _PX1
                                     33 	.globl _PT0
                                     34 	.globl _PX0
                                     35 	.globl _RD
                                     36 	.globl _WR
                                     37 	.globl _T1
                                     38 	.globl _T0
                                     39 	.globl _INT1
                                     40 	.globl _INT0
                                     41 	.globl _TXD
                                     42 	.globl _RXD
                                     43 	.globl _P3_7
                                     44 	.globl _P3_6
                                     45 	.globl _P3_5
                                     46 	.globl _P3_4
                                     47 	.globl _P3_3
                                     48 	.globl _P3_2
                                     49 	.globl _P3_1
                                     50 	.globl _P3_0
                                     51 	.globl _EA
                                     52 	.globl _ES
                                     53 	.globl _ET1
                                     54 	.globl _EX1
                                     55 	.globl _ET0
                                     56 	.globl _EX0
                                     57 	.globl _P2_7
                                     58 	.globl _P2_6
                                     59 	.globl _P2_5
                                     60 	.globl _P2_4
                                     61 	.globl _P2_3
                                     62 	.globl _P2_2
                                     63 	.globl _P2_1
                                     64 	.globl _P2_0
                                     65 	.globl _SM0
                                     66 	.globl _SM1
                                     67 	.globl _SM2
                                     68 	.globl _REN
                                     69 	.globl _TB8
                                     70 	.globl _RB8
                                     71 	.globl _TI
                                     72 	.globl _RI
                                     73 	.globl _P1_7
                                     74 	.globl _P1_6
                                     75 	.globl _P1_5
                                     76 	.globl _P1_4
                                     77 	.globl _P1_3
                                     78 	.globl _P1_2
                                     79 	.globl _P1_1
                                     80 	.globl _P1_0
                                     81 	.globl _TF1
                                     82 	.globl _TR1
                                     83 	.globl _TF0
                                     84 	.globl _TR0
                                     85 	.globl _IE1
                                     86 	.globl _IT1
                                     87 	.globl _IE0
                                     88 	.globl _IT0
                                     89 	.globl _P0_7
                                     90 	.globl _P0_6
                                     91 	.globl _P0_5
                                     92 	.globl _P0_4
                                     93 	.globl _P0_3
                                     94 	.globl _P0_2
                                     95 	.globl _P0_1
                                     96 	.globl _P0_0
                                     97 	.globl _B
                                     98 	.globl _ACC
                                     99 	.globl _PSW
                                    100 	.globl _IP
                                    101 	.globl _P3
                                    102 	.globl _IE
                                    103 	.globl _P2
                                    104 	.globl _SBUF
                                    105 	.globl _SCON
                                    106 	.globl _P1
                                    107 	.globl _TH1
                                    108 	.globl _TH0
                                    109 	.globl _TL1
                                    110 	.globl _TL0
                                    111 	.globl _TMOD
                                    112 	.globl _TCON
                                    113 	.globl _PCON
                                    114 	.globl _DPH
                                    115 	.globl _DPL
                                    116 	.globl _SP
                                    117 	.globl _P0
                                    118 	.globl _empty
                                    119 	.globl _full
                                    120 	.globl _mutex
                                    121 	.globl _SBUFCount
                                    122 	.globl _bufferCount
                                    123 	.globl _buffer
                                    124 	.globl _sharedVar
                                    125 	.globl _sharedNum
                                    126 ;--------------------------------------------------------
                                    127 ; special function registers
                                    128 ;--------------------------------------------------------
                                    129 	.area RSEG    (ABS,DATA)
      000000                        130 	.org 0x0000
                           000080   131 _P0	=	0x0080
                           000081   132 _SP	=	0x0081
                           000082   133 _DPL	=	0x0082
                           000083   134 _DPH	=	0x0083
                           000087   135 _PCON	=	0x0087
                           000088   136 _TCON	=	0x0088
                           000089   137 _TMOD	=	0x0089
                           00008A   138 _TL0	=	0x008a
                           00008B   139 _TL1	=	0x008b
                           00008C   140 _TH0	=	0x008c
                           00008D   141 _TH1	=	0x008d
                           000090   142 _P1	=	0x0090
                           000098   143 _SCON	=	0x0098
                           000099   144 _SBUF	=	0x0099
                           0000A0   145 _P2	=	0x00a0
                           0000A8   146 _IE	=	0x00a8
                           0000B0   147 _P3	=	0x00b0
                           0000B8   148 _IP	=	0x00b8
                           0000D0   149 _PSW	=	0x00d0
                           0000E0   150 _ACC	=	0x00e0
                           0000F0   151 _B	=	0x00f0
                                    152 ;--------------------------------------------------------
                                    153 ; special function bits
                                    154 ;--------------------------------------------------------
                                    155 	.area RSEG    (ABS,DATA)
      000000                        156 	.org 0x0000
                           000080   157 _P0_0	=	0x0080
                           000081   158 _P0_1	=	0x0081
                           000082   159 _P0_2	=	0x0082
                           000083   160 _P0_3	=	0x0083
                           000084   161 _P0_4	=	0x0084
                           000085   162 _P0_5	=	0x0085
                           000086   163 _P0_6	=	0x0086
                           000087   164 _P0_7	=	0x0087
                           000088   165 _IT0	=	0x0088
                           000089   166 _IE0	=	0x0089
                           00008A   167 _IT1	=	0x008a
                           00008B   168 _IE1	=	0x008b
                           00008C   169 _TR0	=	0x008c
                           00008D   170 _TF0	=	0x008d
                           00008E   171 _TR1	=	0x008e
                           00008F   172 _TF1	=	0x008f
                           000090   173 _P1_0	=	0x0090
                           000091   174 _P1_1	=	0x0091
                           000092   175 _P1_2	=	0x0092
                           000093   176 _P1_3	=	0x0093
                           000094   177 _P1_4	=	0x0094
                           000095   178 _P1_5	=	0x0095
                           000096   179 _P1_6	=	0x0096
                           000097   180 _P1_7	=	0x0097
                           000098   181 _RI	=	0x0098
                           000099   182 _TI	=	0x0099
                           00009A   183 _RB8	=	0x009a
                           00009B   184 _TB8	=	0x009b
                           00009C   185 _REN	=	0x009c
                           00009D   186 _SM2	=	0x009d
                           00009E   187 _SM1	=	0x009e
                           00009F   188 _SM0	=	0x009f
                           0000A0   189 _P2_0	=	0x00a0
                           0000A1   190 _P2_1	=	0x00a1
                           0000A2   191 _P2_2	=	0x00a2
                           0000A3   192 _P2_3	=	0x00a3
                           0000A4   193 _P2_4	=	0x00a4
                           0000A5   194 _P2_5	=	0x00a5
                           0000A6   195 _P2_6	=	0x00a6
                           0000A7   196 _P2_7	=	0x00a7
                           0000A8   197 _EX0	=	0x00a8
                           0000A9   198 _ET0	=	0x00a9
                           0000AA   199 _EX1	=	0x00aa
                           0000AB   200 _ET1	=	0x00ab
                           0000AC   201 _ES	=	0x00ac
                           0000AF   202 _EA	=	0x00af
                           0000B0   203 _P3_0	=	0x00b0
                           0000B1   204 _P3_1	=	0x00b1
                           0000B2   205 _P3_2	=	0x00b2
                           0000B3   206 _P3_3	=	0x00b3
                           0000B4   207 _P3_4	=	0x00b4
                           0000B5   208 _P3_5	=	0x00b5
                           0000B6   209 _P3_6	=	0x00b6
                           0000B7   210 _P3_7	=	0x00b7
                           0000B0   211 _RXD	=	0x00b0
                           0000B1   212 _TXD	=	0x00b1
                           0000B2   213 _INT0	=	0x00b2
                           0000B3   214 _INT1	=	0x00b3
                           0000B4   215 _T0	=	0x00b4
                           0000B5   216 _T1	=	0x00b5
                           0000B6   217 _WR	=	0x00b6
                           0000B7   218 _RD	=	0x00b7
                           0000B8   219 _PX0	=	0x00b8
                           0000B9   220 _PT0	=	0x00b9
                           0000BA   221 _PX1	=	0x00ba
                           0000BB   222 _PT1	=	0x00bb
                           0000BC   223 _PS	=	0x00bc
                           0000D0   224 _P	=	0x00d0
                           0000D1   225 _F1	=	0x00d1
                           0000D2   226 _OV	=	0x00d2
                           0000D3   227 _RS0	=	0x00d3
                           0000D4   228 _RS1	=	0x00d4
                           0000D5   229 _F0	=	0x00d5
                           0000D6   230 _AC	=	0x00d6
                           0000D7   231 _CY	=	0x00d7
                                    232 ;--------------------------------------------------------
                                    233 ; overlayable register banks
                                    234 ;--------------------------------------------------------
                                    235 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        236 	.ds 8
                                    237 ;--------------------------------------------------------
                                    238 ; internal ram data
                                    239 ;--------------------------------------------------------
                                    240 	.area DSEG    (DATA)
                           000021   241 _sharedNum	=	0x0021
                           000022   242 _sharedVar	=	0x0022
                           00002B   243 _buffer	=	0x002b
                           00002E   244 _bufferCount	=	0x002e
                           00002F   245 _SBUFCount	=	0x002f
                           000036   246 _mutex	=	0x0036
                           000037   247 _full	=	0x0037
                           000038   248 _empty	=	0x0038
                                    249 ;--------------------------------------------------------
                                    250 ; overlayable items in internal ram 
                                    251 ;--------------------------------------------------------
                                    252 ;--------------------------------------------------------
                                    253 ; Stack segment in internal ram 
                                    254 ;--------------------------------------------------------
                                    255 	.area	SSEG
      000008                        256 __start__stack:
      000008                        257 	.ds	1
                                    258 
                                    259 ;--------------------------------------------------------
                                    260 ; indirectly addressable internal ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area ISEG    (DATA)
                                    263 ;--------------------------------------------------------
                                    264 ; absolute internal ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area IABS    (ABS,DATA)
                                    267 	.area IABS    (ABS,DATA)
                                    268 ;--------------------------------------------------------
                                    269 ; bit data
                                    270 ;--------------------------------------------------------
                                    271 	.area BSEG    (BIT)
                                    272 ;--------------------------------------------------------
                                    273 ; paged external ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area PSEG    (PAG,XDATA)
                                    276 ;--------------------------------------------------------
                                    277 ; external ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area XSEG    (XDATA)
                                    280 ;--------------------------------------------------------
                                    281 ; absolute external ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area XABS    (ABS,XDATA)
                                    284 ;--------------------------------------------------------
                                    285 ; external initialized ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area XISEG   (XDATA)
                                    288 	.area HOME    (CODE)
                                    289 	.area GSINIT0 (CODE)
                                    290 	.area GSINIT1 (CODE)
                                    291 	.area GSINIT2 (CODE)
                                    292 	.area GSINIT3 (CODE)
                                    293 	.area GSINIT4 (CODE)
                                    294 	.area GSINIT5 (CODE)
                                    295 	.area GSINIT  (CODE)
                                    296 	.area GSFINAL (CODE)
                                    297 	.area CSEG    (CODE)
                                    298 ;--------------------------------------------------------
                                    299 ; interrupt vector 
                                    300 ;--------------------------------------------------------
                                    301 	.area HOME    (CODE)
      000000                        302 __interrupt_vect:
      000000 02 01 09         [24]  303 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  304 	reti
      000004                        305 	.ds	7
      00000B 02 01 10         [24]  306 	ljmp	_timer0_ISR
                                    307 ;--------------------------------------------------------
                                    308 ; global & static initialisations
                                    309 ;--------------------------------------------------------
                                    310 	.area HOME    (CODE)
                                    311 	.area GSINIT  (CODE)
                                    312 	.area GSFINAL (CODE)
                                    313 	.area GSINIT  (CODE)
                                    314 	.globl __sdcc_gsinit_startup
                                    315 	.globl __sdcc_program_startup
                                    316 	.globl __start__stack
                                    317 	.globl __mcs51_genXINIT
                                    318 	.globl __mcs51_genXRAMCLEAR
                                    319 	.globl __mcs51_genRAMCLEAR
                                    320 	.area GSFINAL (CODE)
      000011 02 00 0E         [24]  321 	ljmp	__sdcc_program_startup
                                    322 ;--------------------------------------------------------
                                    323 ; Home
                                    324 ;--------------------------------------------------------
                                    325 	.area HOME    (CODE)
                                    326 	.area HOME    (CODE)
      00000E                        327 __sdcc_program_startup:
      00000E 02 00 E5         [24]  328 	ljmp	_main
                                    329 ;	return from main will return to caller
                                    330 ;--------------------------------------------------------
                                    331 ; code
                                    332 ;--------------------------------------------------------
                                    333 	.area CSEG    (CODE)
                                    334 ;------------------------------------------------------------
                                    335 ;Allocation info for local variables in function 'Producer1'
                                    336 ;------------------------------------------------------------
                                    337 ;	test3threads.c:27: void Producer1(void) {
                                    338 ;	-----------------------------------------
                                    339 ;	 function Producer1
                                    340 ;	-----------------------------------------
      000014                        341 _Producer1:
                           000007   342 	ar7 = 0x07
                           000006   343 	ar6 = 0x06
                           000005   344 	ar5 = 0x05
                           000004   345 	ar4 = 0x04
                           000003   346 	ar3 = 0x03
                           000002   347 	ar2 = 0x02
                           000001   348 	ar1 = 0x01
                           000000   349 	ar0 = 0x00
                                    350 ;	test3threads.c:28: while (1) {
      000014                        351 00107$:
                                    352 ;	test3threads.c:32: SemaphoreWait(empty);
      000014                        353 	 0$:
      000014 85 38 E0         [24]  354 	MOV ACC, _empty 
      000017 60 FB            [24]  355 	JZ 0$ 
      000019 20 E7 F8         [24]  356 	JB ACC.7, 0$ 
      00001C 15 38            [12]  357 	dec _empty 
                                    358 ;	test3threads.c:33: SemaphoreWait(mutex);
      00001E                        359 	 1$:
      00001E 85 36 E0         [24]  360 	MOV ACC, _mutex 
      000021 60 FB            [24]  361 	JZ 1$ 
      000023 20 E7 F8         [24]  362 	JB ACC.7, 1$ 
      000026 15 36            [12]  363 	dec _mutex 
                                    364 ;	test3threads.c:34: if( sharedVar > 'Z' || sharedVar < 'A' )
      000028 C3               [12]  365 	clr	c
      000029 74 DA            [12]  366 	mov	a,#(0x5A ^ 0x80)
      00002B 85 22 F0         [24]  367 	mov	b,_sharedVar
      00002E 63 F0 80         [24]  368 	xrl	b,#0x80
      000031 95 F0            [12]  369 	subb	a,b
      000033 40 08            [24]  370 	jc	00101$
      000035 E5 22            [12]  371 	mov	a,_sharedVar
      000037 64 80            [12]  372 	xrl	a,#0x80
      000039 94 C1            [12]  373 	subb	a,#0xc1
      00003B 50 03            [24]  374 	jnc	00102$
      00003D                        375 00101$:
                                    376 ;	test3threads.c:35: sharedVar = 'A';
      00003D 75 22 41         [24]  377 	mov	_sharedVar,#0x41
      000040                        378 00102$:
                                    379 ;	test3threads.c:36: if( bufferCount >= 3 )
      000040 C3               [12]  380 	clr	c
      000041 E5 2E            [12]  381 	mov	a,_bufferCount
      000043 64 80            [12]  382 	xrl	a,#0x80
      000045 94 83            [12]  383 	subb	a,#0x83
      000047 40 03            [24]  384 	jc	00105$
                                    385 ;	test3threads.c:37: bufferCount = 0;
      000049 75 2E 00         [24]  386 	mov	_bufferCount,#0x00
      00004C                        387 00105$:
                                    388 ;	test3threads.c:38: buffer[bufferCount] = sharedVar;
      00004C E5 2E            [12]  389 	mov	a,_bufferCount
      00004E 24 2B            [12]  390 	add	a,#_buffer
      000050 F8               [12]  391 	mov	r0,a
      000051 A6 22            [24]  392 	mov	@r0,_sharedVar
                                    393 ;	test3threads.c:40: bufferCount++;
      000053 05 2E            [12]  394 	inc	_bufferCount
                                    395 ;	test3threads.c:41: sharedVar++;
      000055 05 22            [12]  396 	inc	_sharedVar
                                    397 ;	test3threads.c:42: SemaphoreSignal(mutex);
      000057 05 36            [12]  398 	INC _mutex 
                                    399 ;	test3threads.c:43: SemaphoreSignal(full);
      000059 05 37            [12]  400 	INC _full 
      00005B 80 B7            [24]  401 	sjmp	00107$
                                    402 ;------------------------------------------------------------
                                    403 ;Allocation info for local variables in function 'Producer2'
                                    404 ;------------------------------------------------------------
                                    405 ;	test3threads.c:51: void Producer2(void) {
                                    406 ;	-----------------------------------------
                                    407 ;	 function Producer2
                                    408 ;	-----------------------------------------
      00005D                        409 _Producer2:
                                    410 ;	test3threads.c:52: while (1) {
      00005D                        411 00107$:
                                    412 ;	test3threads.c:56: SemaphoreWait(empty);
      00005D                        413 	 2$:
      00005D 85 38 E0         [24]  414 	MOV ACC, _empty 
      000060 60 FB            [24]  415 	JZ 2$ 
      000062 20 E7 F8         [24]  416 	JB ACC.7, 2$ 
      000065 15 38            [12]  417 	dec _empty 
                                    418 ;	test3threads.c:57: SemaphoreWait(mutex);
      000067                        419 	 3$:
      000067 85 36 E0         [24]  420 	MOV ACC, _mutex 
      00006A 60 FB            [24]  421 	JZ 3$ 
      00006C 20 E7 F8         [24]  422 	JB ACC.7, 3$ 
      00006F 15 36            [12]  423 	dec _mutex 
                                    424 ;	test3threads.c:58: if( sharedNum > '9' || sharedNum < '0' )
      000071 C3               [12]  425 	clr	c
      000072 74 B9            [12]  426 	mov	a,#(0x39 ^ 0x80)
      000074 85 21 F0         [24]  427 	mov	b,_sharedNum
      000077 63 F0 80         [24]  428 	xrl	b,#0x80
      00007A 95 F0            [12]  429 	subb	a,b
      00007C 40 08            [24]  430 	jc	00101$
      00007E E5 21            [12]  431 	mov	a,_sharedNum
      000080 64 80            [12]  432 	xrl	a,#0x80
      000082 94 B0            [12]  433 	subb	a,#0xb0
      000084 50 03            [24]  434 	jnc	00102$
      000086                        435 00101$:
                                    436 ;	test3threads.c:59: sharedNum = '0';
      000086 75 21 30         [24]  437 	mov	_sharedNum,#0x30
      000089                        438 00102$:
                                    439 ;	test3threads.c:60: if( bufferCount >= 3 )
      000089 C3               [12]  440 	clr	c
      00008A E5 2E            [12]  441 	mov	a,_bufferCount
      00008C 64 80            [12]  442 	xrl	a,#0x80
      00008E 94 83            [12]  443 	subb	a,#0x83
      000090 40 03            [24]  444 	jc	00105$
                                    445 ;	test3threads.c:61: bufferCount = 0;
      000092 75 2E 00         [24]  446 	mov	_bufferCount,#0x00
      000095                        447 00105$:
                                    448 ;	test3threads.c:62: buffer[bufferCount] = sharedNum;
      000095 E5 2E            [12]  449 	mov	a,_bufferCount
      000097 24 2B            [12]  450 	add	a,#_buffer
      000099 F8               [12]  451 	mov	r0,a
      00009A A6 21            [24]  452 	mov	@r0,_sharedNum
                                    453 ;	test3threads.c:64: bufferCount++;
      00009C 05 2E            [12]  454 	inc	_bufferCount
                                    455 ;	test3threads.c:65: sharedNum++;
      00009E 05 21            [12]  456 	inc	_sharedNum
                                    457 ;	test3threads.c:66: SemaphoreSignal(mutex);
      0000A0 05 36            [12]  458 	INC _mutex 
                                    459 ;	test3threads.c:67: SemaphoreSignal(full);
      0000A2 05 37            [12]  460 	INC _full 
      0000A4 80 B7            [24]  461 	sjmp	00107$
                                    462 ;------------------------------------------------------------
                                    463 ;Allocation info for local variables in function 'Consumer'
                                    464 ;------------------------------------------------------------
                                    465 ;	test3threads.c:76: void Consumer(void) {
                                    466 ;	-----------------------------------------
                                    467 ;	 function Consumer
                                    468 ;	-----------------------------------------
      0000A6                        469 _Consumer:
                                    470 ;	test3threads.c:78: TMOD |= (0x20);
      0000A6 43 89 20         [24]  471 	orl	_TMOD,#0x20
                                    472 ;	test3threads.c:79: TH1 = -6;
      0000A9 75 8D FA         [24]  473 	mov	_TH1,#0xFA
                                    474 ;	test3threads.c:80: SCON = (0x50);
      0000AC 75 98 50         [24]  475 	mov	_SCON,#0x50
                                    476 ;	test3threads.c:81: TR1 = 1;
      0000AF D2 8E            [12]  477 	setb	_TR1
                                    478 ;	test3threads.c:83: while (1) {
      0000B1                        479 00107$:
                                    480 ;	test3threads.c:85: SemaphoreWait(full);
      0000B1                        481 	 4$:
      0000B1 85 37 E0         [24]  482 	MOV ACC, _full 
      0000B4 60 FB            [24]  483 	JZ 4$ 
      0000B6 20 E7 F8         [24]  484 	JB ACC.7, 4$ 
      0000B9 15 37            [12]  485 	dec _full 
                                    486 ;	test3threads.c:86: SemaphoreWait(mutex);
      0000BB                        487 	 5$:
      0000BB 85 36 E0         [24]  488 	MOV ACC, _mutex 
      0000BE 60 FB            [24]  489 	JZ 5$ 
      0000C0 20 E7 F8         [24]  490 	JB ACC.7, 5$ 
      0000C3 15 36            [12]  491 	dec _mutex 
                                    492 ;	test3threads.c:87: if( SBUFCount >= 3 )
      0000C5 C3               [12]  493 	clr	c
      0000C6 E5 2F            [12]  494 	mov	a,_SBUFCount
      0000C8 64 80            [12]  495 	xrl	a,#0x80
      0000CA 94 83            [12]  496 	subb	a,#0x83
      0000CC 40 03            [24]  497 	jc	00102$
                                    498 ;	test3threads.c:88: SBUFCount = 0;
      0000CE 75 2F 00         [24]  499 	mov	_SBUFCount,#0x00
      0000D1                        500 00102$:
                                    501 ;	test3threads.c:89: SBUF = buffer[SBUFCount];
      0000D1 E5 2F            [12]  502 	mov	a,_SBUFCount
      0000D3 24 2B            [12]  503 	add	a,#_buffer
      0000D5 F9               [12]  504 	mov	r1,a
      0000D6 87 99            [24]  505 	mov	_SBUF,@r1
                                    506 ;	test3threads.c:91: SBUFCount++;
      0000D8 05 2F            [12]  507 	inc	_SBUFCount
                                    508 ;	test3threads.c:92: while(!TI){}
      0000DA                        509 00103$:
                                    510 ;	test3threads.c:93: TI = 0;
      0000DA 10 99 02         [24]  511 	jbc	_TI,00124$
      0000DD 80 FB            [24]  512 	sjmp	00103$
      0000DF                        513 00124$:
                                    514 ;	test3threads.c:94: SemaphoreSignal(mutex);
      0000DF 05 36            [12]  515 	INC _mutex 
                                    516 ;	test3threads.c:95: SemaphoreSignal(empty);
      0000E1 05 38            [12]  517 	INC _empty 
      0000E3 80 CC            [24]  518 	sjmp	00107$
                                    519 ;------------------------------------------------------------
                                    520 ;Allocation info for local variables in function 'main'
                                    521 ;------------------------------------------------------------
                                    522 ;	test3threads.c:104: void main(void) {
                                    523 ;	-----------------------------------------
                                    524 ;	 function main
                                    525 ;	-----------------------------------------
      0000E5                        526 _main:
                                    527 ;	test3threads.c:106: sharedVar = 'A';
      0000E5 75 22 41         [24]  528 	mov	_sharedVar,#0x41
                                    529 ;	test3threads.c:107: sharedNum = '0';
      0000E8 75 21 30         [24]  530 	mov	_sharedNum,#0x30
                                    531 ;	test3threads.c:108: bufferCount = 0;
      0000EB 75 2E 00         [24]  532 	mov	_bufferCount,#0x00
                                    533 ;	test3threads.c:109: SBUFCount = 0;
      0000EE 75 2F 00         [24]  534 	mov	_SBUFCount,#0x00
                                    535 ;	test3threads.c:111: SemaphoreCreate(mutex, 1);
      0000F1 75 36 01         [24]  536 	mov	_mutex,#0x01
                                    537 ;	test3threads.c:112: SemaphoreCreate(full, 0);
      0000F4 75 37 00         [24]  538 	mov	_full,#0x00
                                    539 ;	test3threads.c:113: SemaphoreCreate(empty, 3);
      0000F7 75 38 03         [24]  540 	mov	_empty,#0x03
                                    541 ;	test3threads.c:119: ThreadCreate(Producer1);
      0000FA 90 00 14         [24]  542 	mov	dptr,#_Producer1
      0000FD 12 01 5E         [24]  543 	lcall	_ThreadCreate
                                    544 ;	test3threads.c:120: ThreadCreate(Producer2);
      000100 90 00 5D         [24]  545 	mov	dptr,#_Producer2
      000103 12 01 5E         [24]  546 	lcall	_ThreadCreate
                                    547 ;	test3threads.c:121: Consumer();
      000106 02 00 A6         [24]  548 	ljmp	_Consumer
                                    549 ;------------------------------------------------------------
                                    550 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    551 ;------------------------------------------------------------
                                    552 ;	test3threads.c:124: void _sdcc_gsinit_startup(void) {
                                    553 ;	-----------------------------------------
                                    554 ;	 function _sdcc_gsinit_startup
                                    555 ;	-----------------------------------------
      000109                        556 __sdcc_gsinit_startup:
                                    557 ;	test3threads.c:127: __endasm;
      000109 02 01 14         [24]  558 	ljmp _Bootstrap
      00010C 22               [24]  559 	ret
                                    560 ;------------------------------------------------------------
                                    561 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    562 ;------------------------------------------------------------
                                    563 ;	test3threads.c:130: void _mcs51_genRAMCLEAR(void) {}
                                    564 ;	-----------------------------------------
                                    565 ;	 function _mcs51_genRAMCLEAR
                                    566 ;	-----------------------------------------
      00010D                        567 __mcs51_genRAMCLEAR:
      00010D 22               [24]  568 	ret
                                    569 ;------------------------------------------------------------
                                    570 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    571 ;------------------------------------------------------------
                                    572 ;	test3threads.c:131: void _mcs51_genXINIT(void) {}
                                    573 ;	-----------------------------------------
                                    574 ;	 function _mcs51_genXINIT
                                    575 ;	-----------------------------------------
      00010E                        576 __mcs51_genXINIT:
      00010E 22               [24]  577 	ret
                                    578 ;------------------------------------------------------------
                                    579 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    580 ;------------------------------------------------------------
                                    581 ;	test3threads.c:132: void _mcs51_genXRAMCLEAR(void) {}
                                    582 ;	-----------------------------------------
                                    583 ;	 function _mcs51_genXRAMCLEAR
                                    584 ;	-----------------------------------------
      00010F                        585 __mcs51_genXRAMCLEAR:
      00010F 22               [24]  586 	ret
                                    587 ;------------------------------------------------------------
                                    588 ;Allocation info for local variables in function 'timer0_ISR'
                                    589 ;------------------------------------------------------------
                                    590 ;	test3threads.c:134: void timer0_ISR(void) __interrupt(1){
                                    591 ;	-----------------------------------------
                                    592 ;	 function timer0_ISR
                                    593 ;	-----------------------------------------
      000110                        594 _timer0_ISR:
                                    595 ;	test3threads.c:137: __endasm;
      000110 02 02 9E         [24]  596 	ljmp _myTimer0Handler
      000113 32               [24]  597 	reti
                                    598 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    599 ;	eliminated unneeded push/pop psw
                                    600 ;	eliminated unneeded push/pop dpl
                                    601 ;	eliminated unneeded push/pop dph
                                    602 ;	eliminated unneeded push/pop b
                                    603 ;	eliminated unneeded push/pop acc
                                    604 	.area CSEG    (CODE)
                                    605 	.area CONST   (CODE)
                                    606 	.area XINIT   (CODE)
                                    607 	.area CABS    (ABS,CODE)
