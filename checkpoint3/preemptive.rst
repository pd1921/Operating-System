                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Thu Jan 16 19:44:42 2020
                                      5 ;--------------------------------------------------------
                                      6 	.module preemptive
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _Bootstrap
                                     13 	.globl _main
                                     14 	.globl _CY
                                     15 	.globl _AC
                                     16 	.globl _F0
                                     17 	.globl _RS1
                                     18 	.globl _RS0
                                     19 	.globl _OV
                                     20 	.globl _F1
                                     21 	.globl _P
                                     22 	.globl _PS
                                     23 	.globl _PT1
                                     24 	.globl _PX1
                                     25 	.globl _PT0
                                     26 	.globl _PX0
                                     27 	.globl _RD
                                     28 	.globl _WR
                                     29 	.globl _T1
                                     30 	.globl _T0
                                     31 	.globl _INT1
                                     32 	.globl _INT0
                                     33 	.globl _TXD
                                     34 	.globl _RXD
                                     35 	.globl _P3_7
                                     36 	.globl _P3_6
                                     37 	.globl _P3_5
                                     38 	.globl _P3_4
                                     39 	.globl _P3_3
                                     40 	.globl _P3_2
                                     41 	.globl _P3_1
                                     42 	.globl _P3_0
                                     43 	.globl _EA
                                     44 	.globl _ES
                                     45 	.globl _ET1
                                     46 	.globl _EX1
                                     47 	.globl _ET0
                                     48 	.globl _EX0
                                     49 	.globl _P2_7
                                     50 	.globl _P2_6
                                     51 	.globl _P2_5
                                     52 	.globl _P2_4
                                     53 	.globl _P2_3
                                     54 	.globl _P2_2
                                     55 	.globl _P2_1
                                     56 	.globl _P2_0
                                     57 	.globl _SM0
                                     58 	.globl _SM1
                                     59 	.globl _SM2
                                     60 	.globl _REN
                                     61 	.globl _TB8
                                     62 	.globl _RB8
                                     63 	.globl _TI
                                     64 	.globl _RI
                                     65 	.globl _P1_7
                                     66 	.globl _P1_6
                                     67 	.globl _P1_5
                                     68 	.globl _P1_4
                                     69 	.globl _P1_3
                                     70 	.globl _P1_2
                                     71 	.globl _P1_1
                                     72 	.globl _P1_0
                                     73 	.globl _TF1
                                     74 	.globl _TR1
                                     75 	.globl _TF0
                                     76 	.globl _TR0
                                     77 	.globl _IE1
                                     78 	.globl _IT1
                                     79 	.globl _IE0
                                     80 	.globl _IT0
                                     81 	.globl _P0_7
                                     82 	.globl _P0_6
                                     83 	.globl _P0_5
                                     84 	.globl _P0_4
                                     85 	.globl _P0_3
                                     86 	.globl _P0_2
                                     87 	.globl _P0_1
                                     88 	.globl _P0_0
                                     89 	.globl _B
                                     90 	.globl _ACC
                                     91 	.globl _PSW
                                     92 	.globl _IP
                                     93 	.globl _P3
                                     94 	.globl _IE
                                     95 	.globl _P2
                                     96 	.globl _SBUF
                                     97 	.globl _SCON
                                     98 	.globl _P1
                                     99 	.globl _TH1
                                    100 	.globl _TH0
                                    101 	.globl _TL1
                                    102 	.globl _TL0
                                    103 	.globl _TMOD
                                    104 	.globl _TCON
                                    105 	.globl _PCON
                                    106 	.globl _DPH
                                    107 	.globl _DPL
                                    108 	.globl _SP
                                    109 	.globl _P0
                                    110 	.globl _currentSP
                                    111 	.globl _i
                                    112 	.globl _tmp
                                    113 	.globl _currentThread
                                    114 	.globl _threadCount
                                    115 	.globl _currentID
                                    116 	.globl _threadBitmap
                                    117 	.globl _savedSP
                                    118 	.globl _ThreadCreate
                                    119 	.globl _ThreadYield
                                    120 	.globl _ThreadExit
                                    121 	.globl _myTimer0Handler
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
                           000030   239 _currentID	=	0x0030
                           000031   240 _threadCount	=	0x0031
                           000032   241 _currentThread	=	0x0032
                           000033   242 _tmp	=	0x0033
                           000034   243 _i	=	0x0034
                           000035   244 _currentSP	=	0x0035
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
      0000C5                        311 _Bootstrap:
                           000007   312 	ar7 = 0x07
                           000006   313 	ar6 = 0x06
                           000005   314 	ar5 = 0x05
                           000004   315 	ar4 = 0x04
                           000003   316 	ar3 = 0x03
                           000002   317 	ar2 = 0x02
                           000001   318 	ar1 = 0x01
                           000000   319 	ar0 = 0x00
                                    320 ;	preemptive.c:77: TMOD = 0;
      0000C5 75 89 00         [24]  321 	mov	_TMOD,#0x00
                                    322 ;	preemptive.c:78: IE = 0x82;
      0000C8 75 A8 82         [24]  323 	mov	_IE,#0x82
                                    324 ;	preemptive.c:79: TR0 = 1;
      0000CB D2 8C            [12]  325 	setb	_TR0
                                    326 ;	preemptive.c:86: threadCount = 0;   
      0000CD 75 31 00         [24]  327 	mov	_threadCount,#0x00
                                    328 ;	preemptive.c:87: for(i=0; i<MAXTHREADS; i++){
      0000D0 75 34 00         [24]  329 	mov	_i,#0x00
      0000D3                        330 00103$:
      0000D3 C3               [12]  331 	clr	c
      0000D4 E5 34            [12]  332 	mov	a,_i
      0000D6 64 80            [12]  333 	xrl	a,#0x80
      0000D8 94 84            [12]  334 	subb	a,#0x84
      0000DA 50 0B            [24]  335 	jnc	00101$
                                    336 ;	preemptive.c:88: threadBitmap[i] = 0;
      0000DC E5 34            [12]  337 	mov	a,_i
      0000DE 24 27            [12]  338 	add	a,#_threadBitmap
      0000E0 F8               [12]  339 	mov	r0,a
      0000E1 76 00            [12]  340 	mov	@r0,#0x00
                                    341 ;	preemptive.c:87: for(i=0; i<MAXTHREADS; i++){
      0000E3 05 34            [12]  342 	inc	_i
      0000E5 80 EC            [24]  343 	sjmp	00103$
      0000E7                        344 00101$:
                                    345 ;	preemptive.c:96: currentID = ThreadCreate(main);
      0000E7 90 00 9C         [24]  346 	mov	dptr,#_main
      0000EA 12 01 05         [24]  347 	lcall	_ThreadCreate
      0000ED 85 82 30         [24]  348 	mov	_currentID,dpl
                                    349 ;	preemptive.c:97: currentThread = i;
      0000F0 85 34 32         [24]  350 	mov	_currentThread,_i
                                    351 ;	preemptive.c:98: RESTORESTATE;
      0000F3 E5 32            [12]  352 	mov	a,_currentThread
      0000F5 24 23            [12]  353 	add	a,#_savedSP
      0000F7 F9               [12]  354 	mov	r1,a
      0000F8 87 81            [24]  355 	mov	_SP,@r1
      0000FA D0 D0            [24]  356 	POP PSW 
      0000FC D0 83            [24]  357 	POP DPH 
      0000FE D0 82            [24]  358 	POP DPL 
      000100 D0 F0            [24]  359 	POP B 
      000102 D0 E0            [24]  360 	POP ACC 
      000104 22               [24]  361 	ret
                                    362 ;------------------------------------------------------------
                                    363 ;Allocation info for local variables in function 'ThreadCreate'
                                    364 ;------------------------------------------------------------
                                    365 ;fp                        Allocated to registers 
                                    366 ;------------------------------------------------------------
                                    367 ;	preemptive.c:107: ThreadID ThreadCreate(FunctionPtr fp) __critical{
                                    368 ;	-----------------------------------------
                                    369 ;	 function ThreadCreate
                                    370 ;	-----------------------------------------
      000105                        371 _ThreadCreate:
      000105 D3               [12]  372 	setb	c
      000106 10 AF 01         [24]  373 	jbc	ea,00146$
      000109 C3               [12]  374 	clr	c
      00010A                        375 00146$:
      00010A C0 D0            [24]  376 	push	psw
                                    377 ;	preemptive.c:113: if(threadCount >= MAXTHREADS)
      00010C C3               [12]  378 	clr	c
      00010D E5 31            [12]  379 	mov	a,_threadCount
      00010F 64 80            [12]  380 	xrl	a,#0x80
      000111 94 84            [12]  381 	subb	a,#0x84
      000113 40 06            [24]  382 	jc	00102$
                                    383 ;	preemptive.c:114: return -1;
      000115 75 82 FF         [24]  384 	mov	dpl,#0xFF
      000118 02 01 94         [24]  385 	ljmp	00120$
      00011B                        386 00102$:
                                    387 ;	preemptive.c:121: for( i=0; i<MAXTHREADS; i++){
      00011B 75 34 00         [24]  388 	mov	_i,#0x00
      00011E                        389 00118$:
      00011E C3               [12]  390 	clr	c
      00011F E5 34            [12]  391 	mov	a,_i
      000121 64 80            [12]  392 	xrl	a,#0x80
      000123 94 84            [12]  393 	subb	a,#0x84
      000125 50 0C            [24]  394 	jnc	00105$
                                    395 ;	preemptive.c:122: if( threadBitmap[i] == 0 )
      000127 E5 34            [12]  396 	mov	a,_i
      000129 24 27            [12]  397 	add	a,#_threadBitmap
      00012B F9               [12]  398 	mov	r1,a
      00012C E7               [12]  399 	mov	a,@r1
      00012D 60 04            [24]  400 	jz	00105$
                                    401 ;	preemptive.c:121: for( i=0; i<MAXTHREADS; i++){
      00012F 05 34            [12]  402 	inc	_i
      000131 80 EB            [24]  403 	sjmp	00118$
      000133                        404 00105$:
                                    405 ;	preemptive.c:130: threadCount++;
      000133 05 31            [12]  406 	inc	_threadCount
                                    407 ;	preemptive.c:131: threadBitmap[i] = 1;
      000135 E5 34            [12]  408 	mov	a,_i
      000137 24 27            [12]  409 	add	a,#_threadBitmap
      000139 F8               [12]  410 	mov	r0,a
      00013A 76 01            [12]  411 	mov	@r0,#0x01
                                    412 ;	preemptive.c:136: currentSP = SP;
      00013C 85 81 35         [24]  413 	mov	_currentSP,_SP
                                    414 ;	preemptive.c:137: SP = (0x3F) + ( i << 4 );
      00013F E5 34            [12]  415 	mov	a,_i
      000141 C4               [12]  416 	swap	a
      000142 54 F0            [12]  417 	anl	a,#0xF0
      000144 FF               [12]  418 	mov	r7,a
      000145 24 3F            [12]  419 	add	a,#0x3F
      000147 F5 81            [12]  420 	mov	_SP,a
                                    421 ;	preemptive.c:147: __endasm;
      000149 C0 82            [24]  422 	PUSH DPL
      00014B C0 83            [24]  423 	PUSH DPH
                                    424 ;	preemptive.c:164: __endasm;
      00014D 75 E0 00         [24]  425 	MOV ACC, #0H
      000150 75 F0 00         [24]  426 	MOV B, #0H
      000153 75 82 00         [24]  427 	MOV DPL, #0H
      000156 75 83 00         [24]  428 	MOV DPH, #0H
      000159 C0 E0            [24]  429 	PUSH ACC
      00015B C0 F0            [24]  430 	PUSH B
      00015D C0 82            [24]  431 	PUSH DPL
      00015F C0 83            [24]  432 	PUSH DPH
                                    433 ;	preemptive.c:176: if( i==0 )
      000161 E5 34            [12]  434 	mov	a,_i
                                    435 ;	preemptive.c:177: PSW = 0x00;
      000163 70 04            [24]  436 	jnz	00115$
      000165 F5 D0            [12]  437 	mov	_PSW,a
      000167 80 1C            [24]  438 	sjmp	00116$
      000169                        439 00115$:
                                    440 ;	preemptive.c:178: else if( i==1 )
      000169 74 01            [12]  441 	mov	a,#0x01
      00016B B5 34 05         [24]  442 	cjne	a,_i,00112$
                                    443 ;	preemptive.c:179: PSW = 0x08;
      00016E 75 D0 08         [24]  444 	mov	_PSW,#0x08
      000171 80 12            [24]  445 	sjmp	00116$
      000173                        446 00112$:
                                    447 ;	preemptive.c:180: else if( i==2 )
      000173 74 02            [12]  448 	mov	a,#0x02
      000175 B5 34 05         [24]  449 	cjne	a,_i,00109$
                                    450 ;	preemptive.c:181: PSW = 0x10;
      000178 75 D0 10         [24]  451 	mov	_PSW,#0x10
      00017B 80 08            [24]  452 	sjmp	00116$
      00017D                        453 00109$:
                                    454 ;	preemptive.c:182: else if( i==3 )
      00017D 74 03            [12]  455 	mov	a,#0x03
      00017F B5 34 03         [24]  456 	cjne	a,_i,00116$
                                    457 ;	preemptive.c:183: PSW = 0x18;
      000182 75 D0 18         [24]  458 	mov	_PSW,#0x18
      000185                        459 00116$:
                                    460 ;	preemptive.c:187: __endasm;
      000185 C0 D0            [24]  461 	PUSH PSW
                                    462 ;	preemptive.c:191: savedSP[i] = SP;
      000187 E5 34            [12]  463 	mov	a,_i
      000189 24 23            [12]  464 	add	a,#_savedSP
      00018B F8               [12]  465 	mov	r0,a
      00018C A6 81            [24]  466 	mov	@r0,_SP
                                    467 ;	preemptive.c:194: SP = currentSP;
      00018E 85 35 81         [24]  468 	mov	_SP,_currentSP
                                    469 ;	preemptive.c:197: return i;
      000191 85 34 82         [24]  470 	mov	dpl,_i
      000194                        471 00120$:
      000194 D0 D0            [24]  472 	pop	psw
      000196 92 AF            [24]  473 	mov	ea,c
      000198 22               [24]  474 	ret
                                    475 ;------------------------------------------------------------
                                    476 ;Allocation info for local variables in function 'ThreadYield'
                                    477 ;------------------------------------------------------------
                                    478 ;	preemptive.c:209: void ThreadYield(void) __critical{
                                    479 ;	-----------------------------------------
                                    480 ;	 function ThreadYield
                                    481 ;	-----------------------------------------
      000199                        482 _ThreadYield:
      000199 D3               [12]  483 	setb	c
      00019A 10 AF 01         [24]  484 	jbc	ea,00124$
      00019D C3               [12]  485 	clr	c
      00019E                        486 00124$:
      00019E C0 D0            [24]  487 	push	psw
                                    488 ;	preemptive.c:210: SAVESTATE; 
      0001A0 C0 E0            [24]  489 	PUSH ACC 
      0001A2 C0 F0            [24]  490 	PUSH B 
      0001A4 C0 82            [24]  491 	PUSH DPL 
      0001A6 C0 83            [24]  492 	PUSH DPH 
      0001A8 C0 D0            [24]  493 	PUSH PSW 
      0001AA E5 32            [12]  494 	mov	a,_currentThread
      0001AC 24 23            [12]  495 	add	a,#_savedSP
      0001AE F8               [12]  496 	mov	r0,a
      0001AF A6 81            [24]  497 	mov	@r0,_SP
                                    498 ;	preemptive.c:211: i=0;
      0001B1 75 34 00         [24]  499 	mov	_i,#0x00
                                    500 ;	preemptive.c:212: do{
      0001B4                        501 00107$:
                                    502 ;	preemptive.c:213: tmp = threadBitmap[i];
      0001B4 E5 34            [12]  503 	mov	a,_i
      0001B6 24 27            [12]  504 	add	a,#_threadBitmap
      0001B8 F9               [12]  505 	mov	r1,a
      0001B9 87 33            [24]  506 	mov	_tmp,@r1
                                    507 ;	preemptive.c:223: if( i == currentThread){
      0001BB E5 32            [12]  508 	mov	a,_currentThread
      0001BD B5 34 04         [24]  509 	cjne	a,_i,00102$
                                    510 ;	preemptive.c:224: i++;
      0001C0 05 34            [12]  511 	inc	_i
                                    512 ;	preemptive.c:225: continue;
      0001C2 80 F0            [24]  513 	sjmp	00107$
      0001C4                        514 00102$:
                                    515 ;	preemptive.c:227: if( tmp == 1 ){
      0001C4 74 01            [12]  516 	mov	a,#0x01
      0001C6 B5 33 05         [24]  517 	cjne	a,_tmp,00104$
                                    518 ;	preemptive.c:228: currentThread = i;
      0001C9 85 34 32         [24]  519 	mov	_currentThread,_i
                                    520 ;	preemptive.c:229: break;
      0001CC 80 0E            [24]  521 	sjmp	00109$
      0001CE                        522 00104$:
                                    523 ;	preemptive.c:231: if( i == MAXTHREADS ){
      0001CE 74 04            [12]  524 	mov	a,#0x04
      0001D0 B5 34 05         [24]  525 	cjne	a,_i,00106$
                                    526 ;	preemptive.c:232: i = -1;
      0001D3 75 34 FF         [24]  527 	mov	_i,#0xFF
                                    528 ;	preemptive.c:233: break;
      0001D6 80 04            [24]  529 	sjmp	00109$
      0001D8                        530 00106$:
                                    531 ;	preemptive.c:235: i++;
      0001D8 05 34            [12]  532 	inc	_i
                                    533 ;	preemptive.c:241: } while (1);
      0001DA 80 D8            [24]  534 	sjmp	00107$
      0001DC                        535 00109$:
                                    536 ;	preemptive.c:242: RESTORESTATE;
      0001DC E5 32            [12]  537 	mov	a,_currentThread
      0001DE 24 23            [12]  538 	add	a,#_savedSP
      0001E0 F9               [12]  539 	mov	r1,a
      0001E1 87 81            [24]  540 	mov	_SP,@r1
      0001E3 D0 D0            [24]  541 	POP PSW 
      0001E5 D0 83            [24]  542 	POP DPH 
      0001E7 D0 82            [24]  543 	POP DPL 
      0001E9 D0 F0            [24]  544 	POP B 
      0001EB D0 E0            [24]  545 	POP ACC 
      0001ED D0 D0            [24]  546 	pop	psw
      0001EF 92 AF            [24]  547 	mov	ea,c
      0001F1 22               [24]  548 	ret
                                    549 ;------------------------------------------------------------
                                    550 ;Allocation info for local variables in function 'ThreadExit'
                                    551 ;------------------------------------------------------------
                                    552 ;	preemptive.c:251: void ThreadExit(void) __critical{
                                    553 ;	-----------------------------------------
                                    554 ;	 function ThreadExit
                                    555 ;	-----------------------------------------
      0001F2                        556 _ThreadExit:
      0001F2 D3               [12]  557 	setb	c
      0001F3 10 AF 01         [24]  558 	jbc	ea,00123$
      0001F6 C3               [12]  559 	clr	c
      0001F7                        560 00123$:
      0001F7 C0 D0            [24]  561 	push	psw
                                    562 ;	preemptive.c:258: threadCount--;
      0001F9 15 31            [12]  563 	dec	_threadCount
                                    564 ;	preemptive.c:259: threadBitmap[currentThread] = 0;
      0001FB E5 32            [12]  565 	mov	a,_currentThread
      0001FD 24 27            [12]  566 	add	a,#_threadBitmap
      0001FF F8               [12]  567 	mov	r0,a
      000200 76 00            [12]  568 	mov	@r0,#0x00
                                    569 ;	preemptive.c:260: for( i=0; i<MAXTHREADS; i++ ){
      000202 75 34 00         [24]  570 	mov	_i,#0x00
      000205                        571 00108$:
      000205 C3               [12]  572 	clr	c
      000206 E5 34            [12]  573 	mov	a,_i
      000208 64 80            [12]  574 	xrl	a,#0x80
      00020A 94 84            [12]  575 	subb	a,#0x84
      00020C 50 21            [24]  576 	jnc	00106$
                                    577 ;	preemptive.c:261: if( i == currentThread )
      00020E E5 32            [12]  578 	mov	a,_currentThread
      000210 B5 34 02         [24]  579 	cjne	a,_i,00125$
      000213 80 16            [24]  580 	sjmp	00105$
      000215                        581 00125$:
                                    582 ;	preemptive.c:263: if( threadBitmap[i] == 1 ){
      000215 E5 34            [12]  583 	mov	a,_i
      000217 24 27            [12]  584 	add	a,#_threadBitmap
      000219 F9               [12]  585 	mov	r1,a
      00021A 87 07            [24]  586 	mov	ar7,@r1
      00021C BF 01 0C         [24]  587 	cjne	r7,#0x01,00105$
                                    588 ;	preemptive.c:264: currentThread = i;
      00021F 85 34 32         [24]  589 	mov	_currentThread,_i
                                    590 ;	preemptive.c:265: currentID = savedSP[i];
      000222 E5 34            [12]  591 	mov	a,_i
      000224 24 23            [12]  592 	add	a,#_savedSP
      000226 F9               [12]  593 	mov	r1,a
      000227 87 30            [24]  594 	mov	_currentID,@r1
                                    595 ;	preemptive.c:266: break;
      000229 80 04            [24]  596 	sjmp	00106$
      00022B                        597 00105$:
                                    598 ;	preemptive.c:260: for( i=0; i<MAXTHREADS; i++ ){
      00022B 05 34            [12]  599 	inc	_i
      00022D 80 D6            [24]  600 	sjmp	00108$
      00022F                        601 00106$:
                                    602 ;	preemptive.c:269: RESTORESTATE;
      00022F E5 32            [12]  603 	mov	a,_currentThread
      000231 24 23            [12]  604 	add	a,#_savedSP
      000233 F9               [12]  605 	mov	r1,a
      000234 87 81            [24]  606 	mov	_SP,@r1
      000236 D0 D0            [24]  607 	POP PSW 
      000238 D0 83            [24]  608 	POP DPH 
      00023A D0 82            [24]  609 	POP DPL 
      00023C D0 F0            [24]  610 	POP B 
      00023E D0 E0            [24]  611 	POP ACC 
      000240 D0 D0            [24]  612 	pop	psw
      000242 92 AF            [24]  613 	mov	ea,c
      000244 22               [24]  614 	ret
                                    615 ;------------------------------------------------------------
                                    616 ;Allocation info for local variables in function 'myTimer0Handler'
                                    617 ;------------------------------------------------------------
                                    618 ;	preemptive.c:273: void myTimer0Handler(void){
                                    619 ;	-----------------------------------------
                                    620 ;	 function myTimer0Handler
                                    621 ;	-----------------------------------------
      000245                        622 _myTimer0Handler:
                                    623 ;	preemptive.c:274: EA = 0; //don't do __critival
      000245 C2 AF            [12]  624 	clr	_EA
                                    625 ;	preemptive.c:275: SAVESTATE; 
      000247 C0 E0            [24]  626 	PUSH ACC 
      000249 C0 F0            [24]  627 	PUSH B 
      00024B C0 82            [24]  628 	PUSH DPL 
      00024D C0 83            [24]  629 	PUSH DPH 
      00024F C0 D0            [24]  630 	PUSH PSW 
      000251 E5 32            [12]  631 	mov	a,_currentThread
      000253 24 23            [12]  632 	add	a,#_savedSP
      000255 F8               [12]  633 	mov	r0,a
      000256 A6 81            [24]  634 	mov	@r0,_SP
                                    635 ;	preemptive.c:276: i=0;
      000258 75 34 00         [24]  636 	mov	_i,#0x00
                                    637 ;	preemptive.c:277: do{
      00025B                        638 00107$:
                                    639 ;	preemptive.c:278: tmp = threadBitmap[i];
      00025B E5 34            [12]  640 	mov	a,_i
      00025D 24 27            [12]  641 	add	a,#_threadBitmap
      00025F F9               [12]  642 	mov	r1,a
      000260 87 33            [24]  643 	mov	_tmp,@r1
                                    644 ;	preemptive.c:279: if( i == currentThread){
      000262 E5 32            [12]  645 	mov	a,_currentThread
      000264 B5 34 04         [24]  646 	cjne	a,_i,00102$
                                    647 ;	preemptive.c:280: i++;
      000267 05 34            [12]  648 	inc	_i
                                    649 ;	preemptive.c:281: continue;
      000269 80 F0            [24]  650 	sjmp	00107$
      00026B                        651 00102$:
                                    652 ;	preemptive.c:283: if( tmp == 1 ){
      00026B 74 01            [12]  653 	mov	a,#0x01
      00026D B5 33 05         [24]  654 	cjne	a,_tmp,00104$
                                    655 ;	preemptive.c:284: currentThread = i;
      000270 85 34 32         [24]  656 	mov	_currentThread,_i
                                    657 ;	preemptive.c:285: break;
      000273 80 0E            [24]  658 	sjmp	00109$
      000275                        659 00104$:
                                    660 ;	preemptive.c:287: if( i == MAXTHREADS ){
      000275 74 04            [12]  661 	mov	a,#0x04
      000277 B5 34 05         [24]  662 	cjne	a,_i,00106$
                                    663 ;	preemptive.c:288: i = -1;
      00027A 75 34 FF         [24]  664 	mov	_i,#0xFF
                                    665 ;	preemptive.c:289: break;
      00027D 80 04            [24]  666 	sjmp	00109$
      00027F                        667 00106$:
                                    668 ;	preemptive.c:291: i++;
      00027F 05 34            [12]  669 	inc	_i
                                    670 ;	preemptive.c:292: } while (1);
      000281 80 D8            [24]  671 	sjmp	00107$
      000283                        672 00109$:
                                    673 ;	preemptive.c:293: RESTORESTATE;
      000283 E5 32            [12]  674 	mov	a,_currentThread
      000285 24 23            [12]  675 	add	a,#_savedSP
      000287 F9               [12]  676 	mov	r1,a
      000288 87 81            [24]  677 	mov	_SP,@r1
      00028A D0 D0            [24]  678 	POP PSW 
      00028C D0 83            [24]  679 	POP DPH 
      00028E D0 82            [24]  680 	POP DPL 
      000290 D0 F0            [24]  681 	POP B 
      000292 D0 E0            [24]  682 	POP ACC 
                                    683 ;	preemptive.c:294: EA = 1;
      000294 D2 AF            [12]  684 	setb	_EA
                                    685 ;	preemptive.c:298: __endasm;
      000296 32               [24]  686 	reti
      000297 22               [24]  687 	ret
                                    688 	.area CSEG    (CODE)
                                    689 	.area CONST   (CODE)
                                    690 	.area XINIT   (CODE)
                                    691 	.area CABS    (ABS,CODE)
