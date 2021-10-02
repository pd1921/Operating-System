;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Thu Jan 16 19:00:44 2020
;--------------------------------------------------------
	.module cooperative
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
_currentID	=	0x0032
_threadCount	=	0x0033
_currentThread	=	0x0035
_tmp	=	0x0036
_i	=	0x0037
_currentSP	=	0x0039
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
;	cooperative.c:76: void Bootstrap(void) {
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
;	cooperative.c:84: threadCount = 0;   
	mov	_threadCount,#0x00
;	cooperative.c:85: for(i=0; i<MAXTHREADS; i++){
	mov	_i,#0x00
00103$:
	clr	c
	mov	a,_i
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00101$
;	cooperative.c:86: threadBitmap[i] = 0;
	mov	a,_i
	add	a,#_threadBitmap
	mov	r0,a
	mov	@r0,#0x00
;	cooperative.c:85: for(i=0; i<MAXTHREADS; i++){
	inc	_i
	sjmp	00103$
00101$:
;	cooperative.c:94: currentID = ThreadCreate(main);
	mov	dptr,#_main
	lcall	_ThreadCreate
	mov	_currentID,dpl
;	cooperative.c:95: currentThread = i;
	mov	_currentThread,_i
;	cooperative.c:96: RESTORESTATE;
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
;	cooperative.c:105: ThreadID ThreadCreate(FunctionPtr fp) {
;	-----------------------------------------
;	 function ThreadCreate
;	-----------------------------------------
_ThreadCreate:
;	cooperative.c:111: if(threadCount >= MAXTHREADS)
	clr	c
	mov	a,_threadCount
	xrl	a,#0x80
	subb	a,#0x84
	jc	00102$
;	cooperative.c:112: return -1;
	mov	dpl,#0xFF
	ret
00102$:
;	cooperative.c:119: for( i=0; i<MAXTHREADS; i++){
	mov	_i,#0x00
00118$:
	clr	c
	mov	a,_i
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00105$
;	cooperative.c:120: if( threadBitmap[i] == 0 )
	mov	a,_i
	add	a,#_threadBitmap
	mov	r1,a
	mov	a,@r1
	jz	00105$
;	cooperative.c:119: for( i=0; i<MAXTHREADS; i++){
	inc	_i
	sjmp	00118$
00105$:
;	cooperative.c:128: threadCount++;
	inc	_threadCount
;	cooperative.c:129: threadBitmap[i] = 1;
	mov	a,_i
	add	a,#_threadBitmap
	mov	r0,a
	mov	@r0,#0x01
;	cooperative.c:134: currentSP = SP;
	mov	_currentSP,_SP
;	cooperative.c:135: SP = (0x3F) + ( i << 4 );
	mov	a,_i
	swap	a
	anl	a,#0xF0
	mov	r7,a
	add	a,#0x3F
	mov	_SP,a
;	cooperative.c:145: __endasm;
	PUSH DPL
	PUSH DPH
;	cooperative.c:162: __endasm;
	MOV ACC, #0H
	MOV B, #0H
	MOV DPL, #0H
	MOV DPH, #0H
	PUSH ACC
	PUSH B
	PUSH DPL
	PUSH DPH
;	cooperative.c:174: if( i==0 )
	mov	a,_i
;	cooperative.c:175: PSW = 0x00;
	jnz	00115$
	mov	_PSW,a
	sjmp	00116$
00115$:
;	cooperative.c:176: else if( i==1 )
	mov	a,#0x01
	cjne	a,_i,00112$
;	cooperative.c:177: PSW = 0x08;
	mov	_PSW,#0x08
	sjmp	00116$
00112$:
;	cooperative.c:178: else if( i==2 )
	mov	a,#0x02
	cjne	a,_i,00109$
;	cooperative.c:179: PSW = 0x10;
	mov	_PSW,#0x10
	sjmp	00116$
00109$:
;	cooperative.c:180: else if( i==3 )
	mov	a,#0x03
	cjne	a,_i,00116$
;	cooperative.c:181: PSW = 0x18;
	mov	_PSW,#0x18
00116$:
;	cooperative.c:185: __endasm;
	PUSH PSW
;	cooperative.c:189: savedSP[i] = SP;
	mov	a,_i
	add	a,#_savedSP
	mov	r0,a
	mov	@r0,_SP
;	cooperative.c:192: SP = currentSP;
	mov	_SP,_currentSP
;	cooperative.c:195: return i;
	mov	dpl,_i
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadYield'
;------------------------------------------------------------
;	cooperative.c:207: void ThreadYield(void) {
;	-----------------------------------------
;	 function ThreadYield
;	-----------------------------------------
_ThreadYield:
;	cooperative.c:208: SAVESTATE; 
	PUSH ACC 
	PUSH B 
	PUSH DPL 
	PUSH DPH 
	PUSH PSW 
	mov	a,_currentThread
	add	a,#_savedSP
	mov	r0,a
	mov	@r0,_SP
;	cooperative.c:209: i=0;
	mov	_i,#0x00
;	cooperative.c:210: do{
00107$:
;	cooperative.c:211: tmp = threadBitmap[i];
	mov	a,_i
	add	a,#_threadBitmap
	mov	r1,a
	mov	_tmp,@r1
;	cooperative.c:221: if( i == currentThread){
	mov	a,_currentThread
	cjne	a,_i,00102$
;	cooperative.c:222: i++;
	inc	_i
;	cooperative.c:223: continue;
	sjmp	00107$
00102$:
;	cooperative.c:225: if( tmp == 1 ){
	mov	a,#0x01
	cjne	a,_tmp,00104$
;	cooperative.c:226: currentThread = i;
	mov	_currentThread,_i
;	cooperative.c:227: break;
	sjmp	00109$
00104$:
;	cooperative.c:229: if( i == MAXTHREADS ){
	mov	a,#0x04
	cjne	a,_i,00106$
;	cooperative.c:230: i = -1;
	mov	_i,#0xFF
;	cooperative.c:231: break;
	sjmp	00109$
00106$:
;	cooperative.c:233: i++;
	inc	_i
;	cooperative.c:239: } while (1);
	sjmp	00107$
00109$:
;	cooperative.c:240: RESTORESTATE;
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
;Allocation info for local variables in function 'ThreadExit'
;------------------------------------------------------------
;	cooperative.c:249: void ThreadExit(void) {
;	-----------------------------------------
;	 function ThreadExit
;	-----------------------------------------
_ThreadExit:
;	cooperative.c:256: threadCount--;
	dec	_threadCount
;	cooperative.c:257: threadBitmap[currentThread] = 0;
	mov	a,_currentThread
	add	a,#_threadBitmap
	mov	r0,a
	mov	@r0,#0x00
;	cooperative.c:258: for( i=0; i<MAXTHREADS; i++ ){
	mov	_i,#0x00
00108$:
	clr	c
	mov	a,_i
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00106$
;	cooperative.c:259: if( i == currentThread )
	mov	a,_currentThread
	cjne	a,_i,00124$
	sjmp	00105$
00124$:
;	cooperative.c:261: if( threadBitmap[i] == 1 ){
	mov	a,_i
	add	a,#_threadBitmap
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0x01,00105$
;	cooperative.c:262: currentThread = i;
	mov	_currentThread,_i
;	cooperative.c:263: currentID = savedSP[i];
	mov	a,_i
	add	a,#_savedSP
	mov	r1,a
	mov	_currentID,@r1
;	cooperative.c:264: break;
	sjmp	00106$
00105$:
;	cooperative.c:258: for( i=0; i<MAXTHREADS; i++ ){
	inc	_i
	sjmp	00108$
00106$:
;	cooperative.c:267: RESTORESTATE;
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
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
