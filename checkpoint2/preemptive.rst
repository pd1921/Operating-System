                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Thu Jan 16 19:09:23 2020
                                      5 ;--------------------------------------------------------
                                      6 	.module preemptive
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _myTimer0Handler
                                     13 	.globl _Bootstrap
                                     14 	.globl _main
                                     15 	.globl _CY
                                     16 	.globl _AC
                                     17 	.globl _F0
                                     18 	.globl _RS1
                                     19 	.globl _RS0
                                     20 	.globl _OV
                                     21 	.globl _F1
                                     22 	.globl _P
                                     23 	.globl _PS
                                     24 	.globl _PT1
                                     25 	.globl _PX1
                                     26 	.globl _PT0
                                     27 	.globl _PX0
                                     28 	.globl _RD
                                     29 	.globl _WR
                                     30 	.globl _T1
                                     31 	.globl _T0
                                     32 	.globl _INT1
                                     33 	.globl _INT0
                                     34 	.globl _TXD
                                     35 	.globl _RXD
                                     36 	.globl _P3_7
                                     37 	.globl _P3_6
                                     38 	.globl _P3_5
                                     39 	.globl _P3_4
                                     40 	.globl _P3_3
                                     41 	.globl _P3_2
                                     42 	.globl _P3_1
                                     43 	.globl _P3_0
                                     44 	.globl _EA
                                     45 	.globl _ES
                                     46 	.globl _ET1
                                     47 	.globl _EX1
                                     48 	.globl _ET0
                                     49 	.globl _EX0
                                     50 	.globl _P2_7
                                     51 	.globl _P2_6
                                     52 	.globl _P2_5
                                     53 	.globl _P2_4
                                     54 	.globl _P2_3
                                     55 	.globl _P2_2
                                     56 	.globl _P2_1
                                     57 	.globl _P2_0
                                     58 	.globl _SM0
                                     59 	.globl _SM1
                                     60 	.globl _SM2
                                     61 	.globl _REN
                                     62 	.globl _TB8
                                     63 	.globl _RB8
                                     64 	.globl _TI
                                     65 	.globl _RI
                                     66 	.globl _P1_7
                                     67 	.globl _P1_6
                                     68 	.globl _P1_5
                                     69 	.globl _P1_4
                                     70 	.globl _P1_3
                                     71 	.globl _P1_2
                                     72 	.globl _P1_1
                                     73 	.globl _P1_0
                                     74 	.globl _TF1
                                     75 	.globl _TR1
                                     76 	.globl _TF0
                                     77 	.globl _TR0
                                     78 	.globl _IE1
                                     79 	.globl _IT1
                                     80 	.globl _IE0
                                     81 	.globl _IT0
                                     82 	.globl _P0_7
                                     83 	.globl _P0_6
                                     84 	.globl _P0_5
                                     85 	.globl _P0_4
                                     86 	.globl _P0_3
                                     87 	.globl _P0_2
                                     88 	.globl _P0_1
                                     89 	.globl _P0_0
                                     90 	.globl _B
                                     91 	.globl _ACC
                                     92 	.globl _PSW
                                     93 	.globl _IP
                                     94 	.globl _P3
                                     95 	.globl _IE
                                     96 	.globl _P2
                                     97 	.globl _SBUF
                                     98 	.globl _SCON
                                     99 	.globl _P1
                                    100 	.globl _TH1
                                    101 	.globl _TH0
                                    102 	.globl _TL1
                                    103 	.globl _TL0
                                    104 	.globl _TMOD
                                    105 	.globl _TCON
                                    106 	.globl _PCON
                                    107 	.globl _DPH
                                    108 	.globl _DPL
                                    109 	.globl _SP
                                    110 	.globl _P0
                                    111 	.globl _currentSP
                                    112 	.globl _i
                                    113 	.globl _tmp
                                    114 	.globl _currentThread
                                    115 	.globl _threadCount
                                    116 	.globl _currentID
                                    117 	.globl _threadBitmap
                                    118 	.globl _savedSP
                                    119 	.globl _ThreadCreate
                                    120 	.globl _ThreadYield
                                    121 	.globl _ThreadExit
                                    122 ;--------------------------------------------------------
                                    123 ; special function registers
                                    124 ;--------------------------------------------------------
                                    125 	.area RSEG    (ABS,DATA)
      000000                        126 	.org 0x0000
                           000080   127 _P0	=	0x0080
                           000081   128 _SP	=	0x0081
                           000082   129 _DPL	=	0x0082
                           000083   130 _DPH	=	0x0083
                           000087   131 _PCON	=	0x0087
                           000088   132 _TCON	=	0x0088
                           000089   133 _TMOD	=	0x0089
                           00008A   134 _TL0	=	0x008a
                           00008B   135 _TL1	=	0x008b
                           00008C   136 _TH0	=	0x008c
                           00008D   137 _TH1	=	0x008d
                           000090   138 _P1	=	0x0090
                           000098   139 _SCON	=	0x0098
                           000099   140 _SBUF	=	0x0099
                           0000A0   141 _P2	=	0x00a0
                           0000A8   142 _IE	=	0x00a8
                           0000B0   143 _P3	=	0x00b0
                           0000B8   144 _IP	=	0x00b8
                           0000D0   145 _PSW	=	0x00d0
                           0000E0   146 _ACC	=	0x00e0
                           0000F0   147 _B	=	0x00f0
                                    148 ;--------------------------------------------------------
                                    149 ; special function bits
                                    150 ;--------------------------------------------------------
                                    151 	.area RSEG    (ABS,DATA)
      000000                        152 	.org 0x0000
                           000080   153 _P0_0	=	0x0080
                           000081   154 _P0_1	=	0x0081
                           000082   155 _P0_2	=	0x0082
                           000083   156 _P0_3	=	0x0083
                           000084   157 _P0_4	=	0x0084
                           000085   158 _P0_5	=	0x0085
                           000086   159 _P0_6	=	0x0086
                           000087   160 _P0_7	=	0x0087
                           000088   161 _IT0	=	0x0088
                           000089   162 _IE0	=	0x0089
                           00008A   163 _IT1	=	0x008a
                           00008B   164 _IE1	=	0x008b
                           00008C   165 _TR0	=	0x008c
                           00008D   166 _TF0	=	0x008d
                           00008E   167 _TR1	=	0x008e
                           00008F   168 _TF1	=	0x008f
                           000090   169 _P1_0	=	0x0090
                           000091   170 _P1_1	=	0x0091
                           000092   171 _P1_2	=	0x0092
                           000093   172 _P1_3	=	0x0093
                           000094   173 _P1_4	=	0x0094
                           000095   174 _P1_5	=	0x0095
                           000096   175 _P1_6	=	0x0096
                           000097   176 _P1_7	=	0x0097
                           000098   177 _RI	=	0x0098
                           000099   178 _TI	=	0x0099
                           00009A   179 _RB8	=	0x009a
                           00009B   180 _TB8	=	0x009b
                           00009C   181 _REN	=	0x009c
                           00009D   182 _SM2	=	0x009d
                           00009E   183 _SM1	=	0x009e
                           00009F   184 _SM0	=	0x009f
                           0000A0   185 _P2_0	=	0x00a0
                           0000A1   186 _P2_1	=	0x00a1
                           0000A2   187 _P2_2	=	0x00a2
                           0000A3   188 _P2_3	=	0x00a3
                           0000A4   189 _P2_4	=	0x00a4
                           0000A5   190 _P2_5	=	0x00a5
                           0000A6   191 _P2_6	=	0x00a6
                           0000A7   192 _P2_7	=	0x00a7
                           0000A8   193 _EX0	=	0x00a8
                           0000A9   194 _ET0	=	0x00a9
                           0000AA   195 _EX1	=	0x00aa
                           0000AB   196 _ET1	=	0x00ab
                           0000AC   197 _ES	=	0x00ac
                           0000AF   198 _EA	=	0x00af
                           0000B0   199 _P3_0	=	0x00b0
                           0000B1   200 _P3_1	=	0x00b1
                           0000B2   201 _P3_2	=	0x00b2
                           0000B3   202 _P3_3	=	0x00b3
                           0000B4   203 _P3_4	=	0x00b4
                           0000B5   204 _P3_5	=	0x00b5
                           0000B6   205 _P3_6	=	0x00b6
                           0000B7   206 _P3_7	=	0x00b7
                           0000B0   207 _RXD	=	0x00b0
                           0000B1   208 _TXD	=	0x00b1
                           0000B2   209 _INT0	=	0x00b2
                           0000B3   210 _INT1	=	0x00b3
                           0000B4   211 _T0	=	0x00b4
                           0000B5   212 _T1	=	0x00b5
                           0000B6   213 _WR	=	0x00b6
                           0000B7   214 _RD	=	0x00b7
                           0000B8   215 _PX0	=	0x00b8
                           0000B9   216 _PT0	=	0x00b9
                           0000BA   217 _PX1	=	0x00ba
                           0000BB   218 _PT1	=	0x00bb
                           0000BC   219 _PS	=	0x00bc
                           0000D0   220 _P	=	0x00d0
                           0000D1   221 _F1	=	0x00d1
                           0000D2   222 _OV	=	0x00d2
                           0000D3   223 _RS0	=	0x00d3
                           0000D4   224 _RS1	=	0x00d4
                           0000D5   225 _F0	=	0x00d5
                           0000D6   226 _AC	=	0x00d6
                           0000D7   227 _CY	=	0x00d7
                                    228 ;--------------------------------------------------------
                                    229 ; overlayable register banks
                                    230 ;--------------------------------------------------------
                                    231 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        232 	.ds 8
                                    233 ;--------------------------------------------------------
                                    234 ; internal ram data
                                    235 ;--------------------------------------------------------
                                    236 	.area DSEG    (DATA)
                           000023   237 _savedSP	=	0x0023
                           000027   238 _threadBitmap	=	0x0027
                           000032   239 _currentID	=	0x0032
                           000033   240 _threadCount	=	0x0033
                           000035   241 _currentThread	=	0x0035
                           000036   242 _tmp	=	0x0036
                           000037   243 _i	=	0x0037
                           000039   244 _currentSP	=	0x0039
                                    245 ;--------------------------------------------------------
                                    246 ; overlayable items in internal ram 
                                    247 ;--------------------------------------------------------
                                    248 	.area	OSEG    (OVR,DATA)
                                    249 ;--------------------------------------------------------
                                    250 ; indirectly addressable internal ram data
                                    251 ;--------------------------------------------------------
                                    252 	.area ISEG    (DATA)
                                    253 ;--------------------------------------------------------
                                    254 ; absolute internal ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area IABS    (ABS,DATA)
                                    257 	.area IABS    (ABS,DATA)
                                    258 ;--------------------------------------------------------
                                    259 ; bit data
                                    260 ;--------------------------------------------------------
                                    261 	.area BSEG    (BIT)
                                    262 ;--------------------------------------------------------
                                    263 ; paged external ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area PSEG    (PAG,XDATA)
                                    266 ;--------------------------------------------------------
                                    267 ; external ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area XSEG    (XDATA)
                                    270 ;--------------------------------------------------------
                                    271 ; absolute external ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area XABS    (ABS,XDATA)
                                    274 ;--------------------------------------------------------
                                    275 ; external initialized ram data
                                    276 ;--------------------------------------------------------
                                    277 	.area XISEG   (XDATA)
                                    278 	.area HOME    (CODE)
                                    279 	.area GSINIT0 (CODE)
                                    280 	.area GSINIT1 (CODE)
                                    281 	.area GSINIT2 (CODE)
                                    282 	.area GSINIT3 (CODE)
                                    283 	.area GSINIT4 (CODE)
                                    284 	.area GSINIT5 (CODE)
                                    285 	.area GSINIT  (CODE)
                                    286 	.area GSFINAL (CODE)
                                    287 	.area CSEG    (CODE)
                                    288 ;--------------------------------------------------------
                                    289 ; global & static initialisations
                                    290 ;--------------------------------------------------------
                                    291 	.area HOME    (CODE)
                                    292 	.area GSINIT  (CODE)
                                    293 	.area GSFINAL (CODE)
                                    294 	.area GSINIT  (CODE)
                                    295 ;--------------------------------------------------------
                                    296 ; Home
                                    297 ;--------------------------------------------------------
                                    298 	.area HOME    (CODE)
                                    299 	.area HOME    (CODE)
                                    300 ;--------------------------------------------------------
                                    301 ; code
                                    302 ;--------------------------------------------------------
                                    303 	.area CSEG    (CODE)
                                    304 ;------------------------------------------------------------
                                    305 ;Allocation info for local variables in function 'Bootstrap'
                                    306 ;------------------------------------------------------------
                                    307 ;	preemptive.c:76: void Bootstrap(void) {
                                    308 ;	-----------------------------------------
                                    309 ;	 function Bootstrap
                                    310 ;	-----------------------------------------
      00007B                        311 _Bootstrap:
                           000007   312 	ar7 = 0x07
                           000006   313 	ar6 = 0x06
                           000005   314 	ar5 = 0x05
                           000004   315 	ar4 = 0x04
                           000003   316 	ar3 = 0x03
                           000002   317 	ar2 = 0x02
                           000001   318 	ar1 = 0x01
                           000000   319 	ar0 = 0x00
                                    320 ;	preemptive.c:77: TMOD = 0;
      00007B 75 89 00         [24]  321 	mov	_TMOD,#0x00
                                    322 ;	preemptive.c:78: IE = 0x82;
      00007E 75 A8 82         [24]  323 	mov	_IE,#0x82
                                    324 ;	preemptive.c:79: TR0 = 1;
      000081 D2 8C            [12]  325 	setb	_TR0
                                    326 ;	preemptive.c:86: threadCount = 0;   
      000083 75 33 00         [24]  327 	mov	_threadCount,#0x00
                                    328 ;	preemptive.c:87: for(i=0; i<MAXTHREADS; i++){
      000086 75 37 00         [24]  329 	mov	_i,#0x00
      000089                        330 00103$:
      000089 C3               [12]  331 	clr	c
      00008A E5 37            [12]  332 	mov	a,_i
      00008C 64 80            [12]  333 	xrl	a,#0x80
      00008E 94 84            [12]  334 	subb	a,#0x84
      000090 50 0B            [24]  335 	jnc	00101$
                                    336 ;	preemptive.c:88: threadBitmap[i] = 0;
      000092 E5 37            [12]  337 	mov	a,_i
      000094 24 27            [12]  338 	add	a,#_threadBitmap
      000096 F8               [12]  339 	mov	r0,a
      000097 76 00            [12]  340 	mov	@r0,#0x00
                                    341 ;	preemptive.c:87: for(i=0; i<MAXTHREADS; i++){
      000099 05 37            [12]  342 	inc	_i
      00009B 80 EC            [24]  343 	sjmp	00103$
      00009D                        344 00101$:
                                    345 ;	preemptive.c:96: currentID = ThreadCreate(main);
      00009D 90 00 61         [24]  346 	mov	dptr,#_main
      0000A0 12 00 BB         [24]  347 	lcall	_ThreadCreate
      0000A3 85 82 32         [24]  348 	mov	_currentID,dpl
                                    349 ;	preemptive.c:97: currentThread = i;
      0000A6 85 37 35         [24]  350 	mov	_currentThread,_i
                                    351 ;	preemptive.c:98: RESTORESTATE;
      0000A9 E5 35            [12]  352 	mov	a,_currentThread
      0000AB 24 23            [12]  353 	add	a,#_savedSP
      0000AD F9               [12]  354 	mov	r1,a
      0000AE 87 81            [24]  355 	mov	_SP,@r1
      0000B0 D0 D0            [24]  356 	POP PSW 
      0000B2 D0 83            [24]  357 	POP DPH 
      0000B4 D0 82            [24]  358 	POP DPL 
      0000B6 D0 F0            [24]  359 	POP B 
      0000B8 D0 E0            [24]  360 	POP ACC 
      0000BA 22               [24]  361 	ret
                                    362 ;------------------------------------------------------------
                                    363 ;Allocation info for local variables in function 'ThreadCreate'
                                    364 ;------------------------------------------------------------
                                    365 ;fp                        Allocated to registers 
                                    366 ;------------------------------------------------------------
                                    367 ;	preemptive.c:107: ThreadID ThreadCreate(FunctionPtr fp) __critical{
                                    368 ;	-----------------------------------------
                                    369 ;	 function ThreadCreate
                                    370 ;	-----------------------------------------
      0000BB                        371 _ThreadCreate:
      0000BB D3               [12]  372 	setb	c
      0000BC 10 AF 01         [24]  373 	jbc	ea,00146$
      0000BF C3               [12]  374 	clr	c
      0000C0                        375 00146$:
      0000C0 C0 D0            [24]  376 	push	psw
                                    377 ;	preemptive.c:113: if(threadCount >= MAXTHREADS)
      0000C2 C3               [12]  378 	clr	c
      0000C3 E5 33            [12]  379 	mov	a,_threadCount
      0000C5 64 80            [12]  380 	xrl	a,#0x80
      0000C7 94 84            [12]  381 	subb	a,#0x84
      0000C9 40 06            [24]  382 	jc	00102$
                                    383 ;	preemptive.c:114: return -1;
      0000CB 75 82 FF         [24]  384 	mov	dpl,#0xFF
      0000CE 02 01 4A         [24]  385 	ljmp	00120$
      0000D1                        386 00102$:
                                    387 ;	preemptive.c:121: for( i=0; i<MAXTHREADS; i++){
      0000D1 75 37 00         [24]  388 	mov	_i,#0x00
      0000D4                        389 00118$:
      0000D4 C3               [12]  390 	clr	c
      0000D5 E5 37            [12]  391 	mov	a,_i
      0000D7 64 80            [12]  392 	xrl	a,#0x80
      0000D9 94 84            [12]  393 	subb	a,#0x84
      0000DB 50 0C            [24]  394 	jnc	00105$
                                    395 ;	preemptive.c:122: if( threadBitmap[i] == 0 )
      0000DD E5 37            [12]  396 	mov	a,_i
      0000DF 24 27            [12]  397 	add	a,#_threadBitmap
      0000E1 F9               [12]  398 	mov	r1,a
      0000E2 E7               [12]  399 	mov	a,@r1
      0000E3 60 04            [24]  400 	jz	00105$
                                    401 ;	preemptive.c:121: for( i=0; i<MAXTHREADS; i++){
      0000E5 05 37            [12]  402 	inc	_i
      0000E7 80 EB            [24]  403 	sjmp	00118$
      0000E9                        404 00105$:
                                    405 ;	preemptive.c:130: threadCount++;
      0000E9 05 33            [12]  406 	inc	_threadCount
                                    407 ;	preemptive.c:131: threadBitmap[i] = 1;
      0000EB E5 37            [12]  408 	mov	a,_i
      0000ED 24 27            [12]  409 	add	a,#_threadBitmap
      0000EF F8               [12]  410 	mov	r0,a
      0000F0 76 01            [12]  411 	mov	@r0,#0x01
                                    412 ;	preemptive.c:136: currentSP = SP;
      0000F2 85 81 39         [24]  413 	mov	_currentSP,_SP
                                    414 ;	preemptive.c:137: SP = (0x3F) + ( i << 4 );
      0000F5 E5 37            [12]  415 	mov	a,_i
      0000F7 C4               [12]  416 	swap	a
      0000F8 54 F0            [12]  417 	anl	a,#0xF0
      0000FA FF               [12]  418 	mov	r7,a
      0000FB 24 3F            [12]  419 	add	a,#0x3F
      0000FD F5 81            [12]  420 	mov	_SP,a
                                    421 ;	preemptive.c:147: __endasm;
      0000FF C0 82            [24]  422 	PUSH DPL
      000101 C0 83            [24]  423 	PUSH DPH
                                    424 ;	preemptive.c:164: __endasm;
      000103 75 E0 00         [24]  425 	MOV ACC, #0H
      000106 75 F0 00         [24]  426 	MOV B, #0H
      000109 75 82 00         [24]  427 	MOV DPL, #0H
      00010C 75 83 00         [24]  428 	MOV DPH, #0H
      00010F C0 E0            [24]  429 	PUSH ACC
      000111 C0 F0            [24]  430 	PUSH B
      000113 C0 82            [24]  431 	PUSH DPL
      000115 C0 83            [24]  432 	PUSH DPH
                                    433 ;	preemptive.c:176: if( i==0 )
      000117 E5 37            [12]  434 	mov	a,_i
                                    435 ;	preemptive.c:177: PSW = 0x00;
      000119 70 04            [24]  436 	jnz	00115$
      00011B F5 D0            [12]  437 	mov	_PSW,a
      00011D 80 1C            [24]  438 	sjmp	00116$
      00011F                        439 00115$:
                                    440 ;	preemptive.c:178: else if( i==1 )
      00011F 74 01            [12]  441 	mov	a,#0x01
      000121 B5 37 05         [24]  442 	cjne	a,_i,00112$
                                    443 ;	preemptive.c:179: PSW = 0x08;
      000124 75 D0 08         [24]  444 	mov	_PSW,#0x08
      000127 80 12            [24]  445 	sjmp	00116$
      000129                        446 00112$:
                                    447 ;	preemptive.c:180: else if( i==2 )
      000129 74 02            [12]  448 	mov	a,#0x02
      00012B B5 37 05         [24]  449 	cjne	a,_i,00109$
                                    450 ;	preemptive.c:181: PSW = 0x10;
      00012E 75 D0 10         [24]  451 	mov	_PSW,#0x10
      000131 80 08            [24]  452 	sjmp	00116$
      000133                        453 00109$:
                                    454 ;	preemptive.c:182: else if( i==3 )
      000133 74 03            [12]  455 	mov	a,#0x03
      000135 B5 37 03         [24]  456 	cjne	a,_i,00116$
                                    457 ;	preemptive.c:183: PSW = 0x18;
      000138 75 D0 18         [24]  458 	mov	_PSW,#0x18
      00013B                        459 00116$:
                                    460 ;	preemptive.c:187: __endasm;
      00013B C0 D0            [24]  461 	PUSH PSW
                                    462 ;	preemptive.c:191: savedSP[i] = SP;
      00013D E5 37            [12]  463 	mov	a,_i
      00013F 24 23            [12]  464 	add	a,#_savedSP
      000141 F8               [12]  465 	mov	r0,a
      000142 A6 81            [24]  466 	mov	@r0,_SP
                                    467 ;	preemptive.c:194: SP = currentSP;
      000144 85 39 81         [24]  468 	mov	_SP,_currentSP
                                    469 ;	preemptive.c:197: return i;
      000147 85 37 82         [24]  470 	mov	dpl,_i
      00014A                        471 00120$:
      00014A D0 D0            [24]  472 	pop	psw
      00014C 92 AF            [24]  473 	mov	ea,c
      00014E 22               [24]  474 	ret
                                    475 ;------------------------------------------------------------
                                    476 ;Allocation info for local variables in function 'ThreadYield'
                                    477 ;------------------------------------------------------------
                                    478 ;	preemptive.c:209: void ThreadYield(void) __critical{
                                    479 ;	-----------------------------------------
                                    480 ;	 function ThreadYield
                                    481 ;	-----------------------------------------
      00014F                        482 _ThreadYield:
      00014F D3               [12]  483 	setb	c
      000150 10 AF 01         [24]  484 	jbc	ea,00124$
      000153 C3               [12]  485 	clr	c
      000154                        486 00124$:
      000154 C0 D0            [24]  487 	push	psw
                                    488 ;	preemptive.c:210: SAVESTATE; 
      000156 C0 E0            [24]  489 	PUSH ACC 
      000158 C0 F0            [24]  490 	PUSH B 
      00015A C0 82            [24]  491 	PUSH DPL 
      00015C C0 83            [24]  492 	PUSH DPH 
      00015E C0 D0            [24]  493 	PUSH PSW 
      000160 E5 35            [12]  494 	mov	a,_currentThread
      000162 24 23            [12]  495 	add	a,#_savedSP
      000164 F8               [12]  496 	mov	r0,a
      000165 A6 81            [24]  497 	mov	@r0,_SP
                                    498 ;	preemptive.c:211: i=0;
      000167 75 37 00         [24]  499 	mov	_i,#0x00
                                    500 ;	preemptive.c:212: do{
      00016A                        501 00107$:
                                    502 ;	preemptive.c:213: tmp = threadBitmap[i];
      00016A E5 37            [12]  503 	mov	a,_i
      00016C 24 27            [12]  504 	add	a,#_threadBitmap
      00016E F9               [12]  505 	mov	r1,a
      00016F 87 36            [24]  506 	mov	_tmp,@r1
                                    507 ;	preemptive.c:223: if( i == currentThread){
      000171 E5 35            [12]  508 	mov	a,_currentThread
      000173 B5 37 04         [24]  509 	cjne	a,_i,00102$
                                    510 ;	preemptive.c:224: i++;
      000176 05 37            [12]  511 	inc	_i
                                    512 ;	preemptive.c:225: continue;
      000178 80 F0            [24]  513 	sjmp	00107$
      00017A                        514 00102$:
                                    515 ;	preemptive.c:227: if( tmp == 1 ){
      00017A 74 01            [12]  516 	mov	a,#0x01
      00017C B5 36 05         [24]  517 	cjne	a,_tmp,00104$
                                    518 ;	preemptive.c:228: currentThread = i;
      00017F 85 37 35         [24]  519 	mov	_currentThread,_i
                                    520 ;	preemptive.c:229: break;
      000182 80 0E            [24]  521 	sjmp	00109$
      000184                        522 00104$:
                                    523 ;	preemptive.c:231: if( i == MAXTHREADS ){
      000184 74 04            [12]  524 	mov	a,#0x04
      000186 B5 37 05         [24]  525 	cjne	a,_i,00106$
                                    526 ;	preemptive.c:232: i = -1;
      000189 75 37 FF         [24]  527 	mov	_i,#0xFF
                                    528 ;	preemptive.c:233: break;
      00018C 80 04            [24]  529 	sjmp	00109$
      00018E                        530 00106$:
                                    531 ;	preemptive.c:235: i++;
      00018E 05 37            [12]  532 	inc	_i
                                    533 ;	preemptive.c:241: } while (1);
      000190 80 D8            [24]  534 	sjmp	00107$
      000192                        535 00109$:
                                    536 ;	preemptive.c:242: RESTORESTATE;
      000192 E5 35            [12]  537 	mov	a,_currentThread
      000194 24 23            [12]  538 	add	a,#_savedSP
      000196 F9               [12]  539 	mov	r1,a
      000197 87 81            [24]  540 	mov	_SP,@r1
      000199 D0 D0            [24]  541 	POP PSW 
      00019B D0 83            [24]  542 	POP DPH 
      00019D D0 82            [24]  543 	POP DPL 
      00019F D0 F0            [24]  544 	POP B 
      0001A1 D0 E0            [24]  545 	POP ACC 
      0001A3 D0 D0            [24]  546 	pop	psw
      0001A5 92 AF            [24]  547 	mov	ea,c
      0001A7 22               [24]  548 	ret
                                    549 ;------------------------------------------------------------
                                    550 ;Allocation info for local variables in function 'ThreadExit'
                                    551 ;------------------------------------------------------------
                                    552 ;	preemptive.c:251: void ThreadExit(void) __critical{
                                    553 ;	-----------------------------------------
                                    554 ;	 function ThreadExit
                                    555 ;	-----------------------------------------
      0001A8                        556 _ThreadExit:
      0001A8 D3               [12]  557 	setb	c
      0001A9 10 AF 01         [24]  558 	jbc	ea,00123$
      0001AC C3               [12]  559 	clr	c
      0001AD                        560 00123$:
      0001AD C0 D0            [24]  561 	push	psw
                                    562 ;	preemptive.c:258: threadCount--;
      0001AF 15 33            [12]  563 	dec	_threadCount
                                    564 ;	preemptive.c:259: threadBitmap[currentThread] = 0;
      0001B1 E5 35            [12]  565 	mov	a,_currentThread
      0001B3 24 27            [12]  566 	add	a,#_threadBitmap
      0001B5 F8               [12]  567 	mov	r0,a
      0001B6 76 00            [12]  568 	mov	@r0,#0x00
                                    569 ;	preemptive.c:260: for( i=0; i<MAXTHREADS; i++ ){
      0001B8 75 37 00         [24]  570 	mov	_i,#0x00
      0001BB                        571 00108$:
      0001BB C3               [12]  572 	clr	c
      0001BC E5 37            [12]  573 	mov	a,_i
      0001BE 64 80            [12]  574 	xrl	a,#0x80
      0001C0 94 84            [12]  575 	subb	a,#0x84
      0001C2 50 21            [24]  576 	jnc	00106$
                                    577 ;	preemptive.c:261: if( i == currentThread )
      0001C4 E5 35            [12]  578 	mov	a,_currentThread
      0001C6 B5 37 02         [24]  579 	cjne	a,_i,00125$
      0001C9 80 16            [24]  580 	sjmp	00105$
      0001CB                        581 00125$:
                                    582 ;	preemptive.c:263: if( threadBitmap[i] == 1 ){
      0001CB E5 37            [12]  583 	mov	a,_i
      0001CD 24 27            [12]  584 	add	a,#_threadBitmap
      0001CF F9               [12]  585 	mov	r1,a
      0001D0 87 07            [24]  586 	mov	ar7,@r1
      0001D2 BF 01 0C         [24]  587 	cjne	r7,#0x01,00105$
                                    588 ;	preemptive.c:264: currentThread = i;
      0001D5 85 37 35         [24]  589 	mov	_currentThread,_i
                                    590 ;	preemptive.c:265: currentID = savedSP[i];
      0001D8 E5 37            [12]  591 	mov	a,_i
      0001DA 24 23            [12]  592 	add	a,#_savedSP
      0001DC F9               [12]  593 	mov	r1,a
      0001DD 87 32            [24]  594 	mov	_currentID,@r1
                                    595 ;	preemptive.c:266: break;
      0001DF 80 04            [24]  596 	sjmp	00106$
      0001E1                        597 00105$:
                                    598 ;	preemptive.c:260: for( i=0; i<MAXTHREADS; i++ ){
      0001E1 05 37            [12]  599 	inc	_i
      0001E3 80 D6            [24]  600 	sjmp	00108$
      0001E5                        601 00106$:
                                    602 ;	preemptive.c:269: RESTORESTATE;
      0001E5 E5 35            [12]  603 	mov	a,_currentThread
      0001E7 24 23            [12]  604 	add	a,#_savedSP
      0001E9 F9               [12]  605 	mov	r1,a
      0001EA 87 81            [24]  606 	mov	_SP,@r1
      0001EC D0 D0            [24]  607 	POP PSW 
      0001EE D0 83            [24]  608 	POP DPH 
      0001F0 D0 82            [24]  609 	POP DPL 
      0001F2 D0 F0            [24]  610 	POP B 
      0001F4 D0 E0            [24]  611 	POP ACC 
      0001F6 D0 D0            [24]  612 	pop	psw
      0001F8 92 AF            [24]  613 	mov	ea,c
      0001FA 22               [24]  614 	ret
                                    615 ;------------------------------------------------------------
                                    616 ;Allocation info for local variables in function 'myTimer0Handler'
                                    617 ;------------------------------------------------------------
                                    618 ;	preemptive.c:273: void myTimer0Handler(void){
                                    619 ;	-----------------------------------------
                                    620 ;	 function myTimer0Handler
                                    621 ;	-----------------------------------------
      0001FB                        622 _myTimer0Handler:
                                    623 ;	preemptive.c:274: EA = 0; //don't do __critival
      0001FB C2 AF            [12]  624 	clr	_EA
                                    625 ;	preemptive.c:275: SAVESTATE; 
      0001FD C0 E0            [24]  626 	PUSH ACC 
      0001FF C0 F0            [24]  627 	PUSH B 
      000201 C0 82            [24]  628 	PUSH DPL 
      000203 C0 83            [24]  629 	PUSH DPH 
      000205 C0 D0            [24]  630 	PUSH PSW 
      000207 E5 35            [12]  631 	mov	a,_currentThread
      000209 24 23            [12]  632 	add	a,#_savedSP
      00020B F8               [12]  633 	mov	r0,a
      00020C A6 81            [24]  634 	mov	@r0,_SP
                                    635 ;	preemptive.c:276: i=0;
      00020E 75 37 00         [24]  636 	mov	_i,#0x00
                                    637 ;	preemptive.c:277: do{
      000211                        638 00107$:
                                    639 ;	preemptive.c:278: tmp = threadBitmap[i];
      000211 E5 37            [12]  640 	mov	a,_i
      000213 24 27            [12]  641 	add	a,#_threadBitmap
      000215 F9               [12]  642 	mov	r1,a
      000216 87 36            [24]  643 	mov	_tmp,@r1
                                    644 ;	preemptive.c:279: if( i == currentThread){
      000218 E5 35            [12]  645 	mov	a,_currentThread
      00021A B5 37 04         [24]  646 	cjne	a,_i,00102$
                                    647 ;	preemptive.c:280: i++;
      00021D 05 37            [12]  648 	inc	_i
                                    649 ;	preemptive.c:281: continue;
      00021F 80 F0            [24]  650 	sjmp	00107$
      000221                        651 00102$:
                                    652 ;	preemptive.c:283: if( tmp == 1 ){
      000221 74 01            [12]  653 	mov	a,#0x01
      000223 B5 36 05         [24]  654 	cjne	a,_tmp,00104$
                                    655 ;	preemptive.c:284: currentThread = i;
      000226 85 37 35         [24]  656 	mov	_currentThread,_i
                                    657 ;	preemptive.c:285: break;
      000229 80 0E            [24]  658 	sjmp	00109$
      00022B                        659 00104$:
                                    660 ;	preemptive.c:287: if( i == MAXTHREADS ){
      00022B 74 04            [12]  661 	mov	a,#0x04
      00022D B5 37 05         [24]  662 	cjne	a,_i,00106$
                                    663 ;	preemptive.c:288: i = -1;
      000230 75 37 FF         [24]  664 	mov	_i,#0xFF
                                    665 ;	preemptive.c:289: break;
      000233 80 04            [24]  666 	sjmp	00109$
      000235                        667 00106$:
                                    668 ;	preemptive.c:291: i++;
      000235 05 37            [12]  669 	inc	_i
                                    670 ;	preemptive.c:292: } while (1);
      000237 80 D8            [24]  671 	sjmp	00107$
      000239                        672 00109$:
                                    673 ;	preemptive.c:293: RESTORESTATE;
      000239 E5 35            [12]  674 	mov	a,_currentThread
      00023B 24 23            [12]  675 	add	a,#_savedSP
      00023D F9               [12]  676 	mov	r1,a
      00023E 87 81            [24]  677 	mov	_SP,@r1
      000240 D0 D0            [24]  678 	POP PSW 
      000242 D0 83            [24]  679 	POP DPH 
      000244 D0 82            [24]  680 	POP DPL 
      000246 D0 F0            [24]  681 	POP B 
      000248 D0 E0            [24]  682 	POP ACC 
                                    683 ;	preemptive.c:294: EA = 1;
      00024A D2 AF            [12]  684 	setb	_EA
                                    685 ;	preemptive.c:298: __endasm;
      00024C 32               [24]  686 	reti
      00024D 22               [24]  687 	ret
                                    688 	.area CSEG    (CODE)
                                    689 	.area CONST   (CODE)
                                    690 	.area XINIT   (CODE)
                                    691 	.area CABS    (ABS,CODE)
