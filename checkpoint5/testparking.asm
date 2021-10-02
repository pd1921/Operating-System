;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Thu Jan 16 00:25:28 2020
;--------------------------------------------------------
	.module testparking
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _timer0_ISR
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genXINIT
	.globl __mcs51_genRAMCLEAR
	.globl __sdcc_gsinit_startup
	.globl _main
	.globl _makeCars
	.globl _CarParking
	.globl _delay
	.globl _ThreadExit
	.globl _ThreadCreate
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
	.globl _empty
	.globl _full
	.globl _mutex
	.globl _carCount
	.globl _space
	.globl _random
	.globl _car
	.globl _j
	.globl _parkingSpot
	.globl _carNum
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
_carNum	=	0x0020
_parkingSpot	=	0x0021
_j	=	0x002b
_car	=	0x002c
_random	=	0x002d
_space	=	0x002e
_carCount	=	0x002f
_mutex	=	0x0036
_full	=	0x0037
_empty	=	0x0038
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer0_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'CarParking'
;------------------------------------------------------------
;	testparking.c:55: void CarParking(){
;	-----------------------------------------
;	 function CarParking
;	-----------------------------------------
_CarParking:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	testparking.c:56: TMOD |= (0x20);
	orl	_TMOD,#0x20
;	testparking.c:57: TH1 = -6;
	mov	_TH1,#0xFA
;	testparking.c:58: SCON = (0x50);
	mov	_SCON,#0x50
;	testparking.c:59: TR1 = 1;
	setb	_TR1
;	testparking.c:60: random = 255-TL1;
	mov	a,#0xFF
	clr	c
	subb	a,_TL1
	mov	_random,a
;	testparking.c:77: delay(random);
	mov	dpl,_random
	lcall	_delay
;	testparking.c:79: SemaphoreWait(full);
	 0$:
	MOV ACC, _full 
	JZ 0$ 
	JB ACC.7, 0$ 
	dec _full 
;	testparking.c:80: SemaphoreWait(mutex);
	 1$:
	MOV ACC, _mutex 
	JZ 1$ 
	JB ACC.7, 1$ 
	dec _mutex 
;	testparking.c:81: printCarLeaving(parkingSpot[j], random+48);
	mov	a,_j
	add	a,#_parkingSpot
	mov	r1,a
	mov	_SBUF,@r1
00101$:
	jbc	_TI,00148$
	sjmp	00101$
00148$:
	mov	_SBUF,#0x61
00104$:
	jbc	_TI,00149$
	sjmp	00104$
00149$:
	mov	_SBUF,#0x74
00107$:
	jbc	_TI,00150$
	sjmp	00107$
00150$:
	mov	a,#0x30
	add	a,_random
	mov	_SBUF,a
00110$:
	jbc	_TI,00151$
	sjmp	00110$
00151$:
;	testparking.c:82: parkingSpot[j] = 0;
	mov	a,_j
	add	a,#_parkingSpot
	mov	r0,a
	mov	@r0,#0x00
;	testparking.c:83: printSlash();
	mov	_SBUF,#0x2F
00113$:
	jbc	_TI,00152$
	sjmp	00113$
00152$:
;	testparking.c:84: SemaphoreSignal(mutex);
	INC _mutex 
;	testparking.c:85: SemaphoreSignal(empty);
	INC _empty 
;	testparking.c:87: ThreadExit();    
	ljmp	_ThreadExit
;------------------------------------------------------------
;Allocation info for local variables in function 'makeCars'
;------------------------------------------------------------
;	testparking.c:90: void makeCars(void){
;	-----------------------------------------
;	 function makeCars
;	-----------------------------------------
_makeCars:
;	testparking.c:91: TMOD |= (0x20);
	orl	_TMOD,#0x20
;	testparking.c:92: TH1 = -6;
	mov	_TH1,#0xFA
;	testparking.c:93: SCON = (0x50);
	mov	_SCON,#0x50
;	testparking.c:94: TR1 = 1;
	setb	_TR1
;	testparking.c:95: random = 255-TL1;
	mov	a,#0xFF
	clr	c
	subb	a,_TL1
	mov	_random,a
;	testparking.c:97: do{
00121$:
;	testparking.c:98: car = ThreadCreate(CarParking);
	mov	dptr,#_CarParking
	lcall	_ThreadCreate
	mov	_car,dpl
;	testparking.c:99: if( car == -1 ) 
	mov	a,#0xFF
	cjne	a,_car,00177$
	sjmp	00122$
00177$:
;	testparking.c:103: SemaphoreWait(empty);
	 2$:
	MOV ACC, _empty 
	JZ 2$ 
	JB ACC.7, 2$ 
	dec _empty 
;	testparking.c:104: SemaphoreWait(mutex);
	 3$:
	MOV ACC, _mutex 
	JZ 3$ 
	JB ACC.7, 3$ 
	dec _mutex 
;	testparking.c:105: for( j=0; j<SPOT; j++ ){
	mov	_j,#0x00
00125$:
	clr	c
	mov	a,_j
	xrl	a,#0x80
	subb	a,#0x82
	jnc	00105$
;	testparking.c:106: space = parkingSpot[j];
	mov	a,_j
	add	a,#_parkingSpot
	mov	r1,a
	mov	_space,@r1
;	testparking.c:107: if( space == 0 ){
	mov	a,_space
	jnz	00126$
;	testparking.c:108: parkingSpot[j] = carNum;
	mov	a,_j
	add	a,#_parkingSpot
	mov	r0,a
	mov	@r0,_carNum
;	testparking.c:109: break;
	sjmp	00105$
00126$:
;	testparking.c:105: for( j=0; j<SPOT; j++ ){
	inc	_j
	sjmp	00125$
00105$:
;	testparking.c:112: printCarParking(carNum, j+48);
	mov	_SBUF,_carNum
00106$:
	jbc	_TI,00180$
	sjmp	00106$
00180$:
	mov	_SBUF,#0x69
00109$:
	jbc	_TI,00181$
	sjmp	00109$
00181$:
	mov	_SBUF,#0x6E
00112$:
	jbc	_TI,00182$
	sjmp	00112$
00182$:
	mov	a,#0x30
	add	a,_j
	mov	_SBUF,a
00115$:
	jbc	_TI,00183$
	sjmp	00115$
00183$:
;	testparking.c:113: printSlash();
	mov	_SBUF,#0x2F
00118$:
	jbc	_TI,00184$
	sjmp	00118$
00184$:
;	testparking.c:114: SemaphoreSignal(mutex);
	INC _mutex 
;	testparking.c:115: SemaphoreSignal(full);
	INC _full 
;	testparking.c:117: carCount++;
	inc	_carCount
;	testparking.c:118: carNum++;
	inc	_carNum
00122$:
;	testparking.c:120: }while(carCount<CARS);
	clr	c
	mov	a,_carCount
	xrl	a,#0x80
	subb	a,#0x85
	jnc	00185$
	ljmp	00121$
00185$:
;	testparking.c:122: ThreadExit();
	ljmp	_ThreadExit
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	testparking.c:125: void main(void){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	testparking.c:127: carNum = 'A';
	mov	_carNum,#0x41
;	testparking.c:128: carCount = 0;
	mov	_carCount,#0x00
;	testparking.c:129: for( j=0; j<SPOT; j++ )
	mov	_j,#0x00
00103$:
	clr	c
	mov	a,_j
	xrl	a,#0x80
	subb	a,#0x82
	jnc	00101$
;	testparking.c:130: parkingSpot[j] = 0;
	mov	a,_j
	add	a,#_parkingSpot
	mov	r0,a
	mov	@r0,#0x00
;	testparking.c:129: for( j=0; j<SPOT; j++ )
	inc	_j
	sjmp	00103$
00101$:
;	testparking.c:133: SemaphoreCreate(mutex, 1);
	mov	_mutex,#0x01
;	testparking.c:134: SemaphoreCreate(full, 0);
	mov	_full,#0x00
;	testparking.c:135: SemaphoreCreate(empty, SPOT);
	mov	_empty,#0x02
;	testparking.c:138: makeCars();
	ljmp	_makeCars
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_gsinit_startup'
;------------------------------------------------------------
;	testparking.c:141: void _sdcc_gsinit_startup(void) {
;	-----------------------------------------
;	 function _sdcc_gsinit_startup
;	-----------------------------------------
__sdcc_gsinit_startup:
;	testparking.c:144: __endasm;
	ljmp _Bootstrap
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
;------------------------------------------------------------
;	testparking.c:147: void _mcs51_genRAMCLEAR(void) {}
;	-----------------------------------------
;	 function _mcs51_genRAMCLEAR
;	-----------------------------------------
__mcs51_genRAMCLEAR:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genXINIT'
;------------------------------------------------------------
;	testparking.c:148: void _mcs51_genXINIT(void) {}
;	-----------------------------------------
;	 function _mcs51_genXINIT
;	-----------------------------------------
__mcs51_genXINIT:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
;------------------------------------------------------------
;	testparking.c:149: void _mcs51_genXRAMCLEAR(void) {}
;	-----------------------------------------
;	 function _mcs51_genXRAMCLEAR
;	-----------------------------------------
__mcs51_genXRAMCLEAR:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
;	testparking.c:151: void timer0_ISR(void) __interrupt(1){
;	-----------------------------------------
;	 function timer0_ISR
;	-----------------------------------------
_timer0_ISR:
;	testparking.c:154: __endasm;
	ljmp _myTimer0Handler
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
