                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Thu Jan 16 20:21:12 2020
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
                                    121 	.globl _ThreadCreate
                                    122 	.globl _ThreadYield
                                    123 	.globl _ThreadExit
                                    124 	.globl _myTimer0Handler
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
                           000023   240 _savedSP	=	0x0023
                           000027   241 _threadBitmap	=	0x0027
                           000030   242 _currentID	=	0x0030
                           000031   243 _threadCount	=	0x0031
                           000032   244 _currentThread	=	0x0032
                           000033   245 _tmp	=	0x0033
                           000034   246 _i	=	0x0034
                           000035   247 _currentSP	=	0x0035
                           000039   248 _visited	=	0x0039
                           00003D   249 _vtmp	=	0x003d
                           00003E   250 _visitedCount	=	0x003e
                                    251 ;--------------------------------------------------------
                                    252 ; overlayable items in internal ram 
                                    253 ;--------------------------------------------------------
                                    254 	.area	OSEG    (OVR,DATA)
                                    255 ;--------------------------------------------------------
                                    256 ; indirectly addressable internal ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area ISEG    (DATA)
                                    259 ;--------------------------------------------------------
                                    260 ; absolute internal ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area IABS    (ABS,DATA)
                                    263 	.area IABS    (ABS,DATA)
                                    264 ;--------------------------------------------------------
                                    265 ; bit data
                                    266 ;--------------------------------------------------------
                                    267 	.area BSEG    (BIT)
                                    268 ;--------------------------------------------------------
                                    269 ; paged external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area PSEG    (PAG,XDATA)
                                    272 ;--------------------------------------------------------
                                    273 ; external ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area XSEG    (XDATA)
                                    276 ;--------------------------------------------------------
                                    277 ; absolute external ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area XABS    (ABS,XDATA)
                                    280 ;--------------------------------------------------------
                                    281 ; external initialized ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area XISEG   (XDATA)
                                    284 	.area HOME    (CODE)
                                    285 	.area GSINIT0 (CODE)
                                    286 	.area GSINIT1 (CODE)
                                    287 	.area GSINIT2 (CODE)
                                    288 	.area GSINIT3 (CODE)
                                    289 	.area GSINIT4 (CODE)
                                    290 	.area GSINIT5 (CODE)
                                    291 	.area GSINIT  (CODE)
                                    292 	.area GSFINAL (CODE)
                                    293 	.area CSEG    (CODE)
                                    294 ;--------------------------------------------------------
                                    295 ; global & static initialisations
                                    296 ;--------------------------------------------------------
                                    297 	.area HOME    (CODE)
                                    298 	.area GSINIT  (CODE)
                                    299 	.area GSFINAL (CODE)
                                    300 	.area GSINIT  (CODE)
                                    301 ;--------------------------------------------------------
                                    302 ; Home
                                    303 ;--------------------------------------------------------
                                    304 	.area HOME    (CODE)
                                    305 	.area HOME    (CODE)
                                    306 ;--------------------------------------------------------
                                    307 ; code
                                    308 ;--------------------------------------------------------
                                    309 	.area CSEG    (CODE)
                                    310 ;------------------------------------------------------------
                                    311 ;Allocation info for local variables in function 'Bootstrap'
                                    312 ;------------------------------------------------------------
                                    313 ;	preemptive.c:80: void Bootstrap(void) {
                                    314 ;	-----------------------------------------
                                    315 ;	 function Bootstrap
                                    316 ;	-----------------------------------------
      000114                        317 _Bootstrap:
                           000007   318 	ar7 = 0x07
                           000006   319 	ar6 = 0x06
                           000005   320 	ar5 = 0x05
                           000004   321 	ar4 = 0x04
                           000003   322 	ar3 = 0x03
                           000002   323 	ar2 = 0x02
                           000001   324 	ar1 = 0x01
                           000000   325 	ar0 = 0x00
                                    326 ;	preemptive.c:81: TMOD = 0;
      000114 75 89 00         [24]  327 	mov	_TMOD,#0x00
                                    328 ;	preemptive.c:82: IE = 0x82;
      000117 75 A8 82         [24]  329 	mov	_IE,#0x82
                                    330 ;	preemptive.c:83: TR0 = 1;
      00011A D2 8C            [12]  331 	setb	_TR0
                                    332 ;	preemptive.c:90: threadCount = 0;   
      00011C 75 31 00         [24]  333 	mov	_threadCount,#0x00
                                    334 ;	preemptive.c:91: visitedCount = 0;
      00011F 75 3E 00         [24]  335 	mov	_visitedCount,#0x00
                                    336 ;	preemptive.c:92: for(i=0; i<MAXTHREADS; i++){
      000122 75 34 00         [24]  337 	mov	_i,#0x00
      000125                        338 00103$:
      000125 C3               [12]  339 	clr	c
      000126 E5 34            [12]  340 	mov	a,_i
      000128 64 80            [12]  341 	xrl	a,#0x80
      00012A 94 84            [12]  342 	subb	a,#0x84
      00012C 50 12            [24]  343 	jnc	00101$
                                    344 ;	preemptive.c:93: threadBitmap[i] = 0;
      00012E E5 34            [12]  345 	mov	a,_i
      000130 24 27            [12]  346 	add	a,#_threadBitmap
      000132 F8               [12]  347 	mov	r0,a
      000133 76 00            [12]  348 	mov	@r0,#0x00
                                    349 ;	preemptive.c:94: visited[i] = 0;
      000135 E5 34            [12]  350 	mov	a,_i
      000137 24 39            [12]  351 	add	a,#_visited
      000139 F8               [12]  352 	mov	r0,a
      00013A 76 00            [12]  353 	mov	@r0,#0x00
                                    354 ;	preemptive.c:92: for(i=0; i<MAXTHREADS; i++){
      00013C 05 34            [12]  355 	inc	_i
      00013E 80 E5            [24]  356 	sjmp	00103$
      000140                        357 00101$:
                                    358 ;	preemptive.c:102: currentID = ThreadCreate(main);
      000140 90 00 E5         [24]  359 	mov	dptr,#_main
      000143 12 01 5E         [24]  360 	lcall	_ThreadCreate
      000146 85 82 30         [24]  361 	mov	_currentID,dpl
                                    362 ;	preemptive.c:103: currentThread = i;
      000149 85 34 32         [24]  363 	mov	_currentThread,_i
                                    364 ;	preemptive.c:104: RESTORESTATE;
      00014C E5 32            [12]  365 	mov	a,_currentThread
      00014E 24 23            [12]  366 	add	a,#_savedSP
      000150 F9               [12]  367 	mov	r1,a
      000151 87 81            [24]  368 	mov	_SP,@r1
      000153 D0 D0            [24]  369 	POP PSW 
      000155 D0 83            [24]  370 	POP DPH 
      000157 D0 82            [24]  371 	POP DPL 
      000159 D0 F0            [24]  372 	POP B 
      00015B D0 E0            [24]  373 	POP ACC 
      00015D 22               [24]  374 	ret
                                    375 ;------------------------------------------------------------
                                    376 ;Allocation info for local variables in function 'ThreadCreate'
                                    377 ;------------------------------------------------------------
                                    378 ;fp                        Allocated to registers 
                                    379 ;------------------------------------------------------------
                                    380 ;	preemptive.c:113: ThreadID ThreadCreate(FunctionPtr fp) __critical{
                                    381 ;	-----------------------------------------
                                    382 ;	 function ThreadCreate
                                    383 ;	-----------------------------------------
      00015E                        384 _ThreadCreate:
      00015E D3               [12]  385 	setb	c
      00015F 10 AF 01         [24]  386 	jbc	ea,00146$
      000162 C3               [12]  387 	clr	c
      000163                        388 00146$:
      000163 C0 D0            [24]  389 	push	psw
                                    390 ;	preemptive.c:119: if(threadCount >= MAXTHREADS)
      000165 C3               [12]  391 	clr	c
      000166 E5 31            [12]  392 	mov	a,_threadCount
      000168 64 80            [12]  393 	xrl	a,#0x80
      00016A 94 84            [12]  394 	subb	a,#0x84
      00016C 40 06            [24]  395 	jc	00102$
                                    396 ;	preemptive.c:120: return -1;
      00016E 75 82 FF         [24]  397 	mov	dpl,#0xFF
      000171 02 01 ED         [24]  398 	ljmp	00120$
      000174                        399 00102$:
                                    400 ;	preemptive.c:127: for( i=0; i<MAXTHREADS; i++){
      000174 75 34 00         [24]  401 	mov	_i,#0x00
      000177                        402 00118$:
      000177 C3               [12]  403 	clr	c
      000178 E5 34            [12]  404 	mov	a,_i
      00017A 64 80            [12]  405 	xrl	a,#0x80
      00017C 94 84            [12]  406 	subb	a,#0x84
      00017E 50 0C            [24]  407 	jnc	00105$
                                    408 ;	preemptive.c:128: if( threadBitmap[i] == 0 )
      000180 E5 34            [12]  409 	mov	a,_i
      000182 24 27            [12]  410 	add	a,#_threadBitmap
      000184 F9               [12]  411 	mov	r1,a
      000185 E7               [12]  412 	mov	a,@r1
      000186 60 04            [24]  413 	jz	00105$
                                    414 ;	preemptive.c:127: for( i=0; i<MAXTHREADS; i++){
      000188 05 34            [12]  415 	inc	_i
      00018A 80 EB            [24]  416 	sjmp	00118$
      00018C                        417 00105$:
                                    418 ;	preemptive.c:136: threadCount++;
      00018C 05 31            [12]  419 	inc	_threadCount
                                    420 ;	preemptive.c:137: threadBitmap[i] = 1;
      00018E E5 34            [12]  421 	mov	a,_i
      000190 24 27            [12]  422 	add	a,#_threadBitmap
      000192 F8               [12]  423 	mov	r0,a
      000193 76 01            [12]  424 	mov	@r0,#0x01
                                    425 ;	preemptive.c:142: currentSP = SP;
      000195 85 81 35         [24]  426 	mov	_currentSP,_SP
                                    427 ;	preemptive.c:143: SP = (0x3F) + ( i << 4 );
      000198 E5 34            [12]  428 	mov	a,_i
      00019A C4               [12]  429 	swap	a
      00019B 54 F0            [12]  430 	anl	a,#0xF0
      00019D FF               [12]  431 	mov	r7,a
      00019E 24 3F            [12]  432 	add	a,#0x3F
      0001A0 F5 81            [12]  433 	mov	_SP,a
                                    434 ;	preemptive.c:153: __endasm;
      0001A2 C0 82            [24]  435 	PUSH DPL
      0001A4 C0 83            [24]  436 	PUSH DPH
                                    437 ;	preemptive.c:170: __endasm;
      0001A6 75 E0 00         [24]  438 	MOV ACC, #0H
      0001A9 75 F0 00         [24]  439 	MOV B, #0H
      0001AC 75 82 00         [24]  440 	MOV DPL, #0H
      0001AF 75 83 00         [24]  441 	MOV DPH, #0H
      0001B2 C0 E0            [24]  442 	PUSH ACC
      0001B4 C0 F0            [24]  443 	PUSH B
      0001B6 C0 82            [24]  444 	PUSH DPL
      0001B8 C0 83            [24]  445 	PUSH DPH
                                    446 ;	preemptive.c:182: if( i==0 )
      0001BA E5 34            [12]  447 	mov	a,_i
                                    448 ;	preemptive.c:183: PSW = 0x00;
      0001BC 70 04            [24]  449 	jnz	00115$
      0001BE F5 D0            [12]  450 	mov	_PSW,a
      0001C0 80 1C            [24]  451 	sjmp	00116$
      0001C2                        452 00115$:
                                    453 ;	preemptive.c:184: else if( i==1 )
      0001C2 74 01            [12]  454 	mov	a,#0x01
      0001C4 B5 34 05         [24]  455 	cjne	a,_i,00112$
                                    456 ;	preemptive.c:185: PSW = 0x08;
      0001C7 75 D0 08         [24]  457 	mov	_PSW,#0x08
      0001CA 80 12            [24]  458 	sjmp	00116$
      0001CC                        459 00112$:
                                    460 ;	preemptive.c:186: else if( i==2 )
      0001CC 74 02            [12]  461 	mov	a,#0x02
      0001CE B5 34 05         [24]  462 	cjne	a,_i,00109$
                                    463 ;	preemptive.c:187: PSW = 0x10;
      0001D1 75 D0 10         [24]  464 	mov	_PSW,#0x10
      0001D4 80 08            [24]  465 	sjmp	00116$
      0001D6                        466 00109$:
                                    467 ;	preemptive.c:188: else if( i==3 )
      0001D6 74 03            [12]  468 	mov	a,#0x03
      0001D8 B5 34 03         [24]  469 	cjne	a,_i,00116$
                                    470 ;	preemptive.c:189: PSW = 0x18;
      0001DB 75 D0 18         [24]  471 	mov	_PSW,#0x18
      0001DE                        472 00116$:
                                    473 ;	preemptive.c:193: __endasm;
      0001DE C0 D0            [24]  474 	PUSH PSW
                                    475 ;	preemptive.c:197: savedSP[i] = SP;
      0001E0 E5 34            [12]  476 	mov	a,_i
      0001E2 24 23            [12]  477 	add	a,#_savedSP
      0001E4 F8               [12]  478 	mov	r0,a
      0001E5 A6 81            [24]  479 	mov	@r0,_SP
                                    480 ;	preemptive.c:200: SP = currentSP;
      0001E7 85 35 81         [24]  481 	mov	_SP,_currentSP
                                    482 ;	preemptive.c:203: return i;
      0001EA 85 34 82         [24]  483 	mov	dpl,_i
      0001ED                        484 00120$:
      0001ED D0 D0            [24]  485 	pop	psw
      0001EF 92 AF            [24]  486 	mov	ea,c
      0001F1 22               [24]  487 	ret
                                    488 ;------------------------------------------------------------
                                    489 ;Allocation info for local variables in function 'ThreadYield'
                                    490 ;------------------------------------------------------------
                                    491 ;	preemptive.c:215: void ThreadYield(void) __critical{
                                    492 ;	-----------------------------------------
                                    493 ;	 function ThreadYield
                                    494 ;	-----------------------------------------
      0001F2                        495 _ThreadYield:
      0001F2 D3               [12]  496 	setb	c
      0001F3 10 AF 01         [24]  497 	jbc	ea,00124$
      0001F6 C3               [12]  498 	clr	c
      0001F7                        499 00124$:
      0001F7 C0 D0            [24]  500 	push	psw
                                    501 ;	preemptive.c:216: SAVESTATE;
      0001F9 C0 E0            [24]  502 	PUSH ACC 
      0001FB C0 F0            [24]  503 	PUSH B 
      0001FD C0 82            [24]  504 	PUSH DPL 
      0001FF C0 83            [24]  505 	PUSH DPH 
      000201 C0 D0            [24]  506 	PUSH PSW 
      000203 E5 32            [12]  507 	mov	a,_currentThread
      000205 24 23            [12]  508 	add	a,#_savedSP
      000207 F8               [12]  509 	mov	r0,a
      000208 A6 81            [24]  510 	mov	@r0,_SP
                                    511 ;	preemptive.c:217: i=0;
      00020A 75 34 00         [24]  512 	mov	_i,#0x00
                                    513 ;	preemptive.c:218: do{
      00020D                        514 00107$:
                                    515 ;	preemptive.c:219: tmp = threadBitmap[i];
      00020D E5 34            [12]  516 	mov	a,_i
      00020F 24 27            [12]  517 	add	a,#_threadBitmap
      000211 F9               [12]  518 	mov	r1,a
      000212 87 33            [24]  519 	mov	_tmp,@r1
                                    520 ;	preemptive.c:229: if( i == currentThread){
      000214 E5 32            [12]  521 	mov	a,_currentThread
      000216 B5 34 04         [24]  522 	cjne	a,_i,00102$
                                    523 ;	preemptive.c:230: i++;
      000219 05 34            [12]  524 	inc	_i
                                    525 ;	preemptive.c:231: continue;
      00021B 80 F0            [24]  526 	sjmp	00107$
      00021D                        527 00102$:
                                    528 ;	preemptive.c:233: if( tmp == 1 ){
      00021D 74 01            [12]  529 	mov	a,#0x01
      00021F B5 33 05         [24]  530 	cjne	a,_tmp,00104$
                                    531 ;	preemptive.c:234: currentThread = i;
      000222 85 34 32         [24]  532 	mov	_currentThread,_i
                                    533 ;	preemptive.c:235: break;
      000225 80 0E            [24]  534 	sjmp	00109$
      000227                        535 00104$:
                                    536 ;	preemptive.c:237: if( i == MAXTHREADS ){
      000227 74 04            [12]  537 	mov	a,#0x04
      000229 B5 34 05         [24]  538 	cjne	a,_i,00106$
                                    539 ;	preemptive.c:238: i = -1;
      00022C 75 34 FF         [24]  540 	mov	_i,#0xFF
                                    541 ;	preemptive.c:239: break;
      00022F 80 04            [24]  542 	sjmp	00109$
      000231                        543 00106$:
                                    544 ;	preemptive.c:241: i++;
      000231 05 34            [12]  545 	inc	_i
                                    546 ;	preemptive.c:247: } while (1);
      000233 80 D8            [24]  547 	sjmp	00107$
      000235                        548 00109$:
                                    549 ;	preemptive.c:248: RESTORESTATE;
      000235 E5 32            [12]  550 	mov	a,_currentThread
      000237 24 23            [12]  551 	add	a,#_savedSP
      000239 F9               [12]  552 	mov	r1,a
      00023A 87 81            [24]  553 	mov	_SP,@r1
      00023C D0 D0            [24]  554 	POP PSW 
      00023E D0 83            [24]  555 	POP DPH 
      000240 D0 82            [24]  556 	POP DPL 
      000242 D0 F0            [24]  557 	POP B 
      000244 D0 E0            [24]  558 	POP ACC 
      000246 D0 D0            [24]  559 	pop	psw
      000248 92 AF            [24]  560 	mov	ea,c
      00024A 22               [24]  561 	ret
                                    562 ;------------------------------------------------------------
                                    563 ;Allocation info for local variables in function 'ThreadExit'
                                    564 ;------------------------------------------------------------
                                    565 ;	preemptive.c:257: void ThreadExit(void) __critical{
                                    566 ;	-----------------------------------------
                                    567 ;	 function ThreadExit
                                    568 ;	-----------------------------------------
      00024B                        569 _ThreadExit:
      00024B D3               [12]  570 	setb	c
      00024C 10 AF 01         [24]  571 	jbc	ea,00123$
      00024F C3               [12]  572 	clr	c
      000250                        573 00123$:
      000250 C0 D0            [24]  574 	push	psw
                                    575 ;	preemptive.c:264: threadCount--;
      000252 15 31            [12]  576 	dec	_threadCount
                                    577 ;	preemptive.c:265: threadBitmap[currentThread] = 0;
      000254 E5 32            [12]  578 	mov	a,_currentThread
      000256 24 27            [12]  579 	add	a,#_threadBitmap
      000258 F8               [12]  580 	mov	r0,a
      000259 76 00            [12]  581 	mov	@r0,#0x00
                                    582 ;	preemptive.c:266: for( i=0; i<MAXTHREADS; i++ ){
      00025B 75 34 00         [24]  583 	mov	_i,#0x00
      00025E                        584 00108$:
      00025E C3               [12]  585 	clr	c
      00025F E5 34            [12]  586 	mov	a,_i
      000261 64 80            [12]  587 	xrl	a,#0x80
      000263 94 84            [12]  588 	subb	a,#0x84
      000265 50 21            [24]  589 	jnc	00106$
                                    590 ;	preemptive.c:267: if( i == currentThread )
      000267 E5 32            [12]  591 	mov	a,_currentThread
      000269 B5 34 02         [24]  592 	cjne	a,_i,00125$
      00026C 80 16            [24]  593 	sjmp	00105$
      00026E                        594 00125$:
                                    595 ;	preemptive.c:269: if( threadBitmap[i] == 1 ){
      00026E E5 34            [12]  596 	mov	a,_i
      000270 24 27            [12]  597 	add	a,#_threadBitmap
      000272 F9               [12]  598 	mov	r1,a
      000273 87 07            [24]  599 	mov	ar7,@r1
      000275 BF 01 0C         [24]  600 	cjne	r7,#0x01,00105$
                                    601 ;	preemptive.c:270: currentThread = i;
      000278 85 34 32         [24]  602 	mov	_currentThread,_i
                                    603 ;	preemptive.c:271: currentID = savedSP[i];
      00027B E5 34            [12]  604 	mov	a,_i
      00027D 24 23            [12]  605 	add	a,#_savedSP
      00027F F9               [12]  606 	mov	r1,a
      000280 87 30            [24]  607 	mov	_currentID,@r1
                                    608 ;	preemptive.c:272: break;
      000282 80 04            [24]  609 	sjmp	00106$
      000284                        610 00105$:
                                    611 ;	preemptive.c:266: for( i=0; i<MAXTHREADS; i++ ){
      000284 05 34            [12]  612 	inc	_i
      000286 80 D6            [24]  613 	sjmp	00108$
      000288                        614 00106$:
                                    615 ;	preemptive.c:275: RESTORESTATE;
      000288 E5 32            [12]  616 	mov	a,_currentThread
      00028A 24 23            [12]  617 	add	a,#_savedSP
      00028C F9               [12]  618 	mov	r1,a
      00028D 87 81            [24]  619 	mov	_SP,@r1
      00028F D0 D0            [24]  620 	POP PSW 
      000291 D0 83            [24]  621 	POP DPH 
      000293 D0 82            [24]  622 	POP DPL 
      000295 D0 F0            [24]  623 	POP B 
      000297 D0 E0            [24]  624 	POP ACC 
      000299 D0 D0            [24]  625 	pop	psw
      00029B 92 AF            [24]  626 	mov	ea,c
      00029D 22               [24]  627 	ret
                                    628 ;------------------------------------------------------------
                                    629 ;Allocation info for local variables in function 'myTimer0Handler'
                                    630 ;------------------------------------------------------------
                                    631 ;	preemptive.c:279: void myTimer0Handler(void){
                                    632 ;	-----------------------------------------
                                    633 ;	 function myTimer0Handler
                                    634 ;	-----------------------------------------
      00029E                        635 _myTimer0Handler:
                                    636 ;	preemptive.c:280: visited[currentThread] = 1;
      00029E E5 32            [12]  637 	mov	a,_currentThread
      0002A0 24 39            [12]  638 	add	a,#_visited
      0002A2 F8               [12]  639 	mov	r0,a
      0002A3 76 01            [12]  640 	mov	@r0,#0x01
                                    641 ;	preemptive.c:281: if( currentThread != CONSUMER ){
      0002A5 E5 32            [12]  642 	mov	a,_currentThread
      0002A7 60 05            [24]  643 	jz	00102$
                                    644 ;	preemptive.c:282: visitedCount++;
      0002A9 05 3E            [12]  645 	inc	_visitedCount
                                    646 ;	preemptive.c:283: visited[CONSUMER] = 0;
      0002AB 75 39 00         [24]  647 	mov	_visited,#0x00
      0002AE                        648 00102$:
                                    649 ;	preemptive.c:285: if( visitedCount >= threadCount-1 ){
      0002AE AE 31            [24]  650 	mov	r6,_threadCount
      0002B0 E5 31            [12]  651 	mov	a,_threadCount
      0002B2 33               [12]  652 	rlc	a
      0002B3 95 E0            [12]  653 	subb	a,acc
      0002B5 FF               [12]  654 	mov	r7,a
      0002B6 1E               [12]  655 	dec	r6
      0002B7 BE FF 01         [24]  656 	cjne	r6,#0xFF,00150$
      0002BA 1F               [12]  657 	dec	r7
      0002BB                        658 00150$:
      0002BB AC 3E            [24]  659 	mov	r4,_visitedCount
      0002BD E5 3E            [12]  660 	mov	a,_visitedCount
      0002BF 33               [12]  661 	rlc	a
      0002C0 95 E0            [12]  662 	subb	a,acc
      0002C2 FD               [12]  663 	mov	r5,a
      0002C3 C3               [12]  664 	clr	c
      0002C4 EC               [12]  665 	mov	a,r4
      0002C5 9E               [12]  666 	subb	a,r6
      0002C6 ED               [12]  667 	mov	a,r5
      0002C7 64 80            [12]  668 	xrl	a,#0x80
      0002C9 8F F0            [24]  669 	mov	b,r7
      0002CB 63 F0 80         [24]  670 	xrl	b,#0x80
      0002CE 95 F0            [12]  671 	subb	a,b
      0002D0 40 1A            [24]  672 	jc	00105$
                                    673 ;	preemptive.c:286: for( i=0; i<MAXTHREADS; i++ )
      0002D2 75 34 00         [24]  674 	mov	_i,#0x00
      0002D5                        675 00118$:
      0002D5 C3               [12]  676 	clr	c
      0002D6 E5 34            [12]  677 	mov	a,_i
      0002D8 64 80            [12]  678 	xrl	a,#0x80
      0002DA 94 84            [12]  679 	subb	a,#0x84
      0002DC 50 0B            [24]  680 	jnc	00103$
                                    681 ;	preemptive.c:287: visited[i] = 0;
      0002DE E5 34            [12]  682 	mov	a,_i
      0002E0 24 39            [12]  683 	add	a,#_visited
      0002E2 F8               [12]  684 	mov	r0,a
      0002E3 76 00            [12]  685 	mov	@r0,#0x00
                                    686 ;	preemptive.c:286: for( i=0; i<MAXTHREADS; i++ )
      0002E5 05 34            [12]  687 	inc	_i
      0002E7 80 EC            [24]  688 	sjmp	00118$
      0002E9                        689 00103$:
                                    690 ;	preemptive.c:288: visitedCount = 0;
      0002E9 75 3E 00         [24]  691 	mov	_visitedCount,#0x00
      0002EC                        692 00105$:
                                    693 ;	preemptive.c:291: EA = 0; //don't do __critival
      0002EC C2 AF            [12]  694 	clr	_EA
                                    695 ;	preemptive.c:292: SAVESTATE;
      0002EE C0 E0            [24]  696 	PUSH ACC 
      0002F0 C0 F0            [24]  697 	PUSH B 
      0002F2 C0 82            [24]  698 	PUSH DPL 
      0002F4 C0 83            [24]  699 	PUSH DPH 
      0002F6 C0 D0            [24]  700 	PUSH PSW 
      0002F8 E5 32            [12]  701 	mov	a,_currentThread
      0002FA 24 23            [12]  702 	add	a,#_savedSP
      0002FC F8               [12]  703 	mov	r0,a
      0002FD A6 81            [24]  704 	mov	@r0,_SP
                                    705 ;	preemptive.c:293: i=0;
      0002FF 75 34 00         [24]  706 	mov	_i,#0x00
                                    707 ;	preemptive.c:294: do{
      000302                        708 00114$:
                                    709 ;	preemptive.c:295: tmp = threadBitmap[i];
      000302 E5 34            [12]  710 	mov	a,_i
      000304 24 27            [12]  711 	add	a,#_threadBitmap
      000306 F9               [12]  712 	mov	r1,a
      000307 87 33            [24]  713 	mov	_tmp,@r1
                                    714 ;	preemptive.c:296: vtmp = visited[i];
      000309 E5 34            [12]  715 	mov	a,_i
      00030B 24 39            [12]  716 	add	a,#_visited
      00030D F9               [12]  717 	mov	r1,a
      00030E 87 3D            [24]  718 	mov	_vtmp,@r1
                                    719 ;	preemptive.c:297: if( i == currentThread){
      000310 E5 32            [12]  720 	mov	a,_currentThread
      000312 B5 34 04         [24]  721 	cjne	a,_i,00107$
                                    722 ;	preemptive.c:298: i++;
      000315 05 34            [12]  723 	inc	_i
                                    724 ;	preemptive.c:299: continue;
      000317 80 E9            [24]  725 	sjmp	00114$
      000319                        726 00107$:
                                    727 ;	preemptive.c:301: if( tmp == 1 ){
      000319 74 01            [12]  728 	mov	a,#0x01
      00031B B5 33 09         [24]  729 	cjne	a,_tmp,00111$
                                    730 ;	preemptive.c:302: if( vtmp == 0 ){
      00031E E5 3D            [12]  731 	mov	a,_vtmp
      000320 70 05            [24]  732 	jnz	00111$
                                    733 ;	preemptive.c:303: currentThread = i;
      000322 85 34 32         [24]  734 	mov	_currentThread,_i
                                    735 ;	preemptive.c:304: break;
      000325 80 0E            [24]  736 	sjmp	00116$
      000327                        737 00111$:
                                    738 ;	preemptive.c:307: if( i == MAXTHREADS ){
      000327 74 04            [12]  739 	mov	a,#0x04
      000329 B5 34 05         [24]  740 	cjne	a,_i,00113$
                                    741 ;	preemptive.c:308: i = -1;
      00032C 75 34 FF         [24]  742 	mov	_i,#0xFF
                                    743 ;	preemptive.c:309: break;
      00032F 80 04            [24]  744 	sjmp	00116$
      000331                        745 00113$:
                                    746 ;	preemptive.c:311: i++;
      000331 05 34            [12]  747 	inc	_i
                                    748 ;	preemptive.c:312: } while (1);
      000333 80 CD            [24]  749 	sjmp	00114$
      000335                        750 00116$:
                                    751 ;	preemptive.c:313: RESTORESTATE;
      000335 E5 32            [12]  752 	mov	a,_currentThread
      000337 24 23            [12]  753 	add	a,#_savedSP
      000339 F9               [12]  754 	mov	r1,a
      00033A 87 81            [24]  755 	mov	_SP,@r1
      00033C D0 D0            [24]  756 	POP PSW 
      00033E D0 83            [24]  757 	POP DPH 
      000340 D0 82            [24]  758 	POP DPL 
      000342 D0 F0            [24]  759 	POP B 
      000344 D0 E0            [24]  760 	POP ACC 
                                    761 ;	preemptive.c:314: EA = 1;
      000346 D2 AF            [12]  762 	setb	_EA
                                    763 ;	preemptive.c:318: __endasm;
      000348 32               [24]  764 	reti
      000349 22               [24]  765 	ret
                                    766 	.area CSEG    (CODE)
                                    767 	.area CONST   (CODE)
                                    768 	.area XINIT   (CODE)
                                    769 	.area CABS    (ABS,CODE)
