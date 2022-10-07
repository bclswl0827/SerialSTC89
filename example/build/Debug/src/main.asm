;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _SerialAvailable
	.globl _SerialRead
	.globl _SerialPrintln
	.globl _SerialPrint
	.globl _SerialWrite
	.globl _SerialSetTimeout
	.globl _SerialEnd
	.globl _SerialBegin
	.globl _SerialFlush
	.globl _printf
	.globl _delay
	.globl _CP_RL2
	.globl _C_T2
	.globl _TR2
	.globl _EXEN2
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _TF2
	.globl _T2
	.globl _T2EX
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _RXD
	.globl _TXD
	.globl _INT0
	.globl _INT1
	.globl _T0
	.globl _T1
	.globl _WR
	.globl _RD
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PT2
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _EA
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _P
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _P37
	.globl _P36
	.globl _P35
	.globl _P34
	.globl _P33
	.globl _P32
	.globl _P31
	.globl _P30
	.globl _P27
	.globl _P26
	.globl _P25
	.globl _P24
	.globl _P23
	.globl _P22
	.globl _P21
	.globl _P20
	.globl _P17
	.globl _P16
	.globl _P15
	.globl _P14
	.globl _P13
	.globl _P12
	.globl _P11
	.globl _P10
	.globl _P07
	.globl _P06
	.globl _P05
	.globl _P04
	.globl _P03
	.globl _P02
	.globl _P01
	.globl _P00
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _SBUF
	.globl _SCON
	.globl _IP
	.globl _IE
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
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _Serial
	.globl _putchar
	.globl _setup
	.globl _loop
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
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
_IE	=	0x00a8
_IP	=	0x00b8
_SCON	=	0x0098
_SBUF	=	0x0099
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P00	=	0x0080
_P01	=	0x0081
_P02	=	0x0082
_P03	=	0x0083
_P04	=	0x0084
_P05	=	0x0085
_P06	=	0x0086
_P07	=	0x0087
_P10	=	0x0090
_P11	=	0x0091
_P12	=	0x0092
_P13	=	0x0093
_P14	=	0x0094
_P15	=	0x0095
_P16	=	0x0096
_P17	=	0x0097
_P20	=	0x00a0
_P21	=	0x00a1
_P22	=	0x00a2
_P23	=	0x00a3
_P24	=	0x00a4
_P25	=	0x00a5
_P26	=	0x00a6
_P27	=	0x00a7
_P30	=	0x00b0
_P31	=	0x00b1
_P32	=	0x00b2
_P33	=	0x00b3
_P34	=	0x00b4
_P35	=	0x00b5
_P36	=	0x00b6
_P37	=	0x00b7
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_P	=	0x00d0
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_EA	=	0x00af
_ET2	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_PT2	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_RD	=	0x00b7
_WR	=	0x00b6
_T1	=	0x00b5
_T0	=	0x00b4
_INT1	=	0x00b3
_INT0	=	0x00b2
_TXD	=	0x00b1
_RXD	=	0x00b0
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_T2EX	=	0x0091
_T2	=	0x0090
_TF2	=	0x00cf
_EXF2	=	0x00ce
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_EXEN2	=	0x00cb
_TR2	=	0x00ca
_C_T2	=	0x00c9
_CP_RL2	=	0x00c8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_Serial::
	.ds 20
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
;	inc/components/ttl.h:44: serial_t Serial = {
	mov	(_Serial + 0),#_SerialBegin
	mov	(_Serial + 1),#(_SerialBegin >> 8)
	mov	((_Serial + 0x0002) + 0),#_SerialSetTimeout
	mov	((_Serial + 0x0002) + 1),#(_SerialSetTimeout >> 8)
	mov	((_Serial + 0x0004) + 0),#_SerialFlush
	mov	((_Serial + 0x0004) + 1),#(_SerialFlush >> 8)
	mov	((_Serial + 0x0006) + 0),#_SerialEnd
	mov	((_Serial + 0x0006) + 1),#(_SerialEnd >> 8)
	mov	((_Serial + 0x0008) + 0),#_SerialPrint
	mov	((_Serial + 0x0008) + 1),#(_SerialPrint >> 8)
	mov	((_Serial + 0x000a) + 0),#_SerialPrintln
	mov	((_Serial + 0x000a) + 1),#(_SerialPrintln >> 8)
	mov	((_Serial + 0x000c) + 0),#_printf
	mov	((_Serial + 0x000c) + 1),#(_printf >> 8)
	mov	((_Serial + 0x000e) + 0),#_SerialWrite
	mov	((_Serial + 0x000e) + 1),#(_SerialWrite >> 8)
	mov	((_Serial + 0x0010) + 0),#_SerialRead
	mov	((_Serial + 0x0010) + 1),#(_SerialRead >> 8)
	mov	((_Serial + 0x0012) + 0),#_SerialAvailable
	mov	((_Serial + 0x0012) + 1),#(_SerialAvailable >> 8)
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
;Allocation info for local variables in function 'SerialBegin'
;------------------------------------------------------------
;b                         Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	src/components/ttl.c:8: void SerialBegin(uint32_t b) {
;	-----------------------------------------
;	 function SerialBegin
;	-----------------------------------------
_SerialBegin:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	src/components/ttl.c:10: PCON = 0x80;
	mov	_PCON,#0x80
;	src/components/ttl.c:12: SCON = 0x50;
	mov	_SCON,#0x50
;	src/components/ttl.c:14: TMOD = 0x20;
	mov	_TMOD,#0x20
;	src/components/ttl.c:16: TH1 = TL1 = -(CRYSTAL / 12 / 32 / (b / 2));
	mov	a,r7
	clr	c
	rrc	a
	mov	(__divulong_PARM_2 + 3),a
	mov	a,r6
	rrc	a
	mov	(__divulong_PARM_2 + 2),a
	mov	a,r5
	rrc	a
	mov	(__divulong_PARM_2 + 1),a
	mov	a,r4
	rrc	a
	mov	__divulong_PARM_2,a
	mov	dptr,#0x7080
	clr	a
	mov	b,a
	lcall	__divulong
	mov	r4,dpl
	clr	c
	clr	a
	subb	a,r4
	mov	r4,a
	mov	_TL1,r4
	mov	_TH1,r4
;	src/components/ttl.c:18: TR1 = EA = ES = 1;
;	assignBit
	setb	_ES
;	assignBit
	mov	c,_ES
	mov	_EA,c
;	assignBit
	mov	c,_EA
	mov	_TR1,c
;	src/components/ttl.c:19: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SerialEnd'
;------------------------------------------------------------
;	src/components/ttl.c:22: void SerialEnd() {
;	-----------------------------------------
;	 function SerialEnd
;	-----------------------------------------
_SerialEnd:
;	src/components/ttl.c:24: EA = ES = 0;
;	assignBit
	clr	_ES
;	assignBit
	mov	c,_ES
	mov	_EA,c
;	src/components/ttl.c:25: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SerialSetTimeout'
;------------------------------------------------------------
;t                         Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	src/components/ttl.c:28: void SerialSetTimeout(uint32_t t) {
;	-----------------------------------------
;	 function SerialSetTimeout
;	-----------------------------------------
_SerialSetTimeout:
	mov	r4,dpl
	mov	r5,dph
;	src/components/ttl.c:30: TMOD = 0x01;
	mov	_TMOD,#0x01
;	src/components/ttl.c:32: TH0 = (t >> 8) & 0xff;
	mov	_TH0,r5
;	src/components/ttl.c:33: TL0 = t & 0xff;
	mov	_TL0,r4
;	src/components/ttl.c:35: TR0 = EA = ET0 = 1;
;	assignBit
	setb	_ET0
;	assignBit
	mov	c,_ET0
	mov	_EA,c
;	assignBit
	mov	c,_EA
	mov	_TR0,c
;	src/components/ttl.c:36: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SerialFlush'
;------------------------------------------------------------
;	src/components/ttl.c:39: void SerialFlush() {
;	-----------------------------------------
;	 function SerialFlush
;	-----------------------------------------
_SerialFlush:
;	src/components/ttl.c:41: while (!TI) {
00101$:
;	src/components/ttl.c:45: TI = 0;
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	src/components/ttl.c:46: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SerialWrite'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	src/components/ttl.c:49: void SerialWrite(uint8_t c) {
;	-----------------------------------------
;	 function SerialWrite
;	-----------------------------------------
_SerialWrite:
	mov	r7,dpl
;	src/components/ttl.c:51: ES = 0;
;	assignBit
	clr	_ES
;	src/components/ttl.c:53: SBUF = c;
	mov	_SBUF,r7
;	src/components/ttl.c:55: while (!TI) {
00101$:
;	src/components/ttl.c:59: TI = 0;
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	src/components/ttl.c:61: ES = !TI;
	mov	c,_TI
	cpl	c
	mov	_ES,c
;	src/components/ttl.c:62: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SerialPrint'
;------------------------------------------------------------
;s                         Allocated to registers 
;------------------------------------------------------------
;	src/components/ttl.c:65: void SerialPrint(char* s) {
;	-----------------------------------------
;	 function SerialPrint
;	-----------------------------------------
_SerialPrint:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	src/components/ttl.c:67: while (*s) {
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	src/components/ttl.c:68: SerialWrite(*s++);
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_SerialWrite
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	src/components/ttl.c:70: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SerialPrintln'
;------------------------------------------------------------
;s                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	src/components/ttl.c:73: void SerialPrintln(char* s) {
;	-----------------------------------------
;	 function SerialPrintln
;	-----------------------------------------
_SerialPrintln:
;	src/components/ttl.c:75: SerialPrint(s);
	lcall	_SerialPrint
;	src/components/ttl.c:76: SerialPrint("\r\n");
	mov	dptr,#___str_0
	mov	b,#0x80
;	src/components/ttl.c:77: }
	ljmp	_SerialPrint
;------------------------------------------------------------
;Allocation info for local variables in function 'SerialRead'
;------------------------------------------------------------
;	src/components/ttl.c:80: char SerialRead() {
;	-----------------------------------------
;	 function SerialRead
;	-----------------------------------------
_SerialRead:
;	src/components/ttl.c:82: while (!RI) {
00101$:
;	src/components/ttl.c:86: RI = 0;
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	src/components/ttl.c:88: return SBUF;
	mov	dpl,_SBUF
;	src/components/ttl.c:89: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SerialAvailable'
;------------------------------------------------------------
;	src/components/ttl.c:92: uint8_t SerialAvailable() {
;	-----------------------------------------
;	 function SerialAvailable
;	-----------------------------------------
_SerialAvailable:
;	src/components/ttl.c:94: return RI;
	mov	c,_RI
	clr	a
	rlc	a
	mov	dpl,a
;	src/components/ttl.c:95: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	src/components/ttl.c:98: uint8_t putchar(uint8_t c) {
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	src/components/ttl.c:100: SerialWrite(c);
	mov  r7,dpl
	push	ar7
	lcall	_SerialWrite
	pop	ar7
;	src/components/ttl.c:101: return c;
	mov	dpl,r7
;	src/components/ttl.c:102: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	inc/51duino.h:14: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	inc/51duino.h:16: P0 = P1 = P2 = P3 = 0;
	mov	_P3,#0x00
	mov	_P2,#0x00
	mov	_P1,#0x00
	mov	_P0,#0x00
;	inc/51duino.h:18: P30 = P31 = 1;
;	assignBit
	setb	_P31
;	assignBit
	mov	c,_P31
	mov	_P30,c
;	inc/51duino.h:20: setup();
	lcall	_setup
00102$:
;	inc/51duino.h:23: loop();
	lcall	_loop
;	inc/51duino.h:25: }
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'setup'
;------------------------------------------------------------
;	./src/main.c:3: void setup() {
;	-----------------------------------------
;	 function setup
;	-----------------------------------------
_setup:
;	./src/main.c:4: Serial.begin(19200);
	mov	r6,(_Serial + 0)
	mov	r7,(_Serial + 1)
	push	ar7
	push	ar6
	lcall	00103$
	sjmp	00104$
00103$:
	push	ar6
	push	ar7
	mov	dptr,#0x4b00
	clr	a
	mov	b,a
	ret
00104$:
	pop	ar6
	pop	ar7
;	./src/main.c:5: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'loop'
;------------------------------------------------------------
;	./src/main.c:7: void loop() {
;	-----------------------------------------
;	 function loop
;	-----------------------------------------
_loop:
;	./src/main.c:8: Serial.print("print\r\n");
	mov	r6,((_Serial + 0x0008) + 0)
	mov	r7,((_Serial + 0x0008) + 1)
	push	ar7
	push	ar6
	lcall	00103$
	sjmp	00104$
00103$:
	push	ar6
	push	ar7
	mov	dptr,#___str_1
	mov	b,#0x80
	ret
00104$:
	pop	ar6
	pop	ar7
;	./src/main.c:9: Serial.printf("printf: %d\r\n", 123);
	mov	r6,((_Serial + 0x000c) + 0)
	mov	r7,((_Serial + 0x000c) + 1)
	push	ar7
	push	ar6
	mov	a,#0x7b
	push	acc
	clr	a
	push	acc
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	./src/main.c:10: Serial.println("println");
	mov	r6,((_Serial + 0x000a) + 0)
	mov	r7,((_Serial + 0x000a) + 1)
	push	ar7
	push	ar6
	lcall	00105$
	sjmp	00106$
00105$:
	push	ar6
	push	ar7
	mov	dptr,#___str_3
	mov	b,#0x80
	ret
00106$:
	pop	ar6
	pop	ar7
;	./src/main.c:11: delay(1000);
	mov	dptr,#0x03e8
	clr	a
	mov	b,a
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
;	./src/main.c:12: }
	ljmp	_delay
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "print"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "printf: %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "println"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
