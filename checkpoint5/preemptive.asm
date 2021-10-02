;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Thu Jan  9 08:04:37 2020
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
	.globl _delay
	.globl _now
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
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;n                         Allocated to registers r7 
;------------------------------------------------------------
;	preemptive.c:81: void delay(unsigned char n){
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	preemptive.c:82: vtmp = TL0;
	mov	_vtmp,_TL0
;	preemptive.c:83: for( i=0; i<n; i++ ){
	mov	_i,#0x00
00107$:
	mov	r5,_i
	mov	a,_i
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	ar3,r7
	mov	r4,#0x00
	clr	c
	mov	a,r5
	subb	a,r3
	mov	a,r6
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	preemptive.c:84: for( tmp=0; tmp<100; tmp++){}
	mov	_tmp,#0x00
00104$:
	clr	c
	mov	a,_tmp
	xrl	a,#0x80
	subb	a,#0xe4
	jnc	00108$
	inc	_tmp
	sjmp	00104$
00108$:
;	preemptive.c:83: for( i=0; i<n; i++ ){
	inc	_i
	sjmp	00107$
00102$:
;	preemptive.c:86: vtmp = TL0 - vtmp;
	mov	a,_TL0
	clr	c
	subb	a,_vtmp
	mov	_vtmp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'now'
;------------------------------------------------------------
;	preemptive.c:90: unsigned char now(void){
;	-----------------------------------------
;	 function now
;	-----------------------------------------
_now:
;	preemptive.c:91: return vtmp;
	mov	dpl,_vtmp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Bootstrap'
;------------------------------------------------------------
;	preemptive.c:95: void Bootstrap(void) {
;	-----------------------------------------
;	 function Bootstrap
;	-----------------------------------------
_Bootstrap:
;	preemptive.c:96: TMOD = 0;
	mov	_TMOD,#0x00
;	preemptive.c:97: IE = 0x82;
	mov	_IE,#0x82
;	preemptive.c:98: TR0 = 1;
	setb	_TR0
;	preemptive.c:105: threadCount = 0;   
	mov	_threadCount,#0x00
;	preemptive.c:106: visitedCount = 0;
	mov	_visitedCount,#0x00
;	preemptive.c:107: for(i=0; i<MAXTHREADS; i++){
	mov	_i,#0x00
00103$:
	clr	c
	mov	a,_i
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00101$
;	preemptive.c:108: threadBitmap[i] = 0;
	mov	a,_i
	add	a,#_threadBitmap
	mov	r0,a
	mov	@r0,#0x00
;	preemptive.c:109: visited[i] = 0;
	mov	a,_i
	add	a,#_visited
	mov	r0,a
	mov	@r0,#0x00
;	preemptive.c:107: for(i=0; i<MAXTHREADS; i++){
	inc	_i
	sjmp	00103$
00101$:
;	preemptive.c:117: currentID = ThreadCreate(main);
	mov	dptr,#_main
	lcall	_ThreadCreate
	mov	_currentID,dpl
;	preemptive.c:118: currentThread = i;
	mov	_currentThread,_i
;	preemptive.c:119: RESTORESTATE;
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
;	preemptive.c:128: ThreadID ThreadCreate(FunctionPtr fp) __critical{
;	-----------------------------------------
;	 function ThreadCreate
;	-----------------------------------------
_ThreadCreate:
	setb	c
	jbc	ea,00146$
	clr	c
00146$:
	push	psw
;	preemptive.c:134: if(threadCount >= MAXTHREADS)
	clr	c
	mov	a,_threadCount
	xrl	a,#0x80
	subb	a,#0x84
	jc	00102$
;	preemptive.c:135: return -1;
	mov	dpl,#0xFF
	ljmp	00120$
00102$:
;	preemptive.c:142: for( i=0; i<MAXTHREADS; i++){
	mov	_i,#0x00
00118$:
	clr	c
	mov	a,_i
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00105$
;	preemptive.c:143: if( threadBitmap[i] == 0 )
	mov	a,_i
	add	a,#_threadBitmap
	mov	r1,a
	mov	a,@r1
	jz	00105$
;	preemptive.c:142: for( i=0; i<MAXTHREADS; i++){
	inc	_i
	sjmp	00118$
00105$:
;	preemptive.c:151: threadCount++;
	inc	_threadCount
;	preemptive.c:152: threadBitmap[i] = 1;
	mov	a,_i
	add	a,#_threadBitmap
	mov	r0,a
	mov	@r0,#0x01
;	preemptive.c:157: currentSP = SP;
	mov	_currentSP,_SP
;	preemptive.c:158: SP = (0x3F) + ( i << 4 );
	mov	a,_i
	swap	a
	anl	a,#0xF0
	mov	r7,a
	add	a,#0x3F
	mov	_SP,a
;	preemptive.c:168: __endasm;
	PUSH DPL
	PUSH DPH
;	preemptive.c:185: __endasm;
	MOV ACC, #0H
	MOV B, #0H
	MOV DPL, #0H
	MOV DPH, #0H
	PUSH ACC
	PUSH B
	PUSH DPL
	PUSH DPH
;	preemptive.c:197: if( i==0 )
	mov	a,_i
;	preemptive.c:198: PSW = 0x00;
	jnz	00115$
	mov	_PSW,a
	sjmp	00116$
00115$:
;	preemptive.c:199: else if( i==1 )
	mov	a,#0x01
	cjne	a,_i,00112$
;	preemptive.c:200: PSW = 0x08;
	mov	_PSW,#0x08
	sjmp	00116$
00112$:
;	preemptive.c:201: else if( i==2 )
	mov	a,#0x02
	cjne	a,_i,00109$
;	preemptive.c:202: PSW = 0x10;
	mov	_PSW,#0x10
	sjmp	00116$
00109$:
;	preemptive.c:203: else if( i==3 )
	mov	a,#0x03
	cjne	a,_i,00116$
;	preemptive.c:204: PSW = 0x18;
	mov	_PSW,#0x18
00116$:
;	preemptive.c:208: __endasm;
	PUSH PSW
;	preemptive.c:212: savedSP[i] = SP;
	mov	a,_i
	add	a,#_savedSP
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:215: SP = currentSP;
	mov	_SP,_currentSP
;	preemptive.c:218: return i;
	mov	dpl,_i
00120$:
	pop	psw
	mov	ea,c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadYield'
;------------------------------------------------------------
;	preemptive.c:230: void ThreadYield(void) __critical{
;	-----------------------------------------
;	 function ThreadYield
;	-----------------------------------------
_ThreadYield:
	setb	c
	jbc	ea,00124$
	clr	c
00124$:
	push	psw
;	preemptive.c:231: SAVESTATE;
	PUSH ACC 
	PUSH B 
	PUSH DPL 
	PUSH DPH 
	PUSH PSW 
	mov	a,_currentThread
	add	a,#_savedSP
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:232: i=0;
	mov	_i,#0x00
;	preemptive.c:233: do{
00107$:
;	preemptive.c:234: tmp = threadBitmap[i];
	mov	a,_i
	add	a,#_threadBitmap
	mov	r1,a
	mov	_tmp,@r1
;	preemptive.c:244: if( i == currentThread){
	mov	a,_currentThread
	cjne	a,_i,00102$
;	preemptive.c:245: i++;
	inc	_i
;	preemptive.c:246: continue;
	sjmp	00107$
00102$:
;	preemptive.c:248: if( tmp == 1 ){
	mov	a,#0x01
	cjne	a,_tmp,00104$
;	preemptive.c:249: currentThread = i;
	mov	_currentThread,_i
;	preemptive.c:250: break;
	sjmp	00109$
00104$:
;	preemptive.c:252: if( i == MAXTHREADS ){
	mov	a,#0x04
	cjne	a,_i,00106$
;	preemptive.c:253: i = -1;
	mov	_i,#0xFF
;	preemptive.c:254: break;
	sjmp	00109$
00106$:
;	preemptive.c:256: i++;
	inc	_i
;	preemptive.c:257: } while (1);
	sjmp	00107$
00109$:
;	preemptive.c:258: RESTORESTATE;
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
;	preemptive.c:267: void ThreadExit(void) {
;	-----------------------------------------
;	 function ThreadExit
;	-----------------------------------------
_ThreadExit:
;	preemptive.c:274: threadCount--;
	dec	_threadCount
;	preemptive.c:275: threadBitmap[currentThread] = 0;
	mov	a,_currentThread
	add	a,#_threadBitmap
	mov	r0,a
	mov	@r0,#0x00
;	preemptive.c:276: i=-1;
	mov	_i,#0xFF
;	preemptive.c:277: while(1){
00108$:
;	preemptive.c:278: i++;
	inc	_i
;	preemptive.c:279: if( i >= MAXTHREADS )
	clr	c
	mov	a,_i
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00108$
;	preemptive.c:281: if( i == currentThread )
	mov	a,_currentThread
	cjne	a,_i,00125$
	sjmp	00108$
00125$:
;	preemptive.c:283: if( threadBitmap[i] == 1 ){
	mov	a,_i
	add	a,#_threadBitmap
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0x01,00108$
;	preemptive.c:284: currentThread = i;
	mov	_currentThread,_i
;	preemptive.c:285: currentID = savedSP[i];
	mov	a,_i
	add	a,#_savedSP
	mov	r1,a
	mov	_currentID,@r1
;	preemptive.c:289: RESTORESTATE;
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
;Allocation info for local variables in function 'myTimer0Handler'
;------------------------------------------------------------
;	preemptive.c:293: void myTimer0Handler(void){
;	-----------------------------------------
;	 function myTimer0Handler
;	-----------------------------------------
_myTimer0Handler:
;	preemptive.c:294: visited[currentThread] = 1;
	mov	a,_currentThread
	add	a,#_visited
	mov	r0,a
	mov	@r0,#0x01
;	preemptive.c:295: visitedCount++;
	inc	_visitedCount
;	preemptive.c:296: if( visitedCount >= threadCount ){
	clr	c
	mov	a,_visitedCount
	xrl	a,#0x80
	mov	b,_threadCount
	xrl	b,#0x80
	subb	a,b
	jc	00103$
;	preemptive.c:297: for( i=0; i<MAXTHREADS; i++ )
	mov	_i,#0x00
00116$:
	clr	c
	mov	a,_i
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00101$
;	preemptive.c:298: visited[i] = 0;
	mov	a,_i
	add	a,#_visited
	mov	r0,a
	mov	@r0,#0x00
;	preemptive.c:297: for( i=0; i<MAXTHREADS; i++ )
	inc	_i
	sjmp	00116$
00101$:
;	preemptive.c:299: visitedCount = 1;
	mov	_visitedCount,#0x01
;	preemptive.c:300: visited[currentThread] = 1;
	mov	a,_currentThread
	add	a,#_visited
	mov	r0,a
	mov	@r0,#0x01
00103$:
;	preemptive.c:303: EA = 0; //don't do __critival
	clr	_EA
;	preemptive.c:304: SAVESTATE;
	PUSH ACC 
	PUSH B 
	PUSH DPL 
	PUSH DPH 
	PUSH PSW 
	mov	a,_currentThread
	add	a,#_savedSP
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:305: i=0;
	mov	_i,#0x00
;	preemptive.c:306: do{
00112$:
;	preemptive.c:307: tmp = threadBitmap[i];
	mov	a,_i
	add	a,#_threadBitmap
	mov	r1,a
	mov	_tmp,@r1
;	preemptive.c:308: vtmp = visited[i];
	mov	a,_i
	add	a,#_visited
	mov	r1,a
	mov	_vtmp,@r1
;	preemptive.c:309: if( i == currentThread){
	mov	a,_currentThread
	cjne	a,_i,00105$
;	preemptive.c:310: i++;
	inc	_i
;	preemptive.c:311: continue;
	sjmp	00112$
00105$:
;	preemptive.c:313: if( tmp == 1 ){
	mov	a,#0x01
	cjne	a,_tmp,00109$
;	preemptive.c:314: if( vtmp == 0 ){
	mov	a,_vtmp
	jnz	00109$
;	preemptive.c:315: currentThread = i;
	mov	_currentThread,_i
;	preemptive.c:316: break;
	sjmp	00114$
00109$:
;	preemptive.c:319: if( i == MAXTHREADS ){
	mov	a,#0x04
	cjne	a,_i,00111$
;	preemptive.c:320: i = -1;
	mov	_i,#0xFF
;	preemptive.c:321: break;
	sjmp	00114$
00111$:
;	preemptive.c:323: i++;
	inc	_i
;	preemptive.c:324: } while (1);
	sjmp	00112$
00114$:
;	preemptive.c:325: RESTORESTATE;
	mov	a,_currentThread
	add	a,#_savedSP
	mov	r1,a
	mov	_SP,@r1
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
;	preemptive.c:326: EA = 1;
	setb	_EA
;	preemptive.c:330: __endasm;
	reti
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
