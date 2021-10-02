                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Thu Jan 16 19:00:44 2020
                                      5 ;--------------------------------------------------------
                                      6 	.module cooperative
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
                                    121 ;--------------------------------------------------------
                                    122 ; special function registers
                                    123 ;--------------------------------------------------------
                                    124 	.area RSEG    (ABS,DATA)
      000000                        125 	.org 0x0000
                           000080   126 _P0	=	0x0080
                           000081   127 _SP	=	0x0081
                           000082   128 _DPL	=	0x0082
                           000083   129 _DPH	=	0x0083
                           000087   130 _PCON	=	0x0087
                           000088   131 _TCON	=	0x0088
                           000089   132 _TMOD	=	0x0089
                           00008A   133 _TL0	=	0x008a
                           00008B   134 _TL1	=	0x008b
                           00008C   135 _TH0	=	0x008c
                           00008D   136 _TH1	=	0x008d
                           000090   137 _P1	=	0x0090
                           000098   138 _SCON	=	0x0098
                           000099   139 _SBUF	=	0x0099
                           0000A0   140 _P2	=	0x00a0
                           0000A8   141 _IE	=	0x00a8
                           0000B0   142 _P3	=	0x00b0
                           0000B8   143 _IP	=	0x00b8
                           0000D0   144 _PSW	=	0x00d0
                           0000E0   145 _ACC	=	0x00e0
                           0000F0   146 _B	=	0x00f0
                                    147 ;--------------------------------------------------------
                                    148 ; special function bits
                                    149 ;--------------------------------------------------------
                                    150 	.area RSEG    (ABS,DATA)
      000000                        151 	.org 0x0000
                           000080   152 _P0_0	=	0x0080
                           000081   153 _P0_1	=	0x0081
                           000082   154 _P0_2	=	0x0082
                           000083   155 _P0_3	=	0x0083
                           000084   156 _P0_4	=	0x0084
                           000085   157 _P0_5	=	0x0085
                           000086   158 _P0_6	=	0x0086
                           000087   159 _P0_7	=	0x0087
                           000088   160 _IT0	=	0x0088
                           000089   161 _IE0	=	0x0089
                           00008A   162 _IT1	=	0x008a
                           00008B   163 _IE1	=	0x008b
                           00008C   164 _TR0	=	0x008c
                           00008D   165 _TF0	=	0x008d
                           00008E   166 _TR1	=	0x008e
                           00008F   167 _TF1	=	0x008f
                           000090   168 _P1_0	=	0x0090
                           000091   169 _P1_1	=	0x0091
                           000092   170 _P1_2	=	0x0092
                           000093   171 _P1_3	=	0x0093
                           000094   172 _P1_4	=	0x0094
                           000095   173 _P1_5	=	0x0095
                           000096   174 _P1_6	=	0x0096
                           000097   175 _P1_7	=	0x0097
                           000098   176 _RI	=	0x0098
                           000099   177 _TI	=	0x0099
                           00009A   178 _RB8	=	0x009a
                           00009B   179 _TB8	=	0x009b
                           00009C   180 _REN	=	0x009c
                           00009D   181 _SM2	=	0x009d
                           00009E   182 _SM1	=	0x009e
                           00009F   183 _SM0	=	0x009f
                           0000A0   184 _P2_0	=	0x00a0
                           0000A1   185 _P2_1	=	0x00a1
                           0000A2   186 _P2_2	=	0x00a2
                           0000A3   187 _P2_3	=	0x00a3
                           0000A4   188 _P2_4	=	0x00a4
                           0000A5   189 _P2_5	=	0x00a5
                           0000A6   190 _P2_6	=	0x00a6
                           0000A7   191 _P2_7	=	0x00a7
                           0000A8   192 _EX0	=	0x00a8
                           0000A9   193 _ET0	=	0x00a9
                           0000AA   194 _EX1	=	0x00aa
                           0000AB   195 _ET1	=	0x00ab
                           0000AC   196 _ES	=	0x00ac
                           0000AF   197 _EA	=	0x00af
                           0000B0   198 _P3_0	=	0x00b0
                           0000B1   199 _P3_1	=	0x00b1
                           0000B2   200 _P3_2	=	0x00b2
                           0000B3   201 _P3_3	=	0x00b3
                           0000B4   202 _P3_4	=	0x00b4
                           0000B5   203 _P3_5	=	0x00b5
                           0000B6   204 _P3_6	=	0x00b6
                           0000B7   205 _P3_7	=	0x00b7
                           0000B0   206 _RXD	=	0x00b0
                           0000B1   207 _TXD	=	0x00b1
                           0000B2   208 _INT0	=	0x00b2
                           0000B3   209 _INT1	=	0x00b3
                           0000B4   210 _T0	=	0x00b4
                           0000B5   211 _T1	=	0x00b5
                           0000B6   212 _WR	=	0x00b6
                           0000B7   213 _RD	=	0x00b7
                           0000B8   214 _PX0	=	0x00b8
                           0000B9   215 _PT0	=	0x00b9
                           0000BA   216 _PX1	=	0x00ba
                           0000BB   217 _PT1	=	0x00bb
                           0000BC   218 _PS	=	0x00bc
                           0000D0   219 _P	=	0x00d0
                           0000D1   220 _F1	=	0x00d1
                           0000D2   221 _OV	=	0x00d2
                           0000D3   222 _RS0	=	0x00d3
                           0000D4   223 _RS1	=	0x00d4
                           0000D5   224 _F0	=	0x00d5
                           0000D6   225 _AC	=	0x00d6
                           0000D7   226 _CY	=	0x00d7
                                    227 ;--------------------------------------------------------
                                    228 ; overlayable register banks
                                    229 ;--------------------------------------------------------
                                    230 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        231 	.ds 8
                                    232 ;--------------------------------------------------------
                                    233 ; internal ram data
                                    234 ;--------------------------------------------------------
                                    235 	.area DSEG    (DATA)
                           000023   236 _savedSP	=	0x0023
                           000027   237 _threadBitmap	=	0x0027
                           000032   238 _currentID	=	0x0032
                           000033   239 _threadCount	=	0x0033
                           000035   240 _currentThread	=	0x0035
                           000036   241 _tmp	=	0x0036
                           000037   242 _i	=	0x0037
                           000039   243 _currentSP	=	0x0039
                                    244 ;--------------------------------------------------------
                                    245 ; overlayable items in internal ram 
                                    246 ;--------------------------------------------------------
                                    247 	.area	OSEG    (OVR,DATA)
                                    248 ;--------------------------------------------------------
                                    249 ; indirectly addressable internal ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area ISEG    (DATA)
                                    252 ;--------------------------------------------------------
                                    253 ; absolute internal ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area IABS    (ABS,DATA)
                                    256 	.area IABS    (ABS,DATA)
                                    257 ;--------------------------------------------------------
                                    258 ; bit data
                                    259 ;--------------------------------------------------------
                                    260 	.area BSEG    (BIT)
                                    261 ;--------------------------------------------------------
                                    262 ; paged external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area PSEG    (PAG,XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XSEG    (XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; absolute external ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XABS    (ABS,XDATA)
                                    273 ;--------------------------------------------------------
                                    274 ; external initialized ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area XISEG   (XDATA)
                                    277 	.area HOME    (CODE)
                                    278 	.area GSINIT0 (CODE)
                                    279 	.area GSINIT1 (CODE)
                                    280 	.area GSINIT2 (CODE)
                                    281 	.area GSINIT3 (CODE)
                                    282 	.area GSINIT4 (CODE)
                                    283 	.area GSINIT5 (CODE)
                                    284 	.area GSINIT  (CODE)
                                    285 	.area GSFINAL (CODE)
                                    286 	.area CSEG    (CODE)
                                    287 ;--------------------------------------------------------
                                    288 ; global & static initialisations
                                    289 ;--------------------------------------------------------
                                    290 	.area HOME    (CODE)
                                    291 	.area GSINIT  (CODE)
                                    292 	.area GSFINAL (CODE)
                                    293 	.area GSINIT  (CODE)
                                    294 ;--------------------------------------------------------
                                    295 ; Home
                                    296 ;--------------------------------------------------------
                                    297 	.area HOME    (CODE)
                                    298 	.area HOME    (CODE)
                                    299 ;--------------------------------------------------------
                                    300 ; code
                                    301 ;--------------------------------------------------------
                                    302 	.area CSEG    (CODE)
                                    303 ;------------------------------------------------------------
                                    304 ;Allocation info for local variables in function 'Bootstrap'
                                    305 ;------------------------------------------------------------
                                    306 ;	cooperative.c:76: void Bootstrap(void) {
                                    307 ;	-----------------------------------------
                                    308 ;	 function Bootstrap
                                    309 ;	-----------------------------------------
      000060                        310 _Bootstrap:
                           000007   311 	ar7 = 0x07
                           000006   312 	ar6 = 0x06
                           000005   313 	ar5 = 0x05
                           000004   314 	ar4 = 0x04
                           000003   315 	ar3 = 0x03
                           000002   316 	ar2 = 0x02
                           000001   317 	ar1 = 0x01
                           000000   318 	ar0 = 0x00
                                    319 ;	cooperative.c:84: threadCount = 0;   
      000060 75 33 00         [24]  320 	mov	_threadCount,#0x00
                                    321 ;	cooperative.c:85: for(i=0; i<MAXTHREADS; i++){
      000063 75 37 00         [24]  322 	mov	_i,#0x00
      000066                        323 00103$:
      000066 C3               [12]  324 	clr	c
      000067 E5 37            [12]  325 	mov	a,_i
      000069 64 80            [12]  326 	xrl	a,#0x80
      00006B 94 84            [12]  327 	subb	a,#0x84
      00006D 50 0B            [24]  328 	jnc	00101$
                                    329 ;	cooperative.c:86: threadBitmap[i] = 0;
      00006F E5 37            [12]  330 	mov	a,_i
      000071 24 27            [12]  331 	add	a,#_threadBitmap
      000073 F8               [12]  332 	mov	r0,a
      000074 76 00            [12]  333 	mov	@r0,#0x00
                                    334 ;	cooperative.c:85: for(i=0; i<MAXTHREADS; i++){
      000076 05 37            [12]  335 	inc	_i
      000078 80 EC            [24]  336 	sjmp	00103$
      00007A                        337 00101$:
                                    338 ;	cooperative.c:94: currentID = ThreadCreate(main);
      00007A 90 00 4D         [24]  339 	mov	dptr,#_main
      00007D 12 00 98         [24]  340 	lcall	_ThreadCreate
      000080 85 82 32         [24]  341 	mov	_currentID,dpl
                                    342 ;	cooperative.c:95: currentThread = i;
      000083 85 37 35         [24]  343 	mov	_currentThread,_i
                                    344 ;	cooperative.c:96: RESTORESTATE;
      000086 E5 35            [12]  345 	mov	a,_currentThread
      000088 24 23            [12]  346 	add	a,#_savedSP
      00008A F9               [12]  347 	mov	r1,a
      00008B 87 81            [24]  348 	mov	_SP,@r1
      00008D D0 D0            [24]  349 	POP PSW 
      00008F D0 83            [24]  350 	POP DPH 
      000091 D0 82            [24]  351 	POP DPL 
      000093 D0 F0            [24]  352 	POP B 
      000095 D0 E0            [24]  353 	POP ACC 
      000097 22               [24]  354 	ret
                                    355 ;------------------------------------------------------------
                                    356 ;Allocation info for local variables in function 'ThreadCreate'
                                    357 ;------------------------------------------------------------
                                    358 ;fp                        Allocated to registers 
                                    359 ;------------------------------------------------------------
                                    360 ;	cooperative.c:105: ThreadID ThreadCreate(FunctionPtr fp) {
                                    361 ;	-----------------------------------------
                                    362 ;	 function ThreadCreate
                                    363 ;	-----------------------------------------
      000098                        364 _ThreadCreate:
                                    365 ;	cooperative.c:111: if(threadCount >= MAXTHREADS)
      000098 C3               [12]  366 	clr	c
      000099 E5 33            [12]  367 	mov	a,_threadCount
      00009B 64 80            [12]  368 	xrl	a,#0x80
      00009D 94 84            [12]  369 	subb	a,#0x84
      00009F 40 04            [24]  370 	jc	00102$
                                    371 ;	cooperative.c:112: return -1;
      0000A1 75 82 FF         [24]  372 	mov	dpl,#0xFF
      0000A4 22               [24]  373 	ret
      0000A5                        374 00102$:
                                    375 ;	cooperative.c:119: for( i=0; i<MAXTHREADS; i++){
      0000A5 75 37 00         [24]  376 	mov	_i,#0x00
      0000A8                        377 00118$:
      0000A8 C3               [12]  378 	clr	c
      0000A9 E5 37            [12]  379 	mov	a,_i
      0000AB 64 80            [12]  380 	xrl	a,#0x80
      0000AD 94 84            [12]  381 	subb	a,#0x84
      0000AF 50 0C            [24]  382 	jnc	00105$
                                    383 ;	cooperative.c:120: if( threadBitmap[i] == 0 )
      0000B1 E5 37            [12]  384 	mov	a,_i
      0000B3 24 27            [12]  385 	add	a,#_threadBitmap
      0000B5 F9               [12]  386 	mov	r1,a
      0000B6 E7               [12]  387 	mov	a,@r1
      0000B7 60 04            [24]  388 	jz	00105$
                                    389 ;	cooperative.c:119: for( i=0; i<MAXTHREADS; i++){
      0000B9 05 37            [12]  390 	inc	_i
      0000BB 80 EB            [24]  391 	sjmp	00118$
      0000BD                        392 00105$:
                                    393 ;	cooperative.c:128: threadCount++;
      0000BD 05 33            [12]  394 	inc	_threadCount
                                    395 ;	cooperative.c:129: threadBitmap[i] = 1;
      0000BF E5 37            [12]  396 	mov	a,_i
      0000C1 24 27            [12]  397 	add	a,#_threadBitmap
      0000C3 F8               [12]  398 	mov	r0,a
      0000C4 76 01            [12]  399 	mov	@r0,#0x01
                                    400 ;	cooperative.c:134: currentSP = SP;
      0000C6 85 81 39         [24]  401 	mov	_currentSP,_SP
                                    402 ;	cooperative.c:135: SP = (0x3F) + ( i << 4 );
      0000C9 E5 37            [12]  403 	mov	a,_i
      0000CB C4               [12]  404 	swap	a
      0000CC 54 F0            [12]  405 	anl	a,#0xF0
      0000CE FF               [12]  406 	mov	r7,a
      0000CF 24 3F            [12]  407 	add	a,#0x3F
      0000D1 F5 81            [12]  408 	mov	_SP,a
                                    409 ;	cooperative.c:145: __endasm;
      0000D3 C0 82            [24]  410 	PUSH DPL
      0000D5 C0 83            [24]  411 	PUSH DPH
                                    412 ;	cooperative.c:162: __endasm;
      0000D7 75 E0 00         [24]  413 	MOV ACC, #0H
      0000DA 75 F0 00         [24]  414 	MOV B, #0H
      0000DD 75 82 00         [24]  415 	MOV DPL, #0H
      0000E0 75 83 00         [24]  416 	MOV DPH, #0H
      0000E3 C0 E0            [24]  417 	PUSH ACC
      0000E5 C0 F0            [24]  418 	PUSH B
      0000E7 C0 82            [24]  419 	PUSH DPL
      0000E9 C0 83            [24]  420 	PUSH DPH
                                    421 ;	cooperative.c:174: if( i==0 )
      0000EB E5 37            [12]  422 	mov	a,_i
                                    423 ;	cooperative.c:175: PSW = 0x00;
      0000ED 70 04            [24]  424 	jnz	00115$
      0000EF F5 D0            [12]  425 	mov	_PSW,a
      0000F1 80 1C            [24]  426 	sjmp	00116$
      0000F3                        427 00115$:
                                    428 ;	cooperative.c:176: else if( i==1 )
      0000F3 74 01            [12]  429 	mov	a,#0x01
      0000F5 B5 37 05         [24]  430 	cjne	a,_i,00112$
                                    431 ;	cooperative.c:177: PSW = 0x08;
      0000F8 75 D0 08         [24]  432 	mov	_PSW,#0x08
      0000FB 80 12            [24]  433 	sjmp	00116$
      0000FD                        434 00112$:
                                    435 ;	cooperative.c:178: else if( i==2 )
      0000FD 74 02            [12]  436 	mov	a,#0x02
      0000FF B5 37 05         [24]  437 	cjne	a,_i,00109$
                                    438 ;	cooperative.c:179: PSW = 0x10;
      000102 75 D0 10         [24]  439 	mov	_PSW,#0x10
      000105 80 08            [24]  440 	sjmp	00116$
      000107                        441 00109$:
                                    442 ;	cooperative.c:180: else if( i==3 )
      000107 74 03            [12]  443 	mov	a,#0x03
      000109 B5 37 03         [24]  444 	cjne	a,_i,00116$
                                    445 ;	cooperative.c:181: PSW = 0x18;
      00010C 75 D0 18         [24]  446 	mov	_PSW,#0x18
      00010F                        447 00116$:
                                    448 ;	cooperative.c:185: __endasm;
      00010F C0 D0            [24]  449 	PUSH PSW
                                    450 ;	cooperative.c:189: savedSP[i] = SP;
      000111 E5 37            [12]  451 	mov	a,_i
      000113 24 23            [12]  452 	add	a,#_savedSP
      000115 F8               [12]  453 	mov	r0,a
      000116 A6 81            [24]  454 	mov	@r0,_SP
                                    455 ;	cooperative.c:192: SP = currentSP;
      000118 85 39 81         [24]  456 	mov	_SP,_currentSP
                                    457 ;	cooperative.c:195: return i;
      00011B 85 37 82         [24]  458 	mov	dpl,_i
      00011E 22               [24]  459 	ret
                                    460 ;------------------------------------------------------------
                                    461 ;Allocation info for local variables in function 'ThreadYield'
                                    462 ;------------------------------------------------------------
                                    463 ;	cooperative.c:207: void ThreadYield(void) {
                                    464 ;	-----------------------------------------
                                    465 ;	 function ThreadYield
                                    466 ;	-----------------------------------------
      00011F                        467 _ThreadYield:
                                    468 ;	cooperative.c:208: SAVESTATE; 
      00011F C0 E0            [24]  469 	PUSH ACC 
      000121 C0 F0            [24]  470 	PUSH B 
      000123 C0 82            [24]  471 	PUSH DPL 
      000125 C0 83            [24]  472 	PUSH DPH 
      000127 C0 D0            [24]  473 	PUSH PSW 
      000129 E5 35            [12]  474 	mov	a,_currentThread
      00012B 24 23            [12]  475 	add	a,#_savedSP
      00012D F8               [12]  476 	mov	r0,a
      00012E A6 81            [24]  477 	mov	@r0,_SP
                                    478 ;	cooperative.c:209: i=0;
      000130 75 37 00         [24]  479 	mov	_i,#0x00
                                    480 ;	cooperative.c:210: do{
      000133                        481 00107$:
                                    482 ;	cooperative.c:211: tmp = threadBitmap[i];
      000133 E5 37            [12]  483 	mov	a,_i
      000135 24 27            [12]  484 	add	a,#_threadBitmap
      000137 F9               [12]  485 	mov	r1,a
      000138 87 36            [24]  486 	mov	_tmp,@r1
                                    487 ;	cooperative.c:221: if( i == currentThread){
      00013A E5 35            [12]  488 	mov	a,_currentThread
      00013C B5 37 04         [24]  489 	cjne	a,_i,00102$
                                    490 ;	cooperative.c:222: i++;
      00013F 05 37            [12]  491 	inc	_i
                                    492 ;	cooperative.c:223: continue;
      000141 80 F0            [24]  493 	sjmp	00107$
      000143                        494 00102$:
                                    495 ;	cooperative.c:225: if( tmp == 1 ){
      000143 74 01            [12]  496 	mov	a,#0x01
      000145 B5 36 05         [24]  497 	cjne	a,_tmp,00104$
                                    498 ;	cooperative.c:226: currentThread = i;
      000148 85 37 35         [24]  499 	mov	_currentThread,_i
                                    500 ;	cooperative.c:227: break;
      00014B 80 0E            [24]  501 	sjmp	00109$
      00014D                        502 00104$:
                                    503 ;	cooperative.c:229: if( i == MAXTHREADS ){
      00014D 74 04            [12]  504 	mov	a,#0x04
      00014F B5 37 05         [24]  505 	cjne	a,_i,00106$
                                    506 ;	cooperative.c:230: i = -1;
      000152 75 37 FF         [24]  507 	mov	_i,#0xFF
                                    508 ;	cooperative.c:231: break;
      000155 80 04            [24]  509 	sjmp	00109$
      000157                        510 00106$:
                                    511 ;	cooperative.c:233: i++;
      000157 05 37            [12]  512 	inc	_i
                                    513 ;	cooperative.c:239: } while (1);
      000159 80 D8            [24]  514 	sjmp	00107$
      00015B                        515 00109$:
                                    516 ;	cooperative.c:240: RESTORESTATE;
      00015B E5 35            [12]  517 	mov	a,_currentThread
      00015D 24 23            [12]  518 	add	a,#_savedSP
      00015F F9               [12]  519 	mov	r1,a
      000160 87 81            [24]  520 	mov	_SP,@r1
      000162 D0 D0            [24]  521 	POP PSW 
      000164 D0 83            [24]  522 	POP DPH 
      000166 D0 82            [24]  523 	POP DPL 
      000168 D0 F0            [24]  524 	POP B 
      00016A D0 E0            [24]  525 	POP ACC 
      00016C 22               [24]  526 	ret
                                    527 ;------------------------------------------------------------
                                    528 ;Allocation info for local variables in function 'ThreadExit'
                                    529 ;------------------------------------------------------------
                                    530 ;	cooperative.c:249: void ThreadExit(void) {
                                    531 ;	-----------------------------------------
                                    532 ;	 function ThreadExit
                                    533 ;	-----------------------------------------
      00016D                        534 _ThreadExit:
                                    535 ;	cooperative.c:256: threadCount--;
      00016D 15 33            [12]  536 	dec	_threadCount
                                    537 ;	cooperative.c:257: threadBitmap[currentThread] = 0;
      00016F E5 35            [12]  538 	mov	a,_currentThread
      000171 24 27            [12]  539 	add	a,#_threadBitmap
      000173 F8               [12]  540 	mov	r0,a
      000174 76 00            [12]  541 	mov	@r0,#0x00
                                    542 ;	cooperative.c:258: for( i=0; i<MAXTHREADS; i++ ){
      000176 75 37 00         [24]  543 	mov	_i,#0x00
      000179                        544 00108$:
      000179 C3               [12]  545 	clr	c
      00017A E5 37            [12]  546 	mov	a,_i
      00017C 64 80            [12]  547 	xrl	a,#0x80
      00017E 94 84            [12]  548 	subb	a,#0x84
      000180 50 21            [24]  549 	jnc	00106$
                                    550 ;	cooperative.c:259: if( i == currentThread )
      000182 E5 35            [12]  551 	mov	a,_currentThread
      000184 B5 37 02         [24]  552 	cjne	a,_i,00124$
      000187 80 16            [24]  553 	sjmp	00105$
      000189                        554 00124$:
                                    555 ;	cooperative.c:261: if( threadBitmap[i] == 1 ){
      000189 E5 37            [12]  556 	mov	a,_i
      00018B 24 27            [12]  557 	add	a,#_threadBitmap
      00018D F9               [12]  558 	mov	r1,a
      00018E 87 07            [24]  559 	mov	ar7,@r1
      000190 BF 01 0C         [24]  560 	cjne	r7,#0x01,00105$
                                    561 ;	cooperative.c:262: currentThread = i;
      000193 85 37 35         [24]  562 	mov	_currentThread,_i
                                    563 ;	cooperative.c:263: currentID = savedSP[i];
      000196 E5 37            [12]  564 	mov	a,_i
      000198 24 23            [12]  565 	add	a,#_savedSP
      00019A F9               [12]  566 	mov	r1,a
      00019B 87 32            [24]  567 	mov	_currentID,@r1
                                    568 ;	cooperative.c:264: break;
      00019D 80 04            [24]  569 	sjmp	00106$
      00019F                        570 00105$:
                                    571 ;	cooperative.c:258: for( i=0; i<MAXTHREADS; i++ ){
      00019F 05 37            [12]  572 	inc	_i
      0001A1 80 D6            [24]  573 	sjmp	00108$
      0001A3                        574 00106$:
                                    575 ;	cooperative.c:267: RESTORESTATE;
      0001A3 E5 35            [12]  576 	mov	a,_currentThread
      0001A5 24 23            [12]  577 	add	a,#_savedSP
      0001A7 F9               [12]  578 	mov	r1,a
      0001A8 87 81            [24]  579 	mov	_SP,@r1
      0001AA D0 D0            [24]  580 	POP PSW 
      0001AC D0 83            [24]  581 	POP DPH 
      0001AE D0 82            [24]  582 	POP DPL 
      0001B0 D0 F0            [24]  583 	POP B 
      0001B2 D0 E0            [24]  584 	POP ACC 
      0001B4 22               [24]  585 	ret
                                    586 	.area CSEG    (CODE)
                                    587 	.area CONST   (CODE)
                                    588 	.area XINIT   (CODE)
                                    589 	.area CABS    (ABS,CODE)
