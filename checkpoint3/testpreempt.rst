                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Thu Jan 16 19:44:42 2020
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
                                    117 	.globl _empty
                                    118 	.globl _full
                                    119 	.globl _mutex
                                    120 	.globl _SBUFCount
                                    121 	.globl _bufferCount
                                    122 	.globl _buffer
                                    123 	.globl _sharedVar
                                    124 	.globl _dataAvil
                                    125 ;--------------------------------------------------------
                                    126 ; special function registers
                                    127 ;--------------------------------------------------------
                                    128 	.area RSEG    (ABS,DATA)
      000000                        129 	.org 0x0000
                           000080   130 _P0	=	0x0080
                           000081   131 _SP	=	0x0081
                           000082   132 _DPL	=	0x0082
                           000083   133 _DPH	=	0x0083
                           000087   134 _PCON	=	0x0087
                           000088   135 _TCON	=	0x0088
                           000089   136 _TMOD	=	0x0089
                           00008A   137 _TL0	=	0x008a
                           00008B   138 _TL1	=	0x008b
                           00008C   139 _TH0	=	0x008c
                           00008D   140 _TH1	=	0x008d
                           000090   141 _P1	=	0x0090
                           000098   142 _SCON	=	0x0098
                           000099   143 _SBUF	=	0x0099
                           0000A0   144 _P2	=	0x00a0
                           0000A8   145 _IE	=	0x00a8
                           0000B0   146 _P3	=	0x00b0
                           0000B8   147 _IP	=	0x00b8
                           0000D0   148 _PSW	=	0x00d0
                           0000E0   149 _ACC	=	0x00e0
                           0000F0   150 _B	=	0x00f0
                                    151 ;--------------------------------------------------------
                                    152 ; special function bits
                                    153 ;--------------------------------------------------------
                                    154 	.area RSEG    (ABS,DATA)
      000000                        155 	.org 0x0000
                           000080   156 _P0_0	=	0x0080
                           000081   157 _P0_1	=	0x0081
                           000082   158 _P0_2	=	0x0082
                           000083   159 _P0_3	=	0x0083
                           000084   160 _P0_4	=	0x0084
                           000085   161 _P0_5	=	0x0085
                           000086   162 _P0_6	=	0x0086
                           000087   163 _P0_7	=	0x0087
                           000088   164 _IT0	=	0x0088
                           000089   165 _IE0	=	0x0089
                           00008A   166 _IT1	=	0x008a
                           00008B   167 _IE1	=	0x008b
                           00008C   168 _TR0	=	0x008c
                           00008D   169 _TF0	=	0x008d
                           00008E   170 _TR1	=	0x008e
                           00008F   171 _TF1	=	0x008f
                           000090   172 _P1_0	=	0x0090
                           000091   173 _P1_1	=	0x0091
                           000092   174 _P1_2	=	0x0092
                           000093   175 _P1_3	=	0x0093
                           000094   176 _P1_4	=	0x0094
                           000095   177 _P1_5	=	0x0095
                           000096   178 _P1_6	=	0x0096
                           000097   179 _P1_7	=	0x0097
                           000098   180 _RI	=	0x0098
                           000099   181 _TI	=	0x0099
                           00009A   182 _RB8	=	0x009a
                           00009B   183 _TB8	=	0x009b
                           00009C   184 _REN	=	0x009c
                           00009D   185 _SM2	=	0x009d
                           00009E   186 _SM1	=	0x009e
                           00009F   187 _SM0	=	0x009f
                           0000A0   188 _P2_0	=	0x00a0
                           0000A1   189 _P2_1	=	0x00a1
                           0000A2   190 _P2_2	=	0x00a2
                           0000A3   191 _P2_3	=	0x00a3
                           0000A4   192 _P2_4	=	0x00a4
                           0000A5   193 _P2_5	=	0x00a5
                           0000A6   194 _P2_6	=	0x00a6
                           0000A7   195 _P2_7	=	0x00a7
                           0000A8   196 _EX0	=	0x00a8
                           0000A9   197 _ET0	=	0x00a9
                           0000AA   198 _EX1	=	0x00aa
                           0000AB   199 _ET1	=	0x00ab
                           0000AC   200 _ES	=	0x00ac
                           0000AF   201 _EA	=	0x00af
                           0000B0   202 _P3_0	=	0x00b0
                           0000B1   203 _P3_1	=	0x00b1
                           0000B2   204 _P3_2	=	0x00b2
                           0000B3   205 _P3_3	=	0x00b3
                           0000B4   206 _P3_4	=	0x00b4
                           0000B5   207 _P3_5	=	0x00b5
                           0000B6   208 _P3_6	=	0x00b6
                           0000B7   209 _P3_7	=	0x00b7
                           0000B0   210 _RXD	=	0x00b0
                           0000B1   211 _TXD	=	0x00b1
                           0000B2   212 _INT0	=	0x00b2
                           0000B3   213 _INT1	=	0x00b3
                           0000B4   214 _T0	=	0x00b4
                           0000B5   215 _T1	=	0x00b5
                           0000B6   216 _WR	=	0x00b6
                           0000B7   217 _RD	=	0x00b7
                           0000B8   218 _PX0	=	0x00b8
                           0000B9   219 _PT0	=	0x00b9
                           0000BA   220 _PX1	=	0x00ba
                           0000BB   221 _PT1	=	0x00bb
                           0000BC   222 _PS	=	0x00bc
                           0000D0   223 _P	=	0x00d0
                           0000D1   224 _F1	=	0x00d1
                           0000D2   225 _OV	=	0x00d2
                           0000D3   226 _RS0	=	0x00d3
                           0000D4   227 _RS1	=	0x00d4
                           0000D5   228 _F0	=	0x00d5
                           0000D6   229 _AC	=	0x00d6
                           0000D7   230 _CY	=	0x00d7
                                    231 ;--------------------------------------------------------
                                    232 ; overlayable register banks
                                    233 ;--------------------------------------------------------
                                    234 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        235 	.ds 8
                                    236 ;--------------------------------------------------------
                                    237 ; internal ram data
                                    238 ;--------------------------------------------------------
                                    239 	.area DSEG    (DATA)
                           000021   240 _dataAvil	=	0x0021
                           000022   241 _sharedVar	=	0x0022
                           00002B   242 _buffer	=	0x002b
                           00002E   243 _bufferCount	=	0x002e
                           00002F   244 _SBUFCount	=	0x002f
                           000036   245 _mutex	=	0x0036
                           000037   246 _full	=	0x0037
                           000038   247 _empty	=	0x0038
                                    248 ;--------------------------------------------------------
                                    249 ; overlayable items in internal ram 
                                    250 ;--------------------------------------------------------
                                    251 ;--------------------------------------------------------
                                    252 ; Stack segment in internal ram 
                                    253 ;--------------------------------------------------------
                                    254 	.area	SSEG
      000008                        255 __start__stack:
      000008                        256 	.ds	1
                                    257 
                                    258 ;--------------------------------------------------------
                                    259 ; indirectly addressable internal ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area ISEG    (DATA)
                                    262 ;--------------------------------------------------------
                                    263 ; absolute internal ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area IABS    (ABS,DATA)
                                    266 	.area IABS    (ABS,DATA)
                                    267 ;--------------------------------------------------------
                                    268 ; bit data
                                    269 ;--------------------------------------------------------
                                    270 	.area BSEG    (BIT)
                                    271 ;--------------------------------------------------------
                                    272 ; paged external ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area PSEG    (PAG,XDATA)
                                    275 ;--------------------------------------------------------
                                    276 ; external ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area XSEG    (XDATA)
                                    279 ;--------------------------------------------------------
                                    280 ; absolute external ram data
                                    281 ;--------------------------------------------------------
                                    282 	.area XABS    (ABS,XDATA)
                                    283 ;--------------------------------------------------------
                                    284 ; external initialized ram data
                                    285 ;--------------------------------------------------------
                                    286 	.area XISEG   (XDATA)
                                    287 	.area HOME    (CODE)
                                    288 	.area GSINIT0 (CODE)
                                    289 	.area GSINIT1 (CODE)
                                    290 	.area GSINIT2 (CODE)
                                    291 	.area GSINIT3 (CODE)
                                    292 	.area GSINIT4 (CODE)
                                    293 	.area GSINIT5 (CODE)
                                    294 	.area GSINIT  (CODE)
                                    295 	.area GSFINAL (CODE)
                                    296 	.area CSEG    (CODE)
                                    297 ;--------------------------------------------------------
                                    298 ; interrupt vector 
                                    299 ;--------------------------------------------------------
                                    300 	.area HOME    (CODE)
      000000                        301 __interrupt_vect:
      000000 02 00 BA         [24]  302 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  303 	reti
      000004                        304 	.ds	7
      00000B 02 00 C1         [24]  305 	ljmp	_timer0_ISR
                                    306 ;--------------------------------------------------------
                                    307 ; global & static initialisations
                                    308 ;--------------------------------------------------------
                                    309 	.area HOME    (CODE)
                                    310 	.area GSINIT  (CODE)
                                    311 	.area GSFINAL (CODE)
                                    312 	.area GSINIT  (CODE)
                                    313 	.globl __sdcc_gsinit_startup
                                    314 	.globl __sdcc_program_startup
                                    315 	.globl __start__stack
                                    316 	.globl __mcs51_genXINIT
                                    317 	.globl __mcs51_genXRAMCLEAR
                                    318 	.globl __mcs51_genRAMCLEAR
                                    319 	.area GSFINAL (CODE)
      000011 02 00 0E         [24]  320 	ljmp	__sdcc_program_startup
                                    321 ;--------------------------------------------------------
                                    322 ; Home
                                    323 ;--------------------------------------------------------
                                    324 	.area HOME    (CODE)
                                    325 	.area HOME    (CODE)
      00000E                        326 __sdcc_program_startup:
      00000E 02 00 9C         [24]  327 	ljmp	_main
                                    328 ;	return from main will return to caller
                                    329 ;--------------------------------------------------------
                                    330 ; code
                                    331 ;--------------------------------------------------------
                                    332 	.area CSEG    (CODE)
                                    333 ;------------------------------------------------------------
                                    334 ;Allocation info for local variables in function 'Producer'
                                    335 ;------------------------------------------------------------
                                    336 ;	testpreempt.c:31: void Producer(void) {
                                    337 ;	-----------------------------------------
                                    338 ;	 function Producer
                                    339 ;	-----------------------------------------
      000014                        340 _Producer:
                           000007   341 	ar7 = 0x07
                           000006   342 	ar6 = 0x06
                           000005   343 	ar5 = 0x05
                           000004   344 	ar4 = 0x04
                           000003   345 	ar3 = 0x03
                           000002   346 	ar2 = 0x02
                           000001   347 	ar1 = 0x01
                           000000   348 	ar0 = 0x00
                                    349 ;	testpreempt.c:32: while (1) {
      000014                        350 00107$:
                                    351 ;	testpreempt.c:36: SemaphoreWait(empty);
      000014                        352 	 0$:
      000014 85 38 E0         [24]  353 	MOV ACC, _empty 
      000017 60 FB            [24]  354 	JZ 0$ 
      000019 20 E7 F8         [24]  355 	JB ACC.7, 0$ 
      00001C 15 38            [12]  356 	dec _empty 
                                    357 ;	testpreempt.c:37: SemaphoreWait(mutex);
      00001E                        358 	 1$:
      00001E 85 36 E0         [24]  359 	MOV ACC, _mutex 
      000021 60 FB            [24]  360 	JZ 1$ 
      000023 20 E7 F8         [24]  361 	JB ACC.7, 1$ 
      000026 15 36            [12]  362 	dec _mutex 
                                    363 ;	testpreempt.c:38: if( bufferCount >= 3 )
      000028 C3               [12]  364 	clr	c
      000029 E5 2E            [12]  365 	mov	a,_bufferCount
      00002B 64 80            [12]  366 	xrl	a,#0x80
      00002D 94 83            [12]  367 	subb	a,#0x83
      00002F 40 03            [24]  368 	jc	00102$
                                    369 ;	testpreempt.c:39: bufferCount = 0;
      000031 75 2E 00         [24]  370 	mov	_bufferCount,#0x00
      000034                        371 00102$:
                                    372 ;	testpreempt.c:40: buffer[bufferCount] = sharedVar;
      000034 E5 2E            [12]  373 	mov	a,_bufferCount
      000036 24 2B            [12]  374 	add	a,#_buffer
      000038 F8               [12]  375 	mov	r0,a
      000039 A6 22            [24]  376 	mov	@r0,_sharedVar
                                    377 ;	testpreempt.c:42: bufferCount++;
      00003B 05 2E            [12]  378 	inc	_bufferCount
                                    379 ;	testpreempt.c:43: sharedVar++;
      00003D 05 22            [12]  380 	inc	_sharedVar
                                    381 ;	testpreempt.c:44: if( sharedVar > 'Z' || sharedVar < 'A' )
      00003F C3               [12]  382 	clr	c
      000040 74 DA            [12]  383 	mov	a,#(0x5A ^ 0x80)
      000042 85 22 F0         [24]  384 	mov	b,_sharedVar
      000045 63 F0 80         [24]  385 	xrl	b,#0x80
      000048 95 F0            [12]  386 	subb	a,b
      00004A 40 08            [24]  387 	jc	00103$
      00004C E5 22            [12]  388 	mov	a,_sharedVar
      00004E 64 80            [12]  389 	xrl	a,#0x80
      000050 94 C1            [12]  390 	subb	a,#0xc1
      000052 50 03            [24]  391 	jnc	00104$
      000054                        392 00103$:
                                    393 ;	testpreempt.c:45: sharedVar = 'A';
      000054 75 22 41         [24]  394 	mov	_sharedVar,#0x41
      000057                        395 00104$:
                                    396 ;	testpreempt.c:46: SemaphoreSignal(mutex);
      000057 05 36            [12]  397 	INC _mutex 
                                    398 ;	testpreempt.c:47: SemaphoreSignal(full);
      000059 05 37            [12]  399 	INC _full 
      00005B 80 B7            [24]  400 	sjmp	00107$
                                    401 ;------------------------------------------------------------
                                    402 ;Allocation info for local variables in function 'Consumer'
                                    403 ;------------------------------------------------------------
                                    404 ;	testpreempt.c:56: void Consumer(void) {
                                    405 ;	-----------------------------------------
                                    406 ;	 function Consumer
                                    407 ;	-----------------------------------------
      00005D                        408 _Consumer:
                                    409 ;	testpreempt.c:58: TMOD |= (0x20);
      00005D 43 89 20         [24]  410 	orl	_TMOD,#0x20
                                    411 ;	testpreempt.c:59: TH1 = -6;
      000060 75 8D FA         [24]  412 	mov	_TH1,#0xFA
                                    413 ;	testpreempt.c:60: SCON = (0x50);
      000063 75 98 50         [24]  414 	mov	_SCON,#0x50
                                    415 ;	testpreempt.c:61: TR1 = 1;
      000066 D2 8E            [12]  416 	setb	_TR1
                                    417 ;	testpreempt.c:63: while (1) {
      000068                        418 00107$:
                                    419 ;	testpreempt.c:65: SemaphoreWait(full);
      000068                        420 	 2$:
      000068 85 37 E0         [24]  421 	MOV ACC, _full 
      00006B 60 FB            [24]  422 	JZ 2$ 
      00006D 20 E7 F8         [24]  423 	JB ACC.7, 2$ 
      000070 15 37            [12]  424 	dec _full 
                                    425 ;	testpreempt.c:66: SemaphoreWait(mutex);
      000072                        426 	 3$:
      000072 85 36 E0         [24]  427 	MOV ACC, _mutex 
      000075 60 FB            [24]  428 	JZ 3$ 
      000077 20 E7 F8         [24]  429 	JB ACC.7, 3$ 
      00007A 15 36            [12]  430 	dec _mutex 
                                    431 ;	testpreempt.c:67: if( SBUFCount >= 3 )
      00007C C3               [12]  432 	clr	c
      00007D E5 2F            [12]  433 	mov	a,_SBUFCount
      00007F 64 80            [12]  434 	xrl	a,#0x80
      000081 94 83            [12]  435 	subb	a,#0x83
      000083 40 03            [24]  436 	jc	00102$
                                    437 ;	testpreempt.c:68: SBUFCount = 0;
      000085 75 2F 00         [24]  438 	mov	_SBUFCount,#0x00
      000088                        439 00102$:
                                    440 ;	testpreempt.c:69: SBUF = buffer[SBUFCount];
      000088 E5 2F            [12]  441 	mov	a,_SBUFCount
      00008A 24 2B            [12]  442 	add	a,#_buffer
      00008C F9               [12]  443 	mov	r1,a
      00008D 87 99            [24]  444 	mov	_SBUF,@r1
                                    445 ;	testpreempt.c:71: SBUFCount++;
      00008F 05 2F            [12]  446 	inc	_SBUFCount
                                    447 ;	testpreempt.c:72: while(!TI){}
      000091                        448 00103$:
                                    449 ;	testpreempt.c:73: TI = 0;
      000091 10 99 02         [24]  450 	jbc	_TI,00124$
      000094 80 FB            [24]  451 	sjmp	00103$
      000096                        452 00124$:
                                    453 ;	testpreempt.c:74: SemaphoreSignal(mutex);
      000096 05 36            [12]  454 	INC _mutex 
                                    455 ;	testpreempt.c:75: SemaphoreSignal(empty);
      000098 05 38            [12]  456 	INC _empty 
      00009A 80 CC            [24]  457 	sjmp	00107$
                                    458 ;------------------------------------------------------------
                                    459 ;Allocation info for local variables in function 'main'
                                    460 ;------------------------------------------------------------
                                    461 ;	testpreempt.c:84: void main(void) {
                                    462 ;	-----------------------------------------
                                    463 ;	 function main
                                    464 ;	-----------------------------------------
      00009C                        465 _main:
                                    466 ;	testpreempt.c:86: dataAvil = 1;
      00009C 75 21 01         [24]  467 	mov	_dataAvil,#0x01
                                    468 ;	testpreempt.c:87: sharedVar = 'A';
      00009F 75 22 41         [24]  469 	mov	_sharedVar,#0x41
                                    470 ;	testpreempt.c:88: bufferCount = 0;
      0000A2 75 2E 00         [24]  471 	mov	_bufferCount,#0x00
                                    472 ;	testpreempt.c:89: SBUFCount = 0;
      0000A5 75 2F 00         [24]  473 	mov	_SBUFCount,#0x00
                                    474 ;	testpreempt.c:91: SemaphoreCreate(mutex, 1);
      0000A8 75 36 01         [24]  475 	mov	_mutex,#0x01
                                    476 ;	testpreempt.c:92: SemaphoreCreate(full, 0);
      0000AB 75 37 00         [24]  477 	mov	_full,#0x00
                                    478 ;	testpreempt.c:93: SemaphoreCreate(empty, 3);
      0000AE 75 38 03         [24]  479 	mov	_empty,#0x03
                                    480 ;	testpreempt.c:99: ThreadCreate(Producer);
      0000B1 90 00 14         [24]  481 	mov	dptr,#_Producer
      0000B4 12 01 05         [24]  482 	lcall	_ThreadCreate
                                    483 ;	testpreempt.c:100: Consumer();
      0000B7 02 00 5D         [24]  484 	ljmp	_Consumer
                                    485 ;------------------------------------------------------------
                                    486 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    487 ;------------------------------------------------------------
                                    488 ;	testpreempt.c:103: void _sdcc_gsinit_startup(void) {
                                    489 ;	-----------------------------------------
                                    490 ;	 function _sdcc_gsinit_startup
                                    491 ;	-----------------------------------------
      0000BA                        492 __sdcc_gsinit_startup:
                                    493 ;	testpreempt.c:106: __endasm;
      0000BA 02 00 C5         [24]  494 	ljmp _Bootstrap
      0000BD 22               [24]  495 	ret
                                    496 ;------------------------------------------------------------
                                    497 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    498 ;------------------------------------------------------------
                                    499 ;	testpreempt.c:109: void _mcs51_genRAMCLEAR(void) {}
                                    500 ;	-----------------------------------------
                                    501 ;	 function _mcs51_genRAMCLEAR
                                    502 ;	-----------------------------------------
      0000BE                        503 __mcs51_genRAMCLEAR:
      0000BE 22               [24]  504 	ret
                                    505 ;------------------------------------------------------------
                                    506 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    507 ;------------------------------------------------------------
                                    508 ;	testpreempt.c:110: void _mcs51_genXINIT(void) {}
                                    509 ;	-----------------------------------------
                                    510 ;	 function _mcs51_genXINIT
                                    511 ;	-----------------------------------------
      0000BF                        512 __mcs51_genXINIT:
      0000BF 22               [24]  513 	ret
                                    514 ;------------------------------------------------------------
                                    515 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    516 ;------------------------------------------------------------
                                    517 ;	testpreempt.c:111: void _mcs51_genXRAMCLEAR(void) {}
                                    518 ;	-----------------------------------------
                                    519 ;	 function _mcs51_genXRAMCLEAR
                                    520 ;	-----------------------------------------
      0000C0                        521 __mcs51_genXRAMCLEAR:
      0000C0 22               [24]  522 	ret
                                    523 ;------------------------------------------------------------
                                    524 ;Allocation info for local variables in function 'timer0_ISR'
                                    525 ;------------------------------------------------------------
                                    526 ;	testpreempt.c:113: void timer0_ISR(void) __interrupt(1){
                                    527 ;	-----------------------------------------
                                    528 ;	 function timer0_ISR
                                    529 ;	-----------------------------------------
      0000C1                        530 _timer0_ISR:
                                    531 ;	testpreempt.c:116: __endasm;
      0000C1 02 02 45         [24]  532 	ljmp _myTimer0Handler
      0000C4 32               [24]  533 	reti
                                    534 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    535 ;	eliminated unneeded push/pop psw
                                    536 ;	eliminated unneeded push/pop dpl
                                    537 ;	eliminated unneeded push/pop dph
                                    538 ;	eliminated unneeded push/pop b
                                    539 ;	eliminated unneeded push/pop acc
                                    540 	.area CSEG    (CODE)
                                    541 	.area CONST   (CODE)
                                    542 	.area XINIT   (CODE)
                                    543 	.area CABS    (ABS,CODE)
