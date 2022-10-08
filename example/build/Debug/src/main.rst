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
                           000080   144 G$P0$0_0$0 == 0x0080
                           000080   145 _P0	=	0x0080
                           000090   146 G$P1$0_0$0 == 0x0090
                           000090   147 _P1	=	0x0090
                           0000A0   148 G$P2$0_0$0 == 0x00a0
                           0000A0   149 _P2	=	0x00a0
                           0000B0   150 G$P3$0_0$0 == 0x00b0
                           0000B0   151 _P3	=	0x00b0
                           0000D0   152 G$PSW$0_0$0 == 0x00d0
                           0000D0   153 _PSW	=	0x00d0
                           0000E0   154 G$ACC$0_0$0 == 0x00e0
                           0000E0   155 _ACC	=	0x00e0
                           0000F0   156 G$B$0_0$0 == 0x00f0
                           0000F0   157 _B	=	0x00f0
                           000081   158 G$SP$0_0$0 == 0x0081
                           000081   159 _SP	=	0x0081
                           000082   160 G$DPL$0_0$0 == 0x0082
                           000082   161 _DPL	=	0x0082
                           000083   162 G$DPH$0_0$0 == 0x0083
                           000083   163 _DPH	=	0x0083
                           000087   164 G$PCON$0_0$0 == 0x0087
                           000087   165 _PCON	=	0x0087
                           000088   166 G$TCON$0_0$0 == 0x0088
                           000088   167 _TCON	=	0x0088
                           000089   168 G$TMOD$0_0$0 == 0x0089
                           000089   169 _TMOD	=	0x0089
                           00008A   170 G$TL0$0_0$0 == 0x008a
                           00008A   171 _TL0	=	0x008a
                           00008B   172 G$TL1$0_0$0 == 0x008b
                           00008B   173 _TL1	=	0x008b
                           00008C   174 G$TH0$0_0$0 == 0x008c
                           00008C   175 _TH0	=	0x008c
                           00008D   176 G$TH1$0_0$0 == 0x008d
                           00008D   177 _TH1	=	0x008d
                           0000A8   178 G$IE$0_0$0 == 0x00a8
                           0000A8   179 _IE	=	0x00a8
                           0000B8   180 G$IP$0_0$0 == 0x00b8
                           0000B8   181 _IP	=	0x00b8
                           000098   182 G$SCON$0_0$0 == 0x0098
                           000098   183 _SCON	=	0x0098
                           000099   184 G$SBUF$0_0$0 == 0x0099
                           000099   185 _SBUF	=	0x0099
                           0000C8   186 G$T2CON$0_0$0 == 0x00c8
                           0000C8   187 _T2CON	=	0x00c8
                           0000CA   188 G$RCAP2L$0_0$0 == 0x00ca
                           0000CA   189 _RCAP2L	=	0x00ca
                           0000CB   190 G$RCAP2H$0_0$0 == 0x00cb
                           0000CB   191 _RCAP2H	=	0x00cb
                           0000CC   192 G$TL2$0_0$0 == 0x00cc
                           0000CC   193 _TL2	=	0x00cc
                           0000CD   194 G$TH2$0_0$0 == 0x00cd
                           0000CD   195 _TH2	=	0x00cd
                                    196 ;--------------------------------------------------------
                                    197 ; special function bits
                                    198 ;--------------------------------------------------------
                                    199 	.area RSEG    (ABS,DATA)
      000000                        200 	.org 0x0000
                           000080   201 G$P00$0_0$0 == 0x0080
                           000080   202 _P00	=	0x0080
                           000081   203 G$P01$0_0$0 == 0x0081
                           000081   204 _P01	=	0x0081
                           000082   205 G$P02$0_0$0 == 0x0082
                           000082   206 _P02	=	0x0082
                           000083   207 G$P03$0_0$0 == 0x0083
                           000083   208 _P03	=	0x0083
                           000084   209 G$P04$0_0$0 == 0x0084
                           000084   210 _P04	=	0x0084
                           000085   211 G$P05$0_0$0 == 0x0085
                           000085   212 _P05	=	0x0085
                           000086   213 G$P06$0_0$0 == 0x0086
                           000086   214 _P06	=	0x0086
                           000087   215 G$P07$0_0$0 == 0x0087
                           000087   216 _P07	=	0x0087
                           000090   217 G$P10$0_0$0 == 0x0090
                           000090   218 _P10	=	0x0090
                           000091   219 G$P11$0_0$0 == 0x0091
                           000091   220 _P11	=	0x0091
                           000092   221 G$P12$0_0$0 == 0x0092
                           000092   222 _P12	=	0x0092
                           000093   223 G$P13$0_0$0 == 0x0093
                           000093   224 _P13	=	0x0093
                           000094   225 G$P14$0_0$0 == 0x0094
                           000094   226 _P14	=	0x0094
                           000095   227 G$P15$0_0$0 == 0x0095
                           000095   228 _P15	=	0x0095
                           000096   229 G$P16$0_0$0 == 0x0096
                           000096   230 _P16	=	0x0096
                           000097   231 G$P17$0_0$0 == 0x0097
                           000097   232 _P17	=	0x0097
                           0000A0   233 G$P20$0_0$0 == 0x00a0
                           0000A0   234 _P20	=	0x00a0
                           0000A1   235 G$P21$0_0$0 == 0x00a1
                           0000A1   236 _P21	=	0x00a1
                           0000A2   237 G$P22$0_0$0 == 0x00a2
                           0000A2   238 _P22	=	0x00a2
                           0000A3   239 G$P23$0_0$0 == 0x00a3
                           0000A3   240 _P23	=	0x00a3
                           0000A4   241 G$P24$0_0$0 == 0x00a4
                           0000A4   242 _P24	=	0x00a4
                           0000A5   243 G$P25$0_0$0 == 0x00a5
                           0000A5   244 _P25	=	0x00a5
                           0000A6   245 G$P26$0_0$0 == 0x00a6
                           0000A6   246 _P26	=	0x00a6
                           0000A7   247 G$P27$0_0$0 == 0x00a7
                           0000A7   248 _P27	=	0x00a7
                           0000B0   249 G$P30$0_0$0 == 0x00b0
                           0000B0   250 _P30	=	0x00b0
                           0000B1   251 G$P31$0_0$0 == 0x00b1
                           0000B1   252 _P31	=	0x00b1
                           0000B2   253 G$P32$0_0$0 == 0x00b2
                           0000B2   254 _P32	=	0x00b2
                           0000B3   255 G$P33$0_0$0 == 0x00b3
                           0000B3   256 _P33	=	0x00b3
                           0000B4   257 G$P34$0_0$0 == 0x00b4
                           0000B4   258 _P34	=	0x00b4
                           0000B5   259 G$P35$0_0$0 == 0x00b5
                           0000B5   260 _P35	=	0x00b5
                           0000B6   261 G$P36$0_0$0 == 0x00b6
                           0000B6   262 _P36	=	0x00b6
                           0000B7   263 G$P37$0_0$0 == 0x00b7
                           0000B7   264 _P37	=	0x00b7
                           0000D7   265 G$CY$0_0$0 == 0x00d7
                           0000D7   266 _CY	=	0x00d7
                           0000D6   267 G$AC$0_0$0 == 0x00d6
                           0000D6   268 _AC	=	0x00d6
                           0000D5   269 G$F0$0_0$0 == 0x00d5
                           0000D5   270 _F0	=	0x00d5
                           0000D4   271 G$RS1$0_0$0 == 0x00d4
                           0000D4   272 _RS1	=	0x00d4
                           0000D3   273 G$RS0$0_0$0 == 0x00d3
                           0000D3   274 _RS0	=	0x00d3
                           0000D2   275 G$OV$0_0$0 == 0x00d2
                           0000D2   276 _OV	=	0x00d2
                           0000D0   277 G$P$0_0$0 == 0x00d0
                           0000D0   278 _P	=	0x00d0
                           00008F   279 G$TF1$0_0$0 == 0x008f
                           00008F   280 _TF1	=	0x008f
                           00008E   281 G$TR1$0_0$0 == 0x008e
                           00008E   282 _TR1	=	0x008e
                           00008D   283 G$TF0$0_0$0 == 0x008d
                           00008D   284 _TF0	=	0x008d
                           00008C   285 G$TR0$0_0$0 == 0x008c
                           00008C   286 _TR0	=	0x008c
                           00008B   287 G$IE1$0_0$0 == 0x008b
                           00008B   288 _IE1	=	0x008b
                           00008A   289 G$IT1$0_0$0 == 0x008a
                           00008A   290 _IT1	=	0x008a
                           000089   291 G$IE0$0_0$0 == 0x0089
                           000089   292 _IE0	=	0x0089
                           000088   293 G$IT0$0_0$0 == 0x0088
                           000088   294 _IT0	=	0x0088
                           0000AF   295 G$EA$0_0$0 == 0x00af
                           0000AF   296 _EA	=	0x00af
                           0000AD   297 G$ET2$0_0$0 == 0x00ad
                           0000AD   298 _ET2	=	0x00ad
                           0000AC   299 G$ES$0_0$0 == 0x00ac
                           0000AC   300 _ES	=	0x00ac
                           0000AB   301 G$ET1$0_0$0 == 0x00ab
                           0000AB   302 _ET1	=	0x00ab
                           0000AA   303 G$EX1$0_0$0 == 0x00aa
                           0000AA   304 _EX1	=	0x00aa
                           0000A9   305 G$ET0$0_0$0 == 0x00a9
                           0000A9   306 _ET0	=	0x00a9
                           0000A8   307 G$EX0$0_0$0 == 0x00a8
                           0000A8   308 _EX0	=	0x00a8
                           0000BD   309 G$PT2$0_0$0 == 0x00bd
                           0000BD   310 _PT2	=	0x00bd
                           0000BC   311 G$PS$0_0$0 == 0x00bc
                           0000BC   312 _PS	=	0x00bc
                           0000BB   313 G$PT1$0_0$0 == 0x00bb
                           0000BB   314 _PT1	=	0x00bb
                           0000BA   315 G$PX1$0_0$0 == 0x00ba
                           0000BA   316 _PX1	=	0x00ba
                           0000B9   317 G$PT0$0_0$0 == 0x00b9
                           0000B9   318 _PT0	=	0x00b9
                           0000B8   319 G$PX0$0_0$0 == 0x00b8
                           0000B8   320 _PX0	=	0x00b8
                           0000B7   321 G$RD$0_0$0 == 0x00b7
                           0000B7   322 _RD	=	0x00b7
                           0000B6   323 G$WR$0_0$0 == 0x00b6
                           0000B6   324 _WR	=	0x00b6
                           0000B5   325 G$T1$0_0$0 == 0x00b5
                           0000B5   326 _T1	=	0x00b5
                           0000B4   327 G$T0$0_0$0 == 0x00b4
                           0000B4   328 _T0	=	0x00b4
                           0000B3   329 G$INT1$0_0$0 == 0x00b3
                           0000B3   330 _INT1	=	0x00b3
                           0000B2   331 G$INT0$0_0$0 == 0x00b2
                           0000B2   332 _INT0	=	0x00b2
                           0000B1   333 G$TXD$0_0$0 == 0x00b1
                           0000B1   334 _TXD	=	0x00b1
                           0000B0   335 G$RXD$0_0$0 == 0x00b0
                           0000B0   336 _RXD	=	0x00b0
                           00009F   337 G$SM0$0_0$0 == 0x009f
                           00009F   338 _SM0	=	0x009f
                           00009E   339 G$SM1$0_0$0 == 0x009e
                           00009E   340 _SM1	=	0x009e
                           00009D   341 G$SM2$0_0$0 == 0x009d
                           00009D   342 _SM2	=	0x009d
                           00009C   343 G$REN$0_0$0 == 0x009c
                           00009C   344 _REN	=	0x009c
                           00009B   345 G$TB8$0_0$0 == 0x009b
                           00009B   346 _TB8	=	0x009b
                           00009A   347 G$RB8$0_0$0 == 0x009a
                           00009A   348 _RB8	=	0x009a
                           000099   349 G$TI$0_0$0 == 0x0099
                           000099   350 _TI	=	0x0099
                           000098   351 G$RI$0_0$0 == 0x0098
                           000098   352 _RI	=	0x0098
                           000091   353 G$T2EX$0_0$0 == 0x0091
                           000091   354 _T2EX	=	0x0091
                           000090   355 G$T2$0_0$0 == 0x0090
                           000090   356 _T2	=	0x0090
                           0000CF   357 G$TF2$0_0$0 == 0x00cf
                           0000CF   358 _TF2	=	0x00cf
                           0000CE   359 G$EXF2$0_0$0 == 0x00ce
                           0000CE   360 _EXF2	=	0x00ce
                           0000CD   361 G$RCLK$0_0$0 == 0x00cd
                           0000CD   362 _RCLK	=	0x00cd
                           0000CC   363 G$TCLK$0_0$0 == 0x00cc
                           0000CC   364 _TCLK	=	0x00cc
                           0000CB   365 G$EXEN2$0_0$0 == 0x00cb
                           0000CB   366 _EXEN2	=	0x00cb
                           0000CA   367 G$TR2$0_0$0 == 0x00ca
                           0000CA   368 _TR2	=	0x00ca
                           0000C9   369 G$C_T2$0_0$0 == 0x00c9
                           0000C9   370 _C_T2	=	0x00c9
                           0000C8   371 G$CP_RL2$0_0$0 == 0x00c8
                           0000C8   372 _CP_RL2	=	0x00c8
                                    373 ;--------------------------------------------------------
                                    374 ; overlayable register banks
                                    375 ;--------------------------------------------------------
                                    376 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        377 	.ds 8
                                    378 ;--------------------------------------------------------
                                    379 ; internal ram data
                                    380 ;--------------------------------------------------------
                                    381 	.area DSEG    (DATA)
                           000000   382 G$Serial$0_0$0==.
      000008                        383 _Serial::
      000008                        384 	.ds 20
                                    385 ;--------------------------------------------------------
                                    386 ; overlayable items in internal ram 
                                    387 ;--------------------------------------------------------
                                    388 	.area	OSEG    (OVR,DATA)
                                    389 	.area	OSEG    (OVR,DATA)
                                    390 ;--------------------------------------------------------
                                    391 ; Stack segment in internal ram 
                                    392 ;--------------------------------------------------------
                                    393 	.area	SSEG
      000056                        394 __start__stack:
      000056                        395 	.ds	1
                                    396 
                                    397 ;--------------------------------------------------------
                                    398 ; indirectly addressable internal ram data
                                    399 ;--------------------------------------------------------
                                    400 	.area ISEG    (DATA)
                                    401 ;--------------------------------------------------------
                                    402 ; absolute internal ram data
                                    403 ;--------------------------------------------------------
                                    404 	.area IABS    (ABS,DATA)
                                    405 	.area IABS    (ABS,DATA)
                                    406 ;--------------------------------------------------------
                                    407 ; bit data
                                    408 ;--------------------------------------------------------
                                    409 	.area BSEG    (BIT)
                                    410 ;--------------------------------------------------------
                                    411 ; paged external ram data
                                    412 ;--------------------------------------------------------
                                    413 	.area PSEG    (PAG,XDATA)
                                    414 ;--------------------------------------------------------
                                    415 ; external ram data
                                    416 ;--------------------------------------------------------
                                    417 	.area XSEG    (XDATA)
                                    418 ;--------------------------------------------------------
                                    419 ; absolute external ram data
                                    420 ;--------------------------------------------------------
                                    421 	.area XABS    (ABS,XDATA)
                                    422 ;--------------------------------------------------------
                                    423 ; external initialized ram data
                                    424 ;--------------------------------------------------------
                                    425 	.area XISEG   (XDATA)
                                    426 	.area HOME    (CODE)
                                    427 	.area GSINIT0 (CODE)
                                    428 	.area GSINIT1 (CODE)
                                    429 	.area GSINIT2 (CODE)
                                    430 	.area GSINIT3 (CODE)
                                    431 	.area GSINIT4 (CODE)
                                    432 	.area GSINIT5 (CODE)
                                    433 	.area GSINIT  (CODE)
                                    434 	.area GSFINAL (CODE)
                                    435 	.area CSEG    (CODE)
                                    436 ;--------------------------------------------------------
                                    437 ; interrupt vector 
                                    438 ;--------------------------------------------------------
                                    439 	.area HOME    (CODE)
      000000                        440 __interrupt_vect:
      000000 02 00 08         [24]  441 	ljmp	__sdcc_gsinit_startup
                                    442 ;--------------------------------------------------------
                                    443 ; global & static initialisations
                                    444 ;--------------------------------------------------------
                                    445 	.area HOME    (CODE)
                                    446 	.area GSINIT  (CODE)
                                    447 	.area GSFINAL (CODE)
                                    448 	.area GSINIT  (CODE)
                                    449 	.globl __sdcc_gsinit_startup
                                    450 	.globl __sdcc_program_startup
                                    451 	.globl __start__stack
                                    452 	.globl __mcs51_genXINIT
                                    453 	.globl __mcs51_genXRAMCLEAR
                                    454 	.globl __mcs51_genRAMCLEAR
                           000000   455 	C$ttl.h$44$1_0$58 ==.
                                    456 ;	inc/components/ttl.h:44: serial_t Serial = {
      000061 75 08 A0         [24]  457 	mov	(_Serial + 0),#_SerialBegin
      000064 75 09 00         [24]  458 	mov	(_Serial + 1),#(_SerialBegin >> 8)
      000067 75 0A E3         [24]  459 	mov	((_Serial + 0x0002) + 0),#_SerialSetTimeout
      00006A 75 0B 00         [24]  460 	mov	((_Serial + 0x0002) + 1),#(_SerialSetTimeout >> 8)
      00006D 75 0C F9         [24]  461 	mov	((_Serial + 0x0004) + 0),#_SerialFlush
      000070 75 0D 00         [24]  462 	mov	((_Serial + 0x0004) + 1),#(_SerialFlush >> 8)
      000073 75 0E DC         [24]  463 	mov	((_Serial + 0x0006) + 0),#_SerialEnd
      000076 75 0F 00         [24]  464 	mov	((_Serial + 0x0006) + 1),#(_SerialEnd >> 8)
      000079 75 10 10         [24]  465 	mov	((_Serial + 0x0008) + 0),#_SerialPrint
      00007C 75 11 01         [24]  466 	mov	((_Serial + 0x0008) + 1),#(_SerialPrint >> 8)
      00007F 75 12 3B         [24]  467 	mov	((_Serial + 0x000a) + 0),#_SerialPrintln
      000082 75 13 01         [24]  468 	mov	((_Serial + 0x000a) + 1),#(_SerialPrintln >> 8)
      000085 75 14 19         [24]  469 	mov	((_Serial + 0x000c) + 0),#_printf
      000088 75 15 03         [24]  470 	mov	((_Serial + 0x000c) + 1),#(_printf >> 8)
      00008B 75 16 FF         [24]  471 	mov	((_Serial + 0x000e) + 0),#_SerialWrite
      00008E 75 17 00         [24]  472 	mov	((_Serial + 0x000e) + 1),#(_SerialWrite >> 8)
      000091 75 18 48         [24]  473 	mov	((_Serial + 0x0010) + 0),#_SerialRead
      000094 75 19 01         [24]  474 	mov	((_Serial + 0x0010) + 1),#(_SerialRead >> 8)
      000097 75 1A 51         [24]  475 	mov	((_Serial + 0x0012) + 0),#_SerialAvailable
      00009A 75 1B 01         [24]  476 	mov	((_Serial + 0x0012) + 1),#(_SerialAvailable >> 8)
                                    477 	.area GSFINAL (CODE)
      00009D 02 00 03         [24]  478 	ljmp	__sdcc_program_startup
                                    479 ;--------------------------------------------------------
                                    480 ; Home
                                    481 ;--------------------------------------------------------
                                    482 	.area HOME    (CODE)
                                    483 	.area HOME    (CODE)
      000003                        484 __sdcc_program_startup:
      000003 02 01 64         [24]  485 	ljmp	_main
                                    486 ;	return from main will return to caller
                                    487 ;--------------------------------------------------------
                                    488 ; code
                                    489 ;--------------------------------------------------------
                                    490 	.area CSEG    (CODE)
                                    491 ;------------------------------------------------------------
                                    492 ;Allocation info for local variables in function 'SerialBegin'
                                    493 ;------------------------------------------------------------
                                    494 ;b                         Allocated to registers r6 r7 
                                    495 ;------------------------------------------------------------
                           000000   496 	G$SerialBegin$0$0 ==.
                           000000   497 	C$ttl.c$8$0_0$17 ==.
                                    498 ;	src/components/ttl.c:8: void SerialBegin(uint16_t b) {
                                    499 ;	-----------------------------------------
                                    500 ;	 function SerialBegin
                                    501 ;	-----------------------------------------
      0000A0                        502 _SerialBegin:
                           000007   503 	ar7 = 0x07
                           000006   504 	ar6 = 0x06
                           000005   505 	ar5 = 0x05
                           000004   506 	ar4 = 0x04
                           000003   507 	ar3 = 0x03
                           000002   508 	ar2 = 0x02
                           000001   509 	ar1 = 0x01
                           000000   510 	ar0 = 0x00
      0000A0 AE 82            [24]  511 	mov	r6,dpl
      0000A2 AF 83            [24]  512 	mov	r7,dph
                           000004   513 	C$ttl.c$10$1_0$17 ==.
                                    514 ;	src/components/ttl.c:10: PCON = 0x80;
      0000A4 75 87 80         [24]  515 	mov	_PCON,#0x80
                           000007   516 	C$ttl.c$12$1_0$17 ==.
                                    517 ;	src/components/ttl.c:12: SCON = 0x50;
      0000A7 75 98 50         [24]  518 	mov	_SCON,#0x50
                           00000A   519 	C$ttl.c$14$1_0$17 ==.
                                    520 ;	src/components/ttl.c:14: TMOD = 0x20;
      0000AA 75 89 20         [24]  521 	mov	_TMOD,#0x20
                           00000D   522 	C$ttl.c$16$1_0$17 ==.
                                    523 ;	src/components/ttl.c:16: TH1 = TL1 = -(CRYSTAL / 12 / 32 / (b / 2));
      0000AD EF               [12]  524 	mov	a,r7
      0000AE C3               [12]  525 	clr	c
      0000AF 13               [12]  526 	rrc	a
      0000B0 CE               [12]  527 	xch	a,r6
      0000B1 13               [12]  528 	rrc	a
      0000B2 CE               [12]  529 	xch	a,r6
      0000B3 FF               [12]  530 	mov	r7,a
      0000B4 8E 4C            [24]  531 	mov	__divslong_PARM_2,r6
      0000B6 8F 4D            [24]  532 	mov	(__divslong_PARM_2 + 1),r7
      0000B8 75 4E 00         [24]  533 	mov	(__divslong_PARM_2 + 2),#0x00
      0000BB 75 4F 00         [24]  534 	mov	(__divslong_PARM_2 + 3),#0x00
      0000BE 90 70 80         [24]  535 	mov	dptr,#0x7080
      0000C1 E4               [12]  536 	clr	a
      0000C2 F5 F0            [12]  537 	mov	b,a
      0000C4 12 02 69         [24]  538 	lcall	__divslong
      0000C7 AC 82            [24]  539 	mov	r4,dpl
      0000C9 C3               [12]  540 	clr	c
      0000CA E4               [12]  541 	clr	a
      0000CB 9C               [12]  542 	subb	a,r4
      0000CC FC               [12]  543 	mov	r4,a
      0000CD 8C 8B            [24]  544 	mov	_TL1,r4
      0000CF 8C 8D            [24]  545 	mov	_TH1,r4
                           000031   546 	C$ttl.c$18$1_0$17 ==.
                                    547 ;	src/components/ttl.c:18: TR1 = EA = ES = 1;
                                    548 ;	assignBit
      0000D1 D2 AC            [12]  549 	setb	_ES
                                    550 ;	assignBit
      0000D3 A2 AC            [12]  551 	mov	c,_ES
      0000D5 92 AF            [24]  552 	mov	_EA,c
                                    553 ;	assignBit
      0000D7 A2 AF            [12]  554 	mov	c,_EA
      0000D9 92 8E            [24]  555 	mov	_TR1,c
                           00003B   556 	C$ttl.c$19$1_0$17 ==.
                                    557 ;	src/components/ttl.c:19: }
                           00003B   558 	C$ttl.c$19$1_0$17 ==.
                           00003B   559 	XG$SerialBegin$0$0 ==.
      0000DB 22               [24]  560 	ret
                                    561 ;------------------------------------------------------------
                                    562 ;Allocation info for local variables in function 'SerialEnd'
                                    563 ;------------------------------------------------------------
                           00003C   564 	G$SerialEnd$0$0 ==.
                           00003C   565 	C$ttl.c$22$1_0$18 ==.
                                    566 ;	src/components/ttl.c:22: void SerialEnd() {
                                    567 ;	-----------------------------------------
                                    568 ;	 function SerialEnd
                                    569 ;	-----------------------------------------
      0000DC                        570 _SerialEnd:
                           00003C   571 	C$ttl.c$24$1_0$18 ==.
                                    572 ;	src/components/ttl.c:24: EA = ES = 0;
                                    573 ;	assignBit
      0000DC C2 AC            [12]  574 	clr	_ES
                                    575 ;	assignBit
      0000DE A2 AC            [12]  576 	mov	c,_ES
      0000E0 92 AF            [24]  577 	mov	_EA,c
                           000042   578 	C$ttl.c$25$1_0$18 ==.
                                    579 ;	src/components/ttl.c:25: }
                           000042   580 	C$ttl.c$25$1_0$18 ==.
                           000042   581 	XG$SerialEnd$0$0 ==.
      0000E2 22               [24]  582 	ret
                                    583 ;------------------------------------------------------------
                                    584 ;Allocation info for local variables in function 'SerialSetTimeout'
                                    585 ;------------------------------------------------------------
                                    586 ;t                         Allocated to registers r6 r7 
                                    587 ;------------------------------------------------------------
                           000043   588 	G$SerialSetTimeout$0$0 ==.
                           000043   589 	C$ttl.c$28$1_0$20 ==.
                                    590 ;	src/components/ttl.c:28: void SerialSetTimeout(uint16_t t) {
                                    591 ;	-----------------------------------------
                                    592 ;	 function SerialSetTimeout
                                    593 ;	-----------------------------------------
      0000E3                        594 _SerialSetTimeout:
      0000E3 AE 82            [24]  595 	mov	r6,dpl
      0000E5 AF 83            [24]  596 	mov	r7,dph
                           000047   597 	C$ttl.c$30$1_0$20 ==.
                                    598 ;	src/components/ttl.c:30: TMOD = 0x01;
      0000E7 75 89 01         [24]  599 	mov	_TMOD,#0x01
                           00004A   600 	C$ttl.c$32$1_0$20 ==.
                                    601 ;	src/components/ttl.c:32: TH0 = (t >> 8) & 0xff;
      0000EA 8F 8C            [24]  602 	mov	_TH0,r7
                           00004C   603 	C$ttl.c$33$1_0$20 ==.
                                    604 ;	src/components/ttl.c:33: TL0 = t & 0xff;
      0000EC 8E 8A            [24]  605 	mov	_TL0,r6
                           00004E   606 	C$ttl.c$35$1_0$20 ==.
                                    607 ;	src/components/ttl.c:35: TR0 = EA = ET0 = 1;
                                    608 ;	assignBit
      0000EE D2 A9            [12]  609 	setb	_ET0
                                    610 ;	assignBit
      0000F0 A2 A9            [12]  611 	mov	c,_ET0
      0000F2 92 AF            [24]  612 	mov	_EA,c
                                    613 ;	assignBit
      0000F4 A2 AF            [12]  614 	mov	c,_EA
      0000F6 92 8C            [24]  615 	mov	_TR0,c
                           000058   616 	C$ttl.c$36$1_0$20 ==.
                                    617 ;	src/components/ttl.c:36: }
                           000058   618 	C$ttl.c$36$1_0$20 ==.
                           000058   619 	XG$SerialSetTimeout$0$0 ==.
      0000F8 22               [24]  620 	ret
                                    621 ;------------------------------------------------------------
                                    622 ;Allocation info for local variables in function 'SerialFlush'
                                    623 ;------------------------------------------------------------
                           000059   624 	G$SerialFlush$0$0 ==.
                           000059   625 	C$ttl.c$39$1_0$21 ==.
                                    626 ;	src/components/ttl.c:39: void SerialFlush() {
                                    627 ;	-----------------------------------------
                                    628 ;	 function SerialFlush
                                    629 ;	-----------------------------------------
      0000F9                        630 _SerialFlush:
                           000059   631 	C$ttl.c$41$1_0$21 ==.
                                    632 ;	src/components/ttl.c:41: while (!TI) {
      0000F9                        633 00101$:
                           000059   634 	C$ttl.c$45$1_0$21 ==.
                                    635 ;	src/components/ttl.c:45: TI = 0;
                                    636 ;	assignBit
      0000F9 10 99 02         [24]  637 	jbc	_TI,00114$
      0000FC 80 FB            [24]  638 	sjmp	00101$
      0000FE                        639 00114$:
                           00005E   640 	C$ttl.c$46$1_0$21 ==.
                                    641 ;	src/components/ttl.c:46: }
                           00005E   642 	C$ttl.c$46$1_0$21 ==.
                           00005E   643 	XG$SerialFlush$0$0 ==.
      0000FE 22               [24]  644 	ret
                                    645 ;------------------------------------------------------------
                                    646 ;Allocation info for local variables in function 'SerialWrite'
                                    647 ;------------------------------------------------------------
                                    648 ;c                         Allocated to registers r7 
                                    649 ;------------------------------------------------------------
                           00005F   650 	G$SerialWrite$0$0 ==.
                           00005F   651 	C$ttl.c$49$1_0$24 ==.
                                    652 ;	src/components/ttl.c:49: void SerialWrite(uint8_t c) {
                                    653 ;	-----------------------------------------
                                    654 ;	 function SerialWrite
                                    655 ;	-----------------------------------------
      0000FF                        656 _SerialWrite:
      0000FF AF 82            [24]  657 	mov	r7,dpl
                           000061   658 	C$ttl.c$51$1_0$24 ==.
                                    659 ;	src/components/ttl.c:51: ES = 0;
                                    660 ;	assignBit
      000101 C2 AC            [12]  661 	clr	_ES
                           000063   662 	C$ttl.c$53$1_0$24 ==.
                                    663 ;	src/components/ttl.c:53: SBUF = c;
      000103 8F 99            [24]  664 	mov	_SBUF,r7
                           000065   665 	C$ttl.c$55$1_0$24 ==.
                                    666 ;	src/components/ttl.c:55: while (!TI) {
      000105                        667 00101$:
                           000065   668 	C$ttl.c$59$1_0$24 ==.
                                    669 ;	src/components/ttl.c:59: TI = 0;
                                    670 ;	assignBit
      000105 10 99 02         [24]  671 	jbc	_TI,00114$
      000108 80 FB            [24]  672 	sjmp	00101$
      00010A                        673 00114$:
                           00006A   674 	C$ttl.c$61$1_0$24 ==.
                                    675 ;	src/components/ttl.c:61: ES = !TI;
      00010A A2 99            [12]  676 	mov	c,_TI
      00010C B3               [12]  677 	cpl	c
      00010D 92 AC            [24]  678 	mov	_ES,c
                           00006F   679 	C$ttl.c$62$1_0$24 ==.
                                    680 ;	src/components/ttl.c:62: }
                           00006F   681 	C$ttl.c$62$1_0$24 ==.
                           00006F   682 	XG$SerialWrite$0$0 ==.
      00010F 22               [24]  683 	ret
                                    684 ;------------------------------------------------------------
                                    685 ;Allocation info for local variables in function 'SerialPrint'
                                    686 ;------------------------------------------------------------
                                    687 ;s                         Allocated to registers 
                                    688 ;------------------------------------------------------------
                           000070   689 	G$SerialPrint$0$0 ==.
                           000070   690 	C$ttl.c$65$1_0$27 ==.
                                    691 ;	src/components/ttl.c:65: void SerialPrint(char* s) {
                                    692 ;	-----------------------------------------
                                    693 ;	 function SerialPrint
                                    694 ;	-----------------------------------------
      000110                        695 _SerialPrint:
      000110 AD 82            [24]  696 	mov	r5,dpl
      000112 AE 83            [24]  697 	mov	r6,dph
      000114 AF F0            [24]  698 	mov	r7,b
                           000076   699 	C$ttl.c$67$1_0$27 ==.
                                    700 ;	src/components/ttl.c:67: while (*s) {
      000116                        701 00101$:
      000116 8D 82            [24]  702 	mov	dpl,r5
      000118 8E 83            [24]  703 	mov	dph,r6
      00011A 8F F0            [24]  704 	mov	b,r7
      00011C 12 0A 54         [24]  705 	lcall	__gptrget
      00011F FC               [12]  706 	mov	r4,a
      000120 60 18            [24]  707 	jz	00104$
                           000082   708 	C$ttl.c$68$2_0$28 ==.
                                    709 ;	src/components/ttl.c:68: SerialWrite(*s++);
      000122 8C 82            [24]  710 	mov	dpl,r4
      000124 0D               [12]  711 	inc	r5
      000125 BD 00 01         [24]  712 	cjne	r5,#0x00,00116$
      000128 0E               [12]  713 	inc	r6
      000129                        714 00116$:
      000129 C0 07            [24]  715 	push	ar7
      00012B C0 06            [24]  716 	push	ar6
      00012D C0 05            [24]  717 	push	ar5
      00012F 12 00 FF         [24]  718 	lcall	_SerialWrite
      000132 D0 05            [24]  719 	pop	ar5
      000134 D0 06            [24]  720 	pop	ar6
      000136 D0 07            [24]  721 	pop	ar7
      000138 80 DC            [24]  722 	sjmp	00101$
      00013A                        723 00104$:
                           00009A   724 	C$ttl.c$70$1_0$27 ==.
                                    725 ;	src/components/ttl.c:70: }
                           00009A   726 	C$ttl.c$70$1_0$27 ==.
                           00009A   727 	XG$SerialPrint$0$0 ==.
      00013A 22               [24]  728 	ret
                                    729 ;------------------------------------------------------------
                                    730 ;Allocation info for local variables in function 'SerialPrintln'
                                    731 ;------------------------------------------------------------
                                    732 ;s                         Allocated to registers r5 r6 r7 
                                    733 ;------------------------------------------------------------
                           00009B   734 	G$SerialPrintln$0$0 ==.
                           00009B   735 	C$ttl.c$73$1_0$30 ==.
                                    736 ;	src/components/ttl.c:73: void SerialPrintln(char* s) {
                                    737 ;	-----------------------------------------
                                    738 ;	 function SerialPrintln
                                    739 ;	-----------------------------------------
      00013B                        740 _SerialPrintln:
                           00009B   741 	C$ttl.c$75$1_0$30 ==.
                                    742 ;	src/components/ttl.c:75: SerialPrint(s);
      00013B 12 01 10         [24]  743 	lcall	_SerialPrint
                           00009E   744 	C$ttl.c$76$1_0$30 ==.
                                    745 ;	src/components/ttl.c:76: SerialPrint("\r\n");
      00013E 90 0A 74         [24]  746 	mov	dptr,#___str_0
      000141 75 F0 80         [24]  747 	mov	b,#0x80
      000144 12 01 10         [24]  748 	lcall	_SerialPrint
                           0000A7   749 	C$ttl.c$77$1_0$30 ==.
                                    750 ;	src/components/ttl.c:77: }
                           0000A7   751 	C$ttl.c$77$1_0$30 ==.
                           0000A7   752 	XG$SerialPrintln$0$0 ==.
      000147 22               [24]  753 	ret
                                    754 ;------------------------------------------------------------
                                    755 ;Allocation info for local variables in function 'SerialRead'
                                    756 ;------------------------------------------------------------
                           0000A8   757 	G$SerialRead$0$0 ==.
                           0000A8   758 	C$ttl.c$80$1_0$31 ==.
                                    759 ;	src/components/ttl.c:80: char SerialRead() {
                                    760 ;	-----------------------------------------
                                    761 ;	 function SerialRead
                                    762 ;	-----------------------------------------
      000148                        763 _SerialRead:
                           0000A8   764 	C$ttl.c$82$1_0$31 ==.
                                    765 ;	src/components/ttl.c:82: while (!RI) {
      000148                        766 00101$:
                           0000A8   767 	C$ttl.c$86$1_0$31 ==.
                                    768 ;	src/components/ttl.c:86: RI = 0;
                                    769 ;	assignBit
      000148 10 98 02         [24]  770 	jbc	_RI,00114$
      00014B 80 FB            [24]  771 	sjmp	00101$
      00014D                        772 00114$:
                           0000AD   773 	C$ttl.c$88$1_0$31 ==.
                                    774 ;	src/components/ttl.c:88: return SBUF;
      00014D 85 99 82         [24]  775 	mov	dpl,_SBUF
                           0000B0   776 	C$ttl.c$89$1_0$31 ==.
                                    777 ;	src/components/ttl.c:89: }
                           0000B0   778 	C$ttl.c$89$1_0$31 ==.
                           0000B0   779 	XG$SerialRead$0$0 ==.
      000150 22               [24]  780 	ret
                                    781 ;------------------------------------------------------------
                                    782 ;Allocation info for local variables in function 'SerialAvailable'
                                    783 ;------------------------------------------------------------
                           0000B1   784 	G$SerialAvailable$0$0 ==.
                           0000B1   785 	C$ttl.c$92$1_0$33 ==.
                                    786 ;	src/components/ttl.c:92: uint8_t SerialAvailable() {
                                    787 ;	-----------------------------------------
                                    788 ;	 function SerialAvailable
                                    789 ;	-----------------------------------------
      000151                        790 _SerialAvailable:
                           0000B1   791 	C$ttl.c$94$1_0$33 ==.
                                    792 ;	src/components/ttl.c:94: return RI;
      000151 A2 98            [12]  793 	mov	c,_RI
      000153 E4               [12]  794 	clr	a
      000154 33               [12]  795 	rlc	a
      000155 F5 82            [12]  796 	mov	dpl,a
                           0000B7   797 	C$ttl.c$95$1_0$33 ==.
                                    798 ;	src/components/ttl.c:95: }
                           0000B7   799 	C$ttl.c$95$1_0$33 ==.
                           0000B7   800 	XG$SerialAvailable$0$0 ==.
      000157 22               [24]  801 	ret
                                    802 ;------------------------------------------------------------
                                    803 ;Allocation info for local variables in function 'putchar'
                                    804 ;------------------------------------------------------------
                                    805 ;c                         Allocated to registers r7 
                                    806 ;------------------------------------------------------------
                           0000B8   807 	G$putchar$0$0 ==.
                           0000B8   808 	C$ttl.c$98$1_0$35 ==.
                                    809 ;	src/components/ttl.c:98: uint8_t putchar(uint8_t c) {
                                    810 ;	-----------------------------------------
                                    811 ;	 function putchar
                                    812 ;	-----------------------------------------
      000158                        813 _putchar:
                           0000B8   814 	C$ttl.c$100$1_0$35 ==.
                                    815 ;	src/components/ttl.c:100: SerialWrite(c);
      000158 AF 82            [24]  816 	mov  r7,dpl
      00015A C0 07            [24]  817 	push	ar7
      00015C 12 00 FF         [24]  818 	lcall	_SerialWrite
      00015F D0 07            [24]  819 	pop	ar7
                           0000C1   820 	C$ttl.c$101$1_0$35 ==.
                                    821 ;	src/components/ttl.c:101: return c;
      000161 8F 82            [24]  822 	mov	dpl,r7
                           0000C3   823 	C$ttl.c$102$1_0$35 ==.
                                    824 ;	src/components/ttl.c:102: }
                           0000C3   825 	C$ttl.c$102$1_0$35 ==.
                           0000C3   826 	XG$putchar$0$0 ==.
      000163 22               [24]  827 	ret
                                    828 ;------------------------------------------------------------
                                    829 ;Allocation info for local variables in function 'main'
                                    830 ;------------------------------------------------------------
                           0000C4   831 	G$main$0$0 ==.
                           0000C4   832 	C$51duino.h$14$1_0$54 ==.
                                    833 ;	inc/51duino.h:14: void main() {
                                    834 ;	-----------------------------------------
                                    835 ;	 function main
                                    836 ;	-----------------------------------------
      000164                        837 _main:
                           0000C4   838 	C$51duino.h$16$1_0$54 ==.
                                    839 ;	inc/51duino.h:16: P0 = P1 = P2 = P3 = 0;
      000164 75 B0 00         [24]  840 	mov	_P3,#0x00
      000167 75 A0 00         [24]  841 	mov	_P2,#0x00
      00016A 75 90 00         [24]  842 	mov	_P1,#0x00
      00016D 75 80 00         [24]  843 	mov	_P0,#0x00
                           0000D0   844 	C$51duino.h$18$1_0$54 ==.
                                    845 ;	inc/51duino.h:18: P30 = P31 = 1;
                                    846 ;	assignBit
      000170 D2 B1            [12]  847 	setb	_P31
                                    848 ;	assignBit
      000172 A2 B1            [12]  849 	mov	c,_P31
      000174 92 B0            [24]  850 	mov	_P30,c
                           0000D6   851 	C$51duino.h$20$1_0$54 ==.
                                    852 ;	inc/51duino.h:20: setup();
      000176 12 01 7F         [24]  853 	lcall	_setup
      000179                        854 00102$:
                           0000D9   855 	C$51duino.h$23$3_0$56 ==.
                                    856 ;	inc/51duino.h:23: loop();
      000179 12 01 99         [24]  857 	lcall	_loop
      00017C 80 FB            [24]  858 	sjmp	00102$
                           0000DE   859 	C$51duino.h$25$2_0$54 ==.
                                    860 ;	inc/51duino.h:25: }
                           0000DE   861 	C$51duino.h$25$2_0$54 ==.
                           0000DE   862 	XG$main$0$0 ==.
      00017E 22               [24]  863 	ret
                                    864 ;------------------------------------------------------------
                                    865 ;Allocation info for local variables in function 'setup'
                                    866 ;------------------------------------------------------------
                           0000DF   867 	G$setup$0$0 ==.
                           0000DF   868 	C$main.c$3$2_0$57 ==.
                                    869 ;	./src/main.c:3: void setup() {
                                    870 ;	-----------------------------------------
                                    871 ;	 function setup
                                    872 ;	-----------------------------------------
      00017F                        873 _setup:
                           0000DF   874 	C$main.c$4$1_0$57 ==.
                                    875 ;	./src/main.c:4: Serial.begin(19200);
      00017F AE 08            [24]  876 	mov	r6,(_Serial + 0)
      000181 AF 09            [24]  877 	mov	r7,(_Serial + 1)
      000183 C0 07            [24]  878 	push	ar7
      000185 C0 06            [24]  879 	push	ar6
      000187 12 01 8C         [24]  880 	lcall	00103$
      00018A 80 08            [24]  881 	sjmp	00104$
      00018C                        882 00103$:
      00018C C0 06            [24]  883 	push	ar6
      00018E C0 07            [24]  884 	push	ar7
      000190 90 4B 00         [24]  885 	mov	dptr,#0x4b00
      000193 22               [24]  886 	ret
      000194                        887 00104$:
      000194 D0 06            [24]  888 	pop	ar6
      000196 D0 07            [24]  889 	pop	ar7
                           0000F8   890 	C$main.c$5$1_0$57 ==.
                                    891 ;	./src/main.c:5: }
                           0000F8   892 	C$main.c$5$1_0$57 ==.
                           0000F8   893 	XG$setup$0$0 ==.
      000198 22               [24]  894 	ret
                                    895 ;------------------------------------------------------------
                                    896 ;Allocation info for local variables in function 'loop'
                                    897 ;------------------------------------------------------------
                           0000F9   898 	G$loop$0$0 ==.
                           0000F9   899 	C$main.c$7$1_0$58 ==.
                                    900 ;	./src/main.c:7: void loop() {
                                    901 ;	-----------------------------------------
                                    902 ;	 function loop
                                    903 ;	-----------------------------------------
      000199                        904 _loop:
                           0000F9   905 	C$main.c$8$1_0$58 ==.
                                    906 ;	./src/main.c:8: Serial.print("print\r\n");
      000199 AE 10            [24]  907 	mov	r6,((_Serial + 0x0008) + 0)
      00019B AF 11            [24]  908 	mov	r7,((_Serial + 0x0008) + 1)
      00019D C0 07            [24]  909 	push	ar7
      00019F C0 06            [24]  910 	push	ar6
      0001A1 12 01 A6         [24]  911 	lcall	00103$
      0001A4 80 0B            [24]  912 	sjmp	00104$
      0001A6                        913 00103$:
      0001A6 C0 06            [24]  914 	push	ar6
      0001A8 C0 07            [24]  915 	push	ar7
      0001AA 90 0A 77         [24]  916 	mov	dptr,#___str_1
      0001AD 75 F0 80         [24]  917 	mov	b,#0x80
      0001B0 22               [24]  918 	ret
      0001B1                        919 00104$:
      0001B1 D0 06            [24]  920 	pop	ar6
      0001B3 D0 07            [24]  921 	pop	ar7
                           000115   922 	C$main.c$9$1_0$58 ==.
                                    923 ;	./src/main.c:9: Serial.printf("printf: %d\r\n", 123);
      0001B5 AE 14            [24]  924 	mov	r6,((_Serial + 0x000c) + 0)
      0001B7 AF 15            [24]  925 	mov	r7,((_Serial + 0x000c) + 1)
      0001B9 C0 07            [24]  926 	push	ar7
      0001BB C0 06            [24]  927 	push	ar6
      0001BD 74 7B            [12]  928 	mov	a,#0x7b
      0001BF C0 E0            [24]  929 	push	acc
      0001C1 E4               [12]  930 	clr	a
      0001C2 C0 E0            [24]  931 	push	acc
      0001C4 74 7F            [12]  932 	mov	a,#___str_2
      0001C6 C0 E0            [24]  933 	push	acc
      0001C8 74 0A            [12]  934 	mov	a,#(___str_2 >> 8)
      0001CA C0 E0            [24]  935 	push	acc
      0001CC 74 80            [12]  936 	mov	a,#0x80
      0001CE C0 E0            [24]  937 	push	acc
      0001D0 8E 82            [24]  938 	mov	dpl,r6
      0001D2 8F 83            [24]  939 	mov	dph,r7
      0001D4 12 00 06         [24]  940 	lcall	__sdcc_call_dptr
      0001D7 E5 81            [12]  941 	mov	a,sp
      0001D9 24 FB            [12]  942 	add	a,#0xfb
      0001DB F5 81            [12]  943 	mov	sp,a
      0001DD D0 06            [24]  944 	pop	ar6
      0001DF D0 07            [24]  945 	pop	ar7
                           000141   946 	C$main.c$10$1_0$58 ==.
                                    947 ;	./src/main.c:10: Serial.println("println");
      0001E1 AE 12            [24]  948 	mov	r6,((_Serial + 0x000a) + 0)
      0001E3 AF 13            [24]  949 	mov	r7,((_Serial + 0x000a) + 1)
      0001E5 C0 07            [24]  950 	push	ar7
      0001E7 C0 06            [24]  951 	push	ar6
      0001E9 12 01 EE         [24]  952 	lcall	00105$
      0001EC 80 0B            [24]  953 	sjmp	00106$
      0001EE                        954 00105$:
      0001EE C0 06            [24]  955 	push	ar6
      0001F0 C0 07            [24]  956 	push	ar7
      0001F2 90 0A 8C         [24]  957 	mov	dptr,#___str_3
      0001F5 75 F0 80         [24]  958 	mov	b,#0x80
      0001F8 22               [24]  959 	ret
      0001F9                        960 00106$:
      0001F9 D0 06            [24]  961 	pop	ar6
      0001FB D0 07            [24]  962 	pop	ar7
                           00015D   963 	C$main.c$11$1_0$58 ==.
                                    964 ;	./src/main.c:11: delay(1000);
      0001FD 90 03 E8         [24]  965 	mov	dptr,#0x03e8
      000200 12 02 BB         [24]  966 	lcall	_delay
                           000163   967 	C$main.c$12$1_0$58 ==.
                                    968 ;	./src/main.c:12: }
                           000163   969 	C$main.c$12$1_0$58 ==.
                           000163   970 	XG$loop$0$0 ==.
      000203 22               [24]  971 	ret
                                    972 	.area CSEG    (CODE)
                                    973 	.area CONST   (CODE)
                           000000   974 Fmain$__str_0$0_0$0 == .
                                    975 	.area CONST   (CODE)
      000A74                        976 ___str_0:
      000A74 0D                     977 	.db 0x0d
      000A75 0A                     978 	.db 0x0a
      000A76 00                     979 	.db 0x00
                                    980 	.area CSEG    (CODE)
                           000164   981 Fmain$__str_1$0_0$0 == .
                                    982 	.area CONST   (CODE)
      000A77                        983 ___str_1:
      000A77 70 72 69 6E 74         984 	.ascii "print"
      000A7C 0D                     985 	.db 0x0d
      000A7D 0A                     986 	.db 0x0a
      000A7E 00                     987 	.db 0x00
                                    988 	.area CSEG    (CODE)
                           000164   989 Fmain$__str_2$0_0$0 == .
                                    990 	.area CONST   (CODE)
      000A7F                        991 ___str_2:
      000A7F 70 72 69 6E 74 66 3A   992 	.ascii "printf: %d"
             20 25 64
      000A89 0D                     993 	.db 0x0d
      000A8A 0A                     994 	.db 0x0a
      000A8B 00                     995 	.db 0x00
                                    996 	.area CSEG    (CODE)
                           000164   997 Fmain$__str_3$0_0$0 == .
                                    998 	.area CONST   (CODE)
      000A8C                        999 ___str_3:
      000A8C 70 72 69 6E 74 6C 6E  1000 	.ascii "println"
      000A93 00                    1001 	.db 0x00
                                   1002 	.area CSEG    (CODE)
                                   1003 	.area XINIT   (CODE)
                                   1004 	.area CABS    (ABS,CODE)
