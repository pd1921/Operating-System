                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Thu Jan  9 08:04:37 2020
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
                                    110 	.globl _visitedCount
                                    111 	.globl _vtmp
                                    112 	.globl _visited
                                    113 	.globl _currentSP
                                    114 	.globl _i
                                    115 	.globl _tmp
                                    116 	.globl _currentThread
                                    117 	.globl _threadCount
                                    118 	.globl _currentID
                                    119 	.globl _threadBitmap
                                    120 	.globl _savedSP
                                    121 	.globl _delay
                                    122 	.globl _now
                                    123 	.globl _ThreadCreate
                                    124 	.globl _ThreadYield
                                    125 	.globl _ThreadExit
                                    126 	.globl _myTimer0Handler
                                    127 ;--------------------------------------------------------
                                    128 ; special function registers
                                    129 ;--------------------------------------------------------
                                    130 	.area RSEG    (ABS,DATA)
      000000                        131 	.org 0x0000
                           000080   132 _P0	=	0x0080
                           000081   133 _SP	=	0x0081
                           000082   134 _DPL	=	0x0082
                           000083   135 _DPH	=	0x0083
                           000087   136 _PCON	=	0x0087
                           000088   137 _TCON	=	0x0088
                           000089   138 _TMOD	=	0x0089
                           00008A   139 _TL0	=	0x008a
                           00008B   140 _TL1	=	0x008b
                           00008C   141 _TH0	=	0x008c
                           00008D   142 _TH1	=	0x008d
                           000090   143 _P1	=	0x0090
                           000098   144 _SCON	=	0x0098
                           000099   145 _SBUF	=	0x0099
                           0000A0   146 _P2	=	0x00a0
                           0000A8   147 _IE	=	0x00a8
                           0000B0   148 _P3	=	0x00b0
                           0000B8   149 _IP	=	0x00b8
                           0000D0   150 _PSW	=	0x00d0
                           0000E0   151 _ACC	=	0x00e0
                           0000F0   152 _B	=	0x00f0
                                    153 ;--------------------------------------------------------
                                    154 ; special function bits
                                    155 ;--------------------------------------------------------
                                    156 	.area RSEG    (ABS,DATA)
      000000                        157 	.org 0x0000
                           000080   158 _P0_0	=	0x0080
                           000081   159 _P0_1	=	0x0081
                           000082   160 _P0_2	=	0x0082
                           000083   161 _P0_3	=	0x0083
                           000084   162 _P0_4	=	0x0084
                           000085   163 _P0_5	=	0x0085
                           000086   164 _P0_6	=	0x0086
                           000087   165 _P0_7	=	0x0087
                           000088   166 _IT0	=	0x0088
                           000089   167 _IE0	=	0x0089
                           00008A   168 _IT1	=	0x008a
                           00008B   169 _IE1	=	0x008b
                           00008C   170 _TR0	=	0x008c
                           00008D   171 _TF0	=	0x008d
                           00008E   172 _TR1	=	0x008e
                           00008F   173 _TF1	=	0x008f
                           000090   174 _P1_0	=	0x0090
                           000091   175 _P1_1	=	0x0091
                           000092   176 _P1_2	=	0x0092
                           000093   177 _P1_3	=	0x0093
                           000094   178 _P1_4	=	0x0094
                           000095   179 _P1_5	=	0x0095
                           000096   180 _P1_6	=	0x0096
                           000097   181 _P1_7	=	0x0097
                           000098   182 _RI	=	0x0098
                           000099   183 _TI	=	0x0099
                           00009A   184 _RB8	=	0x009a
                           00009B   185 _TB8	=	0x009b
                           00009C   186 _REN	=	0x009c
                           00009D   187 _SM2	=	0x009d
                           00009E   188 _SM1	=	0x009e
                           00009F   189 _SM0	=	0x009f
                           0000A0   190 _P2_0	=	0x00a0
                           0000A1   191 _P2_1	=	0x00a1
                           0000A2   192 _P2_2	=	0x00a2
                           0000A3   193 _P2_3	=	0x00a3
                           0000A4   194 _P2_4	=	0x00a4
                           0000A5   195 _P2_5	=	0x00a5
                           0000A6   196 _P2_6	=	0x00a6
                           0000A7   197 _P2_7	=	0x00a7
                           0000A8   198 _EX0	=	0x00a8
                           0000A9   199 _ET0	=	0x00a9
                           0000AA   200 _EX1	=	0x00aa
                           0000AB   201 _ET1	=	0x00ab
                           0000AC   202 _ES	=	0x00ac
                           0000AF   203 _EA	=	0x00af
                           0000B0   204 _P3_0	=	0x00b0
                           0000B1   205 _P3_1	=	0x00b1
                           0000B2   206 _P3_2	=	0x00b2
                           0000B3   207 _P3_3	=	0x00b3
                           0000B4   208 _P3_4	=	0x00b4
                           0000B5   209 _P3_5	=	0x00b5
                           0000B6   210 _P3_6	=	0x00b6
                           0000B7   211 _P3_7	=	0x00b7
                           0000B0   212 _RXD	=	0x00b0
                           0000B1   213 _TXD	=	0x00b1
                           0000B2   214 _INT0	=	0x00b2
                           0000B3   215 _INT1	=	0x00b3
                           0000B4   216 _T0	=	0x00b4
                           0000B5   217 _T1	=	0x00b5
                           0000B6   218 _WR	=	0x00b6
                           0000B7   219 _RD	=	0x00b7
                           0000B8   220 _PX0	=	0x00b8
                           0000B9   221 _PT0	=	0x00b9
                           0000BA   222 _PX1	=	0x00ba
                           0000BB   223 _PT1	=	0x00bb
                           0000BC   224 _PS	=	0x00bc
                           0000D0   225 _P	=	0x00d0
                           0000D1   226 _F1	=	0x00d1
                           0000D2   227 _OV	=	0x00d2
                           0000D3   228 _RS0	=	0x00d3
                           0000D4   229 _RS1	=	0x00d4
                           0000D5   230 _F0	=	0x00d5
                           0000D6   231 _AC	=	0x00d6
                           0000D7   232 _CY	=	0x00d7
                                    233 ;--------------------------------------------------------
                                    234 ; overlayable register banks
                                    235 ;--------------------------------------------------------
                                    236 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        237 	.ds 8
                                    238 ;--------------------------------------------------------
                                    239 ; internal ram data
                                    240 ;--------------------------------------------------------
                                    241 	.area DSEG    (DATA)
                           000023   242 _savedSP	=	0x0023
                           000027   243 _threadBitmap	=	0x0027
                           000030   244 _currentID	=	0x0030
                           000031   245 _threadCount	=	0x0031
                           000032   246 _currentThread	=	0x0032
                           000033   247 _tmp	=	0x0033
                           000034   248 _i	=	0x0034
                           000035   249 _currentSP	=	0x0035
                           000039   250 _visited	=	0x0039
                           00003D   251 _vtmp	=	0x003d
                           00003E   252 _visitedCount	=	0x003e
                                    253 ;--------------------------------------------------------
                                    254 ; overlayable items in internal ram 
                                    255 ;--------------------------------------------------------
                                    256 	.area	OSEG    (OVR,DATA)
                                    257 	.area	OSEG    (OVR,DATA)
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
                                    298 ; global & static initialisations
                                    299 ;--------------------------------------------------------
                                    300 	.area HOME    (CODE)
                                    301 	.area GSINIT  (CODE)
                                    302 	.area GSFINAL (CODE)
                                    303 	.area GSINIT  (CODE)
                                    304 ;--------------------------------------------------------
                                    305 ; Home
                                    306 ;--------------------------------------------------------
                                    307 	.area HOME    (CODE)
                                    308 	.area HOME    (CODE)
                                    309 ;--------------------------------------------------------
                                    310 ; code
                                    311 ;--------------------------------------------------------
                                    312 	.area CSEG    (CODE)
                                    313 ;------------------------------------------------------------
                                    314 ;Allocation info for local variables in function 'delay'
                                    315 ;------------------------------------------------------------
                                    316 ;n                         Allocated to registers r7 
                                    317 ;------------------------------------------------------------
                                    318 ;	preemptive.c:81: void delay(unsigned char n){
                                    319 ;	-----------------------------------------
                                    320 ;	 function delay
                                    321 ;	-----------------------------------------
      00014D                        322 _delay:
                           000007   323 	ar7 = 0x07
                           000006   324 	ar6 = 0x06
                           000005   325 	ar5 = 0x05
                           000004   326 	ar4 = 0x04
                           000003   327 	ar3 = 0x03
                           000002   328 	ar2 = 0x02
                           000001   329 	ar1 = 0x01
                           000000   330 	ar0 = 0x00
      00014D AF 82            [24]  331 	mov	r7,dpl
                                    332 ;	preemptive.c:82: vtmp = TL0;
      00014F 85 8A 3D         [24]  333 	mov	_vtmp,_TL0
                                    334 ;	preemptive.c:83: for( i=0; i<n; i++ ){
      000152 75 34 00         [24]  335 	mov	_i,#0x00
      000155                        336 00107$:
      000155 AD 34            [24]  337 	mov	r5,_i
      000157 E5 34            [12]  338 	mov	a,_i
      000159 33               [12]  339 	rlc	a
      00015A 95 E0            [12]  340 	subb	a,acc
      00015C FE               [12]  341 	mov	r6,a
      00015D 8F 03            [24]  342 	mov	ar3,r7
      00015F 7C 00            [12]  343 	mov	r4,#0x00
      000161 C3               [12]  344 	clr	c
      000162 ED               [12]  345 	mov	a,r5
      000163 9B               [12]  346 	subb	a,r3
      000164 EE               [12]  347 	mov	a,r6
      000165 64 80            [12]  348 	xrl	a,#0x80
      000167 8C F0            [24]  349 	mov	b,r4
      000169 63 F0 80         [24]  350 	xrl	b,#0x80
      00016C 95 F0            [12]  351 	subb	a,b
      00016E 50 14            [24]  352 	jnc	00102$
                                    353 ;	preemptive.c:84: for( tmp=0; tmp<100; tmp++){}
      000170 75 33 00         [24]  354 	mov	_tmp,#0x00
      000173                        355 00104$:
      000173 C3               [12]  356 	clr	c
      000174 E5 33            [12]  357 	mov	a,_tmp
      000176 64 80            [12]  358 	xrl	a,#0x80
      000178 94 E4            [12]  359 	subb	a,#0xe4
      00017A 50 04            [24]  360 	jnc	00108$
      00017C 05 33            [12]  361 	inc	_tmp
      00017E 80 F3            [24]  362 	sjmp	00104$
      000180                        363 00108$:
                                    364 ;	preemptive.c:83: for( i=0; i<n; i++ ){
      000180 05 34            [12]  365 	inc	_i
      000182 80 D1            [24]  366 	sjmp	00107$
      000184                        367 00102$:
                                    368 ;	preemptive.c:86: vtmp = TL0 - vtmp;
      000184 E5 8A            [12]  369 	mov	a,_TL0
      000186 C3               [12]  370 	clr	c
      000187 95 3D            [12]  371 	subb	a,_vtmp
      000189 F5 3D            [12]  372 	mov	_vtmp,a
      00018B 22               [24]  373 	ret
                                    374 ;------------------------------------------------------------
                                    375 ;Allocation info for local variables in function 'now'
                                    376 ;------------------------------------------------------------
                                    377 ;	preemptive.c:90: unsigned char now(void){
                                    378 ;	-----------------------------------------
                                    379 ;	 function now
                                    380 ;	-----------------------------------------
      00018C                        381 _now:
                                    382 ;	preemptive.c:91: return vtmp;
      00018C 85 3D 82         [24]  383 	mov	dpl,_vtmp
      00018F 22               [24]  384 	ret
                                    385 ;------------------------------------------------------------
                                    386 ;Allocation info for local variables in function 'Bootstrap'
                                    387 ;------------------------------------------------------------
                                    388 ;	preemptive.c:95: void Bootstrap(void) {
                                    389 ;	-----------------------------------------
                                    390 ;	 function Bootstrap
                                    391 ;	-----------------------------------------
      000190                        392 _Bootstrap:
                                    393 ;	preemptive.c:96: TMOD = 0;
      000190 75 89 00         [24]  394 	mov	_TMOD,#0x00
                                    395 ;	preemptive.c:97: IE = 0x82;
      000193 75 A8 82         [24]  396 	mov	_IE,#0x82
                                    397 ;	preemptive.c:98: TR0 = 1;
      000196 D2 8C            [12]  398 	setb	_TR0
                                    399 ;	preemptive.c:105: threadCount = 0;   
      000198 75 31 00         [24]  400 	mov	_threadCount,#0x00
                                    401 ;	preemptive.c:106: visitedCount = 0;
      00019B 75 3E 00         [24]  402 	mov	_visitedCount,#0x00
                                    403 ;	preemptive.c:107: for(i=0; i<MAXTHREADS; i++){
      00019E 75 34 00         [24]  404 	mov	_i,#0x00
      0001A1                        405 00103$:
      0001A1 C3               [12]  406 	clr	c
      0001A2 E5 34            [12]  407 	mov	a,_i
      0001A4 64 80            [12]  408 	xrl	a,#0x80
      0001A6 94 84            [12]  409 	subb	a,#0x84
      0001A8 50 12            [24]  410 	jnc	00101$
                                    411 ;	preemptive.c:108: threadBitmap[i] = 0;
      0001AA E5 34            [12]  412 	mov	a,_i
      0001AC 24 27            [12]  413 	add	a,#_threadBitmap
      0001AE F8               [12]  414 	mov	r0,a
      0001AF 76 00            [12]  415 	mov	@r0,#0x00
                                    416 ;	preemptive.c:109: visited[i] = 0;
      0001B1 E5 34            [12]  417 	mov	a,_i
      0001B3 24 39            [12]  418 	add	a,#_visited
      0001B5 F8               [12]  419 	mov	r0,a
      0001B6 76 00            [12]  420 	mov	@r0,#0x00
                                    421 ;	preemptive.c:107: for(i=0; i<MAXTHREADS; i++){
      0001B8 05 34            [12]  422 	inc	_i
      0001BA 80 E5            [24]  423 	sjmp	00103$
      0001BC                        424 00101$:
                                    425 ;	preemptive.c:117: currentID = ThreadCreate(main);
      0001BC 90 01 19         [24]  426 	mov	dptr,#_main
      0001BF 12 01 DA         [24]  427 	lcall	_ThreadCreate
      0001C2 85 82 30         [24]  428 	mov	_currentID,dpl
                                    429 ;	preemptive.c:118: currentThread = i;
      0001C5 85 34 32         [24]  430 	mov	_currentThread,_i
                                    431 ;	preemptive.c:119: RESTORESTATE;
      0001C8 E5 32            [12]  432 	mov	a,_currentThread
      0001CA 24 23            [12]  433 	add	a,#_savedSP
      0001CC F9               [12]  434 	mov	r1,a
      0001CD 87 81            [24]  435 	mov	_SP,@r1
      0001CF D0 D0            [24]  436 	POP PSW 
      0001D1 D0 83            [24]  437 	POP DPH 
      0001D3 D0 82            [24]  438 	POP DPL 
      0001D5 D0 F0            [24]  439 	POP B 
      0001D7 D0 E0            [24]  440 	POP ACC 
      0001D9 22               [24]  441 	ret
                                    442 ;------------------------------------------------------------
                                    443 ;Allocation info for local variables in function 'ThreadCreate'
                                    444 ;------------------------------------------------------------
                                    445 ;fp                        Allocated to registers 
                                    446 ;------------------------------------------------------------
                                    447 ;	preemptive.c:128: ThreadID ThreadCreate(FunctionPtr fp) __critical{
                                    448 ;	-----------------------------------------
                                    449 ;	 function ThreadCreate
                                    450 ;	-----------------------------------------
      0001DA                        451 _ThreadCreate:
      0001DA D3               [12]  452 	setb	c
      0001DB 10 AF 01         [24]  453 	jbc	ea,00146$
      0001DE C3               [12]  454 	clr	c
      0001DF                        455 00146$:
      0001DF C0 D0            [24]  456 	push	psw
                                    457 ;	preemptive.c:134: if(threadCount >= MAXTHREADS)
      0001E1 C3               [12]  458 	clr	c
      0001E2 E5 31            [12]  459 	mov	a,_threadCount
      0001E4 64 80            [12]  460 	xrl	a,#0x80
      0001E6 94 84            [12]  461 	subb	a,#0x84
      0001E8 40 06            [24]  462 	jc	00102$
                                    463 ;	preemptive.c:135: return -1;
      0001EA 75 82 FF         [24]  464 	mov	dpl,#0xFF
      0001ED 02 02 69         [24]  465 	ljmp	00120$
      0001F0                        466 00102$:
                                    467 ;	preemptive.c:142: for( i=0; i<MAXTHREADS; i++){
      0001F0 75 34 00         [24]  468 	mov	_i,#0x00
      0001F3                        469 00118$:
      0001F3 C3               [12]  470 	clr	c
      0001F4 E5 34            [12]  471 	mov	a,_i
      0001F6 64 80            [12]  472 	xrl	a,#0x80
      0001F8 94 84            [12]  473 	subb	a,#0x84
      0001FA 50 0C            [24]  474 	jnc	00105$
                                    475 ;	preemptive.c:143: if( threadBitmap[i] == 0 )
      0001FC E5 34            [12]  476 	mov	a,_i
      0001FE 24 27            [12]  477 	add	a,#_threadBitmap
      000200 F9               [12]  478 	mov	r1,a
      000201 E7               [12]  479 	mov	a,@r1
      000202 60 04            [24]  480 	jz	00105$
                                    481 ;	preemptive.c:142: for( i=0; i<MAXTHREADS; i++){
      000204 05 34            [12]  482 	inc	_i
      000206 80 EB            [24]  483 	sjmp	00118$
      000208                        484 00105$:
                                    485 ;	preemptive.c:151: threadCount++;
      000208 05 31            [12]  486 	inc	_threadCount
                                    487 ;	preemptive.c:152: threadBitmap[i] = 1;
      00020A E5 34            [12]  488 	mov	a,_i
      00020C 24 27            [12]  489 	add	a,#_threadBitmap
      00020E F8               [12]  490 	mov	r0,a
      00020F 76 01            [12]  491 	mov	@r0,#0x01
                                    492 ;	preemptive.c:157: currentSP = SP;
      000211 85 81 35         [24]  493 	mov	_currentSP,_SP
                                    494 ;	preemptive.c:158: SP = (0x3F) + ( i << 4 );
      000214 E5 34            [12]  495 	mov	a,_i
      000216 C4               [12]  496 	swap	a
      000217 54 F0            [12]  497 	anl	a,#0xF0
      000219 FF               [12]  498 	mov	r7,a
      00021A 24 3F            [12]  499 	add	a,#0x3F
      00021C F5 81            [12]  500 	mov	_SP,a
                                    501 ;	preemptive.c:168: __endasm;
      00021E C0 82            [24]  502 	PUSH DPL
      000220 C0 83            [24]  503 	PUSH DPH
                                    504 ;	preemptive.c:185: __endasm;
      000222 75 E0 00         [24]  505 	MOV ACC, #0H
      000225 75 F0 00         [24]  506 	MOV B, #0H
      000228 75 82 00         [24]  507 	MOV DPL, #0H
      00022B 75 83 00         [24]  508 	MOV DPH, #0H
      00022E C0 E0            [24]  509 	PUSH ACC
      000230 C0 F0            [24]  510 	PUSH B
      000232 C0 82            [24]  511 	PUSH DPL
      000234 C0 83            [24]  512 	PUSH DPH
                                    513 ;	preemptive.c:197: if( i==0 )
      000236 E5 34            [12]  514 	mov	a,_i
                                    515 ;	preemptive.c:198: PSW = 0x00;
      000238 70 04            [24]  516 	jnz	00115$
      00023A F5 D0            [12]  517 	mov	_PSW,a
      00023C 80 1C            [24]  518 	sjmp	00116$
      00023E                        519 00115$:
                                    520 ;	preemptive.c:199: else if( i==1 )
      00023E 74 01            [12]  521 	mov	a,#0x01
      000240 B5 34 05         [24]  522 	cjne	a,_i,00112$
                                    523 ;	preemptive.c:200: PSW = 0x08;
      000243 75 D0 08         [24]  524 	mov	_PSW,#0x08
      000246 80 12            [24]  525 	sjmp	00116$
      000248                        526 00112$:
                                    527 ;	preemptive.c:201: else if( i==2 )
      000248 74 02            [12]  528 	mov	a,#0x02
      00024A B5 34 05         [24]  529 	cjne	a,_i,00109$
                                    530 ;	preemptive.c:202: PSW = 0x10;
      00024D 75 D0 10         [24]  531 	mov	_PSW,#0x10
      000250 80 08            [24]  532 	sjmp	00116$
      000252                        533 00109$:
                                    534 ;	preemptive.c:203: else if( i==3 )
      000252 74 03            [12]  535 	mov	a,#0x03
      000254 B5 34 03         [24]  536 	cjne	a,_i,00116$
                                    537 ;	preemptive.c:204: PSW = 0x18;
      000257 75 D0 18         [24]  538 	mov	_PSW,#0x18
      00025A                        539 00116$:
                                    540 ;	preemptive.c:208: __endasm;
      00025A C0 D0            [24]  541 	PUSH PSW
                                    542 ;	preemptive.c:212: savedSP[i] = SP;
      00025C E5 34            [12]  543 	mov	a,_i
      00025E 24 23            [12]  544 	add	a,#_savedSP
      000260 F8               [12]  545 	mov	r0,a
      000261 A6 81            [24]  546 	mov	@r0,_SP
                                    547 ;	preemptive.c:215: SP = currentSP;
      000263 85 35 81         [24]  548 	mov	_SP,_currentSP
                                    549 ;	preemptive.c:218: return i;
      000266 85 34 82         [24]  550 	mov	dpl,_i
      000269                        551 00120$:
      000269 D0 D0            [24]  552 	pop	psw
      00026B 92 AF            [24]  553 	mov	ea,c
      00026D 22               [24]  554 	ret
                                    555 ;------------------------------------------------------------
                                    556 ;Allocation info for local variables in function 'ThreadYield'
                                    557 ;------------------------------------------------------------
                                    558 ;	preemptive.c:230: void ThreadYield(void) __critical{
                                    559 ;	-----------------------------------------
                                    560 ;	 function ThreadYield
                                    561 ;	-----------------------------------------
      00026E                        562 _ThreadYield:
      00026E D3               [12]  563 	setb	c
      00026F 10 AF 01         [24]  564 	jbc	ea,00124$
      000272 C3               [12]  565 	clr	c
      000273                        566 00124$:
      000273 C0 D0            [24]  567 	push	psw
                                    568 ;	preemptive.c:231: SAVESTATE;
      000275 C0 E0            [24]  569 	PUSH ACC 
      000277 C0 F0            [24]  570 	PUSH B 
      000279 C0 82            [24]  571 	PUSH DPL 
      00027B C0 83            [24]  572 	PUSH DPH 
      00027D C0 D0            [24]  573 	PUSH PSW 
      00027F E5 32            [12]  574 	mov	a,_currentThread
      000281 24 23            [12]  575 	add	a,#_savedSP
      000283 F8               [12]  576 	mov	r0,a
      000284 A6 81            [24]  577 	mov	@r0,_SP
                                    578 ;	preemptive.c:232: i=0;
      000286 75 34 00         [24]  579 	mov	_i,#0x00
                                    580 ;	preemptive.c:233: do{
      000289                        581 00107$:
                                    582 ;	preemptive.c:234: tmp = threadBitmap[i];
      000289 E5 34            [12]  583 	mov	a,_i
      00028B 24 27            [12]  584 	add	a,#_threadBitmap
      00028D F9               [12]  585 	mov	r1,a
      00028E 87 33            [24]  586 	mov	_tmp,@r1
                                    587 ;	preemptive.c:244: if( i == currentThread){
      000290 E5 32            [12]  588 	mov	a,_currentThread
      000292 B5 34 04         [24]  589 	cjne	a,_i,00102$
                                    590 ;	preemptive.c:245: i++;
      000295 05 34            [12]  591 	inc	_i
                                    592 ;	preemptive.c:246: continue;
      000297 80 F0            [24]  593 	sjmp	00107$
      000299                        594 00102$:
                                    595 ;	preemptive.c:248: if( tmp == 1 ){
      000299 74 01            [12]  596 	mov	a,#0x01
      00029B B5 33 05         [24]  597 	cjne	a,_tmp,00104$
                                    598 ;	preemptive.c:249: currentThread = i;
      00029E 85 34 32         [24]  599 	mov	_currentThread,_i
                                    600 ;	preemptive.c:250: break;
      0002A1 80 0E            [24]  601 	sjmp	00109$
      0002A3                        602 00104$:
                                    603 ;	preemptive.c:252: if( i == MAXTHREADS ){
      0002A3 74 04            [12]  604 	mov	a,#0x04
      0002A5 B5 34 05         [24]  605 	cjne	a,_i,00106$
                                    606 ;	preemptive.c:253: i = -1;
      0002A8 75 34 FF         [24]  607 	mov	_i,#0xFF
                                    608 ;	preemptive.c:254: break;
      0002AB 80 04            [24]  609 	sjmp	00109$
      0002AD                        610 00106$:
                                    611 ;	preemptive.c:256: i++;
      0002AD 05 34            [12]  612 	inc	_i
                                    613 ;	preemptive.c:257: } while (1);
      0002AF 80 D8            [24]  614 	sjmp	00107$
      0002B1                        615 00109$:
                                    616 ;	preemptive.c:258: RESTORESTATE;
      0002B1 E5 32            [12]  617 	mov	a,_currentThread
      0002B3 24 23            [12]  618 	add	a,#_savedSP
      0002B5 F9               [12]  619 	mov	r1,a
      0002B6 87 81            [24]  620 	mov	_SP,@r1
      0002B8 D0 D0            [24]  621 	POP PSW 
      0002BA D0 83            [24]  622 	POP DPH 
      0002BC D0 82            [24]  623 	POP DPL 
      0002BE D0 F0            [24]  624 	POP B 
      0002C0 D0 E0            [24]  625 	POP ACC 
      0002C2 D0 D0            [24]  626 	pop	psw
      0002C4 92 AF            [24]  627 	mov	ea,c
      0002C6 22               [24]  628 	ret
                                    629 ;------------------------------------------------------------
                                    630 ;Allocation info for local variables in function 'ThreadExit'
                                    631 ;------------------------------------------------------------
                                    632 ;	preemptive.c:267: void ThreadExit(void) {
                                    633 ;	-----------------------------------------
                                    634 ;	 function ThreadExit
                                    635 ;	-----------------------------------------
      0002C7                        636 _ThreadExit:
                                    637 ;	preemptive.c:274: threadCount--;
      0002C7 15 31            [12]  638 	dec	_threadCount
                                    639 ;	preemptive.c:275: threadBitmap[currentThread] = 0;
      0002C9 E5 32            [12]  640 	mov	a,_currentThread
      0002CB 24 27            [12]  641 	add	a,#_threadBitmap
      0002CD F8               [12]  642 	mov	r0,a
      0002CE 76 00            [12]  643 	mov	@r0,#0x00
                                    644 ;	preemptive.c:276: i=-1;
      0002D0 75 34 FF         [24]  645 	mov	_i,#0xFF
                                    646 ;	preemptive.c:277: while(1){
      0002D3                        647 00108$:
                                    648 ;	preemptive.c:278: i++;
      0002D3 05 34            [12]  649 	inc	_i
                                    650 ;	preemptive.c:279: if( i >= MAXTHREADS )
      0002D5 C3               [12]  651 	clr	c
      0002D6 E5 34            [12]  652 	mov	a,_i
      0002D8 64 80            [12]  653 	xrl	a,#0x80
      0002DA 94 84            [12]  654 	subb	a,#0x84
      0002DC 50 F5            [24]  655 	jnc	00108$
                                    656 ;	preemptive.c:281: if( i == currentThread )
      0002DE E5 32            [12]  657 	mov	a,_currentThread
      0002E0 B5 34 02         [24]  658 	cjne	a,_i,00125$
      0002E3 80 EE            [24]  659 	sjmp	00108$
      0002E5                        660 00125$:
                                    661 ;	preemptive.c:283: if( threadBitmap[i] == 1 ){
      0002E5 E5 34            [12]  662 	mov	a,_i
      0002E7 24 27            [12]  663 	add	a,#_threadBitmap
      0002E9 F9               [12]  664 	mov	r1,a
      0002EA 87 07            [24]  665 	mov	ar7,@r1
      0002EC BF 01 E4         [24]  666 	cjne	r7,#0x01,00108$
                                    667 ;	preemptive.c:284: currentThread = i;
      0002EF 85 34 32         [24]  668 	mov	_currentThread,_i
                                    669 ;	preemptive.c:285: currentID = savedSP[i];
      0002F2 E5 34            [12]  670 	mov	a,_i
      0002F4 24 23            [12]  671 	add	a,#_savedSP
      0002F6 F9               [12]  672 	mov	r1,a
      0002F7 87 30            [24]  673 	mov	_currentID,@r1
                                    674 ;	preemptive.c:289: RESTORESTATE;
      0002F9 E5 32            [12]  675 	mov	a,_currentThread
      0002FB 24 23            [12]  676 	add	a,#_savedSP
      0002FD F9               [12]  677 	mov	r1,a
      0002FE 87 81            [24]  678 	mov	_SP,@r1
      000300 D0 D0            [24]  679 	POP PSW 
      000302 D0 83            [24]  680 	POP DPH 
      000304 D0 82            [24]  681 	POP DPL 
      000306 D0 F0            [24]  682 	POP B 
      000308 D0 E0            [24]  683 	POP ACC 
      00030A 22               [24]  684 	ret
                                    685 ;------------------------------------------------------------
                                    686 ;Allocation info for local variables in function 'myTimer0Handler'
                                    687 ;------------------------------------------------------------
                                    688 ;	preemptive.c:293: void myTimer0Handler(void){
                                    689 ;	-----------------------------------------
                                    690 ;	 function myTimer0Handler
                                    691 ;	-----------------------------------------
      00030B                        692 _myTimer0Handler:
                                    693 ;	preemptive.c:294: visited[currentThread] = 1;
      00030B E5 32            [12]  694 	mov	a,_currentThread
      00030D 24 39            [12]  695 	add	a,#_visited
      00030F F8               [12]  696 	mov	r0,a
      000310 76 01            [12]  697 	mov	@r0,#0x01
                                    698 ;	preemptive.c:295: visitedCount++;
      000312 05 3E            [12]  699 	inc	_visitedCount
                                    700 ;	preemptive.c:296: if( visitedCount >= threadCount ){
      000314 C3               [12]  701 	clr	c
      000315 E5 3E            [12]  702 	mov	a,_visitedCount
      000317 64 80            [12]  703 	xrl	a,#0x80
      000319 85 31 F0         [24]  704 	mov	b,_threadCount
      00031C 63 F0 80         [24]  705 	xrl	b,#0x80
      00031F 95 F0            [12]  706 	subb	a,b
      000321 40 21            [24]  707 	jc	00103$
                                    708 ;	preemptive.c:297: for( i=0; i<MAXTHREADS; i++ )
      000323 75 34 00         [24]  709 	mov	_i,#0x00
      000326                        710 00116$:
      000326 C3               [12]  711 	clr	c
      000327 E5 34            [12]  712 	mov	a,_i
      000329 64 80            [12]  713 	xrl	a,#0x80
      00032B 94 84            [12]  714 	subb	a,#0x84
      00032D 50 0B            [24]  715 	jnc	00101$
                                    716 ;	preemptive.c:298: visited[i] = 0;
      00032F E5 34            [12]  717 	mov	a,_i
      000331 24 39            [12]  718 	add	a,#_visited
      000333 F8               [12]  719 	mov	r0,a
      000334 76 00            [12]  720 	mov	@r0,#0x00
                                    721 ;	preemptive.c:297: for( i=0; i<MAXTHREADS; i++ )
      000336 05 34            [12]  722 	inc	_i
      000338 80 EC            [24]  723 	sjmp	00116$
      00033A                        724 00101$:
                                    725 ;	preemptive.c:299: visitedCount = 1;
      00033A 75 3E 01         [24]  726 	mov	_visitedCount,#0x01
                                    727 ;	preemptive.c:300: visited[currentThread] = 1;
      00033D E5 32            [12]  728 	mov	a,_currentThread
      00033F 24 39            [12]  729 	add	a,#_visited
      000341 F8               [12]  730 	mov	r0,a
      000342 76 01            [12]  731 	mov	@r0,#0x01
      000344                        732 00103$:
                                    733 ;	preemptive.c:303: EA = 0; //don't do __critival
      000344 C2 AF            [12]  734 	clr	_EA
                                    735 ;	preemptive.c:304: SAVESTATE;
      000346 C0 E0            [24]  736 	PUSH ACC 
      000348 C0 F0            [24]  737 	PUSH B 
      00034A C0 82            [24]  738 	PUSH DPL 
      00034C C0 83            [24]  739 	PUSH DPH 
      00034E C0 D0            [24]  740 	PUSH PSW 
      000350 E5 32            [12]  741 	mov	a,_currentThread
      000352 24 23            [12]  742 	add	a,#_savedSP
      000354 F8               [12]  743 	mov	r0,a
      000355 A6 81            [24]  744 	mov	@r0,_SP
                                    745 ;	preemptive.c:305: i=0;
      000357 75 34 00         [24]  746 	mov	_i,#0x00
                                    747 ;	preemptive.c:306: do{
      00035A                        748 00112$:
                                    749 ;	preemptive.c:307: tmp = threadBitmap[i];
      00035A E5 34            [12]  750 	mov	a,_i
      00035C 24 27            [12]  751 	add	a,#_threadBitmap
      00035E F9               [12]  752 	mov	r1,a
      00035F 87 33            [24]  753 	mov	_tmp,@r1
                                    754 ;	preemptive.c:308: vtmp = visited[i];
      000361 E5 34            [12]  755 	mov	a,_i
      000363 24 39            [12]  756 	add	a,#_visited
      000365 F9               [12]  757 	mov	r1,a
      000366 87 3D            [24]  758 	mov	_vtmp,@r1
                                    759 ;	preemptive.c:309: if( i == currentThread){
      000368 E5 32            [12]  760 	mov	a,_currentThread
      00036A B5 34 04         [24]  761 	cjne	a,_i,00105$
                                    762 ;	preemptive.c:310: i++;
      00036D 05 34            [12]  763 	inc	_i
                                    764 ;	preemptive.c:311: continue;
      00036F 80 E9            [24]  765 	sjmp	00112$
      000371                        766 00105$:
                                    767 ;	preemptive.c:313: if( tmp == 1 ){
      000371 74 01            [12]  768 	mov	a,#0x01
      000373 B5 33 09         [24]  769 	cjne	a,_tmp,00109$
                                    770 ;	preemptive.c:314: if( vtmp == 0 ){
      000376 E5 3D            [12]  771 	mov	a,_vtmp
      000378 70 05            [24]  772 	jnz	00109$
                                    773 ;	preemptive.c:315: currentThread = i;
      00037A 85 34 32         [24]  774 	mov	_currentThread,_i
                                    775 ;	preemptive.c:316: break;
      00037D 80 0E            [24]  776 	sjmp	00114$
      00037F                        777 00109$:
                                    778 ;	preemptive.c:319: if( i == MAXTHREADS ){
      00037F 74 04            [12]  779 	mov	a,#0x04
      000381 B5 34 05         [24]  780 	cjne	a,_i,00111$
                                    781 ;	preemptive.c:320: i = -1;
      000384 75 34 FF         [24]  782 	mov	_i,#0xFF
                                    783 ;	preemptive.c:321: break;
      000387 80 04            [24]  784 	sjmp	00114$
      000389                        785 00111$:
                                    786 ;	preemptive.c:323: i++;
      000389 05 34            [12]  787 	inc	_i
                                    788 ;	preemptive.c:324: } while (1);
      00038B 80 CD            [24]  789 	sjmp	00112$
      00038D                        790 00114$:
                                    791 ;	preemptive.c:325: RESTORESTATE;
      00038D E5 32            [12]  792 	mov	a,_currentThread
      00038F 24 23            [12]  793 	add	a,#_savedSP
      000391 F9               [12]  794 	mov	r1,a
      000392 87 81            [24]  795 	mov	_SP,@r1
      000394 D0 D0            [24]  796 	POP PSW 
      000396 D0 83            [24]  797 	POP DPH 
      000398 D0 82            [24]  798 	POP DPL 
      00039A D0 F0            [24]  799 	POP B 
      00039C D0 E0            [24]  800 	POP ACC 
                                    801 ;	preemptive.c:326: EA = 1;
      00039E D2 AF            [12]  802 	setb	_EA
                                    803 ;	preemptive.c:330: __endasm;
      0003A0 32               [24]  804 	reti
      0003A1 22               [24]  805 	ret
                                    806 	.area CSEG    (CODE)
                                    807 	.area CONST   (CODE)
                                    808 	.area XINIT   (CODE)
                                    809 	.area CABS    (ABS,CODE)
