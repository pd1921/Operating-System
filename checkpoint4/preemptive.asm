;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Thu Jan 16 20:21:12 2020
;--------------------------------------------------------
	.module preemptive
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Bootstrap
	.globl _main
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _visitedCount
	.globl _vtmp
	.globl _visited
	.globl _currentSP
	.globl _i
	.globl _tmp
	.globl _currentThread
	.globl _threadCount
	.globl _currentID
	.globl _threadBitmap
	.globl _savedSP
	.globl _ThreadCreate
	.globl _ThreadYield
	.globl _ThreadExit
	.globl _myTimer0Handler
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_savedSP	=	0x0023
_threadBitmap	=	0x0027
_currentID	=	0x0030
_threadCount	=	0x0031
_currentThread	=	0x0032
_tmp	=	0x0033
_i	=	0x0034
_currentSP	=	0x0035
_visited	=	0x0039
_vtmp	=	0x003d
_visitedCount	=	0x003e
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Bootstrap'
;------------------------------------------------------------
;	preemptive.c:80: void Bootstrap(void) {
;	-----------------------------------------
;	 function Bootstrap
;	-----------------------------------------
_Bootstrap:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	preemptive.c:81: TMOD = 0;
	mov	_TMOD,#0x00
;	preemptive.c:82: IE = 0x82;
	mov	_IE,#0x82
;	preemptive.c:83: TR0 = 1;
	setb	_TR0
;	preemptive.c:90: threadCount = 0;   
	mov	_threadCount,#0x00
;	preemptive.c:91: visitedCount = 0;
	mov	_visitedCount,#0x00
;	preemptive.c:92: for(i=0; i<MAXTHREADS; i++){
	mov	_i,#0x00
00103$:
	clr	c
	mov	a,_i
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00101$
;	preemptive.c:93: threadBitmap[i] = 0;
	mov	a,_i
	add	a,#_threadBitmap
	mov	r0,a
	mov	@r0,#0x00
;	preemptive.c:94: visited[i] = 0;
	mov	a,_i
	add	a,#_visited
	mov	r0,a
	mov	@r0,#0x00
;	preemptive.c:92: for(i=0; i<MAXTHREADS; i++){
	inc	_i
	sjmp	00103$
00101$:
;	preemptive.c:102: currentID = ThreadCreate(main);
	mov	dptr,#_main
	lcall	_ThreadCreate
	mov	_currentID,dpl
;	preemptive.c:103: currentThread = i;
	mov	_currentThread,_i
;	preemptive.c:104: RESTORESTATE;
	mov	a,_currentThread
	add	a,#_savedSP
	mov	r1,a
	mov	_SP,@r1
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadCreate'
;------------------------------------------------------------
;fp                        Allocated to registers 
;------------------------------------------------------------
;	preemptive.c:113: ThreadID ThreadCreate(FunctionPtr fp) __critical{
;	-----------------------------------------
;	 function ThreadCreate
;	-----------------------------------------
_ThreadCreate:
	setb	c
	jbc	ea,00146$
	clr	c
00146$:
	push	psw
;	preemptive.c:119: if(threadCount >= MAXTHREADS)
	clr	c
	mov	a,_threadCount
	xrl	a,#0x80
	subb	a,#0x84
	jc	00102$
;	preemptive.c:120: return -1;
	mov	dpl,#0xFF
	ljmp	00120$
00102$:
;	preemptive.c:127: for( i=0; i<MAXTHREADS; i++){
	mov	_i,#0x00
00118$:
	clr	c
	mov	a,_i
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00105$
;	preemptive.c:128: if( threadBitmap[i] == 0 )
	mov	a,_i
	add	a,#_threadBitmap
	mov	r1,a
	mov	a,@r1
	jz	00105$
;	preemptive.c:127: for( i=0; i<MAXTHREADS; i++){
	inc	_i
	sjmp	00118$
00105$:
;	preemptive.c:136: threadCount++;
	inc	_threadCount
;	preemptive.c:137: threadBitmap[i] = 1;
	mov	a,_i
	add	a,#_threadBitmap
	mov	r0,a
	mov	@r0,#0x01
;	preemptive.c:142: currentSP = SP;
	mov	_currentSP,_SP
;	preemptive.c:143: SP = (0x3F) + ( i << 4 );
	mov	a,_i
	swap	a
	anl	a,#0xF0
	mov	r7,a
	add	a,#0x3F
	mov	_SP,a
;	preemptive.c:153: __endasm;
	PUSH DPL
	PUSH DPH
;	preemptive.c:170: __endasm;
	MOV ACC, #0H
	MOV B, #0H
	MOV DPL, #0H
	MOV DPH, #0H
	PUSH ACC
	PUSH B
	PUSH DPL
	PUSH DPH
;	preemptive.c:182: if( i==0 )
	mov	a,_i
;	preemptive.c:183: PSW = 0x00;
	jnz	00115$
	mov	_PSW,a
	sjmp	00116$
00115$:
;	preemptive.c:184: else if( i==1 )
	mov	a,#0x01
	cjne	a,_i,00112$
;	preemptive.c:185: PSW = 0x08;
	mov	_PSW,#0x08
	sjmp	00116$
00112$:
;	preemptive.c:186: else if( i==2 )
	mov	a,#0x02
	cjne	a,_i,00109$
;	preemptive.c:187: PSW = 0x10;
	mov	_PSW,#0x10
	sjmp	00116$
00109$:
;	preemptive.c:188: else if( i==3 )
	mov	a,#0x03
	cjne	a,_i,00116$
;	preemptive.c:189: PSW = 0x18;
	mov	_PSW,#0x18
00116$:
;	preemptive.c:193: __endasm;
	PUSH PSW
;	preemptive.c:197: savedSP[i] = SP;
	mov	a,_i
	add	a,#_savedSP
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:200: SP = currentSP;
	mov	_SP,_currentSP
;	preemptive.c:203: return i;
	mov	dpl,_i
00120$:
	pop	psw
	mov	ea,c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadYield'
;------------------------------------------------------------
;	preemptive.c:215: void ThreadYield(void) __critical{
;	-----------------------------------------
;	 function ThreadYield
;	-----------------------------------------
_ThreadYield:
	setb	c
	jbc	ea,00124$
	clr	c
00124$:
	push	psw
;	preemptive.c:216: SAVESTATE;
	PUSH ACC 
	PUSH B 
	PUSH DPL 
	PUSH DPH 
	PUSH PSW 
	mov	a,_currentThread
	add	a,#_savedSP
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:217: i=0;
	mov	_i,#0x00
;	preemptive.c:218: do{
00107$:
;	preemptive.c:219: tmp = threadBitmap[i];
	mov	a,_i
	add	a,#_threadBitmap
	mov	r1,a
	mov	_tmp,@r1
;	preemptive.c:229: if( i == currentThread){
	mov	a,_currentThread
	cjne	a,_i,00102$
;	preemptive.c:230: i++;
	inc	_i
;	preemptive.c:231: continue;
	sjmp	00107$
00102$:
;	preemptive.c:233: if( tmp == 1 ){
	mov	a,#0x01
	cjne	a,_tmp,00104$
;	preemptive.c:234: currentThread = i;
	mov	_currentThread,_i
;	preemptive.c:235: break;
	sjmp	00109$
00104$:
;	preemptive.c:237: if( i == MAXTHREADS ){
	mov	a,#0x04
	cjne	a,_i,00106$
;	preemptive.c:238: i = -1;
	mov	_i,#0xFF
;	preemptive.c:239: break;
	sjmp	00109$
00106$:
;	preemptive.c:241: i++;
	inc	_i
;	preemptive.c:247: } while (1);
	sjmp	00107$
00109$:
;	preemptive.c:248: RESTORESTATE;
	mov	a,_currentThread
	add	a,#_savedSP
	mov	r1,a
	mov	_SP,@r1
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
	pop	psw
	mov	ea,c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadExit'
;------------------------------------------------------------
;	preemptive.c:257: void ThreadExit(void) __critical{
;	-----------------------------------------
;	 function ThreadExit
;	-----------------------------------------
_ThreadExit:
	setb	c
	jbc	ea,00123$
	clr	c
00123$:
	push	psw
;	preemptive.c:264: threadCount--;
	dec	_threadCount
;	preemptive.c:265: threadBitmap[currentThread] = 0;
	mov	a,_currentThread
	add	a,#_threadBitmap
	mov	r0,a
	mov	@r0,#0x00
;	preemptive.c:266: for( i=0; i<MAXTHREADS; i++ ){
	mov	_i,#0x00
00108$:
	clr	c
	mov	a,_i
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00106$
;	preemptive.c:267: if( i == currentThread )
	mov	a,_currentThread
	cjne	a,_i,00125$
	sjmp	00105$
00125$:
;	preemptive.c:269: if( threadBitmap[i] == 1 ){
	mov	a,_i
	add	a,#_threadBitmap
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0x01,00105$
;	preemptive.c:270: currentThread = i;
	mov	_currentThread,_i
;	preemptive.c:271: currentID = savedSP[i];
	mov	a,_i
	add	a,#_savedSP
	mov	r1,a
	mov	_currentID,@r1
;	preemptive.c:272: break;
	sjmp	00106$
00105$:
;	preemptive.c:266: for( i=0; i<MAXTHREADS; i++ ){
	inc	_i
	sjmp	00108$
00106$:
;	preemptive.c:275: RESTORESTATE;
	mov	a,_currentThread
	add	a,#_savedSP
	mov	r1,a
	mov	_SP,@r1
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
	pop	psw
	mov	ea,c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'myTimer0Handler'
;------------------------------------------------------------
;	preemptive.c:279: void myTimer0Handler(void){
;	-----------------------------------------
;	 function myTimer0Handler
;	-----------------------------------------
_myTimer0Handler:
;	preemptive.c:280: visited[currentThread] = 1;
	mov	a,_currentThread
	add	a,#_visited
	mov	r0,a
	mov	@r0,#0x01
;	preemptive.c:281: if( currentThread != CONSUMER ){
	mov	a,_currentThread
	jz	00102$
;	preemptive.c:282: visitedCount++;
	inc	_visitedCount
;	preemptive.c:283: visited[CONSUMER] = 0;
	mov	_visited,#0x00
00102$:
;	preemptive.c:285: if( visitedCount >= threadCount-1 ){
	mov	r6,_threadCount
	mov	a,_threadCount
	rlc	a
	subb	a,acc
	mov	r7,a
	dec	r6
	cjne	r6,#0xFF,00150$
	dec	r7
00150$:
	mov	r4,_visitedCount
	mov	a,_visitedCount
	rlc	a
	subb	a,acc
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00105$
;	preemptive.c:286: for( i=0; i<MAXTHREADS; i++ )
	mov	_i,#0x00
00118$:
	clr	c
	mov	a,_i
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00103$
;	preemptive.c:287: visited[i] = 0;
	mov	a,_i
	add	a,#_visited
	mov	r0,a
	mov	@r0,#0x00
;	preemptive.c:286: for( i=0; i<MAXTHREADS; i++ )
	inc	_i
	sjmp	00118$
00103$:
;	preemptive.c:288: visitedCount = 0;
	mov	_visitedCount,#0x00
00105$:
;	preemptive.c:291: EA = 0; //don't do __critival
	clr	_EA
;	preemptive.c:292: SAVESTATE;
	PUSH ACC 
	PUSH B 
	PUSH DPL 
	PUSH DPH 
	PUSH PSW 
	mov	a,_currentThread
	add	a,#_savedSP
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:293: i=0;
	mov	_i,#0x00
;	preemptive.c:294: do{
00114$:
;	preemptive.c:295: tmp = threadBitmap[i];
	mov	a,_i
	add	a,#_threadBitmap
	mov	r1,a
	mov	_tmp,@r1
;	preemptive.c:296: vtmp = visited[i];
	mov	a,_i
	add	a,#_visited
	mov	r1,a
	mov	_vtmp,@r1
;	preemptive.c:297: if( i == currentThread){
	mov	a,_currentThread
	cjne	a,_i,00107$
;	preemptive.c:298: i++;
	inc	_i
;	preemptive.c:299: continue;
	sjmp	00114$
00107$:
;	preemptive.c:301: if( tmp == 1 ){
	mov	a,#0x01
	cjne	a,_tmp,00111$
;	preemptive.c:302: if( vtmp == 0 ){
	mov	a,_vtmp
	jnz	00111$
;	preemptive.c:303: currentThread = i;
	mov	_currentThread,_i
;	preemptive.c:304: break;
	sjmp	00116$
00111$:
;	preemptive.c:307: if( i == MAXTHREADS ){
	mov	a,#0x04
	cjne	a,_i,00113$
;	preemptive.c:308: i = -1;
	mov	_i,#0xFF
;	preemptive.c:309: break;
	sjmp	00116$
00113$:
;	preemptive.c:311: i++;
	inc	_i
;	preemptive.c:312: } while (1);
	sjmp	00114$
00116$:
;	preemptive.c:313: RESTORESTATE;
	mov	a,_currentThread
	add	a,#_savedSP
	mov	r1,a
	mov	_SP,@r1
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
;	preemptive.c:314: EA = 1;
	setb	_EA
;	preemptive.c:318: __endasm;
	reti
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
