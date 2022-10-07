                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _SerialAvailable
                                     13 	.globl _SerialRead
                                     14 	.globl _SerialPrintln
                                     15 	.globl _SerialPrint
                                     16 	.globl _SerialWrite
                                     17 	.globl _SerialSetTimeout
                                     18 	.globl _SerialEnd
                                     19 	.globl _SerialBegin
                                     20 	.globl _SerialFlush
                                     21 	.globl _printf
                                     22 	.globl _delay
                                     23 	.globl _CP_RL2
                                     24 	.globl _C_T2
                                     25 	.globl _TR2
                                     26 	.globl _EXEN2
                                     27 	.globl _TCLK
                                     28 	.globl _RCLK
                                     29 	.globl _EXF2
                                     30 	.globl _TF2
                                     31 	.globl _T2
                                     32 	.globl _T2EX
                                     33 	.globl _RI
                                     34 	.globl _TI
                                     35 	.globl _RB8
                                     36 	.globl _TB8
                                     37 	.globl _REN
                                     38 	.globl _SM2
                                     39 	.globl _SM1
                                     40 	.globl _SM0
                                     41 	.globl _RXD
                                     42 	.globl _TXD
                                     43 	.globl _INT0
                                     44 	.globl _INT1
                                     45 	.globl _T0
                                     46 	.globl _T1
                                     47 	.globl _WR
                                     48 	.globl _RD
                                     49 	.globl _PX0
                                     50 	.globl _PT0
                                     51 	.globl _PX1
                                     52 	.globl _PT1
                                     53 	.globl _PS
                                     54 	.globl _PT2
                                     55 	.globl _EX0
                                     56 	.globl _ET0
                                     57 	.globl _EX1
                                     58 	.globl _ET1
                                     59 	.globl _ES
                                     60 	.globl _ET2
                                     61 	.globl _EA
                                     62 	.globl _IT0
                                     63 	.globl _IE0
                                     64 	.globl _IT1
                                     65 	.globl _IE1
                                     66 	.globl _TR0
                                     67 	.globl _TF0
                                     68 	.globl _TR1
                                     69 	.globl _TF1
                                     70 	.globl _P
                                     71 	.globl _OV
                                     72 	.globl _RS0
                                     73 	.globl _RS1
                                     74 	.globl _F0
                                     75 	.globl _AC
                                     76 	.globl _CY
                                     77 	.globl _P37
                                     78 	.globl _P36
                                     79 	.globl _P35
                                     80 	.globl _P34
                                     81 	.globl _P33
                                     82 	.globl _P32
                                     83 	.globl _P31
                                     84 	.globl _P30
                                     85 	.globl _P27
                                     86 	.globl _P26
                                     87 	.globl _P25
                                     88 	.globl _P24
                                     89 	.globl _P23
                                     90 	.globl _P22
                                     91 	.globl _P21
                                     92 	.globl _P20
                                     93 	.globl _P17
                                     94 	.globl _P16
                                     95 	.globl _P15
                                     96 	.globl _P14
                                     97 	.globl _P13
                                     98 	.globl _P12
                                     99 	.globl _P11
                                    100 	.globl _P10
                                    101 	.globl _P07
                                    102 	.globl _P06
                                    103 	.globl _P05
                                    104 	.globl _P04
                                    105 	.globl _P03
                                    106 	.globl _P02
                                    107 	.globl _P01
                                    108 	.globl _P00
                                    109 	.globl _TH2
                                    110 	.globl _TL2
                                    111 	.globl _RCAP2H
                                    112 	.globl _RCAP2L
                                    113 	.globl _T2CON
                                    114 	.globl _SBUF
                                    115 	.globl _SCON
                                    116 	.globl _IP
                                    117 	.globl _IE
                                    118 	.globl _TH1
                                    119 	.globl _TH0
                                    120 	.globl _TL1
                                    121 	.globl _TL0
                                    122 	.globl _TMOD
                                    123 	.globl _TCON
                                    124 	.globl _PCON
                                    125 	.globl _DPH
                                    126 	.globl _DPL
                                    127 	.globl _SP
                                    128 	.globl _B
                                    129 	.globl _ACC
                                    130 	.globl _PSW
                                    131 	.globl _P3
                                    132 	.globl _P2
                                    133 	.globl _P1
                                    134 	.globl _P0
                                    135 	.globl _Serial
                                    136 	.globl _putchar
                                    137 	.globl _setup
                                    138 	.globl _loop
                                    139 ;--------------------------------------------------------
                                    140 ; special function registers
                                    141 ;--------------------------------------------------------
                                    142 	.area RSEG    (ABS,DATA)
      000000                        143 	.org 0x0000
                           000080   144 _P0	=	0x0080
                           000090   145 _P1	=	0x0090
                           0000A0   146 _P2	=	0x00a0
                           0000B0   147 _P3	=	0x00b0
                           0000D0   148 _PSW	=	0x00d0
                           0000E0   149 _ACC	=	0x00e0
                           0000F0   150 _B	=	0x00f0
                           000081   151 _SP	=	0x0081
                           000082   152 _DPL	=	0x0082
                           000083   153 _DPH	=	0x0083
                           000087   154 _PCON	=	0x0087
                           000088   155 _TCON	=	0x0088
                           000089   156 _TMOD	=	0x0089
                           00008A   157 _TL0	=	0x008a
                           00008B   158 _TL1	=	0x008b
                           00008C   159 _TH0	=	0x008c
                           00008D   160 _TH1	=	0x008d
                           0000A8   161 _IE	=	0x00a8
                           0000B8   162 _IP	=	0x00b8
                           000098   163 _SCON	=	0x0098
                           000099   164 _SBUF	=	0x0099
                           0000C8   165 _T2CON	=	0x00c8
                           0000CA   166 _RCAP2L	=	0x00ca
                           0000CB   167 _RCAP2H	=	0x00cb
                           0000CC   168 _TL2	=	0x00cc
                           0000CD   169 _TH2	=	0x00cd
                                    170 ;--------------------------------------------------------
                                    171 ; special function bits
                                    172 ;--------------------------------------------------------
                                    173 	.area RSEG    (ABS,DATA)
      000000                        174 	.org 0x0000
                           000080   175 _P00	=	0x0080
                           000081   176 _P01	=	0x0081
                           000082   177 _P02	=	0x0082
                           000083   178 _P03	=	0x0083
                           000084   179 _P04	=	0x0084
                           000085   180 _P05	=	0x0085
                           000086   181 _P06	=	0x0086
                           000087   182 _P07	=	0x0087
                           000090   183 _P10	=	0x0090
                           000091   184 _P11	=	0x0091
                           000092   185 _P12	=	0x0092
                           000093   186 _P13	=	0x0093
                           000094   187 _P14	=	0x0094
                           000095   188 _P15	=	0x0095
                           000096   189 _P16	=	0x0096
                           000097   190 _P17	=	0x0097
                           0000A0   191 _P20	=	0x00a0
                           0000A1   192 _P21	=	0x00a1
                           0000A2   193 _P22	=	0x00a2
                           0000A3   194 _P23	=	0x00a3
                           0000A4   195 _P24	=	0x00a4
                           0000A5   196 _P25	=	0x00a5
                           0000A6   197 _P26	=	0x00a6
                           0000A7   198 _P27	=	0x00a7
                           0000B0   199 _P30	=	0x00b0
                           0000B1   200 _P31	=	0x00b1
                           0000B2   201 _P32	=	0x00b2
                           0000B3   202 _P33	=	0x00b3
                           0000B4   203 _P34	=	0x00b4
                           0000B5   204 _P35	=	0x00b5
                           0000B6   205 _P36	=	0x00b6
                           0000B7   206 _P37	=	0x00b7
                           0000D7   207 _CY	=	0x00d7
                           0000D6   208 _AC	=	0x00d6
                           0000D5   209 _F0	=	0x00d5
                           0000D4   210 _RS1	=	0x00d4
                           0000D3   211 _RS0	=	0x00d3
                           0000D2   212 _OV	=	0x00d2
                           0000D0   213 _P	=	0x00d0
                           00008F   214 _TF1	=	0x008f
                           00008E   215 _TR1	=	0x008e
                           00008D   216 _TF0	=	0x008d
                           00008C   217 _TR0	=	0x008c
                           00008B   218 _IE1	=	0x008b
                           00008A   219 _IT1	=	0x008a
                           000089   220 _IE0	=	0x0089
                           000088   221 _IT0	=	0x0088
                           0000AF   222 _EA	=	0x00af
                           0000AD   223 _ET2	=	0x00ad
                           0000AC   224 _ES	=	0x00ac
                           0000AB   225 _ET1	=	0x00ab
                           0000AA   226 _EX1	=	0x00aa
                           0000A9   227 _ET0	=	0x00a9
                           0000A8   228 _EX0	=	0x00a8
                           0000BD   229 _PT2	=	0x00bd
                           0000BC   230 _PS	=	0x00bc
                           0000BB   231 _PT1	=	0x00bb
                           0000BA   232 _PX1	=	0x00ba
                           0000B9   233 _PT0	=	0x00b9
                           0000B8   234 _PX0	=	0x00b8
                           0000B7   235 _RD	=	0x00b7
                           0000B6   236 _WR	=	0x00b6
                           0000B5   237 _T1	=	0x00b5
                           0000B4   238 _T0	=	0x00b4
                           0000B3   239 _INT1	=	0x00b3
                           0000B2   240 _INT0	=	0x00b2
                           0000B1   241 _TXD	=	0x00b1
                           0000B0   242 _RXD	=	0x00b0
                           00009F   243 _SM0	=	0x009f
                           00009E   244 _SM1	=	0x009e
                           00009D   245 _SM2	=	0x009d
                           00009C   246 _REN	=	0x009c
                           00009B   247 _TB8	=	0x009b
                           00009A   248 _RB8	=	0x009a
                           000099   249 _TI	=	0x0099
                           000098   250 _RI	=	0x0098
                           000091   251 _T2EX	=	0x0091
                           000090   252 _T2	=	0x0090
                           0000CF   253 _TF2	=	0x00cf
                           0000CE   254 _EXF2	=	0x00ce
                           0000CD   255 _RCLK	=	0x00cd
                           0000CC   256 _TCLK	=	0x00cc
                           0000CB   257 _EXEN2	=	0x00cb
                           0000CA   258 _TR2	=	0x00ca
                           0000C9   259 _C_T2	=	0x00c9
                           0000C8   260 _CP_RL2	=	0x00c8
                                    261 ;--------------------------------------------------------
                                    262 ; overlayable register banks
                                    263 ;--------------------------------------------------------
                                    264 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        265 	.ds 8
                                    266 ;--------------------------------------------------------
                                    267 ; internal ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area DSEG    (DATA)
      000008                        270 _Serial::
      000008                        271 	.ds 20
                                    272 ;--------------------------------------------------------
                                    273 ; overlayable items in internal ram 
                                    274 ;--------------------------------------------------------
                                    275 	.area	OSEG    (OVR,DATA)
                                    276 	.area	OSEG    (OVR,DATA)
                                    277 ;--------------------------------------------------------
                                    278 ; Stack segment in internal ram 
                                    279 ;--------------------------------------------------------
                                    280 	.area	SSEG
      000062                        281 __start__stack:
      000062                        282 	.ds	1
                                    283 
                                    284 ;--------------------------------------------------------
                                    285 ; indirectly addressable internal ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area ISEG    (DATA)
                                    288 ;--------------------------------------------------------
                                    289 ; absolute internal ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area IABS    (ABS,DATA)
                                    292 	.area IABS    (ABS,DATA)
                                    293 ;--------------------------------------------------------
                                    294 ; bit data
                                    295 ;--------------------------------------------------------
                                    296 	.area BSEG    (BIT)
                                    297 ;--------------------------------------------------------
                                    298 ; paged external ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area PSEG    (PAG,XDATA)
                                    301 ;--------------------------------------------------------
                                    302 ; external ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area XSEG    (XDATA)
                                    305 ;--------------------------------------------------------
                                    306 ; absolute external ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area XABS    (ABS,XDATA)
                                    309 ;--------------------------------------------------------
                                    310 ; external initialized ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area XISEG   (XDATA)
                                    313 	.area HOME    (CODE)
                                    314 	.area GSINIT0 (CODE)
                                    315 	.area GSINIT1 (CODE)
                                    316 	.area GSINIT2 (CODE)
                                    317 	.area GSINIT3 (CODE)
                                    318 	.area GSINIT4 (CODE)
                                    319 	.area GSINIT5 (CODE)
                                    320 	.area GSINIT  (CODE)
                                    321 	.area GSFINAL (CODE)
                                    322 	.area CSEG    (CODE)
                                    323 ;--------------------------------------------------------
                                    324 ; interrupt vector 
                                    325 ;--------------------------------------------------------
                                    326 	.area HOME    (CODE)
      000000                        327 __interrupt_vect:
      000000 02 00 08         [24]  328 	ljmp	__sdcc_gsinit_startup
                                    329 ;--------------------------------------------------------
                                    330 ; global & static initialisations
                                    331 ;--------------------------------------------------------
                                    332 	.area HOME    (CODE)
                                    333 	.area GSINIT  (CODE)
                                    334 	.area GSFINAL (CODE)
                                    335 	.area GSINIT  (CODE)
                                    336 	.globl __sdcc_gsinit_startup
                                    337 	.globl __sdcc_program_startup
                                    338 	.globl __start__stack
                                    339 	.globl __mcs51_genXINIT
                                    340 	.globl __mcs51_genXRAMCLEAR
                                    341 	.globl __mcs51_genRAMCLEAR
                                    342 ;	inc/components/ttl.h:44: serial_t Serial = {
      000061 75 08 A0         [24]  343 	mov	(_Serial + 0),#_SerialBegin
      000064 75 09 00         [24]  344 	mov	(_Serial + 1),#(_SerialBegin >> 8)
      000067 75 0A E6         [24]  345 	mov	((_Serial + 0x0002) + 0),#_SerialSetTimeout
      00006A 75 0B 00         [24]  346 	mov	((_Serial + 0x0002) + 1),#(_SerialSetTimeout >> 8)
      00006D 75 0C FC         [24]  347 	mov	((_Serial + 0x0004) + 0),#_SerialFlush
      000070 75 0D 00         [24]  348 	mov	((_Serial + 0x0004) + 1),#(_SerialFlush >> 8)
      000073 75 0E DF         [24]  349 	mov	((_Serial + 0x0006) + 0),#_SerialEnd
      000076 75 0F 00         [24]  350 	mov	((_Serial + 0x0006) + 1),#(_SerialEnd >> 8)
      000079 75 10 13         [24]  351 	mov	((_Serial + 0x0008) + 0),#_SerialPrint
      00007C 75 11 01         [24]  352 	mov	((_Serial + 0x0008) + 1),#(_SerialPrint >> 8)
      00007F 75 12 3E         [24]  353 	mov	((_Serial + 0x000a) + 0),#_SerialPrintln
      000082 75 13 01         [24]  354 	mov	((_Serial + 0x000a) + 1),#(_SerialPrintln >> 8)
      000085 75 14 77         [24]  355 	mov	((_Serial + 0x000c) + 0),#_printf
      000088 75 15 03         [24]  356 	mov	((_Serial + 0x000c) + 1),#(_printf >> 8)
      00008B 75 16 02         [24]  357 	mov	((_Serial + 0x000e) + 0),#_SerialWrite
      00008E 75 17 01         [24]  358 	mov	((_Serial + 0x000e) + 1),#(_SerialWrite >> 8)
      000091 75 18 4A         [24]  359 	mov	((_Serial + 0x0010) + 0),#_SerialRead
      000094 75 19 01         [24]  360 	mov	((_Serial + 0x0010) + 1),#(_SerialRead >> 8)
      000097 75 1A 53         [24]  361 	mov	((_Serial + 0x0012) + 0),#_SerialAvailable
      00009A 75 1B 01         [24]  362 	mov	((_Serial + 0x0012) + 1),#(_SerialAvailable >> 8)
                                    363 	.area GSFINAL (CODE)
      00009D 02 00 03         [24]  364 	ljmp	__sdcc_program_startup
                                    365 ;--------------------------------------------------------
                                    366 ; Home
                                    367 ;--------------------------------------------------------
                                    368 	.area HOME    (CODE)
                                    369 	.area HOME    (CODE)
      000003                        370 __sdcc_program_startup:
      000003 02 01 66         [24]  371 	ljmp	_main
                                    372 ;	return from main will return to caller
                                    373 ;--------------------------------------------------------
                                    374 ; code
                                    375 ;--------------------------------------------------------
                                    376 	.area CSEG    (CODE)
                                    377 ;------------------------------------------------------------
                                    378 ;Allocation info for local variables in function 'SerialBegin'
                                    379 ;------------------------------------------------------------
                                    380 ;b                         Allocated to registers r4 r5 r6 r7 
                                    381 ;------------------------------------------------------------
                                    382 ;	src/components/ttl.c:8: void SerialBegin(uint32_t b) {
                                    383 ;	-----------------------------------------
                                    384 ;	 function SerialBegin
                                    385 ;	-----------------------------------------
      0000A0                        386 _SerialBegin:
                           000007   387 	ar7 = 0x07
                           000006   388 	ar6 = 0x06
                           000005   389 	ar5 = 0x05
                           000004   390 	ar4 = 0x04
                           000003   391 	ar3 = 0x03
                           000002   392 	ar2 = 0x02
                           000001   393 	ar1 = 0x01
                           000000   394 	ar0 = 0x00
      0000A0 AC 82            [24]  395 	mov	r4,dpl
      0000A2 AD 83            [24]  396 	mov	r5,dph
      0000A4 AE F0            [24]  397 	mov	r6,b
      0000A6 FF               [12]  398 	mov	r7,a
                                    399 ;	src/components/ttl.c:10: PCON = 0x80;
      0000A7 75 87 80         [24]  400 	mov	_PCON,#0x80
                                    401 ;	src/components/ttl.c:12: SCON = 0x50;
      0000AA 75 98 50         [24]  402 	mov	_SCON,#0x50
                                    403 ;	src/components/ttl.c:14: TMOD = 0x20;
      0000AD 75 89 20         [24]  404 	mov	_TMOD,#0x20
                                    405 ;	src/components/ttl.c:16: TH1 = TL1 = -(CRYSTAL / 12 / 32 / (b / 2));
      0000B0 EF               [12]  406 	mov	a,r7
      0000B1 C3               [12]  407 	clr	c
      0000B2 13               [12]  408 	rrc	a
      0000B3 F5 4F            [12]  409 	mov	(__divulong_PARM_2 + 3),a
      0000B5 EE               [12]  410 	mov	a,r6
      0000B6 13               [12]  411 	rrc	a
      0000B7 F5 4E            [12]  412 	mov	(__divulong_PARM_2 + 2),a
      0000B9 ED               [12]  413 	mov	a,r5
      0000BA 13               [12]  414 	rrc	a
      0000BB F5 4D            [12]  415 	mov	(__divulong_PARM_2 + 1),a
      0000BD EC               [12]  416 	mov	a,r4
      0000BE 13               [12]  417 	rrc	a
      0000BF F5 4C            [12]  418 	mov	__divulong_PARM_2,a
      0000C1 90 70 80         [24]  419 	mov	dptr,#0x7080
      0000C4 E4               [12]  420 	clr	a
      0000C5 F5 F0            [12]  421 	mov	b,a
      0000C7 12 02 12         [24]  422 	lcall	__divulong
      0000CA AC 82            [24]  423 	mov	r4,dpl
      0000CC C3               [12]  424 	clr	c
      0000CD E4               [12]  425 	clr	a
      0000CE 9C               [12]  426 	subb	a,r4
      0000CF FC               [12]  427 	mov	r4,a
      0000D0 8C 8B            [24]  428 	mov	_TL1,r4
      0000D2 8C 8D            [24]  429 	mov	_TH1,r4
                                    430 ;	src/components/ttl.c:18: TR1 = EA = ES = 1;
                                    431 ;	assignBit
      0000D4 D2 AC            [12]  432 	setb	_ES
                                    433 ;	assignBit
      0000D6 A2 AC            [12]  434 	mov	c,_ES
      0000D8 92 AF            [24]  435 	mov	_EA,c
                                    436 ;	assignBit
      0000DA A2 AF            [12]  437 	mov	c,_EA
      0000DC 92 8E            [24]  438 	mov	_TR1,c
                                    439 ;	src/components/ttl.c:19: }
      0000DE 22               [24]  440 	ret
                                    441 ;------------------------------------------------------------
                                    442 ;Allocation info for local variables in function 'SerialEnd'
                                    443 ;------------------------------------------------------------
                                    444 ;	src/components/ttl.c:22: void SerialEnd() {
                                    445 ;	-----------------------------------------
                                    446 ;	 function SerialEnd
                                    447 ;	-----------------------------------------
      0000DF                        448 _SerialEnd:
                                    449 ;	src/components/ttl.c:24: EA = ES = 0;
                                    450 ;	assignBit
      0000DF C2 AC            [12]  451 	clr	_ES
                                    452 ;	assignBit
      0000E1 A2 AC            [12]  453 	mov	c,_ES
      0000E3 92 AF            [24]  454 	mov	_EA,c
                                    455 ;	src/components/ttl.c:25: }
      0000E5 22               [24]  456 	ret
                                    457 ;------------------------------------------------------------
                                    458 ;Allocation info for local variables in function 'SerialSetTimeout'
                                    459 ;------------------------------------------------------------
                                    460 ;t                         Allocated to registers r4 r5 r6 r7 
                                    461 ;------------------------------------------------------------
                                    462 ;	src/components/ttl.c:28: void SerialSetTimeout(uint32_t t) {
                                    463 ;	-----------------------------------------
                                    464 ;	 function SerialSetTimeout
                                    465 ;	-----------------------------------------
      0000E6                        466 _SerialSetTimeout:
      0000E6 AC 82            [24]  467 	mov	r4,dpl
      0000E8 AD 83            [24]  468 	mov	r5,dph
                                    469 ;	src/components/ttl.c:30: TMOD = 0x01;
      0000EA 75 89 01         [24]  470 	mov	_TMOD,#0x01
                                    471 ;	src/components/ttl.c:32: TH0 = (t >> 8) & 0xff;
      0000ED 8D 8C            [24]  472 	mov	_TH0,r5
                                    473 ;	src/components/ttl.c:33: TL0 = t & 0xff;
      0000EF 8C 8A            [24]  474 	mov	_TL0,r4
                                    475 ;	src/components/ttl.c:35: TR0 = EA = ET0 = 1;
                                    476 ;	assignBit
      0000F1 D2 A9            [12]  477 	setb	_ET0
                                    478 ;	assignBit
      0000F3 A2 A9            [12]  479 	mov	c,_ET0
      0000F5 92 AF            [24]  480 	mov	_EA,c
                                    481 ;	assignBit
      0000F7 A2 AF            [12]  482 	mov	c,_EA
      0000F9 92 8C            [24]  483 	mov	_TR0,c
                                    484 ;	src/components/ttl.c:36: }
      0000FB 22               [24]  485 	ret
                                    486 ;------------------------------------------------------------
                                    487 ;Allocation info for local variables in function 'SerialFlush'
                                    488 ;------------------------------------------------------------
                                    489 ;	src/components/ttl.c:39: void SerialFlush() {
                                    490 ;	-----------------------------------------
                                    491 ;	 function SerialFlush
                                    492 ;	-----------------------------------------
      0000FC                        493 _SerialFlush:
                                    494 ;	src/components/ttl.c:41: while (!TI) {
      0000FC                        495 00101$:
                                    496 ;	src/components/ttl.c:45: TI = 0;
                                    497 ;	assignBit
      0000FC 10 99 02         [24]  498 	jbc	_TI,00114$
      0000FF 80 FB            [24]  499 	sjmp	00101$
      000101                        500 00114$:
                                    501 ;	src/components/ttl.c:46: }
      000101 22               [24]  502 	ret
                                    503 ;------------------------------------------------------------
                                    504 ;Allocation info for local variables in function 'SerialWrite'
                                    505 ;------------------------------------------------------------
                                    506 ;c                         Allocated to registers r7 
                                    507 ;------------------------------------------------------------
                                    508 ;	src/components/ttl.c:49: void SerialWrite(uint8_t c) {
                                    509 ;	-----------------------------------------
                                    510 ;	 function SerialWrite
                                    511 ;	-----------------------------------------
      000102                        512 _SerialWrite:
      000102 AF 82            [24]  513 	mov	r7,dpl
                                    514 ;	src/components/ttl.c:51: ES = 0;
                                    515 ;	assignBit
      000104 C2 AC            [12]  516 	clr	_ES
                                    517 ;	src/components/ttl.c:53: SBUF = c;
      000106 8F 99            [24]  518 	mov	_SBUF,r7
                                    519 ;	src/components/ttl.c:55: while (!TI) {
      000108                        520 00101$:
                                    521 ;	src/components/ttl.c:59: TI = 0;
                                    522 ;	assignBit
      000108 10 99 02         [24]  523 	jbc	_TI,00114$
      00010B 80 FB            [24]  524 	sjmp	00101$
      00010D                        525 00114$:
                                    526 ;	src/components/ttl.c:61: ES = !TI;
      00010D A2 99            [12]  527 	mov	c,_TI
      00010F B3               [12]  528 	cpl	c
      000110 92 AC            [24]  529 	mov	_ES,c
                                    530 ;	src/components/ttl.c:62: }
      000112 22               [24]  531 	ret
                                    532 ;------------------------------------------------------------
                                    533 ;Allocation info for local variables in function 'SerialPrint'
                                    534 ;------------------------------------------------------------
                                    535 ;s                         Allocated to registers 
                                    536 ;------------------------------------------------------------
                                    537 ;	src/components/ttl.c:65: void SerialPrint(char* s) {
                                    538 ;	-----------------------------------------
                                    539 ;	 function SerialPrint
                                    540 ;	-----------------------------------------
      000113                        541 _SerialPrint:
      000113 AD 82            [24]  542 	mov	r5,dpl
      000115 AE 83            [24]  543 	mov	r6,dph
      000117 AF F0            [24]  544 	mov	r7,b
                                    545 ;	src/components/ttl.c:67: while (*s) {
      000119                        546 00101$:
      000119 8D 82            [24]  547 	mov	dpl,r5
      00011B 8E 83            [24]  548 	mov	dph,r6
      00011D 8F F0            [24]  549 	mov	b,r7
      00011F 12 0A B2         [24]  550 	lcall	__gptrget
      000122 FC               [12]  551 	mov	r4,a
      000123 60 18            [24]  552 	jz	00104$
                                    553 ;	src/components/ttl.c:68: SerialWrite(*s++);
      000125 8C 82            [24]  554 	mov	dpl,r4
      000127 0D               [12]  555 	inc	r5
      000128 BD 00 01         [24]  556 	cjne	r5,#0x00,00116$
      00012B 0E               [12]  557 	inc	r6
      00012C                        558 00116$:
      00012C C0 07            [24]  559 	push	ar7
      00012E C0 06            [24]  560 	push	ar6
      000130 C0 05            [24]  561 	push	ar5
      000132 12 01 02         [24]  562 	lcall	_SerialWrite
      000135 D0 05            [24]  563 	pop	ar5
      000137 D0 06            [24]  564 	pop	ar6
      000139 D0 07            [24]  565 	pop	ar7
      00013B 80 DC            [24]  566 	sjmp	00101$
      00013D                        567 00104$:
                                    568 ;	src/components/ttl.c:70: }
      00013D 22               [24]  569 	ret
                                    570 ;------------------------------------------------------------
                                    571 ;Allocation info for local variables in function 'SerialPrintln'
                                    572 ;------------------------------------------------------------
                                    573 ;s                         Allocated to registers r5 r6 r7 
                                    574 ;------------------------------------------------------------
                                    575 ;	src/components/ttl.c:73: void SerialPrintln(char* s) {
                                    576 ;	-----------------------------------------
                                    577 ;	 function SerialPrintln
                                    578 ;	-----------------------------------------
      00013E                        579 _SerialPrintln:
                                    580 ;	src/components/ttl.c:75: SerialPrint(s);
      00013E 12 01 13         [24]  581 	lcall	_SerialPrint
                                    582 ;	src/components/ttl.c:76: SerialPrint("\r\n");
      000141 90 0A D2         [24]  583 	mov	dptr,#___str_0
      000144 75 F0 80         [24]  584 	mov	b,#0x80
                                    585 ;	src/components/ttl.c:77: }
      000147 02 01 13         [24]  586 	ljmp	_SerialPrint
                                    587 ;------------------------------------------------------------
                                    588 ;Allocation info for local variables in function 'SerialRead'
                                    589 ;------------------------------------------------------------
                                    590 ;	src/components/ttl.c:80: char SerialRead() {
                                    591 ;	-----------------------------------------
                                    592 ;	 function SerialRead
                                    593 ;	-----------------------------------------
      00014A                        594 _SerialRead:
                                    595 ;	src/components/ttl.c:82: while (!RI) {
      00014A                        596 00101$:
                                    597 ;	src/components/ttl.c:86: RI = 0;
                                    598 ;	assignBit
      00014A 10 98 02         [24]  599 	jbc	_RI,00114$
      00014D 80 FB            [24]  600 	sjmp	00101$
      00014F                        601 00114$:
                                    602 ;	src/components/ttl.c:88: return SBUF;
      00014F 85 99 82         [24]  603 	mov	dpl,_SBUF
                                    604 ;	src/components/ttl.c:89: }
      000152 22               [24]  605 	ret
                                    606 ;------------------------------------------------------------
                                    607 ;Allocation info for local variables in function 'SerialAvailable'
                                    608 ;------------------------------------------------------------
                                    609 ;	src/components/ttl.c:92: uint8_t SerialAvailable() {
                                    610 ;	-----------------------------------------
                                    611 ;	 function SerialAvailable
                                    612 ;	-----------------------------------------
      000153                        613 _SerialAvailable:
                                    614 ;	src/components/ttl.c:94: return RI;
      000153 A2 98            [12]  615 	mov	c,_RI
      000155 E4               [12]  616 	clr	a
      000156 33               [12]  617 	rlc	a
      000157 F5 82            [12]  618 	mov	dpl,a
                                    619 ;	src/components/ttl.c:95: }
      000159 22               [24]  620 	ret
                                    621 ;------------------------------------------------------------
                                    622 ;Allocation info for local variables in function 'putchar'
                                    623 ;------------------------------------------------------------
                                    624 ;c                         Allocated to registers r7 
                                    625 ;------------------------------------------------------------
                                    626 ;	src/components/ttl.c:98: uint8_t putchar(uint8_t c) {
                                    627 ;	-----------------------------------------
                                    628 ;	 function putchar
                                    629 ;	-----------------------------------------
      00015A                        630 _putchar:
                                    631 ;	src/components/ttl.c:100: SerialWrite(c);
      00015A AF 82            [24]  632 	mov  r7,dpl
      00015C C0 07            [24]  633 	push	ar7
      00015E 12 01 02         [24]  634 	lcall	_SerialWrite
      000161 D0 07            [24]  635 	pop	ar7
                                    636 ;	src/components/ttl.c:101: return c;
      000163 8F 82            [24]  637 	mov	dpl,r7
                                    638 ;	src/components/ttl.c:102: }
      000165 22               [24]  639 	ret
                                    640 ;------------------------------------------------------------
                                    641 ;Allocation info for local variables in function 'main'
                                    642 ;------------------------------------------------------------
                                    643 ;	inc/51duino.h:14: void main() {
                                    644 ;	-----------------------------------------
                                    645 ;	 function main
                                    646 ;	-----------------------------------------
      000166                        647 _main:
                                    648 ;	inc/51duino.h:16: P0 = P1 = P2 = P3 = 0;
      000166 75 B0 00         [24]  649 	mov	_P3,#0x00
      000169 75 A0 00         [24]  650 	mov	_P2,#0x00
      00016C 75 90 00         [24]  651 	mov	_P1,#0x00
      00016F 75 80 00         [24]  652 	mov	_P0,#0x00
                                    653 ;	inc/51duino.h:18: P30 = P31 = 1;
                                    654 ;	assignBit
      000172 D2 B1            [12]  655 	setb	_P31
                                    656 ;	assignBit
      000174 A2 B1            [12]  657 	mov	c,_P31
      000176 92 B0            [24]  658 	mov	_P30,c
                                    659 ;	inc/51duino.h:20: setup();
      000178 12 01 80         [24]  660 	lcall	_setup
      00017B                        661 00102$:
                                    662 ;	inc/51duino.h:23: loop();
      00017B 12 01 9D         [24]  663 	lcall	_loop
                                    664 ;	inc/51duino.h:25: }
      00017E 80 FB            [24]  665 	sjmp	00102$
                                    666 ;------------------------------------------------------------
                                    667 ;Allocation info for local variables in function 'setup'
                                    668 ;------------------------------------------------------------
                                    669 ;	./src/main.c:3: void setup() {
                                    670 ;	-----------------------------------------
                                    671 ;	 function setup
                                    672 ;	-----------------------------------------
      000180                        673 _setup:
                                    674 ;	./src/main.c:4: Serial.begin(19200);
      000180 AE 08            [24]  675 	mov	r6,(_Serial + 0)
      000182 AF 09            [24]  676 	mov	r7,(_Serial + 1)
      000184 C0 07            [24]  677 	push	ar7
      000186 C0 06            [24]  678 	push	ar6
      000188 12 01 8D         [24]  679 	lcall	00103$
      00018B 80 0B            [24]  680 	sjmp	00104$
      00018D                        681 00103$:
      00018D C0 06            [24]  682 	push	ar6
      00018F C0 07            [24]  683 	push	ar7
      000191 90 4B 00         [24]  684 	mov	dptr,#0x4b00
      000194 E4               [12]  685 	clr	a
      000195 F5 F0            [12]  686 	mov	b,a
      000197 22               [24]  687 	ret
      000198                        688 00104$:
      000198 D0 06            [24]  689 	pop	ar6
      00019A D0 07            [24]  690 	pop	ar7
                                    691 ;	./src/main.c:5: }
      00019C 22               [24]  692 	ret
                                    693 ;------------------------------------------------------------
                                    694 ;Allocation info for local variables in function 'loop'
                                    695 ;------------------------------------------------------------
                                    696 ;	./src/main.c:7: void loop() {
                                    697 ;	-----------------------------------------
                                    698 ;	 function loop
                                    699 ;	-----------------------------------------
      00019D                        700 _loop:
                                    701 ;	./src/main.c:8: Serial.print("print\r\n");
      00019D AE 10            [24]  702 	mov	r6,((_Serial + 0x0008) + 0)
      00019F AF 11            [24]  703 	mov	r7,((_Serial + 0x0008) + 1)
      0001A1 C0 07            [24]  704 	push	ar7
      0001A3 C0 06            [24]  705 	push	ar6
      0001A5 12 01 AA         [24]  706 	lcall	00103$
      0001A8 80 0B            [24]  707 	sjmp	00104$
      0001AA                        708 00103$:
      0001AA C0 06            [24]  709 	push	ar6
      0001AC C0 07            [24]  710 	push	ar7
      0001AE 90 0A D5         [24]  711 	mov	dptr,#___str_1
      0001B1 75 F0 80         [24]  712 	mov	b,#0x80
      0001B4 22               [24]  713 	ret
      0001B5                        714 00104$:
      0001B5 D0 06            [24]  715 	pop	ar6
      0001B7 D0 07            [24]  716 	pop	ar7
                                    717 ;	./src/main.c:9: Serial.printf("printf: %d\r\n", 123);
      0001B9 AE 14            [24]  718 	mov	r6,((_Serial + 0x000c) + 0)
      0001BB AF 15            [24]  719 	mov	r7,((_Serial + 0x000c) + 1)
      0001BD C0 07            [24]  720 	push	ar7
      0001BF C0 06            [24]  721 	push	ar6
      0001C1 74 7B            [12]  722 	mov	a,#0x7b
      0001C3 C0 E0            [24]  723 	push	acc
      0001C5 E4               [12]  724 	clr	a
      0001C6 C0 E0            [24]  725 	push	acc
      0001C8 74 DD            [12]  726 	mov	a,#___str_2
      0001CA C0 E0            [24]  727 	push	acc
      0001CC 74 0A            [12]  728 	mov	a,#(___str_2 >> 8)
      0001CE C0 E0            [24]  729 	push	acc
      0001D0 74 80            [12]  730 	mov	a,#0x80
      0001D2 C0 E0            [24]  731 	push	acc
      0001D4 8E 82            [24]  732 	mov	dpl,r6
      0001D6 8F 83            [24]  733 	mov	dph,r7
      0001D8 12 00 06         [24]  734 	lcall	__sdcc_call_dptr
      0001DB E5 81            [12]  735 	mov	a,sp
      0001DD 24 FB            [12]  736 	add	a,#0xfb
      0001DF F5 81            [12]  737 	mov	sp,a
      0001E1 D0 06            [24]  738 	pop	ar6
      0001E3 D0 07            [24]  739 	pop	ar7
                                    740 ;	./src/main.c:10: Serial.println("println");
      0001E5 AE 12            [24]  741 	mov	r6,((_Serial + 0x000a) + 0)
      0001E7 AF 13            [24]  742 	mov	r7,((_Serial + 0x000a) + 1)
      0001E9 C0 07            [24]  743 	push	ar7
      0001EB C0 06            [24]  744 	push	ar6
      0001ED 12 01 F2         [24]  745 	lcall	00105$
      0001F0 80 0B            [24]  746 	sjmp	00106$
      0001F2                        747 00105$:
      0001F2 C0 06            [24]  748 	push	ar6
      0001F4 C0 07            [24]  749 	push	ar7
      0001F6 90 0A EA         [24]  750 	mov	dptr,#___str_3
      0001F9 75 F0 80         [24]  751 	mov	b,#0x80
      0001FC 22               [24]  752 	ret
      0001FD                        753 00106$:
      0001FD D0 06            [24]  754 	pop	ar6
      0001FF D0 07            [24]  755 	pop	ar7
                                    756 ;	./src/main.c:11: delay(1000);
      000201 90 03 E8         [24]  757 	mov	dptr,#0x03e8
      000204 E4               [12]  758 	clr	a
      000205 F5 F0            [12]  759 	mov	b,a
      000207 7C 00            [12]  760 	mov	r4,#0x00
      000209 7D 00            [12]  761 	mov	r5,#0x00
      00020B 7E 00            [12]  762 	mov	r6,#0x00
      00020D 7F 00            [12]  763 	mov	r7,#0x00
                                    764 ;	./src/main.c:12: }
      00020F 02 02 77         [24]  765 	ljmp	_delay
                                    766 	.area CSEG    (CODE)
                                    767 	.area CONST   (CODE)
                                    768 	.area CONST   (CODE)
      000AD2                        769 ___str_0:
      000AD2 0D                     770 	.db 0x0d
      000AD3 0A                     771 	.db 0x0a
      000AD4 00                     772 	.db 0x00
                                    773 	.area CSEG    (CODE)
                                    774 	.area CONST   (CODE)
      000AD5                        775 ___str_1:
      000AD5 70 72 69 6E 74         776 	.ascii "print"
      000ADA 0D                     777 	.db 0x0d
      000ADB 0A                     778 	.db 0x0a
      000ADC 00                     779 	.db 0x00
                                    780 	.area CSEG    (CODE)
                                    781 	.area CONST   (CODE)
      000ADD                        782 ___str_2:
      000ADD 70 72 69 6E 74 66 3A   783 	.ascii "printf: %d"
             20 25 64
      000AE7 0D                     784 	.db 0x0d
      000AE8 0A                     785 	.db 0x0a
      000AE9 00                     786 	.db 0x00
                                    787 	.area CSEG    (CODE)
                                    788 	.area CONST   (CODE)
      000AEA                        789 ___str_3:
      000AEA 70 72 69 6E 74 6C 6E   790 	.ascii "println"
      000AF1 00                     791 	.db 0x00
                                    792 	.area CSEG    (CODE)
                                    793 	.area XINIT   (CODE)
                                    794 	.area CABS    (ABS,CODE)
