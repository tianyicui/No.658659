// #0
@261
// #1
D=A
// #2
@SP
// #3
M=D //SP=261
// #4
@Sys.init
// #5
0;JMP
//
//// function Array.new 0
(Array.new)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #6
@ARG
// #7
D=M
// #8
@0
// #9
A=D+A
// #10
D=M
//^^ push_d_to_stack
// #11
@SP
// #12
A=M
// #13
M=D
// #14
@SP
// #15
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push constant 0
//^^ push_constant(0)
// #16
@0
// #17
D=A
//^^ push_d_to_stack
// #18
@SP
// #19
A=M
// #20
M=D
// #21
@SP
// #22
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// gt
//^^ arith_cmp_op(JGT)
//^^ pop_stack_to_d
// #23
@SP
// #24
M=M-1
// #25
A=M
// #26
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #27
@R13
// #28
M=D
//^^ pop_stack_to_d
// #29
@SP
// #30
M=M-1
// #31
A=M
// #32
D=M
//vv pop_stack_to_d
// #33
@R13
// #34
D=D-M
// #35
@R13
// #36
M=0
//vv arith_d_with_stack_top(D-M)
// #37
@PUT_TRUE_1
// #38
D;JGT
// #39
@R13
// #40
M=0
// #41
@CONT_1
// #42
0;JMP
(PUT_TRUE_1)
// #43
@R13
// #44
M=-1
(CONT_1)
// #45
@R13
// #46
D=M
// #47
@R13
// #48
M=0
//^^ push_d_to_stack
// #49
@SP
// #50
A=M
// #51
M=D
// #52
@SP
// #53
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JGT)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #54
@SP
// #55
M=M-1
// #56
A=M
// #57
D=M
//vv pop_stack_to_d
// #58
D=!D
//^^ push_d_to_stack
// #59
@SP
// #60
A=M
// #61
M=D
// #62
@SP
// #63
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// if-goto IF_TRUE0
//^^ pop_stack_to_d
// #64
@SP
// #65
M=M-1
// #66
A=M
// #67
D=M
//vv pop_stack_to_d
// #68
@Array.new$IF_TRUE0
// #69
D;JNE
//
//// goto IF_FALSE0
// #70
@Array.new$IF_FALSE0
// #71
0;JMP
//
//// label IF_TRUE0
(Array.new$IF_TRUE0)
//
//// push constant 2
//^^ push_constant(2)
// #72
@2
// #73
D=A
//^^ push_d_to_stack
// #74
@SP
// #75
A=M
// #76
M=D
// #77
@SP
// #78
M=M+1
//vv push_d_to_stack
//vv push_constant(2)
//
//// call Sys.error 1
//^^ push_constant(RET_ADDR_2)
// #79
@RET_ADDR_2
// #80
D=A
//^^ push_d_to_stack
// #81
@SP
// #82
A=M
// #83
M=D
// #84
@SP
// #85
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_2)
//push return-address
// #86
@LCL
// #87
D=M
//^^ push_d_to_stack
// #88
@SP
// #89
A=M
// #90
M=D
// #91
@SP
// #92
M=M+1
//vv push_d_to_stack
//push LCL
// #93
@ARG
// #94
D=M
//^^ push_d_to_stack
// #95
@SP
// #96
A=M
// #97
M=D
// #98
@SP
// #99
M=M+1
//vv push_d_to_stack
//push ARG
// #100
@THIS
// #101
D=M
//^^ push_d_to_stack
// #102
@SP
// #103
A=M
// #104
M=D
// #105
@SP
// #106
M=M+1
//vv push_d_to_stack
//push THIS
// #107
@THAT
// #108
D=M
//^^ push_d_to_stack
// #109
@SP
// #110
A=M
// #111
M=D
// #112
@SP
// #113
M=M+1
//vv push_d_to_stack
//push THAT
// #114
@SP
// #115
D=M
// #116
@ARG
// #117
M=D
// #118
@6
// #119
D=A
// #120
@ARG
// #121
M=M-D // ARG = SP - args - 5
// #122
@SP
// #123
D=M
// #124
@LCL
// #125
M=D // LCL = SP
// #126
@Sys.error
// #127
0;JMP
(RET_ADDR_2)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #128
@SP
// #129
M=M-1
// #130
A=M
// #131
D=M
//vv pop_stack_to_d
// #132
@5
// #133
M=D
//vv pop_to_loc{5)
//
//// label IF_FALSE0
(Array.new$IF_FALSE0)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #134
@ARG
// #135
D=M
// #136
@0
// #137
A=D+A
// #138
D=M
//^^ push_d_to_stack
// #139
@SP
// #140
A=M
// #141
M=D
// #142
@SP
// #143
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// call Memory.alloc 1
//^^ push_constant(RET_ADDR_3)
// #144
@RET_ADDR_3
// #145
D=A
//^^ push_d_to_stack
// #146
@SP
// #147
A=M
// #148
M=D
// #149
@SP
// #150
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_3)
//push return-address
// #151
@LCL
// #152
D=M
//^^ push_d_to_stack
// #153
@SP
// #154
A=M
// #155
M=D
// #156
@SP
// #157
M=M+1
//vv push_d_to_stack
//push LCL
// #158
@ARG
// #159
D=M
//^^ push_d_to_stack
// #160
@SP
// #161
A=M
// #162
M=D
// #163
@SP
// #164
M=M+1
//vv push_d_to_stack
//push ARG
// #165
@THIS
// #166
D=M
//^^ push_d_to_stack
// #167
@SP
// #168
A=M
// #169
M=D
// #170
@SP
// #171
M=M+1
//vv push_d_to_stack
//push THIS
// #172
@THAT
// #173
D=M
//^^ push_d_to_stack
// #174
@SP
// #175
A=M
// #176
M=D
// #177
@SP
// #178
M=M+1
//vv push_d_to_stack
//push THAT
// #179
@SP
// #180
D=M
// #181
@ARG
// #182
M=D
// #183
@6
// #184
D=A
// #185
@ARG
// #186
M=M-D // ARG = SP - args - 5
// #187
@SP
// #188
D=M
// #189
@LCL
// #190
M=D // LCL = SP
// #191
@Memory.alloc
// #192
0;JMP
(RET_ADDR_3)
//
//// return
// #193
@LCL
// #194
D=M
// #195
@R14
// #196
M=D //R14=LCL
// #197
@5
// #198
A=D-A
// #199
D=M
// #200
@R15
// #201
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #202
@SP
// #203
M=M-1
// #204
A=M
// #205
D=M
//vv pop_stack_to_d
// #206
@ARG
// #207
A=M
// #208
M=D //*ARG = pop()
// #209
@ARG
// #210
D=M
// #211
@SP
// #212
M=D+1 //SP=ARG+1
// #213
@R14
// #214
AM=M-1
// #215
D=M
// #216
@THAT
// #217
M=D //THAT = *(--R14)
// #218
@R14
// #219
AM=M-1
// #220
D=M
// #221
@THIS
// #222
M=D //THIS = *(--R14)
// #223
@R14
// #224
AM=M-1
// #225
D=M
// #226
@ARG
// #227
M=D //ARG = *(--R14)
// #228
@R14
// #229
AM=M-1
// #230
D=M
// #231
@LCL
// #232
M=D //LCL = *(--R14)
// #233
@R15
// #234
A=M
// #235
0;JMP //goto *R15
//
//// function Array.dispose 0
(Array.dispose)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #236
@ARG
// #237
D=M
// #238
@0
// #239
A=D+A
// #240
D=M
//^^ push_d_to_stack
// #241
@SP
// #242
A=M
// #243
M=D
// #244
@SP
// #245
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// pop pointer 0
//^^ pop_to_loc{3)
//^^ pop_stack_to_d
// #246
@SP
// #247
M=M-1
// #248
A=M
// #249
D=M
//vv pop_stack_to_d
// #250
@3
// #251
M=D
//vv pop_to_loc{3)
//
//// push pointer 0
//^^ push_from_loc(3)
// #252
@3
// #253
D=M
//^^ push_d_to_stack
// #254
@SP
// #255
A=M
// #256
M=D
// #257
@SP
// #258
M=M+1
//vv push_d_to_stack
//vv push_from_loc(3)
//
//// call Memory.deAlloc 1
//^^ push_constant(RET_ADDR_4)
// #259
@RET_ADDR_4
// #260
D=A
//^^ push_d_to_stack
// #261
@SP
// #262
A=M
// #263
M=D
// #264
@SP
// #265
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_4)
//push return-address
// #266
@LCL
// #267
D=M
//^^ push_d_to_stack
// #268
@SP
// #269
A=M
// #270
M=D
// #271
@SP
// #272
M=M+1
//vv push_d_to_stack
//push LCL
// #273
@ARG
// #274
D=M
//^^ push_d_to_stack
// #275
@SP
// #276
A=M
// #277
M=D
// #278
@SP
// #279
M=M+1
//vv push_d_to_stack
//push ARG
// #280
@THIS
// #281
D=M
//^^ push_d_to_stack
// #282
@SP
// #283
A=M
// #284
M=D
// #285
@SP
// #286
M=M+1
//vv push_d_to_stack
//push THIS
// #287
@THAT
// #288
D=M
//^^ push_d_to_stack
// #289
@SP
// #290
A=M
// #291
M=D
// #292
@SP
// #293
M=M+1
//vv push_d_to_stack
//push THAT
// #294
@SP
// #295
D=M
// #296
@ARG
// #297
M=D
// #298
@6
// #299
D=A
// #300
@ARG
// #301
M=M-D // ARG = SP - args - 5
// #302
@SP
// #303
D=M
// #304
@LCL
// #305
M=D // LCL = SP
// #306
@Memory.deAlloc
// #307
0;JMP
(RET_ADDR_4)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #308
@SP
// #309
M=M-1
// #310
A=M
// #311
D=M
//vv pop_stack_to_d
// #312
@5
// #313
M=D
//vv pop_to_loc{5)
//
//// push constant 0
//^^ push_constant(0)
// #314
@0
// #315
D=A
//^^ push_d_to_stack
// #316
@SP
// #317
A=M
// #318
M=D
// #319
@SP
// #320
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #321
@LCL
// #322
D=M
// #323
@R14
// #324
M=D //R14=LCL
// #325
@5
// #326
A=D-A
// #327
D=M
// #328
@R15
// #329
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #330
@SP
// #331
M=M-1
// #332
A=M
// #333
D=M
//vv pop_stack_to_d
// #334
@ARG
// #335
A=M
// #336
M=D //*ARG = pop()
// #337
@ARG
// #338
D=M
// #339
@SP
// #340
M=D+1 //SP=ARG+1
// #341
@R14
// #342
AM=M-1
// #343
D=M
// #344
@THAT
// #345
M=D //THAT = *(--R14)
// #346
@R14
// #347
AM=M-1
// #348
D=M
// #349
@THIS
// #350
M=D //THIS = *(--R14)
// #351
@R14
// #352
AM=M-1
// #353
D=M
// #354
@ARG
// #355
M=D //ARG = *(--R14)
// #356
@R14
// #357
AM=M-1
// #358
D=M
// #359
@LCL
// #360
M=D //LCL = *(--R14)
// #361
@R15
// #362
A=M
// #363
0;JMP //goto *R15
//
//// function Keyboard.init 0
(Keyboard.init)
//
//// push constant 0
//^^ push_constant(0)
// #364
@0
// #365
D=A
//^^ push_d_to_stack
// #366
@SP
// #367
A=M
// #368
M=D
// #369
@SP
// #370
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #371
@LCL
// #372
D=M
// #373
@R14
// #374
M=D //R14=LCL
// #375
@5
// #376
A=D-A
// #377
D=M
// #378
@R15
// #379
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #380
@SP
// #381
M=M-1
// #382
A=M
// #383
D=M
//vv pop_stack_to_d
// #384
@ARG
// #385
A=M
// #386
M=D //*ARG = pop()
// #387
@ARG
// #388
D=M
// #389
@SP
// #390
M=D+1 //SP=ARG+1
// #391
@R14
// #392
AM=M-1
// #393
D=M
// #394
@THAT
// #395
M=D //THAT = *(--R14)
// #396
@R14
// #397
AM=M-1
// #398
D=M
// #399
@THIS
// #400
M=D //THIS = *(--R14)
// #401
@R14
// #402
AM=M-1
// #403
D=M
// #404
@ARG
// #405
M=D //ARG = *(--R14)
// #406
@R14
// #407
AM=M-1
// #408
D=M
// #409
@LCL
// #410
M=D //LCL = *(--R14)
// #411
@R15
// #412
A=M
// #413
0;JMP //goto *R15
//
//// function Keyboard.keyPressed 0
(Keyboard.keyPressed)
//
//// push constant 24576
//^^ push_constant(24576)
// #414
@24576
// #415
D=A
//^^ push_d_to_stack
// #416
@SP
// #417
A=M
// #418
M=D
// #419
@SP
// #420
M=M+1
//vv push_d_to_stack
//vv push_constant(24576)
//
//// call Memory.peek 1
//^^ push_constant(RET_ADDR_5)
// #421
@RET_ADDR_5
// #422
D=A
//^^ push_d_to_stack
// #423
@SP
// #424
A=M
// #425
M=D
// #426
@SP
// #427
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_5)
//push return-address
// #428
@LCL
// #429
D=M
//^^ push_d_to_stack
// #430
@SP
// #431
A=M
// #432
M=D
// #433
@SP
// #434
M=M+1
//vv push_d_to_stack
//push LCL
// #435
@ARG
// #436
D=M
//^^ push_d_to_stack
// #437
@SP
// #438
A=M
// #439
M=D
// #440
@SP
// #441
M=M+1
//vv push_d_to_stack
//push ARG
// #442
@THIS
// #443
D=M
//^^ push_d_to_stack
// #444
@SP
// #445
A=M
// #446
M=D
// #447
@SP
// #448
M=M+1
//vv push_d_to_stack
//push THIS
// #449
@THAT
// #450
D=M
//^^ push_d_to_stack
// #451
@SP
// #452
A=M
// #453
M=D
// #454
@SP
// #455
M=M+1
//vv push_d_to_stack
//push THAT
// #456
@SP
// #457
D=M
// #458
@ARG
// #459
M=D
// #460
@6
// #461
D=A
// #462
@ARG
// #463
M=M-D // ARG = SP - args - 5
// #464
@SP
// #465
D=M
// #466
@LCL
// #467
M=D // LCL = SP
// #468
@Memory.peek
// #469
0;JMP
(RET_ADDR_5)
//
//// return
// #470
@LCL
// #471
D=M
// #472
@R14
// #473
M=D //R14=LCL
// #474
@5
// #475
A=D-A
// #476
D=M
// #477
@R15
// #478
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #479
@SP
// #480
M=M-1
// #481
A=M
// #482
D=M
//vv pop_stack_to_d
// #483
@ARG
// #484
A=M
// #485
M=D //*ARG = pop()
// #486
@ARG
// #487
D=M
// #488
@SP
// #489
M=D+1 //SP=ARG+1
// #490
@R14
// #491
AM=M-1
// #492
D=M
// #493
@THAT
// #494
M=D //THAT = *(--R14)
// #495
@R14
// #496
AM=M-1
// #497
D=M
// #498
@THIS
// #499
M=D //THIS = *(--R14)
// #500
@R14
// #501
AM=M-1
// #502
D=M
// #503
@ARG
// #504
M=D //ARG = *(--R14)
// #505
@R14
// #506
AM=M-1
// #507
D=M
// #508
@LCL
// #509
M=D //LCL = *(--R14)
// #510
@R15
// #511
A=M
// #512
0;JMP //goto *R15
//
//// function Keyboard.readChar 2
(Keyboard.readChar)
// #513
D=0
//^^ push_d_to_stack
// #514
@SP
// #515
A=M
// #516
M=D
// #517
@SP
// #518
M=M+1
//vv push_d_to_stack
// #519
D=0
//^^ push_d_to_stack
// #520
@SP
// #521
A=M
// #522
M=D
// #523
@SP
// #524
M=M+1
//vv push_d_to_stack
//
//// call SquareGame.new 0
//^^ push_constant(RET_ADDR_26)
// #525
@RET_ADDR_26
// #526
D=A
//^^ push_d_to_stack
// #527
@SP
// #528
A=M
// #529
M=D
// #530
@SP
// #531
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_26)
//push return-address
// #532
@LCL
// #533
D=M
//^^ push_d_to_stack
// #534
@SP
// #535
A=M
// #536
M=D
// #537
@SP
// #538
M=M+1
//vv push_d_to_stack
//push LCL
// #539
@ARG
// #540
D=M
//^^ push_d_to_stack
// #541
@SP
// #542
A=M
// #543
M=D
// #544
@SP
// #545
M=M+1
//vv push_d_to_stack
//push ARG
// #546
@THIS
// #547
D=M
//^^ push_d_to_stack
// #548
@SP
// #549
A=M
// #550
M=D
// #551
@SP
// #552
M=M+1
//vv push_d_to_stack
//push THIS
// #553
@THAT
// #554
D=M
//^^ push_d_to_stack
// #555
@SP
// #556
A=M
// #557
M=D
// #558
@SP
// #559
M=M+1
//vv push_d_to_stack
//push THAT
// #560
@SP
// #561
D=M
// #562
@ARG
// #563
M=D
// #564
@5
// #565
D=A
// #566
@ARG
// #567
M=M-D // ARG = SP - args - 5
// #568
@SP
// #569
D=M
// #570
@LCL
// #571
M=D // LCL = SP
// #572
@SquareGame.new
// #573
0;JMP
(RET_ADDR_26)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
// #574
@LCL
// #575
D=M
// #576
@0
// #577
D=D+A
// #578
@R13
// #579
M=D
//^^ pop_stack_to_d
// #580
@SP
// #581
M=M-1
// #582
A=M
// #583
D=M
//vv pop_stack_to_d
// #584
@R13
// #585
A=M
// #586
M=D
// #587
@R13
// #588
M=0
//vv pop_to_ram(LCL, 0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #589
@LCL
// #590
D=M
// #591
@0
// #592
A=D+A
// #593
D=M
//^^ push_d_to_stack
// #594
@SP
// #595
A=M
// #596
M=D
// #597
@SP
// #598
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// call SquareGame.run 1
//^^ push_constant(RET_ADDR_27)
// #599
@RET_ADDR_27
// #600
D=A
//^^ push_d_to_stack
// #601
@SP
// #602
A=M
// #603
M=D
// #604
@SP
// #605
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_27)
//push return-address
// #606
@LCL
// #607
D=M
//^^ push_d_to_stack
// #608
@SP
// #609
A=M
// #610
M=D
// #611
@SP
// #612
M=M+1
//vv push_d_to_stack
//push LCL
// #613
@ARG
// #614
D=M
//^^ push_d_to_stack
// #615
@SP
// #616
A=M
// #617
M=D
// #618
@SP
// #619
M=M+1
//vv push_d_to_stack
//push ARG
// #620
@THIS
// #621
D=M
//^^ push_d_to_stack
// #622
@SP
// #623
A=M
// #624
M=D
// #625
@SP
// #626
M=M+1
//vv push_d_to_stack
//push THIS
// #627
@THAT
// #628
D=M
//^^ push_d_to_stack
// #629
@SP
// #630
A=M
// #631
M=D
// #632
@SP
// #633
M=M+1
//vv push_d_to_stack
//push THAT
// #634
@SP
// #635
D=M
// #636
@ARG
// #637
M=D
// #638
@6
// #639
D=A
// #640
@ARG
// #641
M=M-D // ARG = SP - args - 5
// #642
@SP
// #643
D=M
// #644
@LCL
// #645
M=D // LCL = SP
// #646
@SquareGame.run
// #647
0;JMP
(RET_ADDR_27)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #648
@SP
// #649
M=M-1
// #650
A=M
// #651
D=M
//vv pop_stack_to_d
// #652
@5
// #653
M=D
//vv pop_to_loc{5)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #654
@LCL
// #655
D=M
// #656
@0
// #657
A=D+A
// #658
D=M
//^^ push_d_to_stack
// #659
@SP
// #660
A=M
// #661
M=D
// #662
@SP
// #663
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// call SquareGame.dispose 1
//^^ push_constant(RET_ADDR_28)
// #664
@RET_ADDR_28
// #665
D=A
//^^ push_d_to_stack
// #666
@SP
// #667
A=M
// #668
M=D
// #669
@SP
// #670
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_28)
//push return-address
// #671
@LCL
// #672
D=M
//^^ push_d_to_stack
// #673
@SP
// #674
A=M
// #675
M=D
// #676
@SP
// #677
M=M+1
//vv push_d_to_stack
//push LCL
// #678
@ARG
// #679
D=M
//^^ push_d_to_stack
// #680
@SP
// #681
A=M
// #682
M=D
// #683
@SP
// #684
M=M+1
//vv push_d_to_stack
//push ARG
// #685
@THIS
// #686
D=M
//^^ push_d_to_stack
// #687
@SP
// #688
A=M
// #689
M=D
// #690
@SP
// #691
M=M+1
//vv push_d_to_stack
//push THIS
// #692
@THAT
// #693
D=M
//^^ push_d_to_stack
// #694
@SP
// #695
A=M
// #696
M=D
// #697
@SP
// #698
M=M+1
//vv push_d_to_stack
//push THAT
// #699
@SP
// #700
D=M
// #701
@ARG
// #702
M=D
// #703
@6
// #704
D=A
// #705
@ARG
// #706
M=M-D // ARG = SP - args - 5
// #707
@SP
// #708
D=M
// #709
@LCL
// #710
M=D // LCL = SP
// #711
@SquareGame.dispose
// #712
0;JMP
(RET_ADDR_28)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #713
@SP
// #714
M=M-1
// #715
A=M
// #716
D=M
//vv pop_stack_to_d
// #717
@5
// #718
M=D
//vv pop_to_loc{5)
//
//// push constant 0
//^^ push_constant(0)
// #719
@0
// #720
D=A
//^^ push_d_to_stack
// #721
@SP
// #722
A=M
// #723
M=D
// #724
@SP
// #725
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #726
@LCL
// #727
D=M
// #728
@R14
// #729
M=D //R14=LCL
// #730
@5
// #731
A=D-A
// #732
D=M
// #733
@R15
// #734
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #735
@SP
// #736
M=M-1
// #737
A=M
// #738
D=M
//vv pop_stack_to_d
// #739
@ARG
// #740
A=M
// #741
M=D //*ARG = pop()
// #742
@ARG
// #743
D=M
// #744
@SP
// #745
M=D+1 //SP=ARG+1
// #746
@R14
// #747
AM=M-1
// #748
D=M
// #749
@THAT
// #750
M=D //THAT = *(--R14)
// #751
@R14
// #752
AM=M-1
// #753
D=M
// #754
@THIS
// #755
M=D //THIS = *(--R14)
// #756
@R14
// #757
AM=M-1
// #758
D=M
// #759
@ARG
// #760
M=D //ARG = *(--R14)
// #761
@R14
// #762
AM=M-1
// #763
D=M
// #764
@LCL
// #765
M=D //LCL = *(--R14)
// #766
@R15
// #767
A=M
// #768
0;JMP //goto *R15
//
//// function Math.init 1
(Math.init)
// #769
D=0
//^^ push_d_to_stack
// #770
@SP
// #771
A=M
// #772
M=D
// #773
@SP
// #774
M=M+1
//vv push_d_to_stack
//
//// push constant 16
//^^ push_constant(16)
// #775
@16
// #776
D=A
//^^ push_d_to_stack
// #777
@SP
// #778
A=M
// #779
M=D
// #780
@SP
// #781
M=M+1
//vv push_d_to_stack
//vv push_constant(16)
//
//// call Array.new 1
//^^ push_constant(RET_ADDR_29)
// #782
@RET_ADDR_29
// #783
D=A
//^^ push_d_to_stack
// #784
@SP
// #785
A=M
// #786
M=D
// #787
@SP
// #788
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_29)
//push return-address
// #789
@LCL
// #790
D=M
//^^ push_d_to_stack
// #791
@SP
// #792
A=M
// #793
M=D
// #794
@SP
// #795
M=M+1
//vv push_d_to_stack
//push LCL
// #796
@ARG
// #797
D=M
//^^ push_d_to_stack
// #798
@SP
// #799
A=M
// #800
M=D
// #801
@SP
// #802
M=M+1
//vv push_d_to_stack
//push ARG
// #803
@THIS
// #804
D=M
//^^ push_d_to_stack
// #805
@SP
// #806
A=M
// #807
M=D
// #808
@SP
// #809
M=M+1
//vv push_d_to_stack
//push THIS
// #810
@THAT
// #811
D=M
//^^ push_d_to_stack
// #812
@SP
// #813
A=M
// #814
M=D
// #815
@SP
// #816
M=M+1
//vv push_d_to_stack
//push THAT
// #817
@SP
// #818
D=M
// #819
@ARG
// #820
M=D
// #821
@6
// #822
D=A
// #823
@ARG
// #824
M=M-D // ARG = SP - args - 5
// #825
@SP
// #826
D=M
// #827
@LCL
// #828
M=D // LCL = SP
// #829
@Array.new
// #830
0;JMP
(RET_ADDR_29)
//
//// pop static 1
//^^ pop_to_loc{Math.vm.1)
//^^ pop_stack_to_d
// #831
@SP
// #832
M=M-1
// #833
A=M
// #834
D=M
//vv pop_stack_to_d
// #835
@Math.vm.1
// #836
M=D
//vv pop_to_loc{Math.vm.1)
//
//// push constant 16
//^^ push_constant(16)
// #837
@16
// #838
D=A
//^^ push_d_to_stack
// #839
@SP
// #840
A=M
// #841
M=D
// #842
@SP
// #843
M=M+1
//vv push_d_to_stack
//vv push_constant(16)
//
//// call Array.new 1
//^^ push_constant(RET_ADDR_30)
// #844
@RET_ADDR_30
// #845
D=A
//^^ push_d_to_stack
// #846
@SP
// #847
A=M
// #848
M=D
// #849
@SP
// #850
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_30)
//push return-address
// #851
@LCL
// #852
D=M
//^^ push_d_to_stack
// #853
@SP
// #854
A=M
// #855
M=D
// #856
@SP
// #857
M=M+1
//vv push_d_to_stack
//push LCL
// #858
@ARG
// #859
D=M
//^^ push_d_to_stack
// #860
@SP
// #861
A=M
// #862
M=D
// #863
@SP
// #864
M=M+1
//vv push_d_to_stack
//push ARG
// #865
@THIS
// #866
D=M
//^^ push_d_to_stack
// #867
@SP
// #868
A=M
// #869
M=D
// #870
@SP
// #871
M=M+1
//vv push_d_to_stack
//push THIS
// #872
@THAT
// #873
D=M
//^^ push_d_to_stack
// #874
@SP
// #875
A=M
// #876
M=D
// #877
@SP
// #878
M=M+1
//vv push_d_to_stack
//push THAT
// #879
@SP
// #880
D=M
// #881
@ARG
// #882
M=D
// #883
@6
// #884
D=A
// #885
@ARG
// #886
M=M-D // ARG = SP - args - 5
// #887
@SP
// #888
D=M
// #889
@LCL
// #890
M=D // LCL = SP
// #891
@Array.new
// #892
0;JMP
(RET_ADDR_30)
//
//// pop static 0
//^^ pop_to_loc{Math.vm.0)
//^^ pop_stack_to_d
// #893
@SP
// #894
M=M-1
// #895
A=M
// #896
D=M
//vv pop_stack_to_d
// #897
@Math.vm.0
// #898
M=D
//vv pop_to_loc{Math.vm.0)
//
//// push constant 0
//^^ push_constant(0)
// #899
@0
// #900
D=A
//^^ push_d_to_stack
// #901
@SP
// #902
A=M
// #903
M=D
// #904
@SP
// #905
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push static 0
//^^ push_from_loc(Math.vm.0)
// #906
@Math.vm.0
// #907
D=M
//^^ push_d_to_stack
// #908
@SP
// #909
A=M
// #910
M=D
// #911
@SP
// #912
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Math.vm.0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #913
@SP
// #914
M=M-1
// #915
A=M
// #916
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #917
@R13
// #918
M=D
//^^ pop_stack_to_d
// #919
@SP
// #920
M=M-1
// #921
A=M
// #922
D=M
//vv pop_stack_to_d
// #923
@R13
// #924
D=D+M
// #925
@R13
// #926
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #927
@SP
// #928
A=M
// #929
M=D
// #930
@SP
// #931
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push constant 1
//^^ push_constant(1)
// #932
@1
// #933
D=A
//^^ push_d_to_stack
// #934
@SP
// #935
A=M
// #936
M=D
// #937
@SP
// #938
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #939
@SP
// #940
M=M-1
// #941
A=M
// #942
D=M
//vv pop_stack_to_d
// #943
@5
// #944
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #945
@SP
// #946
M=M-1
// #947
A=M
// #948
D=M
//vv pop_stack_to_d
// #949
@4
// #950
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #951
@5
// #952
D=M
//^^ push_d_to_stack
// #953
@SP
// #954
A=M
// #955
M=D
// #956
@SP
// #957
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #958
@THAT
// #959
D=M
// #960
@0
// #961
D=D+A
// #962
@R13
// #963
M=D
//^^ pop_stack_to_d
// #964
@SP
// #965
M=M-1
// #966
A=M
// #967
D=M
//vv pop_stack_to_d
// #968
@R13
// #969
A=M
// #970
M=D
// #971
@R13
// #972
M=0
//vv pop_to_ram(THAT, 0)
//
//// label WHILE_EXP0
(Math.init$WHILE_EXP0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #973
@LCL
// #974
D=M
// #975
@0
// #976
A=D+A
// #977
D=M
//^^ push_d_to_stack
// #978
@SP
// #979
A=M
// #980
M=D
// #981
@SP
// #982
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 15
//^^ push_constant(15)
// #983
@15
// #984
D=A
//^^ push_d_to_stack
// #985
@SP
// #986
A=M
// #987
M=D
// #988
@SP
// #989
M=M+1
//vv push_d_to_stack
//vv push_constant(15)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #990
@SP
// #991
M=M-1
// #992
A=M
// #993
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #994
@R13
// #995
M=D
//^^ pop_stack_to_d
// #996
@SP
// #997
M=M-1
// #998
A=M
// #999
D=M
//vv pop_stack_to_d
// #1000
@R13
// #1001
D=D-M
// #1002
@R13
// #1003
M=0
//vv arith_d_with_stack_top(D-M)
// #1004
@PUT_TRUE_31
// #1005
D;JLT
// #1006
@R13
// #1007
M=0
// #1008
@CONT_31
// #1009
0;JMP
(PUT_TRUE_31)
// #1010
@R13
// #1011
M=-1
(CONT_31)
// #1012
@R13
// #1013
D=M
// #1014
@R13
// #1015
M=0
//^^ push_d_to_stack
// #1016
@SP
// #1017
A=M
// #1018
M=D
// #1019
@SP
// #1020
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #1021
@SP
// #1022
M=M-1
// #1023
A=M
// #1024
D=M
//vv pop_stack_to_d
// #1025
D=!D
//^^ push_d_to_stack
// #1026
@SP
// #1027
A=M
// #1028
M=D
// #1029
@SP
// #1030
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// if-goto WHILE_END0
//^^ pop_stack_to_d
// #1031
@SP
// #1032
M=M-1
// #1033
A=M
// #1034
D=M
//vv pop_stack_to_d
// #1035
@Math.init$WHILE_END0
// #1036
D;JNE
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #1037
@LCL
// #1038
D=M
// #1039
@0
// #1040
A=D+A
// #1041
D=M
//^^ push_d_to_stack
// #1042
@SP
// #1043
A=M
// #1044
M=D
// #1045
@SP
// #1046
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 1
//^^ push_constant(1)
// #1047
@1
// #1048
D=A
//^^ push_d_to_stack
// #1049
@SP
// #1050
A=M
// #1051
M=D
// #1052
@SP
// #1053
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #1054
@SP
// #1055
M=M-1
// #1056
A=M
// #1057
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #1058
@R13
// #1059
M=D
//^^ pop_stack_to_d
// #1060
@SP
// #1061
M=M-1
// #1062
A=M
// #1063
D=M
//vv pop_stack_to_d
// #1064
@R13
// #1065
D=D+M
// #1066
@R13
// #1067
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #1068
@SP
// #1069
A=M
// #1070
M=D
// #1071
@SP
// #1072
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
// #1073
@LCL
// #1074
D=M
// #1075
@0
// #1076
D=D+A
// #1077
@R13
// #1078
M=D
//^^ pop_stack_to_d
// #1079
@SP
// #1080
M=M-1
// #1081
A=M
// #1082
D=M
//vv pop_stack_to_d
// #1083
@R13
// #1084
A=M
// #1085
M=D
// #1086
@R13
// #1087
M=0
//vv pop_to_ram(LCL, 0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #1088
@LCL
// #1089
D=M
// #1090
@0
// #1091
A=D+A
// #1092
D=M
//^^ push_d_to_stack
// #1093
@SP
// #1094
A=M
// #1095
M=D
// #1096
@SP
// #1097
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push static 0
//^^ push_from_loc(Math.vm.0)
// #1098
@Math.vm.0
// #1099
D=M
//^^ push_d_to_stack
// #1100
@SP
// #1101
A=M
// #1102
M=D
// #1103
@SP
// #1104
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Math.vm.0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #1105
@SP
// #1106
M=M-1
// #1107
A=M
// #1108
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #1109
@R13
// #1110
M=D
//^^ pop_stack_to_d
// #1111
@SP
// #1112
M=M-1
// #1113
A=M
// #1114
D=M
//vv pop_stack_to_d
// #1115
@R13
// #1116
D=D+M
// #1117
@R13
// #1118
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #1119
@SP
// #1120
A=M
// #1121
M=D
// #1122
@SP
// #1123
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #1124
@LCL
// #1125
D=M
// #1126
@0
// #1127
A=D+A
// #1128
D=M
//^^ push_d_to_stack
// #1129
@SP
// #1130
A=M
// #1131
M=D
// #1132
@SP
// #1133
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 1
//^^ push_constant(1)
// #1134
@1
// #1135
D=A
//^^ push_d_to_stack
// #1136
@SP
// #1137
A=M
// #1138
M=D
// #1139
@SP
// #1140
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #1141
@SP
// #1142
M=M-1
// #1143
A=M
// #1144
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #1145
@R13
// #1146
M=D
//^^ pop_stack_to_d
// #1147
@SP
// #1148
M=M-1
// #1149
A=M
// #1150
D=M
//vv pop_stack_to_d
// #1151
@R13
// #1152
D=D-M
// #1153
@R13
// #1154
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #1155
@SP
// #1156
A=M
// #1157
M=D
// #1158
@SP
// #1159
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// push static 0
//^^ push_from_loc(Math.vm.0)
// #1160
@Math.vm.0
// #1161
D=M
//^^ push_d_to_stack
// #1162
@SP
// #1163
A=M
// #1164
M=D
// #1165
@SP
// #1166
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Math.vm.0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #1167
@SP
// #1168
M=M-1
// #1169
A=M
// #1170
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #1171
@R13
// #1172
M=D
//^^ pop_stack_to_d
// #1173
@SP
// #1174
M=M-1
// #1175
A=M
// #1176
D=M
//vv pop_stack_to_d
// #1177
@R13
// #1178
D=D+M
// #1179
@R13
// #1180
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #1181
@SP
// #1182
A=M
// #1183
M=D
// #1184
@SP
// #1185
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #1186
@SP
// #1187
M=M-1
// #1188
A=M
// #1189
D=M
//vv pop_stack_to_d
// #1190
@4
// #1191
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #1192
@THAT
// #1193
D=M
// #1194
@0
// #1195
A=D+A
// #1196
D=M
//^^ push_d_to_stack
// #1197
@SP
// #1198
A=M
// #1199
M=D
// #1200
@SP
// #1201
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #1202
@LCL
// #1203
D=M
// #1204
@0
// #1205
A=D+A
// #1206
D=M
//^^ push_d_to_stack
// #1207
@SP
// #1208
A=M
// #1209
M=D
// #1210
@SP
// #1211
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 1
//^^ push_constant(1)
// #1212
@1
// #1213
D=A
//^^ push_d_to_stack
// #1214
@SP
// #1215
A=M
// #1216
M=D
// #1217
@SP
// #1218
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #1219
@SP
// #1220
M=M-1
// #1221
A=M
// #1222
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #1223
@R13
// #1224
M=D
//^^ pop_stack_to_d
// #1225
@SP
// #1226
M=M-1
// #1227
A=M
// #1228
D=M
//vv pop_stack_to_d
// #1229
@R13
// #1230
D=D-M
// #1231
@R13
// #1232
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #1233
@SP
// #1234
A=M
// #1235
M=D
// #1236
@SP
// #1237
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// push static 0
//^^ push_from_loc(Math.vm.0)
// #1238
@Math.vm.0
// #1239
D=M
//^^ push_d_to_stack
// #1240
@SP
// #1241
A=M
// #1242
M=D
// #1243
@SP
// #1244
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Math.vm.0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #1245
@SP
// #1246
M=M-1
// #1247
A=M
// #1248
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #1249
@R13
// #1250
M=D
//^^ pop_stack_to_d
// #1251
@SP
// #1252
M=M-1
// #1253
A=M
// #1254
D=M
//vv pop_stack_to_d
// #1255
@R13
// #1256
D=D+M
// #1257
@R13
// #1258
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #1259
@SP
// #1260
A=M
// #1261
M=D
// #1262
@SP
// #1263
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #1264
@SP
// #1265
M=M-1
// #1266
A=M
// #1267
D=M
//vv pop_stack_to_d
// #1268
@4
// #1269
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #1270
@THAT
// #1271
D=M
// #1272
@0
// #1273
A=D+A
// #1274
D=M
//^^ push_d_to_stack
// #1275
@SP
// #1276
A=M
// #1277
M=D
// #1278
@SP
// #1279
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #1280
@SP
// #1281
M=M-1
// #1282
A=M
// #1283
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #1284
@R13
// #1285
M=D
//^^ pop_stack_to_d
// #1286
@SP
// #1287
M=M-1
// #1288
A=M
// #1289
D=M
//vv pop_stack_to_d
// #1290
@R13
// #1291
D=D+M
// #1292
@R13
// #1293
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #1294
@SP
// #1295
A=M
// #1296
M=D
// #1297
@SP
// #1298
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #1299
@SP
// #1300
M=M-1
// #1301
A=M
// #1302
D=M
//vv pop_stack_to_d
// #1303
@5
// #1304
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #1305
@SP
// #1306
M=M-1
// #1307
A=M
// #1308
D=M
//vv pop_stack_to_d
// #1309
@4
// #1310
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #1311
@5
// #1312
D=M
//^^ push_d_to_stack
// #1313
@SP
// #1314
A=M
// #1315
M=D
// #1316
@SP
// #1317
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #1318
@THAT
// #1319
D=M
// #1320
@0
// #1321
D=D+A
// #1322
@R13
// #1323
M=D
//^^ pop_stack_to_d
// #1324
@SP
// #1325
M=M-1
// #1326
A=M
// #1327
D=M
//vv pop_stack_to_d
// #1328
@R13
// #1329
A=M
// #1330
M=D
// #1331
@R13
// #1332
M=0
//vv pop_to_ram(THAT, 0)
//
//// goto WHILE_EXP0
// #1333
@Math.init$WHILE_EXP0
// #1334
0;JMP
//
//// label WHILE_END0
(Math.init$WHILE_END0)
//
//// push constant 0
//^^ push_constant(0)
// #1335
@0
// #1336
D=A
//^^ push_d_to_stack
// #1337
@SP
// #1338
A=M
// #1339
M=D
// #1340
@SP
// #1341
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #1342
@LCL
// #1343
D=M
// #1344
@R14
// #1345
M=D //R14=LCL
// #1346
@5
// #1347
A=D-A
// #1348
D=M
// #1349
@R15
// #1350
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #1351
@SP
// #1352
M=M-1
// #1353
A=M
// #1354
D=M
//vv pop_stack_to_d
// #1355
@ARG
// #1356
A=M
// #1357
M=D //*ARG = pop()
// #1358
@ARG
// #1359
D=M
// #1360
@SP
// #1361
M=D+1 //SP=ARG+1
// #1362
@R14
// #1363
AM=M-1
// #1364
D=M
// #1365
@THAT
// #1366
M=D //THAT = *(--R14)
// #1367
@R14
// #1368
AM=M-1
// #1369
D=M
// #1370
@THIS
// #1371
M=D //THIS = *(--R14)
// #1372
@R14
// #1373
AM=M-1
// #1374
D=M
// #1375
@ARG
// #1376
M=D //ARG = *(--R14)
// #1377
@R14
// #1378
AM=M-1
// #1379
D=M
// #1380
@LCL
// #1381
M=D //LCL = *(--R14)
// #1382
@R15
// #1383
A=M
// #1384
0;JMP //goto *R15
//
//// function Math.abs 0
(Math.abs)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #1385
@ARG
// #1386
D=M
// #1387
@0
// #1388
A=D+A
// #1389
D=M
//^^ push_d_to_stack
// #1390
@SP
// #1391
A=M
// #1392
M=D
// #1393
@SP
// #1394
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push constant 0
//^^ push_constant(0)
// #1395
@0
// #1396
D=A
//^^ push_d_to_stack
// #1397
@SP
// #1398
A=M
// #1399
M=D
// #1400
@SP
// #1401
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #1402
@SP
// #1403
M=M-1
// #1404
A=M
// #1405
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #1406
@R13
// #1407
M=D
//^^ pop_stack_to_d
// #1408
@SP
// #1409
M=M-1
// #1410
A=M
// #1411
D=M
//vv pop_stack_to_d
// #1412
@R13
// #1413
D=D-M
// #1414
@R13
// #1415
M=0
//vv arith_d_with_stack_top(D-M)
// #1416
@PUT_TRUE_32
// #1417
D;JLT
// #1418
@R13
// #1419
M=0
// #1420
@CONT_32
// #1421
0;JMP
(PUT_TRUE_32)
// #1422
@R13
// #1423
M=-1
(CONT_32)
// #1424
@R13
// #1425
D=M
// #1426
@R13
// #1427
M=0
//^^ push_d_to_stack
// #1428
@SP
// #1429
A=M
// #1430
M=D
// #1431
@SP
// #1432
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// if-goto IF_TRUE0
//^^ pop_stack_to_d
// #1433
@SP
// #1434
M=M-1
// #1435
A=M
// #1436
D=M
//vv pop_stack_to_d
// #1437
@Math.abs$IF_TRUE0
// #1438
D;JNE
//
//// goto IF_FALSE0
// #1439
@Math.abs$IF_FALSE0
// #1440
0;JMP
//
//// label IF_TRUE0
(Math.abs$IF_TRUE0)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #1441
@ARG
// #1442
D=M
// #1443
@0
// #1444
A=D+A
// #1445
D=M
//^^ push_d_to_stack
// #1446
@SP
// #1447
A=M
// #1448
M=D
// #1449
@SP
// #1450
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// neg
//^^ arith_unary_op(-)
//^^ pop_stack_to_d
// #1451
@SP
// #1452
M=M-1
// #1453
A=M
// #1454
D=M
//vv pop_stack_to_d
// #1455
D=-D
//^^ push_d_to_stack
// #1456
@SP
// #1457
A=M
// #1458
M=D
// #1459
@SP
// #1460
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(-)
//
//// pop argument 0
//^^ pop_to_ram(ARG, 0)
// #1461
@ARG
// #1462
D=M
// #1463
@0
// #1464
D=D+A
// #1465
@R13
// #1466
M=D
//^^ pop_stack_to_d
// #1467
@SP
// #1468
M=M-1
// #1469
A=M
// #1470
D=M
//vv pop_stack_to_d
// #1471
@R13
// #1472
A=M
// #1473
M=D
// #1474
@R13
// #1475
M=0
//vv pop_to_ram(ARG, 0)
//
//// label IF_FALSE0
(Math.abs$IF_FALSE0)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #1476
@ARG
// #1477
D=M
// #1478
@0
// #1479
A=D+A
// #1480
D=M
//^^ push_d_to_stack
// #1481
@SP
// #1482
A=M
// #1483
M=D
// #1484
@SP
// #1485
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// return
// #1486
@LCL
// #1487
D=M
// #1488
@R14
// #1489
M=D //R14=LCL
// #1490
@5
// #1491
A=D-A
// #1492
D=M
// #1493
@R15
// #1494
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #1495
@SP
// #1496
M=M-1
// #1497
A=M
// #1498
D=M
//vv pop_stack_to_d
// #1499
@ARG
// #1500
A=M
// #1501
M=D //*ARG = pop()
// #1502
@ARG
// #1503
D=M
// #1504
@SP
// #1505
M=D+1 //SP=ARG+1
// #1506
@R14
// #1507
AM=M-1
// #1508
D=M
// #1509
@THAT
// #1510
M=D //THAT = *(--R14)
// #1511
@R14
// #1512
AM=M-1
// #1513
D=M
// #1514
@THIS
// #1515
M=D //THIS = *(--R14)
// #1516
@R14
// #1517
AM=M-1
// #1518
D=M
// #1519
@ARG
// #1520
M=D //ARG = *(--R14)
// #1521
@R14
// #1522
AM=M-1
// #1523
D=M
// #1524
@LCL
// #1525
M=D //LCL = *(--R14)
// #1526
@R15
// #1527
A=M
// #1528
0;JMP //goto *R15
//
//// function Math.multiply 5
(Math.multiply)
// #1529
D=0
//^^ push_d_to_stack
// #1530
@SP
// #1531
A=M
// #1532
M=D
// #1533
@SP
// #1534
M=M+1
//vv push_d_to_stack
// #1535
D=0
//^^ push_d_to_stack
// #1536
@SP
// #1537
A=M
// #1538
M=D
// #1539
@SP
// #1540
M=M+1
//vv push_d_to_stack
// #1541
D=0
//^^ push_d_to_stack
// #1542
@SP
// #1543
A=M
// #1544
M=D
// #1545
@SP
// #1546
M=M+1
//vv push_d_to_stack
// #1547
D=0
//^^ push_d_to_stack
// #1548
@SP
// #1549
A=M
// #1550
M=D
// #1551
@SP
// #1552
M=M+1
//vv push_d_to_stack
// #1553
D=0
//^^ push_d_to_stack
// #1554
@SP
// #1555
A=M
// #1556
M=D
// #1557
@SP
// #1558
M=M+1
//vv push_d_to_stack
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #1559
@ARG
// #1560
D=M
// #1561
@0
// #1562
A=D+A
// #1563
D=M
//^^ push_d_to_stack
// #1564
@SP
// #1565
A=M
// #1566
M=D
// #1567
@SP
// #1568
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push constant 0
//^^ push_constant(0)
// #1569
@0
// #1570
D=A
//^^ push_d_to_stack
// #1571
@SP
// #1572
A=M
// #1573
M=D
// #1574
@SP
// #1575
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #1576
@SP
// #1577
M=M-1
// #1578
A=M
// #1579
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #1580
@R13
// #1581
M=D
//^^ pop_stack_to_d
// #1582
@SP
// #1583
M=M-1
// #1584
A=M
// #1585
D=M
//vv pop_stack_to_d
// #1586
@R13
// #1587
D=D-M
// #1588
@R13
// #1589
M=0
//vv arith_d_with_stack_top(D-M)
// #1590
@PUT_TRUE_33
// #1591
D;JLT
// #1592
@R13
// #1593
M=0
// #1594
@CONT_33
// #1595
0;JMP
(PUT_TRUE_33)
// #1596
@R13
// #1597
M=-1
(CONT_33)
// #1598
@R13
// #1599
D=M
// #1600
@R13
// #1601
M=0
//^^ push_d_to_stack
// #1602
@SP
// #1603
A=M
// #1604
M=D
// #1605
@SP
// #1606
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// push argument 1
//^^ push_from_ram(ARG, 1)
// #1607
@ARG
// #1608
D=M
// #1609
@1
// #1610
A=D+A
// #1611
D=M
//^^ push_d_to_stack
// #1612
@SP
// #1613
A=M
// #1614
M=D
// #1615
@SP
// #1616
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 1)
//
//// push constant 0
//^^ push_constant(0)
// #1617
@0
// #1618
D=A
//^^ push_d_to_stack
// #1619
@SP
// #1620
A=M
// #1621
M=D
// #1622
@SP
// #1623
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// gt
//^^ arith_cmp_op(JGT)
//^^ pop_stack_to_d
// #1624
@SP
// #1625
M=M-1
// #1626
A=M
// #1627
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #1628
@R13
// #1629
M=D
//^^ pop_stack_to_d
// #1630
@SP
// #1631
M=M-1
// #1632
A=M
// #1633
D=M
//vv pop_stack_to_d
// #1634
@R13
// #1635
D=D-M
// #1636
@R13
// #1637
M=0
//vv arith_d_with_stack_top(D-M)
// #1638
@PUT_TRUE_34
// #1639
D;JGT
// #1640
@R13
// #1641
M=0
// #1642
@CONT_34
// #1643
0;JMP
(PUT_TRUE_34)
// #1644
@R13
// #1645
M=-1
(CONT_34)
// #1646
@R13
// #1647
D=M
// #1648
@R13
// #1649
M=0
//^^ push_d_to_stack
// #1650
@SP
// #1651
A=M
// #1652
M=D
// #1653
@SP
// #1654
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JGT)
//
//// and
//^^ arith_binary_op(&)
//^^ pop_stack_to_d
// #1655
@SP
// #1656
M=M-1
// #1657
A=M
// #1658
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D&M)
// #1659
@R13
// #1660
M=D
//^^ pop_stack_to_d
// #1661
@SP
// #1662
M=M-1
// #1663
A=M
// #1664
D=M
//vv pop_stack_to_d
// #1665
@R13
// #1666
D=D&M
// #1667
@R13
// #1668
M=0
//vv arith_d_with_stack_top(D&M)
//^^ push_d_to_stack
// #1669
@SP
// #1670
A=M
// #1671
M=D
// #1672
@SP
// #1673
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(&)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #1674
@ARG
// #1675
D=M
// #1676
@0
// #1677
A=D+A
// #1678
D=M
//^^ push_d_to_stack
// #1679
@SP
// #1680
A=M
// #1681
M=D
// #1682
@SP
// #1683
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push constant 0
//^^ push_constant(0)
// #1684
@0
// #1685
D=A
//^^ push_d_to_stack
// #1686
@SP
// #1687
A=M
// #1688
M=D
// #1689
@SP
// #1690
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// gt
//^^ arith_cmp_op(JGT)
//^^ pop_stack_to_d
// #1691
@SP
// #1692
M=M-1
// #1693
A=M
// #1694
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #1695
@R13
// #1696
M=D
//^^ pop_stack_to_d
// #1697
@SP
// #1698
M=M-1
// #1699
A=M
// #1700
D=M
//vv pop_stack_to_d
// #1701
@R13
// #1702
D=D-M
// #1703
@R13
// #1704
M=0
//vv arith_d_with_stack_top(D-M)
// #1705
@PUT_TRUE_35
// #1706
D;JGT
// #1707
@R13
// #1708
M=0
// #1709
@CONT_35
// #1710
0;JMP
(PUT_TRUE_35)
// #1711
@R13
// #1712
M=-1
(CONT_35)
// #1713
@R13
// #1714
D=M
// #1715
@R13
// #1716
M=0
//^^ push_d_to_stack
// #1717
@SP
// #1718
A=M
// #1719
M=D
// #1720
@SP
// #1721
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JGT)
//
//// push argument 1
//^^ push_from_ram(ARG, 1)
// #1722
@ARG
// #1723
D=M
// #1724
@1
// #1725
A=D+A
// #1726
D=M
//^^ push_d_to_stack
// #1727
@SP
// #1728
A=M
// #1729
M=D
// #1730
@SP
// #1731
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 1)
//
//// push constant 0
//^^ push_constant(0)
// #1732
@0
// #1733
D=A
//^^ push_d_to_stack
// #1734
@SP
// #1735
A=M
// #1736
M=D
// #1737
@SP
// #1738
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #1739
@SP
// #1740
M=M-1
// #1741
A=M
// #1742
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #1743
@R13
// #1744
M=D
//^^ pop_stack_to_d
// #1745
@SP
// #1746
M=M-1
// #1747
A=M
// #1748
D=M
//vv pop_stack_to_d
// #1749
@R13
// #1750
D=D-M
// #1751
@R13
// #1752
M=0
//vv arith_d_with_stack_top(D-M)
// #1753
@PUT_TRUE_36
// #1754
D;JLT
// #1755
@R13
// #1756
M=0
// #1757
@CONT_36
// #1758
0;JMP
(PUT_TRUE_36)
// #1759
@R13
// #1760
M=-1
(CONT_36)
// #1761
@R13
// #1762
D=M
// #1763
@R13
// #1764
M=0
//^^ push_d_to_stack
// #1765
@SP
// #1766
A=M
// #1767
M=D
// #1768
@SP
// #1769
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// and
//^^ arith_binary_op(&)
//^^ pop_stack_to_d
// #1770
@SP
// #1771
M=M-1
// #1772
A=M
// #1773
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D&M)
// #1774
@R13
// #1775
M=D
//^^ pop_stack_to_d
// #1776
@SP
// #1777
M=M-1
// #1778
A=M
// #1779
D=M
//vv pop_stack_to_d
// #1780
@R13
// #1781
D=D&M
// #1782
@R13
// #1783
M=0
//vv arith_d_with_stack_top(D&M)
//^^ push_d_to_stack
// #1784
@SP
// #1785
A=M
// #1786
M=D
// #1787
@SP
// #1788
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(&)
//
//// or
//^^ arith_binary_op(|)
//^^ pop_stack_to_d
// #1789
@SP
// #1790
M=M-1
// #1791
A=M
// #1792
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D|M)
// #1793
@R13
// #1794
M=D
//^^ pop_stack_to_d
// #1795
@SP
// #1796
M=M-1
// #1797
A=M
// #1798
D=M
//vv pop_stack_to_d
// #1799
@R13
// #1800
D=D|M
// #1801
@R13
// #1802
M=0
//vv arith_d_with_stack_top(D|M)
//^^ push_d_to_stack
// #1803
@SP
// #1804
A=M
// #1805
M=D
// #1806
@SP
// #1807
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(|)
//
//// pop local 4
//^^ pop_to_ram(LCL, 4)
// #1808
@LCL
// #1809
D=M
// #1810
@4
// #1811
D=D+A
// #1812
@R13
// #1813
M=D
//^^ pop_stack_to_d
// #1814
@SP
// #1815
M=M-1
// #1816
A=M
// #1817
D=M
//vv pop_stack_to_d
// #1818
@R13
// #1819
A=M
// #1820
M=D
// #1821
@R13
// #1822
M=0
//vv pop_to_ram(LCL, 4)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #1823
@ARG
// #1824
D=M
// #1825
@0
// #1826
A=D+A
// #1827
D=M
//^^ push_d_to_stack
// #1828
@SP
// #1829
A=M
// #1830
M=D
// #1831
@SP
// #1832
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// call Math.abs 1
//^^ push_constant(RET_ADDR_37)
// #1833
@RET_ADDR_37
// #1834
D=A
//^^ push_d_to_stack
// #1835
@SP
// #1836
A=M
// #1837
M=D
// #1838
@SP
// #1839
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_37)
//push return-address
// #1840
@LCL
// #1841
D=M
//^^ push_d_to_stack
// #1842
@SP
// #1843
A=M
// #1844
M=D
// #1845
@SP
// #1846
M=M+1
//vv push_d_to_stack
//push LCL
// #1847
@ARG
// #1848
D=M
//^^ push_d_to_stack
// #1849
@SP
// #1850
A=M
// #1851
M=D
// #1852
@SP
// #1853
M=M+1
//vv push_d_to_stack
//push ARG
// #1854
@THIS
// #1855
D=M
//^^ push_d_to_stack
// #1856
@SP
// #1857
A=M
// #1858
M=D
// #1859
@SP
// #1860
M=M+1
//vv push_d_to_stack
//push THIS
// #1861
@THAT
// #1862
D=M
//^^ push_d_to_stack
// #1863
@SP
// #1864
A=M
// #1865
M=D
// #1866
@SP
// #1867
M=M+1
//vv push_d_to_stack
//push THAT
// #1868
@SP
// #1869
D=M
// #1870
@ARG
// #1871
M=D
// #1872
@6
// #1873
D=A
// #1874
@ARG
// #1875
M=M-D // ARG = SP - args - 5
// #1876
@SP
// #1877
D=M
// #1878
@LCL
// #1879
M=D // LCL = SP
// #1880
@Math.abs
// #1881
0;JMP
(RET_ADDR_37)
//
//// pop argument 0
//^^ pop_to_ram(ARG, 0)
// #1882
@ARG
// #1883
D=M
// #1884
@0
// #1885
D=D+A
// #1886
@R13
// #1887
M=D
//^^ pop_stack_to_d
// #1888
@SP
// #1889
M=M-1
// #1890
A=M
// #1891
D=M
//vv pop_stack_to_d
// #1892
@R13
// #1893
A=M
// #1894
M=D
// #1895
@R13
// #1896
M=0
//vv pop_to_ram(ARG, 0)
//
//// push argument 1
//^^ push_from_ram(ARG, 1)
// #1897
@ARG
// #1898
D=M
// #1899
@1
// #1900
A=D+A
// #1901
D=M
//^^ push_d_to_stack
// #1902
@SP
// #1903
A=M
// #1904
M=D
// #1905
@SP
// #1906
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 1)
//
//// call Math.abs 1
//^^ push_constant(RET_ADDR_38)
// #1907
@RET_ADDR_38
// #1908
D=A
//^^ push_d_to_stack
// #1909
@SP
// #1910
A=M
// #1911
M=D
// #1912
@SP
// #1913
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_38)
//push return-address
// #1914
@LCL
// #1915
D=M
//^^ push_d_to_stack
// #1916
@SP
// #1917
A=M
// #1918
M=D
// #1919
@SP
// #1920
M=M+1
//vv push_d_to_stack
//push LCL
// #1921
@ARG
// #1922
D=M
//^^ push_d_to_stack
// #1923
@SP
// #1924
A=M
// #1925
M=D
// #1926
@SP
// #1927
M=M+1
//vv push_d_to_stack
//push ARG
// #1928
@THIS
// #1929
D=M
//^^ push_d_to_stack
// #1930
@SP
// #1931
A=M
// #1932
M=D
// #1933
@SP
// #1934
M=M+1
//vv push_d_to_stack
//push THIS
// #1935
@THAT
// #1936
D=M
//^^ push_d_to_stack
// #1937
@SP
// #1938
A=M
// #1939
M=D
// #1940
@SP
// #1941
M=M+1
//vv push_d_to_stack
//push THAT
// #1942
@SP
// #1943
D=M
// #1944
@ARG
// #1945
M=D
// #1946
@6
// #1947
D=A
// #1948
@ARG
// #1949
M=M-D // ARG = SP - args - 5
// #1950
@SP
// #1951
D=M
// #1952
@LCL
// #1953
M=D // LCL = SP
// #1954
@Math.abs
// #1955
0;JMP
(RET_ADDR_38)
//
//// pop argument 1
//^^ pop_to_ram(ARG, 1)
// #1956
@ARG
// #1957
D=M
// #1958
@1
// #1959
D=D+A
// #1960
@R13
// #1961
M=D
//^^ pop_stack_to_d
// #1962
@SP
// #1963
M=M-1
// #1964
A=M
// #1965
D=M
//vv pop_stack_to_d
// #1966
@R13
// #1967
A=M
// #1968
M=D
// #1969
@R13
// #1970
M=0
//vv pop_to_ram(ARG, 1)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #1971
@ARG
// #1972
D=M
// #1973
@0
// #1974
A=D+A
// #1975
D=M
//^^ push_d_to_stack
// #1976
@SP
// #1977
A=M
// #1978
M=D
// #1979
@SP
// #1980
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push argument 1
//^^ push_from_ram(ARG, 1)
// #1981
@ARG
// #1982
D=M
// #1983
@1
// #1984
A=D+A
// #1985
D=M
//^^ push_d_to_stack
// #1986
@SP
// #1987
A=M
// #1988
M=D
// #1989
@SP
// #1990
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 1)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #1991
@SP
// #1992
M=M-1
// #1993
A=M
// #1994
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #1995
@R13
// #1996
M=D
//^^ pop_stack_to_d
// #1997
@SP
// #1998
M=M-1
// #1999
A=M
// #2000
D=M
//vv pop_stack_to_d
// #2001
@R13
// #2002
D=D-M
// #2003
@R13
// #2004
M=0
//vv arith_d_with_stack_top(D-M)
// #2005
@PUT_TRUE_39
// #2006
D;JLT
// #2007
@R13
// #2008
M=0
// #2009
@CONT_39
// #2010
0;JMP
(PUT_TRUE_39)
// #2011
@R13
// #2012
M=-1
(CONT_39)
// #2013
@R13
// #2014
D=M
// #2015
@R13
// #2016
M=0
//^^ push_d_to_stack
// #2017
@SP
// #2018
A=M
// #2019
M=D
// #2020
@SP
// #2021
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// if-goto IF_TRUE0
//^^ pop_stack_to_d
// #2022
@SP
// #2023
M=M-1
// #2024
A=M
// #2025
D=M
//vv pop_stack_to_d
// #2026
@Math.multiply$IF_TRUE0
// #2027
D;JNE
//
//// goto IF_FALSE0
// #2028
@Math.multiply$IF_FALSE0
// #2029
0;JMP
//
//// label IF_TRUE0
(Math.multiply$IF_TRUE0)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #2030
@ARG
// #2031
D=M
// #2032
@0
// #2033
A=D+A
// #2034
D=M
//^^ push_d_to_stack
// #2035
@SP
// #2036
A=M
// #2037
M=D
// #2038
@SP
// #2039
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// pop local 1
//^^ pop_to_ram(LCL, 1)
// #2040
@LCL
// #2041
D=M
// #2042
@1
// #2043
D=D+A
// #2044
@R13
// #2045
M=D
//^^ pop_stack_to_d
// #2046
@SP
// #2047
M=M-1
// #2048
A=M
// #2049
D=M
//vv pop_stack_to_d
// #2050
@R13
// #2051
A=M
// #2052
M=D
// #2053
@R13
// #2054
M=0
//vv pop_to_ram(LCL, 1)
//
//// push argument 1
//^^ push_from_ram(ARG, 1)
// #2055
@ARG
// #2056
D=M
// #2057
@1
// #2058
A=D+A
// #2059
D=M
//^^ push_d_to_stack
// #2060
@SP
// #2061
A=M
// #2062
M=D
// #2063
@SP
// #2064
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 1)
//
//// pop argument 0
//^^ pop_to_ram(ARG, 0)
// #2065
@ARG
// #2066
D=M
// #2067
@0
// #2068
D=D+A
// #2069
@R13
// #2070
M=D
//^^ pop_stack_to_d
// #2071
@SP
// #2072
M=M-1
// #2073
A=M
// #2074
D=M
//vv pop_stack_to_d
// #2075
@R13
// #2076
A=M
// #2077
M=D
// #2078
@R13
// #2079
M=0
//vv pop_to_ram(ARG, 0)
//
//// push local 1
//^^ push_from_ram(LCL, 1)
// #2080
@LCL
// #2081
D=M
// #2082
@1
// #2083
A=D+A
// #2084
D=M
//^^ push_d_to_stack
// #2085
@SP
// #2086
A=M
// #2087
M=D
// #2088
@SP
// #2089
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 1)
//
//// pop argument 1
//^^ pop_to_ram(ARG, 1)
// #2090
@ARG
// #2091
D=M
// #2092
@1
// #2093
D=D+A
// #2094
@R13
// #2095
M=D
//^^ pop_stack_to_d
// #2096
@SP
// #2097
M=M-1
// #2098
A=M
// #2099
D=M
//vv pop_stack_to_d
// #2100
@R13
// #2101
A=M
// #2102
M=D
// #2103
@R13
// #2104
M=0
//vv pop_to_ram(ARG, 1)
//
//// label IF_FALSE0
(Math.multiply$IF_FALSE0)
//
//// label WHILE_EXP0
(Math.multiply$WHILE_EXP0)
//
//// push local 2
//^^ push_from_ram(LCL, 2)
// #2105
@LCL
// #2106
D=M
// #2107
@2
// #2108
A=D+A
// #2109
D=M
//^^ push_d_to_stack
// #2110
@SP
// #2111
A=M
// #2112
M=D
// #2113
@SP
// #2114
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 2)
//
//// push argument 1
//^^ push_from_ram(ARG, 1)
// #2115
@ARG
// #2116
D=M
// #2117
@1
// #2118
A=D+A
// #2119
D=M
//^^ push_d_to_stack
// #2120
@SP
// #2121
A=M
// #2122
M=D
// #2123
@SP
// #2124
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 1)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #2125
@SP
// #2126
M=M-1
// #2127
A=M
// #2128
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #2129
@R13
// #2130
M=D
//^^ pop_stack_to_d
// #2131
@SP
// #2132
M=M-1
// #2133
A=M
// #2134
D=M
//vv pop_stack_to_d
// #2135
@R13
// #2136
D=D-M
// #2137
@R13
// #2138
M=0
//vv arith_d_with_stack_top(D-M)
// #2139
@PUT_TRUE_40
// #2140
D;JLT
// #2141
@R13
// #2142
M=0
// #2143
@CONT_40
// #2144
0;JMP
(PUT_TRUE_40)
// #2145
@R13
// #2146
M=-1
(CONT_40)
// #2147
@R13
// #2148
D=M
// #2149
@R13
// #2150
M=0
//^^ push_d_to_stack
// #2151
@SP
// #2152
A=M
// #2153
M=D
// #2154
@SP
// #2155
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #2156
@SP
// #2157
M=M-1
// #2158
A=M
// #2159
D=M
//vv pop_stack_to_d
// #2160
D=!D
//^^ push_d_to_stack
// #2161
@SP
// #2162
A=M
// #2163
M=D
// #2164
@SP
// #2165
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// if-goto WHILE_END0
//^^ pop_stack_to_d
// #2166
@SP
// #2167
M=M-1
// #2168
A=M
// #2169
D=M
//vv pop_stack_to_d
// #2170
@Math.multiply$WHILE_END0
// #2171
D;JNE
//
//// push local 3
//^^ push_from_ram(LCL, 3)
// #2172
@LCL
// #2173
D=M
// #2174
@3
// #2175
A=D+A
// #2176
D=M
//^^ push_d_to_stack
// #2177
@SP
// #2178
A=M
// #2179
M=D
// #2180
@SP
// #2181
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 3)
//
//// push static 0
//^^ push_from_loc(Math.vm.0)
// #2182
@Math.vm.0
// #2183
D=M
//^^ push_d_to_stack
// #2184
@SP
// #2185
A=M
// #2186
M=D
// #2187
@SP
// #2188
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Math.vm.0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #2189
@SP
// #2190
M=M-1
// #2191
A=M
// #2192
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #2193
@R13
// #2194
M=D
//^^ pop_stack_to_d
// #2195
@SP
// #2196
M=M-1
// #2197
A=M
// #2198
D=M
//vv pop_stack_to_d
// #2199
@R13
// #2200
D=D+M
// #2201
@R13
// #2202
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #2203
@SP
// #2204
A=M
// #2205
M=D
// #2206
@SP
// #2207
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #2208
@SP
// #2209
M=M-1
// #2210
A=M
// #2211
D=M
//vv pop_stack_to_d
// #2212
@4
// #2213
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #2214
@THAT
// #2215
D=M
// #2216
@0
// #2217
A=D+A
// #2218
D=M
//^^ push_d_to_stack
// #2219
@SP
// #2220
A=M
// #2221
M=D
// #2222
@SP
// #2223
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// push argument 1
//^^ push_from_ram(ARG, 1)
// #2224
@ARG
// #2225
D=M
// #2226
@1
// #2227
A=D+A
// #2228
D=M
//^^ push_d_to_stack
// #2229
@SP
// #2230
A=M
// #2231
M=D
// #2232
@SP
// #2233
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 1)
//
//// and
//^^ arith_binary_op(&)
//^^ pop_stack_to_d
// #2234
@SP
// #2235
M=M-1
// #2236
A=M
// #2237
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D&M)
// #2238
@R13
// #2239
M=D
//^^ pop_stack_to_d
// #2240
@SP
// #2241
M=M-1
// #2242
A=M
// #2243
D=M
//vv pop_stack_to_d
// #2244
@R13
// #2245
D=D&M
// #2246
@R13
// #2247
M=0
//vv arith_d_with_stack_top(D&M)
//^^ push_d_to_stack
// #2248
@SP
// #2249
A=M
// #2250
M=D
// #2251
@SP
// #2252
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(&)
//
//// push constant 0
//^^ push_constant(0)
// #2253
@0
// #2254
D=A
//^^ push_d_to_stack
// #2255
@SP
// #2256
A=M
// #2257
M=D
// #2258
@SP
// #2259
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// gt
//^^ arith_cmp_op(JGT)
//^^ pop_stack_to_d
// #2260
@SP
// #2261
M=M-1
// #2262
A=M
// #2263
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #2264
@R13
// #2265
M=D
//^^ pop_stack_to_d
// #2266
@SP
// #2267
M=M-1
// #2268
A=M
// #2269
D=M
//vv pop_stack_to_d
// #2270
@R13
// #2271
D=D-M
// #2272
@R13
// #2273
M=0
//vv arith_d_with_stack_top(D-M)
// #2274
@PUT_TRUE_41
// #2275
D;JGT
// #2276
@R13
// #2277
M=0
// #2278
@CONT_41
// #2279
0;JMP
(PUT_TRUE_41)
// #2280
@R13
// #2281
M=-1
(CONT_41)
// #2282
@R13
// #2283
D=M
// #2284
@R13
// #2285
M=0
//^^ push_d_to_stack
// #2286
@SP
// #2287
A=M
// #2288
M=D
// #2289
@SP
// #2290
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JGT)
//
//// if-goto IF_TRUE1
//^^ pop_stack_to_d
// #2291
@SP
// #2292
M=M-1
// #2293
A=M
// #2294
D=M
//vv pop_stack_to_d
// #2295
@Math.multiply$IF_TRUE1
// #2296
D;JNE
//
//// goto IF_FALSE1
// #2297
@Math.multiply$IF_FALSE1
// #2298
0;JMP
//
//// label IF_TRUE1
(Math.multiply$IF_TRUE1)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #2299
@LCL
// #2300
D=M
// #2301
@0
// #2302
A=D+A
// #2303
D=M
//^^ push_d_to_stack
// #2304
@SP
// #2305
A=M
// #2306
M=D
// #2307
@SP
// #2308
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #2309
@ARG
// #2310
D=M
// #2311
@0
// #2312
A=D+A
// #2313
D=M
//^^ push_d_to_stack
// #2314
@SP
// #2315
A=M
// #2316
M=D
// #2317
@SP
// #2318
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #2319
@SP
// #2320
M=M-1
// #2321
A=M
// #2322
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #2323
@R13
// #2324
M=D
//^^ pop_stack_to_d
// #2325
@SP
// #2326
M=M-1
// #2327
A=M
// #2328
D=M
//vv pop_stack_to_d
// #2329
@R13
// #2330
D=D+M
// #2331
@R13
// #2332
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #2333
@SP
// #2334
A=M
// #2335
M=D
// #2336
@SP
// #2337
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
// #2338
@LCL
// #2339
D=M
// #2340
@0
// #2341
D=D+A
// #2342
@R13
// #2343
M=D
//^^ pop_stack_to_d
// #2344
@SP
// #2345
M=M-1
// #2346
A=M
// #2347
D=M
//vv pop_stack_to_d
// #2348
@R13
// #2349
A=M
// #2350
M=D
// #2351
@R13
// #2352
M=0
//vv pop_to_ram(LCL, 0)
//
//// push local 2
//^^ push_from_ram(LCL, 2)
// #2353
@LCL
// #2354
D=M
// #2355
@2
// #2356
A=D+A
// #2357
D=M
//^^ push_d_to_stack
// #2358
@SP
// #2359
A=M
// #2360
M=D
// #2361
@SP
// #2362
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 2)
//
//// push local 3
//^^ push_from_ram(LCL, 3)
// #2363
@LCL
// #2364
D=M
// #2365
@3
// #2366
A=D+A
// #2367
D=M
//^^ push_d_to_stack
// #2368
@SP
// #2369
A=M
// #2370
M=D
// #2371
@SP
// #2372
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 3)
//
//// push static 0
//^^ push_from_loc(Math.vm.0)
// #2373
@Math.vm.0
// #2374
D=M
//^^ push_d_to_stack
// #2375
@SP
// #2376
A=M
// #2377
M=D
// #2378
@SP
// #2379
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Math.vm.0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #2380
@SP
// #2381
M=M-1
// #2382
A=M
// #2383
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #2384
@R13
// #2385
M=D
//^^ pop_stack_to_d
// #2386
@SP
// #2387
M=M-1
// #2388
A=M
// #2389
D=M
//vv pop_stack_to_d
// #2390
@R13
// #2391
D=D+M
// #2392
@R13
// #2393
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #2394
@SP
// #2395
A=M
// #2396
M=D
// #2397
@SP
// #2398
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #2399
@SP
// #2400
M=M-1
// #2401
A=M
// #2402
D=M
//vv pop_stack_to_d
// #2403
@4
// #2404
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #2405
@THAT
// #2406
D=M
// #2407
@0
// #2408
A=D+A
// #2409
D=M
//^^ push_d_to_stack
// #2410
@SP
// #2411
A=M
// #2412
M=D
// #2413
@SP
// #2414
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #2415
@SP
// #2416
M=M-1
// #2417
A=M
// #2418
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #2419
@R13
// #2420
M=D
//^^ pop_stack_to_d
// #2421
@SP
// #2422
M=M-1
// #2423
A=M
// #2424
D=M
//vv pop_stack_to_d
// #2425
@R13
// #2426
D=D+M
// #2427
@R13
// #2428
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #2429
@SP
// #2430
A=M
// #2431
M=D
// #2432
@SP
// #2433
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop local 2
//^^ pop_to_ram(LCL, 2)
// #2434
@LCL
// #2435
D=M
// #2436
@2
// #2437
D=D+A
// #2438
@R13
// #2439
M=D
//^^ pop_stack_to_d
// #2440
@SP
// #2441
M=M-1
// #2442
A=M
// #2443
D=M
//vv pop_stack_to_d
// #2444
@R13
// #2445
A=M
// #2446
M=D
// #2447
@R13
// #2448
M=0
//vv pop_to_ram(LCL, 2)
//
//// label IF_FALSE1
(Math.multiply$IF_FALSE1)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #2449
@ARG
// #2450
D=M
// #2451
@0
// #2452
A=D+A
// #2453
D=M
//^^ push_d_to_stack
// #2454
@SP
// #2455
A=M
// #2456
M=D
// #2457
@SP
// #2458
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #2459
@ARG
// #2460
D=M
// #2461
@0
// #2462
A=D+A
// #2463
D=M
//^^ push_d_to_stack
// #2464
@SP
// #2465
A=M
// #2466
M=D
// #2467
@SP
// #2468
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #2469
@SP
// #2470
M=M-1
// #2471
A=M
// #2472
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #2473
@R13
// #2474
M=D
//^^ pop_stack_to_d
// #2475
@SP
// #2476
M=M-1
// #2477
A=M
// #2478
D=M
//vv pop_stack_to_d
// #2479
@R13
// #2480
D=D+M
// #2481
@R13
// #2482
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #2483
@SP
// #2484
A=M
// #2485
M=D
// #2486
@SP
// #2487
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop argument 0
//^^ pop_to_ram(ARG, 0)
// #2488
@ARG
// #2489
D=M
// #2490
@0
// #2491
D=D+A
// #2492
@R13
// #2493
M=D
//^^ pop_stack_to_d
// #2494
@SP
// #2495
M=M-1
// #2496
A=M
// #2497
D=M
//vv pop_stack_to_d
// #2498
@R13
// #2499
A=M
// #2500
M=D
// #2501
@R13
// #2502
M=0
//vv pop_to_ram(ARG, 0)
//
//// push local 3
//^^ push_from_ram(LCL, 3)
// #2503
@LCL
// #2504
D=M
// #2505
@3
// #2506
A=D+A
// #2507
D=M
//^^ push_d_to_stack
// #2508
@SP
// #2509
A=M
// #2510
M=D
// #2511
@SP
// #2512
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 3)
//
//// push constant 1
//^^ push_constant(1)
// #2513
@1
// #2514
D=A
//^^ push_d_to_stack
// #2515
@SP
// #2516
A=M
// #2517
M=D
// #2518
@SP
// #2519
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #2520
@SP
// #2521
M=M-1
// #2522
A=M
// #2523
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #2524
@R13
// #2525
M=D
//^^ pop_stack_to_d
// #2526
@SP
// #2527
M=M-1
// #2528
A=M
// #2529
D=M
//vv pop_stack_to_d
// #2530
@R13
// #2531
D=D+M
// #2532
@R13
// #2533
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #2534
@SP
// #2535
A=M
// #2536
M=D
// #2537
@SP
// #2538
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop local 3
//^^ pop_to_ram(LCL, 3)
// #2539
@LCL
// #2540
D=M
// #2541
@3
// #2542
D=D+A
// #2543
@R13
// #2544
M=D
//^^ pop_stack_to_d
// #2545
@SP
// #2546
M=M-1
// #2547
A=M
// #2548
D=M
//vv pop_stack_to_d
// #2549
@R13
// #2550
A=M
// #2551
M=D
// #2552
@R13
// #2553
M=0
//vv pop_to_ram(LCL, 3)
//
//// goto WHILE_EXP0
// #2554
@Math.multiply$WHILE_EXP0
// #2555
0;JMP
//
//// label WHILE_END0
(Math.multiply$WHILE_END0)
//
//// push local 4
//^^ push_from_ram(LCL, 4)
// #2556
@LCL
// #2557
D=M
// #2558
@4
// #2559
A=D+A
// #2560
D=M
//^^ push_d_to_stack
// #2561
@SP
// #2562
A=M
// #2563
M=D
// #2564
@SP
// #2565
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 4)
//
//// if-goto IF_TRUE2
//^^ pop_stack_to_d
// #2566
@SP
// #2567
M=M-1
// #2568
A=M
// #2569
D=M
//vv pop_stack_to_d
// #2570
@Math.multiply$IF_TRUE2
// #2571
D;JNE
//
//// goto IF_FALSE2
// #2572
@Math.multiply$IF_FALSE2
// #2573
0;JMP
//
//// label IF_TRUE2
(Math.multiply$IF_TRUE2)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #2574
@LCL
// #2575
D=M
// #2576
@0
// #2577
A=D+A
// #2578
D=M
//^^ push_d_to_stack
// #2579
@SP
// #2580
A=M
// #2581
M=D
// #2582
@SP
// #2583
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// neg
//^^ arith_unary_op(-)
//^^ pop_stack_to_d
// #2584
@SP
// #2585
M=M-1
// #2586
A=M
// #2587
D=M
//vv pop_stack_to_d
// #2588
D=-D
//^^ push_d_to_stack
// #2589
@SP
// #2590
A=M
// #2591
M=D
// #2592
@SP
// #2593
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(-)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
// #2594
@LCL
// #2595
D=M
// #2596
@0
// #2597
D=D+A
// #2598
@R13
// #2599
M=D
//^^ pop_stack_to_d
// #2600
@SP
// #2601
M=M-1
// #2602
A=M
// #2603
D=M
//vv pop_stack_to_d
// #2604
@R13
// #2605
A=M
// #2606
M=D
// #2607
@R13
// #2608
M=0
//vv pop_to_ram(LCL, 0)
//
//// label IF_FALSE2
(Math.multiply$IF_FALSE2)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #2609
@LCL
// #2610
D=M
// #2611
@0
// #2612
A=D+A
// #2613
D=M
//^^ push_d_to_stack
// #2614
@SP
// #2615
A=M
// #2616
M=D
// #2617
@SP
// #2618
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// return
// #2619
@LCL
// #2620
D=M
// #2621
@R14
// #2622
M=D //R14=LCL
// #2623
@5
// #2624
A=D-A
// #2625
D=M
// #2626
@R15
// #2627
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #2628
@SP
// #2629
M=M-1
// #2630
A=M
// #2631
D=M
//vv pop_stack_to_d
// #2632
@ARG
// #2633
A=M
// #2634
M=D //*ARG = pop()
// #2635
@ARG
// #2636
D=M
// #2637
@SP
// #2638
M=D+1 //SP=ARG+1
// #2639
@R14
// #2640
AM=M-1
// #2641
D=M
// #2642
@THAT
// #2643
M=D //THAT = *(--R14)
// #2644
@R14
// #2645
AM=M-1
// #2646
D=M
// #2647
@THIS
// #2648
M=D //THIS = *(--R14)
// #2649
@R14
// #2650
AM=M-1
// #2651
D=M
// #2652
@ARG
// #2653
M=D //ARG = *(--R14)
// #2654
@R14
// #2655
AM=M-1
// #2656
D=M
// #2657
@LCL
// #2658
M=D //LCL = *(--R14)
// #2659
@R15
// #2660
A=M
// #2661
0;JMP //goto *R15
//
//// function Math.divide 4
(Math.divide)
// #2662
D=0
//^^ push_d_to_stack
// #2663
@SP
// #2664
A=M
// #2665
M=D
// #2666
@SP
// #2667
M=M+1
//vv push_d_to_stack
// #2668
D=0
//^^ push_d_to_stack
// #2669
@SP
// #2670
A=M
// #2671
M=D
// #2672
@SP
// #2673
M=M+1
//vv push_d_to_stack
// #2674
D=0
//^^ push_d_to_stack
// #2675
@SP
// #2676
A=M
// #2677
M=D
// #2678
@SP
// #2679
M=M+1
//vv push_d_to_stack
// #2680
D=0
//^^ push_d_to_stack
// #2681
@SP
// #2682
A=M
// #2683
M=D
// #2684
@SP
// #2685
M=M+1
//vv push_d_to_stack
//
//// push argument 1
//^^ push_from_ram(ARG, 1)
// #2686
@ARG
// #2687
D=M
// #2688
@1
// #2689
A=D+A
// #2690
D=M
//^^ push_d_to_stack
// #2691
@SP
// #2692
A=M
// #2693
M=D
// #2694
@SP
// #2695
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 1)
//
//// push constant 0
//^^ push_constant(0)
// #2696
@0
// #2697
D=A
//^^ push_d_to_stack
// #2698
@SP
// #2699
A=M
// #2700
M=D
// #2701
@SP
// #2702
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #2703
@SP
// #2704
M=M-1
// #2705
A=M
// #2706
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #2707
@R13
// #2708
M=D
//^^ pop_stack_to_d
// #2709
@SP
// #2710
M=M-1
// #2711
A=M
// #2712
D=M
//vv pop_stack_to_d
// #2713
@R13
// #2714
D=D-M
// #2715
@R13
// #2716
M=0
//vv arith_d_with_stack_top(D-M)
// #2717
@PUT_TRUE_42
// #2718
D;JEQ
// #2719
@R13
// #2720
M=0
// #2721
@CONT_42
// #2722
0;JMP
(PUT_TRUE_42)
// #2723
@R13
// #2724
M=-1
(CONT_42)
// #2725
@R13
// #2726
D=M
// #2727
@R13
// #2728
M=0
//^^ push_d_to_stack
// #2729
@SP
// #2730
A=M
// #2731
M=D
// #2732
@SP
// #2733
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// if-goto IF_TRUE0
//^^ pop_stack_to_d
// #2734
@SP
// #2735
M=M-1
// #2736
A=M
// #2737
D=M
//vv pop_stack_to_d
// #2738
@Math.divide$IF_TRUE0
// #2739
D;JNE
//
//// goto IF_FALSE0
// #2740
@Math.divide$IF_FALSE0
// #2741
0;JMP
//
//// label IF_TRUE0
(Math.divide$IF_TRUE0)
//
//// push constant 3
//^^ push_constant(3)
// #2742
@3
// #2743
D=A
//^^ push_d_to_stack
// #2744
@SP
// #2745
A=M
// #2746
M=D
// #2747
@SP
// #2748
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// call Sys.error 1
//^^ push_constant(RET_ADDR_43)
// #2749
@RET_ADDR_43
// #2750
D=A
//^^ push_d_to_stack
// #2751
@SP
// #2752
A=M
// #2753
M=D
// #2754
@SP
// #2755
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_43)
//push return-address
// #2756
@LCL
// #2757
D=M
//^^ push_d_to_stack
// #2758
@SP
// #2759
A=M
// #2760
M=D
// #2761
@SP
// #2762
M=M+1
//vv push_d_to_stack
//push LCL
// #2763
@ARG
// #2764
D=M
//^^ push_d_to_stack
// #2765
@SP
// #2766
A=M
// #2767
M=D
// #2768
@SP
// #2769
M=M+1
//vv push_d_to_stack
//push ARG
// #2770
@THIS
// #2771
D=M
//^^ push_d_to_stack
// #2772
@SP
// #2773
A=M
// #2774
M=D
// #2775
@SP
// #2776
M=M+1
//vv push_d_to_stack
//push THIS
// #2777
@THAT
// #2778
D=M
//^^ push_d_to_stack
// #2779
@SP
// #2780
A=M
// #2781
M=D
// #2782
@SP
// #2783
M=M+1
//vv push_d_to_stack
//push THAT
// #2784
@SP
// #2785
D=M
// #2786
@ARG
// #2787
M=D
// #2788
@6
// #2789
D=A
// #2790
@ARG
// #2791
M=M-D // ARG = SP - args - 5
// #2792
@SP
// #2793
D=M
// #2794
@LCL
// #2795
M=D // LCL = SP
// #2796
@Sys.error
// #2797
0;JMP
(RET_ADDR_43)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #2798
@SP
// #2799
M=M-1
// #2800
A=M
// #2801
D=M
//vv pop_stack_to_d
// #2802
@5
// #2803
M=D
//vv pop_to_loc{5)
//
//// label IF_FALSE0
(Math.divide$IF_FALSE0)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #2804
@ARG
// #2805
D=M
// #2806
@0
// #2807
A=D+A
// #2808
D=M
//^^ push_d_to_stack
// #2809
@SP
// #2810
A=M
// #2811
M=D
// #2812
@SP
// #2813
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push constant 0
//^^ push_constant(0)
// #2814
@0
// #2815
D=A
//^^ push_d_to_stack
// #2816
@SP
// #2817
A=M
// #2818
M=D
// #2819
@SP
// #2820
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #2821
@SP
// #2822
M=M-1
// #2823
A=M
// #2824
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #2825
@R13
// #2826
M=D
//^^ pop_stack_to_d
// #2827
@SP
// #2828
M=M-1
// #2829
A=M
// #2830
D=M
//vv pop_stack_to_d
// #2831
@R13
// #2832
D=D-M
// #2833
@R13
// #2834
M=0
//vv arith_d_with_stack_top(D-M)
// #2835
@PUT_TRUE_44
// #2836
D;JLT
// #2837
@R13
// #2838
M=0
// #2839
@CONT_44
// #2840
0;JMP
(PUT_TRUE_44)
// #2841
@R13
// #2842
M=-1
(CONT_44)
// #2843
@R13
// #2844
D=M
// #2845
@R13
// #2846
M=0
//^^ push_d_to_stack
// #2847
@SP
// #2848
A=M
// #2849
M=D
// #2850
@SP
// #2851
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// push argument 1
//^^ push_from_ram(ARG, 1)
// #2852
@ARG
// #2853
D=M
// #2854
@1
// #2855
A=D+A
// #2856
D=M
//^^ push_d_to_stack
// #2857
@SP
// #2858
A=M
// #2859
M=D
// #2860
@SP
// #2861
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 1)
//
//// push constant 0
//^^ push_constant(0)
// #2862
@0
// #2863
D=A
//^^ push_d_to_stack
// #2864
@SP
// #2865
A=M
// #2866
M=D
// #2867
@SP
// #2868
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// gt
//^^ arith_cmp_op(JGT)
//^^ pop_stack_to_d
// #2869
@SP
// #2870
M=M-1
// #2871
A=M
// #2872
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #2873
@R13
// #2874
M=D
//^^ pop_stack_to_d
// #2875
@SP
// #2876
M=M-1
// #2877
A=M
// #2878
D=M
//vv pop_stack_to_d
// #2879
@R13
// #2880
D=D-M
// #2881
@R13
// #2882
M=0
//vv arith_d_with_stack_top(D-M)
// #2883
@PUT_TRUE_45
// #2884
D;JGT
// #2885
@R13
// #2886
M=0
// #2887
@CONT_45
// #2888
0;JMP
(PUT_TRUE_45)
// #2889
@R13
// #2890
M=-1
(CONT_45)
// #2891
@R13
// #2892
D=M
// #2893
@R13
// #2894
M=0
//^^ push_d_to_stack
// #2895
@SP
// #2896
A=M
// #2897
M=D
// #2898
@SP
// #2899
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JGT)
//
//// and
//^^ arith_binary_op(&)
//^^ pop_stack_to_d
// #2900
@SP
// #2901
M=M-1
// #2902
A=M
// #2903
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D&M)
// #2904
@R13
// #2905
M=D
//^^ pop_stack_to_d
// #2906
@SP
// #2907
M=M-1
// #2908
A=M
// #2909
D=M
//vv pop_stack_to_d
// #2910
@R13
// #2911
D=D&M
// #2912
@R13
// #2913
M=0
//vv arith_d_with_stack_top(D&M)
//^^ push_d_to_stack
// #2914
@SP
// #2915
A=M
// #2916
M=D
// #2917
@SP
// #2918
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(&)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #2919
@ARG
// #2920
D=M
// #2921
@0
// #2922
A=D+A
// #2923
D=M
//^^ push_d_to_stack
// #2924
@SP
// #2925
A=M
// #2926
M=D
// #2927
@SP
// #2928
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push constant 0
//^^ push_constant(0)
// #2929
@0
// #2930
D=A
//^^ push_d_to_stack
// #2931
@SP
// #2932
A=M
// #2933
M=D
// #2934
@SP
// #2935
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// gt
//^^ arith_cmp_op(JGT)
//^^ pop_stack_to_d
// #2936
@SP
// #2937
M=M-1
// #2938
A=M
// #2939
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #2940
@R13
// #2941
M=D
//^^ pop_stack_to_d
// #2942
@SP
// #2943
M=M-1
// #2944
A=M
// #2945
D=M
//vv pop_stack_to_d
// #2946
@R13
// #2947
D=D-M
// #2948
@R13
// #2949
M=0
//vv arith_d_with_stack_top(D-M)
// #2950
@PUT_TRUE_46
// #2951
D;JGT
// #2952
@R13
// #2953
M=0
// #2954
@CONT_46
// #2955
0;JMP
(PUT_TRUE_46)
// #2956
@R13
// #2957
M=-1
(CONT_46)
// #2958
@R13
// #2959
D=M
// #2960
@R13
// #2961
M=0
//^^ push_d_to_stack
// #2962
@SP
// #2963
A=M
// #2964
M=D
// #2965
@SP
// #2966
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JGT)
//
//// push argument 1
//^^ push_from_ram(ARG, 1)
// #2967
@ARG
// #2968
D=M
// #2969
@1
// #2970
A=D+A
// #2971
D=M
//^^ push_d_to_stack
// #2972
@SP
// #2973
A=M
// #2974
M=D
// #2975
@SP
// #2976
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 1)
//
//// push constant 0
//^^ push_constant(0)
// #2977
@0
// #2978
D=A
//^^ push_d_to_stack
// #2979
@SP
// #2980
A=M
// #2981
M=D
// #2982
@SP
// #2983
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #2984
@SP
// #2985
M=M-1
// #2986
A=M
// #2987
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #2988
@R13
// #2989
M=D
//^^ pop_stack_to_d
// #2990
@SP
// #2991
M=M-1
// #2992
A=M
// #2993
D=M
//vv pop_stack_to_d
// #2994
@R13
// #2995
D=D-M
// #2996
@R13
// #2997
M=0
//vv arith_d_with_stack_top(D-M)
// #2998
@PUT_TRUE_47
// #2999
D;JLT
// #3000
@R13
// #3001
M=0
// #3002
@CONT_47
// #3003
0;JMP
(PUT_TRUE_47)
// #3004
@R13
// #3005
M=-1
(CONT_47)
// #3006
@R13
// #3007
D=M
// #3008
@R13
// #3009
M=0
//^^ push_d_to_stack
// #3010
@SP
// #3011
A=M
// #3012
M=D
// #3013
@SP
// #3014
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// and
//^^ arith_binary_op(&)
//^^ pop_stack_to_d
// #3015
@SP
// #3016
M=M-1
// #3017
A=M
// #3018
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D&M)
// #3019
@R13
// #3020
M=D
//^^ pop_stack_to_d
// #3021
@SP
// #3022
M=M-1
// #3023
A=M
// #3024
D=M
//vv pop_stack_to_d
// #3025
@R13
// #3026
D=D&M
// #3027
@R13
// #3028
M=0
//vv arith_d_with_stack_top(D&M)
//^^ push_d_to_stack
// #3029
@SP
// #3030
A=M
// #3031
M=D
// #3032
@SP
// #3033
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(&)
//
//// or
//^^ arith_binary_op(|)
//^^ pop_stack_to_d
// #3034
@SP
// #3035
M=M-1
// #3036
A=M
// #3037
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D|M)
// #3038
@R13
// #3039
M=D
//^^ pop_stack_to_d
// #3040
@SP
// #3041
M=M-1
// #3042
A=M
// #3043
D=M
//vv pop_stack_to_d
// #3044
@R13
// #3045
D=D|M
// #3046
@R13
// #3047
M=0
//vv arith_d_with_stack_top(D|M)
//^^ push_d_to_stack
// #3048
@SP
// #3049
A=M
// #3050
M=D
// #3051
@SP
// #3052
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(|)
//
//// pop local 2
//^^ pop_to_ram(LCL, 2)
// #3053
@LCL
// #3054
D=M
// #3055
@2
// #3056
D=D+A
// #3057
@R13
// #3058
M=D
//^^ pop_stack_to_d
// #3059
@SP
// #3060
M=M-1
// #3061
A=M
// #3062
D=M
//vv pop_stack_to_d
// #3063
@R13
// #3064
A=M
// #3065
M=D
// #3066
@R13
// #3067
M=0
//vv pop_to_ram(LCL, 2)
//
//// push constant 0
//^^ push_constant(0)
// #3068
@0
// #3069
D=A
//^^ push_d_to_stack
// #3070
@SP
// #3071
A=M
// #3072
M=D
// #3073
@SP
// #3074
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push static 1
//^^ push_from_loc(Math.vm.1)
// #3075
@Math.vm.1
// #3076
D=M
//^^ push_d_to_stack
// #3077
@SP
// #3078
A=M
// #3079
M=D
// #3080
@SP
// #3081
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Math.vm.1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #3082
@SP
// #3083
M=M-1
// #3084
A=M
// #3085
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #3086
@R13
// #3087
M=D
//^^ pop_stack_to_d
// #3088
@SP
// #3089
M=M-1
// #3090
A=M
// #3091
D=M
//vv pop_stack_to_d
// #3092
@R13
// #3093
D=D+M
// #3094
@R13
// #3095
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #3096
@SP
// #3097
A=M
// #3098
M=D
// #3099
@SP
// #3100
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push argument 1
//^^ push_from_ram(ARG, 1)
// #3101
@ARG
// #3102
D=M
// #3103
@1
// #3104
A=D+A
// #3105
D=M
//^^ push_d_to_stack
// #3106
@SP
// #3107
A=M
// #3108
M=D
// #3109
@SP
// #3110
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 1)
//
//// call Math.abs 1
//^^ push_constant(RET_ADDR_48)
// #3111
@RET_ADDR_48
// #3112
D=A
//^^ push_d_to_stack
// #3113
@SP
// #3114
A=M
// #3115
M=D
// #3116
@SP
// #3117
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_48)
//push return-address
// #3118
@LCL
// #3119
D=M
//^^ push_d_to_stack
// #3120
@SP
// #3121
A=M
// #3122
M=D
// #3123
@SP
// #3124
M=M+1
//vv push_d_to_stack
//push LCL
// #3125
@ARG
// #3126
D=M
//^^ push_d_to_stack
// #3127
@SP
// #3128
A=M
// #3129
M=D
// #3130
@SP
// #3131
M=M+1
//vv push_d_to_stack
//push ARG
// #3132
@THIS
// #3133
D=M
//^^ push_d_to_stack
// #3134
@SP
// #3135
A=M
// #3136
M=D
// #3137
@SP
// #3138
M=M+1
//vv push_d_to_stack
//push THIS
// #3139
@THAT
// #3140
D=M
//^^ push_d_to_stack
// #3141
@SP
// #3142
A=M
// #3143
M=D
// #3144
@SP
// #3145
M=M+1
//vv push_d_to_stack
//push THAT
// #3146
@SP
// #3147
D=M
// #3148
@ARG
// #3149
M=D
// #3150
@6
// #3151
D=A
// #3152
@ARG
// #3153
M=M-D // ARG = SP - args - 5
// #3154
@SP
// #3155
D=M
// #3156
@LCL
// #3157
M=D // LCL = SP
// #3158
@Math.abs
// #3159
0;JMP
(RET_ADDR_48)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #3160
@SP
// #3161
M=M-1
// #3162
A=M
// #3163
D=M
//vv pop_stack_to_d
// #3164
@5
// #3165
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #3166
@SP
// #3167
M=M-1
// #3168
A=M
// #3169
D=M
//vv pop_stack_to_d
// #3170
@4
// #3171
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #3172
@5
// #3173
D=M
//^^ push_d_to_stack
// #3174
@SP
// #3175
A=M
// #3176
M=D
// #3177
@SP
// #3178
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #3179
@THAT
// #3180
D=M
// #3181
@0
// #3182
D=D+A
// #3183
@R13
// #3184
M=D
//^^ pop_stack_to_d
// #3185
@SP
// #3186
M=M-1
// #3187
A=M
// #3188
D=M
//vv pop_stack_to_d
// #3189
@R13
// #3190
A=M
// #3191
M=D
// #3192
@R13
// #3193
M=0
//vv pop_to_ram(THAT, 0)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #3194
@ARG
// #3195
D=M
// #3196
@0
// #3197
A=D+A
// #3198
D=M
//^^ push_d_to_stack
// #3199
@SP
// #3200
A=M
// #3201
M=D
// #3202
@SP
// #3203
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// call Math.abs 1
//^^ push_constant(RET_ADDR_49)
// #3204
@RET_ADDR_49
// #3205
D=A
//^^ push_d_to_stack
// #3206
@SP
// #3207
A=M
// #3208
M=D
// #3209
@SP
// #3210
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_49)
//push return-address
// #3211
@LCL
// #3212
D=M
//^^ push_d_to_stack
// #3213
@SP
// #3214
A=M
// #3215
M=D
// #3216
@SP
// #3217
M=M+1
//vv push_d_to_stack
//push LCL
// #3218
@ARG
// #3219
D=M
//^^ push_d_to_stack
// #3220
@SP
// #3221
A=M
// #3222
M=D
// #3223
@SP
// #3224
M=M+1
//vv push_d_to_stack
//push ARG
// #3225
@THIS
// #3226
D=M
//^^ push_d_to_stack
// #3227
@SP
// #3228
A=M
// #3229
M=D
// #3230
@SP
// #3231
M=M+1
//vv push_d_to_stack
//push THIS
// #3232
@THAT
// #3233
D=M
//^^ push_d_to_stack
// #3234
@SP
// #3235
A=M
// #3236
M=D
// #3237
@SP
// #3238
M=M+1
//vv push_d_to_stack
//push THAT
// #3239
@SP
// #3240
D=M
// #3241
@ARG
// #3242
M=D
// #3243
@6
// #3244
D=A
// #3245
@ARG
// #3246
M=M-D // ARG = SP - args - 5
// #3247
@SP
// #3248
D=M
// #3249
@LCL
// #3250
M=D // LCL = SP
// #3251
@Math.abs
// #3252
0;JMP
(RET_ADDR_49)
//
//// pop argument 0
//^^ pop_to_ram(ARG, 0)
// #3253
@ARG
// #3254
D=M
// #3255
@0
// #3256
D=D+A
// #3257
@R13
// #3258
M=D
//^^ pop_stack_to_d
// #3259
@SP
// #3260
M=M-1
// #3261
A=M
// #3262
D=M
//vv pop_stack_to_d
// #3263
@R13
// #3264
A=M
// #3265
M=D
// #3266
@R13
// #3267
M=0
//vv pop_to_ram(ARG, 0)
//
//// label WHILE_EXP0
(Math.divide$WHILE_EXP0)
//
//// push local 3
//^^ push_from_ram(LCL, 3)
// #3268
@LCL
// #3269
D=M
// #3270
@3
// #3271
A=D+A
// #3272
D=M
//^^ push_d_to_stack
// #3273
@SP
// #3274
A=M
// #3275
M=D
// #3276
@SP
// #3277
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 3)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #3278
@SP
// #3279
M=M-1
// #3280
A=M
// #3281
D=M
//vv pop_stack_to_d
// #3282
D=!D
//^^ push_d_to_stack
// #3283
@SP
// #3284
A=M
// #3285
M=D
// #3286
@SP
// #3287
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #3288
@SP
// #3289
M=M-1
// #3290
A=M
// #3291
D=M
//vv pop_stack_to_d
// #3292
D=!D
//^^ push_d_to_stack
// #3293
@SP
// #3294
A=M
// #3295
M=D
// #3296
@SP
// #3297
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// if-goto WHILE_END0
//^^ pop_stack_to_d
// #3298
@SP
// #3299
M=M-1
// #3300
A=M
// #3301
D=M
//vv pop_stack_to_d
// #3302
@Math.divide$WHILE_END0
// #3303
D;JNE
//
//// push constant 32767
//^^ push_constant(32767)
// #3304
@32767
// #3305
D=A
//^^ push_d_to_stack
// #3306
@SP
// #3307
A=M
// #3308
M=D
// #3309
@SP
// #3310
M=M+1
//vv push_d_to_stack
//vv push_constant(32767)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #3311
@LCL
// #3312
D=M
// #3313
@0
// #3314
A=D+A
// #3315
D=M
//^^ push_d_to_stack
// #3316
@SP
// #3317
A=M
// #3318
M=D
// #3319
@SP
// #3320
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push static 1
//^^ push_from_loc(Math.vm.1)
// #3321
@Math.vm.1
// #3322
D=M
//^^ push_d_to_stack
// #3323
@SP
// #3324
A=M
// #3325
M=D
// #3326
@SP
// #3327
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Math.vm.1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #3328
@SP
// #3329
M=M-1
// #3330
A=M
// #3331
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #3332
@R13
// #3333
M=D
//^^ pop_stack_to_d
// #3334
@SP
// #3335
M=M-1
// #3336
A=M
// #3337
D=M
//vv pop_stack_to_d
// #3338
@R13
// #3339
D=D+M
// #3340
@R13
// #3341
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #3342
@SP
// #3343
A=M
// #3344
M=D
// #3345
@SP
// #3346
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #3347
@SP
// #3348
M=M-1
// #3349
A=M
// #3350
D=M
//vv pop_stack_to_d
// #3351
@4
// #3352
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #3353
@THAT
// #3354
D=M
// #3355
@0
// #3356
A=D+A
// #3357
D=M
//^^ push_d_to_stack
// #3358
@SP
// #3359
A=M
// #3360
M=D
// #3361
@SP
// #3362
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #3363
@SP
// #3364
M=M-1
// #3365
A=M
// #3366
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #3367
@R13
// #3368
M=D
//^^ pop_stack_to_d
// #3369
@SP
// #3370
M=M-1
// #3371
A=M
// #3372
D=M
//vv pop_stack_to_d
// #3373
@R13
// #3374
D=D-M
// #3375
@R13
// #3376
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #3377
@SP
// #3378
A=M
// #3379
M=D
// #3380
@SP
// #3381
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #3382
@LCL
// #3383
D=M
// #3384
@0
// #3385
A=D+A
// #3386
D=M
//^^ push_d_to_stack
// #3387
@SP
// #3388
A=M
// #3389
M=D
// #3390
@SP
// #3391
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push static 1
//^^ push_from_loc(Math.vm.1)
// #3392
@Math.vm.1
// #3393
D=M
//^^ push_d_to_stack
// #3394
@SP
// #3395
A=M
// #3396
M=D
// #3397
@SP
// #3398
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Math.vm.1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #3399
@SP
// #3400
M=M-1
// #3401
A=M
// #3402
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #3403
@R13
// #3404
M=D
//^^ pop_stack_to_d
// #3405
@SP
// #3406
M=M-1
// #3407
A=M
// #3408
D=M
//vv pop_stack_to_d
// #3409
@R13
// #3410
D=D+M
// #3411
@R13
// #3412
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #3413
@SP
// #3414
A=M
// #3415
M=D
// #3416
@SP
// #3417
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #3418
@SP
// #3419
M=M-1
// #3420
A=M
// #3421
D=M
//vv pop_stack_to_d
// #3422
@4
// #3423
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #3424
@THAT
// #3425
D=M
// #3426
@0
// #3427
A=D+A
// #3428
D=M
//^^ push_d_to_stack
// #3429
@SP
// #3430
A=M
// #3431
M=D
// #3432
@SP
// #3433
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #3434
@SP
// #3435
M=M-1
// #3436
A=M
// #3437
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #3438
@R13
// #3439
M=D
//^^ pop_stack_to_d
// #3440
@SP
// #3441
M=M-1
// #3442
A=M
// #3443
D=M
//vv pop_stack_to_d
// #3444
@R13
// #3445
D=D-M
// #3446
@R13
// #3447
M=0
//vv arith_d_with_stack_top(D-M)
// #3448
@PUT_TRUE_50
// #3449
D;JLT
// #3450
@R13
// #3451
M=0
// #3452
@CONT_50
// #3453
0;JMP
(PUT_TRUE_50)
// #3454
@R13
// #3455
M=-1
(CONT_50)
// #3456
@R13
// #3457
D=M
// #3458
@R13
// #3459
M=0
//^^ push_d_to_stack
// #3460
@SP
// #3461
A=M
// #3462
M=D
// #3463
@SP
// #3464
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// pop local 3
//^^ pop_to_ram(LCL, 3)
// #3465
@LCL
// #3466
D=M
// #3467
@3
// #3468
D=D+A
// #3469
@R13
// #3470
M=D
//^^ pop_stack_to_d
// #3471
@SP
// #3472
M=M-1
// #3473
A=M
// #3474
D=M
//vv pop_stack_to_d
// #3475
@R13
// #3476
A=M
// #3477
M=D
// #3478
@R13
// #3479
M=0
//vv pop_to_ram(LCL, 3)
//
//// push local 3
//^^ push_from_ram(LCL, 3)
// #3480
@LCL
// #3481
D=M
// #3482
@3
// #3483
A=D+A
// #3484
D=M
//^^ push_d_to_stack
// #3485
@SP
// #3486
A=M
// #3487
M=D
// #3488
@SP
// #3489
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 3)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #3490
@SP
// #3491
M=M-1
// #3492
A=M
// #3493
D=M
//vv pop_stack_to_d
// #3494
D=!D
//^^ push_d_to_stack
// #3495
@SP
// #3496
A=M
// #3497
M=D
// #3498
@SP
// #3499
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// if-goto IF_TRUE1
//^^ pop_stack_to_d
// #3500
@SP
// #3501
M=M-1
// #3502
A=M
// #3503
D=M
//vv pop_stack_to_d
// #3504
@Math.divide$IF_TRUE1
// #3505
D;JNE
//
//// goto IF_FALSE1
// #3506
@Math.divide$IF_FALSE1
// #3507
0;JMP
//
//// label IF_TRUE1
(Math.divide$IF_TRUE1)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #3508
@LCL
// #3509
D=M
// #3510
@0
// #3511
A=D+A
// #3512
D=M
//^^ push_d_to_stack
// #3513
@SP
// #3514
A=M
// #3515
M=D
// #3516
@SP
// #3517
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 1
//^^ push_constant(1)
// #3518
@1
// #3519
D=A
//^^ push_d_to_stack
// #3520
@SP
// #3521
A=M
// #3522
M=D
// #3523
@SP
// #3524
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #3525
@SP
// #3526
M=M-1
// #3527
A=M
// #3528
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #3529
@R13
// #3530
M=D
//^^ pop_stack_to_d
// #3531
@SP
// #3532
M=M-1
// #3533
A=M
// #3534
D=M
//vv pop_stack_to_d
// #3535
@R13
// #3536
D=D+M
// #3537
@R13
// #3538
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #3539
@SP
// #3540
A=M
// #3541
M=D
// #3542
@SP
// #3543
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push static 1
//^^ push_from_loc(Math.vm.1)
// #3544
@Math.vm.1
// #3545
D=M
//^^ push_d_to_stack
// #3546
@SP
// #3547
A=M
// #3548
M=D
// #3549
@SP
// #3550
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Math.vm.1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #3551
@SP
// #3552
M=M-1
// #3553
A=M
// #3554
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #3555
@R13
// #3556
M=D
//^^ pop_stack_to_d
// #3557
@SP
// #3558
M=M-1
// #3559
A=M
// #3560
D=M
//vv pop_stack_to_d
// #3561
@R13
// #3562
D=D+M
// #3563
@R13
// #3564
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #3565
@SP
// #3566
A=M
// #3567
M=D
// #3568
@SP
// #3569
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #3570
@LCL
// #3571
D=M
// #3572
@0
// #3573
A=D+A
// #3574
D=M
//^^ push_d_to_stack
// #3575
@SP
// #3576
A=M
// #3577
M=D
// #3578
@SP
// #3579
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push static 1
//^^ push_from_loc(Math.vm.1)
// #3580
@Math.vm.1
// #3581
D=M
//^^ push_d_to_stack
// #3582
@SP
// #3583
A=M
// #3584
M=D
// #3585
@SP
// #3586
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Math.vm.1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #3587
@SP
// #3588
M=M-1
// #3589
A=M
// #3590
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #3591
@R13
// #3592
M=D
//^^ pop_stack_to_d
// #3593
@SP
// #3594
M=M-1
// #3595
A=M
// #3596
D=M
//vv pop_stack_to_d
// #3597
@R13
// #3598
D=D+M
// #3599
@R13
// #3600
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #3601
@SP
// #3602
A=M
// #3603
M=D
// #3604
@SP
// #3605
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #3606
@SP
// #3607
M=M-1
// #3608
A=M
// #3609
D=M
//vv pop_stack_to_d
// #3610
@4
// #3611
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #3612
@THAT
// #3613
D=M
// #3614
@0
// #3615
A=D+A
// #3616
D=M
//^^ push_d_to_stack
// #3617
@SP
// #3618
A=M
// #3619
M=D
// #3620
@SP
// #3621
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #3622
@LCL
// #3623
D=M
// #3624
@0
// #3625
A=D+A
// #3626
D=M
//^^ push_d_to_stack
// #3627
@SP
// #3628
A=M
// #3629
M=D
// #3630
@SP
// #3631
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push static 1
//^^ push_from_loc(Math.vm.1)
// #3632
@Math.vm.1
// #3633
D=M
//^^ push_d_to_stack
// #3634
@SP
// #3635
A=M
// #3636
M=D
// #3637
@SP
// #3638
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Math.vm.1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #3639
@SP
// #3640
M=M-1
// #3641
A=M
// #3642
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #3643
@R13
// #3644
M=D
//^^ pop_stack_to_d
// #3645
@SP
// #3646
M=M-1
// #3647
A=M
// #3648
D=M
//vv pop_stack_to_d
// #3649
@R13
// #3650
D=D+M
// #3651
@R13
// #3652
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #3653
@SP
// #3654
A=M
// #3655
M=D
// #3656
@SP
// #3657
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #3658
@SP
// #3659
M=M-1
// #3660
A=M
// #3661
D=M
//vv pop_stack_to_d
// #3662
@4
// #3663
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #3664
@THAT
// #3665
D=M
// #3666
@0
// #3667
A=D+A
// #3668
D=M
//^^ push_d_to_stack
// #3669
@SP
// #3670
A=M
// #3671
M=D
// #3672
@SP
// #3673
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #3674
@SP
// #3675
M=M-1
// #3676
A=M
// #3677
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #3678
@R13
// #3679
M=D
//^^ pop_stack_to_d
// #3680
@SP
// #3681
M=M-1
// #3682
A=M
// #3683
D=M
//vv pop_stack_to_d
// #3684
@R13
// #3685
D=D+M
// #3686
@R13
// #3687
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #3688
@SP
// #3689
A=M
// #3690
M=D
// #3691
@SP
// #3692
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #3693
@SP
// #3694
M=M-1
// #3695
A=M
// #3696
D=M
//vv pop_stack_to_d
// #3697
@5
// #3698
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #3699
@SP
// #3700
M=M-1
// #3701
A=M
// #3702
D=M
//vv pop_stack_to_d
// #3703
@4
// #3704
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #3705
@5
// #3706
D=M
//^^ push_d_to_stack
// #3707
@SP
// #3708
A=M
// #3709
M=D
// #3710
@SP
// #3711
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #3712
@THAT
// #3713
D=M
// #3714
@0
// #3715
D=D+A
// #3716
@R13
// #3717
M=D
//^^ pop_stack_to_d
// #3718
@SP
// #3719
M=M-1
// #3720
A=M
// #3721
D=M
//vv pop_stack_to_d
// #3722
@R13
// #3723
A=M
// #3724
M=D
// #3725
@R13
// #3726
M=0
//vv pop_to_ram(THAT, 0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #3727
@LCL
// #3728
D=M
// #3729
@0
// #3730
A=D+A
// #3731
D=M
//^^ push_d_to_stack
// #3732
@SP
// #3733
A=M
// #3734
M=D
// #3735
@SP
// #3736
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 1
//^^ push_constant(1)
// #3737
@1
// #3738
D=A
//^^ push_d_to_stack
// #3739
@SP
// #3740
A=M
// #3741
M=D
// #3742
@SP
// #3743
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #3744
@SP
// #3745
M=M-1
// #3746
A=M
// #3747
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #3748
@R13
// #3749
M=D
//^^ pop_stack_to_d
// #3750
@SP
// #3751
M=M-1
// #3752
A=M
// #3753
D=M
//vv pop_stack_to_d
// #3754
@R13
// #3755
D=D+M
// #3756
@R13
// #3757
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #3758
@SP
// #3759
A=M
// #3760
M=D
// #3761
@SP
// #3762
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push static 1
//^^ push_from_loc(Math.vm.1)
// #3763
@Math.vm.1
// #3764
D=M
//^^ push_d_to_stack
// #3765
@SP
// #3766
A=M
// #3767
M=D
// #3768
@SP
// #3769
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Math.vm.1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #3770
@SP
// #3771
M=M-1
// #3772
A=M
// #3773
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #3774
@R13
// #3775
M=D
//^^ pop_stack_to_d
// #3776
@SP
// #3777
M=M-1
// #3778
A=M
// #3779
D=M
//vv pop_stack_to_d
// #3780
@R13
// #3781
D=D+M
// #3782
@R13
// #3783
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #3784
@SP
// #3785
A=M
// #3786
M=D
// #3787
@SP
// #3788
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #3789
@SP
// #3790
M=M-1
// #3791
A=M
// #3792
D=M
//vv pop_stack_to_d
// #3793
@4
// #3794
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #3795
@THAT
// #3796
D=M
// #3797
@0
// #3798
A=D+A
// #3799
D=M
//^^ push_d_to_stack
// #3800
@SP
// #3801
A=M
// #3802
M=D
// #3803
@SP
// #3804
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #3805
@ARG
// #3806
D=M
// #3807
@0
// #3808
A=D+A
// #3809
D=M
//^^ push_d_to_stack
// #3810
@SP
// #3811
A=M
// #3812
M=D
// #3813
@SP
// #3814
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// gt
//^^ arith_cmp_op(JGT)
//^^ pop_stack_to_d
// #3815
@SP
// #3816
M=M-1
// #3817
A=M
// #3818
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #3819
@R13
// #3820
M=D
//^^ pop_stack_to_d
// #3821
@SP
// #3822
M=M-1
// #3823
A=M
// #3824
D=M
//vv pop_stack_to_d
// #3825
@R13
// #3826
D=D-M
// #3827
@R13
// #3828
M=0
//vv arith_d_with_stack_top(D-M)
// #3829
@PUT_TRUE_51
// #3830
D;JGT
// #3831
@R13
// #3832
M=0
// #3833
@CONT_51
// #3834
0;JMP
(PUT_TRUE_51)
// #3835
@R13
// #3836
M=-1
(CONT_51)
// #3837
@R13
// #3838
D=M
// #3839
@R13
// #3840
M=0
//^^ push_d_to_stack
// #3841
@SP
// #3842
A=M
// #3843
M=D
// #3844
@SP
// #3845
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JGT)
//
//// pop local 3
//^^ pop_to_ram(LCL, 3)
// #3846
@LCL
// #3847
D=M
// #3848
@3
// #3849
D=D+A
// #3850
@R13
// #3851
M=D
//^^ pop_stack_to_d
// #3852
@SP
// #3853
M=M-1
// #3854
A=M
// #3855
D=M
//vv pop_stack_to_d
// #3856
@R13
// #3857
A=M
// #3858
M=D
// #3859
@R13
// #3860
M=0
//vv pop_to_ram(LCL, 3)
//
//// push local 3
//^^ push_from_ram(LCL, 3)
// #3861
@LCL
// #3862
D=M
// #3863
@3
// #3864
A=D+A
// #3865
D=M
//^^ push_d_to_stack
// #3866
@SP
// #3867
A=M
// #3868
M=D
// #3869
@SP
// #3870
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 3)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #3871
@SP
// #3872
M=M-1
// #3873
A=M
// #3874
D=M
//vv pop_stack_to_d
// #3875
D=!D
//^^ push_d_to_stack
// #3876
@SP
// #3877
A=M
// #3878
M=D
// #3879
@SP
// #3880
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// if-goto IF_TRUE2
//^^ pop_stack_to_d
// #3881
@SP
// #3882
M=M-1
// #3883
A=M
// #3884
D=M
//vv pop_stack_to_d
// #3885
@Math.divide$IF_TRUE2
// #3886
D;JNE
//
//// goto IF_FALSE2
// #3887
@Math.divide$IF_FALSE2
// #3888
0;JMP
//
//// label IF_TRUE2
(Math.divide$IF_TRUE2)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #3889
@LCL
// #3890
D=M
// #3891
@0
// #3892
A=D+A
// #3893
D=M
//^^ push_d_to_stack
// #3894
@SP
// #3895
A=M
// #3896
M=D
// #3897
@SP
// #3898
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 1
//^^ push_constant(1)
// #3899
@1
// #3900
D=A
//^^ push_d_to_stack
// #3901
@SP
// #3902
A=M
// #3903
M=D
// #3904
@SP
// #3905
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #3906
@SP
// #3907
M=M-1
// #3908
A=M
// #3909
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #3910
@R13
// #3911
M=D
//^^ pop_stack_to_d
// #3912
@SP
// #3913
M=M-1
// #3914
A=M
// #3915
D=M
//vv pop_stack_to_d
// #3916
@R13
// #3917
D=D+M
// #3918
@R13
// #3919
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #3920
@SP
// #3921
A=M
// #3922
M=D
// #3923
@SP
// #3924
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
// #3925
@LCL
// #3926
D=M
// #3927
@0
// #3928
D=D+A
// #3929
@R13
// #3930
M=D
//^^ pop_stack_to_d
// #3931
@SP
// #3932
M=M-1
// #3933
A=M
// #3934
D=M
//vv pop_stack_to_d
// #3935
@R13
// #3936
A=M
// #3937
M=D
// #3938
@R13
// #3939
M=0
//vv pop_to_ram(LCL, 0)
//
//// label IF_FALSE2
(Math.divide$IF_FALSE2)
//
//// label IF_FALSE1
(Math.divide$IF_FALSE1)
//
//// goto WHILE_EXP0
// #3940
@Math.divide$WHILE_EXP0
// #3941
0;JMP
//
//// label WHILE_END0
(Math.divide$WHILE_END0)
//
//// label WHILE_EXP1
(Math.divide$WHILE_EXP1)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #3942
@LCL
// #3943
D=M
// #3944
@0
// #3945
A=D+A
// #3946
D=M
//^^ push_d_to_stack
// #3947
@SP
// #3948
A=M
// #3949
M=D
// #3950
@SP
// #3951
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 1
//^^ push_constant(1)
// #3952
@1
// #3953
D=A
//^^ push_d_to_stack
// #3954
@SP
// #3955
A=M
// #3956
M=D
// #3957
@SP
// #3958
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// neg
//^^ arith_unary_op(-)
//^^ pop_stack_to_d
// #3959
@SP
// #3960
M=M-1
// #3961
A=M
// #3962
D=M
//vv pop_stack_to_d
// #3963
D=-D
//^^ push_d_to_stack
// #3964
@SP
// #3965
A=M
// #3966
M=D
// #3967
@SP
// #3968
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(-)
//
//// gt
//^^ arith_cmp_op(JGT)
//^^ pop_stack_to_d
// #3969
@SP
// #3970
M=M-1
// #3971
A=M
// #3972
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #3973
@R13
// #3974
M=D
//^^ pop_stack_to_d
// #3975
@SP
// #3976
M=M-1
// #3977
A=M
// #3978
D=M
//vv pop_stack_to_d
// #3979
@R13
// #3980
D=D-M
// #3981
@R13
// #3982
M=0
//vv arith_d_with_stack_top(D-M)
// #3983
@PUT_TRUE_52
// #3984
D;JGT
// #3985
@R13
// #3986
M=0
// #3987
@CONT_52
// #3988
0;JMP
(PUT_TRUE_52)
// #3989
@R13
// #3990
M=-1
(CONT_52)
// #3991
@R13
// #3992
D=M
// #3993
@R13
// #3994
M=0
//^^ push_d_to_stack
// #3995
@SP
// #3996
A=M
// #3997
M=D
// #3998
@SP
// #3999
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JGT)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #4000
@SP
// #4001
M=M-1
// #4002
A=M
// #4003
D=M
//vv pop_stack_to_d
// #4004
D=!D
//^^ push_d_to_stack
// #4005
@SP
// #4006
A=M
// #4007
M=D
// #4008
@SP
// #4009
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// if-goto WHILE_END1
//^^ pop_stack_to_d
// #4010
@SP
// #4011
M=M-1
// #4012
A=M
// #4013
D=M
//vv pop_stack_to_d
// #4014
@Math.divide$WHILE_END1
// #4015
D;JNE
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #4016
@LCL
// #4017
D=M
// #4018
@0
// #4019
A=D+A
// #4020
D=M
//^^ push_d_to_stack
// #4021
@SP
// #4022
A=M
// #4023
M=D
// #4024
@SP
// #4025
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push static 1
//^^ push_from_loc(Math.vm.1)
// #4026
@Math.vm.1
// #4027
D=M
//^^ push_d_to_stack
// #4028
@SP
// #4029
A=M
// #4030
M=D
// #4031
@SP
// #4032
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Math.vm.1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #4033
@SP
// #4034
M=M-1
// #4035
A=M
// #4036
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #4037
@R13
// #4038
M=D
//^^ pop_stack_to_d
// #4039
@SP
// #4040
M=M-1
// #4041
A=M
// #4042
D=M
//vv pop_stack_to_d
// #4043
@R13
// #4044
D=D+M
// #4045
@R13
// #4046
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #4047
@SP
// #4048
A=M
// #4049
M=D
// #4050
@SP
// #4051
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #4052
@SP
// #4053
M=M-1
// #4054
A=M
// #4055
D=M
//vv pop_stack_to_d
// #4056
@4
// #4057
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #4058
@THAT
// #4059
D=M
// #4060
@0
// #4061
A=D+A
// #4062
D=M
//^^ push_d_to_stack
// #4063
@SP
// #4064
A=M
// #4065
M=D
// #4066
@SP
// #4067
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #4068
@ARG
// #4069
D=M
// #4070
@0
// #4071
A=D+A
// #4072
D=M
//^^ push_d_to_stack
// #4073
@SP
// #4074
A=M
// #4075
M=D
// #4076
@SP
// #4077
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// gt
//^^ arith_cmp_op(JGT)
//^^ pop_stack_to_d
// #4078
@SP
// #4079
M=M-1
// #4080
A=M
// #4081
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #4082
@R13
// #4083
M=D
//^^ pop_stack_to_d
// #4084
@SP
// #4085
M=M-1
// #4086
A=M
// #4087
D=M
//vv pop_stack_to_d
// #4088
@R13
// #4089
D=D-M
// #4090
@R13
// #4091
M=0
//vv arith_d_with_stack_top(D-M)
// #4092
@PUT_TRUE_53
// #4093
D;JGT
// #4094
@R13
// #4095
M=0
// #4096
@CONT_53
// #4097
0;JMP
(PUT_TRUE_53)
// #4098
@R13
// #4099
M=-1
(CONT_53)
// #4100
@R13
// #4101
D=M
// #4102
@R13
// #4103
M=0
//^^ push_d_to_stack
// #4104
@SP
// #4105
A=M
// #4106
M=D
// #4107
@SP
// #4108
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JGT)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #4109
@SP
// #4110
M=M-1
// #4111
A=M
// #4112
D=M
//vv pop_stack_to_d
// #4113
D=!D
//^^ push_d_to_stack
// #4114
@SP
// #4115
A=M
// #4116
M=D
// #4117
@SP
// #4118
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// if-goto IF_TRUE3
//^^ pop_stack_to_d
// #4119
@SP
// #4120
M=M-1
// #4121
A=M
// #4122
D=M
//vv pop_stack_to_d
// #4123
@Math.divide$IF_TRUE3
// #4124
D;JNE
//
//// goto IF_FALSE3
// #4125
@Math.divide$IF_FALSE3
// #4126
0;JMP
//
//// label IF_TRUE3
(Math.divide$IF_TRUE3)
//
//// push local 1
//^^ push_from_ram(LCL, 1)
// #4127
@LCL
// #4128
D=M
// #4129
@1
// #4130
A=D+A
// #4131
D=M
//^^ push_d_to_stack
// #4132
@SP
// #4133
A=M
// #4134
M=D
// #4135
@SP
// #4136
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 1)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #4137
@LCL
// #4138
D=M
// #4139
@0
// #4140
A=D+A
// #4141
D=M
//^^ push_d_to_stack
// #4142
@SP
// #4143
A=M
// #4144
M=D
// #4145
@SP
// #4146
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push static 0
//^^ push_from_loc(Math.vm.0)
// #4147
@Math.vm.0
// #4148
D=M
//^^ push_d_to_stack
// #4149
@SP
// #4150
A=M
// #4151
M=D
// #4152
@SP
// #4153
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Math.vm.0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #4154
@SP
// #4155
M=M-1
// #4156
A=M
// #4157
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #4158
@R13
// #4159
M=D
//^^ pop_stack_to_d
// #4160
@SP
// #4161
M=M-1
// #4162
A=M
// #4163
D=M
//vv pop_stack_to_d
// #4164
@R13
// #4165
D=D+M
// #4166
@R13
// #4167
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #4168
@SP
// #4169
A=M
// #4170
M=D
// #4171
@SP
// #4172
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #4173
@SP
// #4174
M=M-1
// #4175
A=M
// #4176
D=M
//vv pop_stack_to_d
// #4177
@4
// #4178
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #4179
@THAT
// #4180
D=M
// #4181
@0
// #4182
A=D+A
// #4183
D=M
//^^ push_d_to_stack
// #4184
@SP
// #4185
A=M
// #4186
M=D
// #4187
@SP
// #4188
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #4189
@SP
// #4190
M=M-1
// #4191
A=M
// #4192
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #4193
@R13
// #4194
M=D
//^^ pop_stack_to_d
// #4195
@SP
// #4196
M=M-1
// #4197
A=M
// #4198
D=M
//vv pop_stack_to_d
// #4199
@R13
// #4200
D=D+M
// #4201
@R13
// #4202
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #4203
@SP
// #4204
A=M
// #4205
M=D
// #4206
@SP
// #4207
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop local 1
//^^ pop_to_ram(LCL, 1)
// #4208
@LCL
// #4209
D=M
// #4210
@1
// #4211
D=D+A
// #4212
@R13
// #4213
M=D
//^^ pop_stack_to_d
// #4214
@SP
// #4215
M=M-1
// #4216
A=M
// #4217
D=M
//vv pop_stack_to_d
// #4218
@R13
// #4219
A=M
// #4220
M=D
// #4221
@R13
// #4222
M=0
//vv pop_to_ram(LCL, 1)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #4223
@ARG
// #4224
D=M
// #4225
@0
// #4226
A=D+A
// #4227
D=M
//^^ push_d_to_stack
// #4228
@SP
// #4229
A=M
// #4230
M=D
// #4231
@SP
// #4232
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #4233
@LCL
// #4234
D=M
// #4235
@0
// #4236
A=D+A
// #4237
D=M
//^^ push_d_to_stack
// #4238
@SP
// #4239
A=M
// #4240
M=D
// #4241
@SP
// #4242
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push static 1
//^^ push_from_loc(Math.vm.1)
// #4243
@Math.vm.1
// #4244
D=M
//^^ push_d_to_stack
// #4245
@SP
// #4246
A=M
// #4247
M=D
// #4248
@SP
// #4249
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Math.vm.1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #4250
@SP
// #4251
M=M-1
// #4252
A=M
// #4253
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #4254
@R13
// #4255
M=D
//^^ pop_stack_to_d
// #4256
@SP
// #4257
M=M-1
// #4258
A=M
// #4259
D=M
//vv pop_stack_to_d
// #4260
@R13
// #4261
D=D+M
// #4262
@R13
// #4263
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #4264
@SP
// #4265
A=M
// #4266
M=D
// #4267
@SP
// #4268
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #4269
@SP
// #4270
M=M-1
// #4271
A=M
// #4272
D=M
//vv pop_stack_to_d
// #4273
@4
// #4274
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #4275
@THAT
// #4276
D=M
// #4277
@0
// #4278
A=D+A
// #4279
D=M
//^^ push_d_to_stack
// #4280
@SP
// #4281
A=M
// #4282
M=D
// #4283
@SP
// #4284
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #4285
@SP
// #4286
M=M-1
// #4287
A=M
// #4288
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #4289
@R13
// #4290
M=D
//^^ pop_stack_to_d
// #4291
@SP
// #4292
M=M-1
// #4293
A=M
// #4294
D=M
//vv pop_stack_to_d
// #4295
@R13
// #4296
D=D-M
// #4297
@R13
// #4298
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #4299
@SP
// #4300
A=M
// #4301
M=D
// #4302
@SP
// #4303
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// pop argument 0
//^^ pop_to_ram(ARG, 0)
// #4304
@ARG
// #4305
D=M
// #4306
@0
// #4307
D=D+A
// #4308
@R13
// #4309
M=D
//^^ pop_stack_to_d
// #4310
@SP
// #4311
M=M-1
// #4312
A=M
// #4313
D=M
//vv pop_stack_to_d
// #4314
@R13
// #4315
A=M
// #4316
M=D
// #4317
@R13
// #4318
M=0
//vv pop_to_ram(ARG, 0)
//
//// label IF_FALSE3
(Math.divide$IF_FALSE3)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #4319
@LCL
// #4320
D=M
// #4321
@0
// #4322
A=D+A
// #4323
D=M
//^^ push_d_to_stack
// #4324
@SP
// #4325
A=M
// #4326
M=D
// #4327
@SP
// #4328
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 1
//^^ push_constant(1)
// #4329
@1
// #4330
D=A
//^^ push_d_to_stack
// #4331
@SP
// #4332
A=M
// #4333
M=D
// #4334
@SP
// #4335
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #4336
@SP
// #4337
M=M-1
// #4338
A=M
// #4339
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #4340
@R13
// #4341
M=D
//^^ pop_stack_to_d
// #4342
@SP
// #4343
M=M-1
// #4344
A=M
// #4345
D=M
//vv pop_stack_to_d
// #4346
@R13
// #4347
D=D-M
// #4348
@R13
// #4349
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #4350
@SP
// #4351
A=M
// #4352
M=D
// #4353
@SP
// #4354
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
// #4355
@LCL
// #4356
D=M
// #4357
@0
// #4358
D=D+A
// #4359
@R13
// #4360
M=D
//^^ pop_stack_to_d
// #4361
@SP
// #4362
M=M-1
// #4363
A=M
// #4364
D=M
//vv pop_stack_to_d
// #4365
@R13
// #4366
A=M
// #4367
M=D
// #4368
@R13
// #4369
M=0
//vv pop_to_ram(LCL, 0)
//
//// goto WHILE_EXP1
// #4370
@Math.divide$WHILE_EXP1
// #4371
0;JMP
//
//// label WHILE_END1
(Math.divide$WHILE_END1)
//
//// push local 2
//^^ push_from_ram(LCL, 2)
// #4372
@LCL
// #4373
D=M
// #4374
@2
// #4375
A=D+A
// #4376
D=M
//^^ push_d_to_stack
// #4377
@SP
// #4378
A=M
// #4379
M=D
// #4380
@SP
// #4381
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 2)
//
//// if-goto IF_TRUE4
//^^ pop_stack_to_d
// #4382
@SP
// #4383
M=M-1
// #4384
A=M
// #4385
D=M
//vv pop_stack_to_d
// #4386
@Math.divide$IF_TRUE4
// #4387
D;JNE
//
//// goto IF_FALSE4
// #4388
@Math.divide$IF_FALSE4
// #4389
0;JMP
//
//// label IF_TRUE4
(Math.divide$IF_TRUE4)
//
//// push local 1
//^^ push_from_ram(LCL, 1)
// #4390
@LCL
// #4391
D=M
// #4392
@1
// #4393
A=D+A
// #4394
D=M
//^^ push_d_to_stack
// #4395
@SP
// #4396
A=M
// #4397
M=D
// #4398
@SP
// #4399
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 1)
//
//// neg
//^^ arith_unary_op(-)
//^^ pop_stack_to_d
// #4400
@SP
// #4401
M=M-1
// #4402
A=M
// #4403
D=M
//vv pop_stack_to_d
// #4404
D=-D
//^^ push_d_to_stack
// #4405
@SP
// #4406
A=M
// #4407
M=D
// #4408
@SP
// #4409
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(-)
//
//// pop local 1
//^^ pop_to_ram(LCL, 1)
// #4410
@LCL
// #4411
D=M
// #4412
@1
// #4413
D=D+A
// #4414
@R13
// #4415
M=D
//^^ pop_stack_to_d
// #4416
@SP
// #4417
M=M-1
// #4418
A=M
// #4419
D=M
//vv pop_stack_to_d
// #4420
@R13
// #4421
A=M
// #4422
M=D
// #4423
@R13
// #4424
M=0
//vv pop_to_ram(LCL, 1)
//
//// label IF_FALSE4
(Math.divide$IF_FALSE4)
//
//// push local 1
//^^ push_from_ram(LCL, 1)
// #4425
@LCL
// #4426
D=M
// #4427
@1
// #4428
A=D+A
// #4429
D=M
//^^ push_d_to_stack
// #4430
@SP
// #4431
A=M
// #4432
M=D
// #4433
@SP
// #4434
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 1)
//
//// return
// #4435
@LCL
// #4436
D=M
// #4437
@R14
// #4438
M=D //R14=LCL
// #4439
@5
// #4440
A=D-A
// #4441
D=M
// #4442
@R15
// #4443
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #4444
@SP
// #4445
M=M-1
// #4446
A=M
// #4447
D=M
//vv pop_stack_to_d
// #4448
@ARG
// #4449
A=M
// #4450
M=D //*ARG = pop()
// #4451
@ARG
// #4452
D=M
// #4453
@SP
// #4454
M=D+1 //SP=ARG+1
// #4455
@R14
// #4456
AM=M-1
// #4457
D=M
// #4458
@THAT
// #4459
M=D //THAT = *(--R14)
// #4460
@R14
// #4461
AM=M-1
// #4462
D=M
// #4463
@THIS
// #4464
M=D //THIS = *(--R14)
// #4465
@R14
// #4466
AM=M-1
// #4467
D=M
// #4468
@ARG
// #4469
M=D //ARG = *(--R14)
// #4470
@R14
// #4471
AM=M-1
// #4472
D=M
// #4473
@LCL
// #4474
M=D //LCL = *(--R14)
// #4475
@R15
// #4476
A=M
// #4477
0;JMP //goto *R15
//
//// function Math.sqrt 4
(Math.sqrt)
// #4478
D=0
//^^ push_d_to_stack
// #4479
@SP
// #4480
A=M
// #4481
M=D
// #4482
@SP
// #4483
M=M+1
//vv push_d_to_stack
// #4484
D=0
//^^ push_d_to_stack
// #4485
@SP
// #4486
A=M
// #4487
M=D
// #4488
@SP
// #4489
M=M+1
//vv push_d_to_stack
// #4490
D=0
//^^ push_d_to_stack
// #4491
@SP
// #4492
A=M
// #4493
M=D
// #4494
@SP
// #4495
M=M+1
//vv push_d_to_stack
// #4496
D=0
//^^ push_d_to_stack
// #4497
@SP
// #4498
A=M
// #4499
M=D
// #4500
@SP
// #4501
M=M+1
//vv push_d_to_stack
//
//// push constant 0
//^^ push_constant(0)
// #4502
@0
// #4503
D=A
//^^ push_d_to_stack
// #4504
@SP
// #4505
A=M
// #4506
M=D
// #4507
@SP
// #4508
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// pop static 0
//^^ pop_to_loc{Memory.vm.0)
//^^ pop_stack_to_d
// #4509
@SP
// #4510
M=M-1
// #4511
A=M
// #4512
D=M
//vv pop_stack_to_d
// #4513
@Memory.vm.0
// #4514
M=D
//vv pop_to_loc{Memory.vm.0)
//
//// push constant 2048
//^^ push_constant(2048)
// #4515
@2048
// #4516
D=A
//^^ push_d_to_stack
// #4517
@SP
// #4518
A=M
// #4519
M=D
// #4520
@SP
// #4521
M=M+1
//vv push_d_to_stack
//vv push_constant(2048)
//
//// push static 0
//^^ push_from_loc(Memory.vm.0)
// #4522
@Memory.vm.0
// #4523
D=M
//^^ push_d_to_stack
// #4524
@SP
// #4525
A=M
// #4526
M=D
// #4527
@SP
// #4528
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Memory.vm.0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #4529
@SP
// #4530
M=M-1
// #4531
A=M
// #4532
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #4533
@R13
// #4534
M=D
//^^ pop_stack_to_d
// #4535
@SP
// #4536
M=M-1
// #4537
A=M
// #4538
D=M
//vv pop_stack_to_d
// #4539
@R13
// #4540
D=D+M
// #4541
@R13
// #4542
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #4543
@SP
// #4544
A=M
// #4545
M=D
// #4546
@SP
// #4547
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push constant 14334
//^^ push_constant(14334)
// #4548
@14334
// #4549
D=A
//^^ push_d_to_stack
// #4550
@SP
// #4551
A=M
// #4552
M=D
// #4553
@SP
// #4554
M=M+1
//vv push_d_to_stack
//vv push_constant(14334)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #4555
@SP
// #4556
M=M-1
// #4557
A=M
// #4558
D=M
//vv pop_stack_to_d
// #4559
@5
// #4560
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #4561
@SP
// #4562
M=M-1
// #4563
A=M
// #4564
D=M
//vv pop_stack_to_d
// #4565
@4
// #4566
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #4567
@5
// #4568
D=M
//^^ push_d_to_stack
// #4569
@SP
// #4570
A=M
// #4571
M=D
// #4572
@SP
// #4573
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #4574
@THAT
// #4575
D=M
// #4576
@0
// #4577
D=D+A
// #4578
@R13
// #4579
M=D
//^^ pop_stack_to_d
// #4580
@SP
// #4581
M=M-1
// #4582
A=M
// #4583
D=M
//vv pop_stack_to_d
// #4584
@R13
// #4585
A=M
// #4586
M=D
// #4587
@R13
// #4588
M=0
//vv pop_to_ram(THAT, 0)
//
//// push constant 2049
//^^ push_constant(2049)
// #4589
@2049
// #4590
D=A
//^^ push_d_to_stack
// #4591
@SP
// #4592
A=M
// #4593
M=D
// #4594
@SP
// #4595
M=M+1
//vv push_d_to_stack
//vv push_constant(2049)
//
//// push static 0
//^^ push_from_loc(Memory.vm.0)
// #4596
@Memory.vm.0
// #4597
D=M
//^^ push_d_to_stack
// #4598
@SP
// #4599
A=M
// #4600
M=D
// #4601
@SP
// #4602
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Memory.vm.0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #4603
@SP
// #4604
M=M-1
// #4605
A=M
// #4606
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #4607
@R13
// #4608
M=D
//^^ pop_stack_to_d
// #4609
@SP
// #4610
M=M-1
// #4611
A=M
// #4612
D=M
//vv pop_stack_to_d
// #4613
@R13
// #4614
D=D+M
// #4615
@R13
// #4616
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #4617
@SP
// #4618
A=M
// #4619
M=D
// #4620
@SP
// #4621
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push constant 2050
//^^ push_constant(2050)
// #4622
@2050
// #4623
D=A
//^^ push_d_to_stack
// #4624
@SP
// #4625
A=M
// #4626
M=D
// #4627
@SP
// #4628
M=M+1
//vv push_d_to_stack
//vv push_constant(2050)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #4629
@SP
// #4630
M=M-1
// #4631
A=M
// #4632
D=M
//vv pop_stack_to_d
// #4633
@5
// #4634
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #4635
@SP
// #4636
M=M-1
// #4637
A=M
// #4638
D=M
//vv pop_stack_to_d
// #4639
@4
// #4640
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #4641
@5
// #4642
D=M
//^^ push_d_to_stack
// #4643
@SP
// #4644
A=M
// #4645
M=D
// #4646
@SP
// #4647
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #4648
@THAT
// #4649
D=M
// #4650
@0
// #4651
D=D+A
// #4652
@R13
// #4653
M=D
//^^ pop_stack_to_d
// #4654
@SP
// #4655
M=M-1
// #4656
A=M
// #4657
D=M
//vv pop_stack_to_d
// #4658
@R13
// #4659
A=M
// #4660
M=D
// #4661
@R13
// #4662
M=0
//vv pop_to_ram(THAT, 0)
//
//// push constant 0
//^^ push_constant(0)
// #4663
@0
// #4664
D=A
//^^ push_d_to_stack
// #4665
@SP
// #4666
A=M
// #4667
M=D
// #4668
@SP
// #4669
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #4670
@LCL
// #4671
D=M
// #4672
@R14
// #4673
M=D //R14=LCL
// #4674
@5
// #4675
A=D-A
// #4676
D=M
// #4677
@R15
// #4678
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #4679
@SP
// #4680
M=M-1
// #4681
A=M
// #4682
D=M
//vv pop_stack_to_d
// #4683
@ARG
// #4684
A=M
// #4685
M=D //*ARG = pop()
// #4686
@ARG
// #4687
D=M
// #4688
@SP
// #4689
M=D+1 //SP=ARG+1
// #4690
@R14
// #4691
AM=M-1
// #4692
D=M
// #4693
@THAT
// #4694
M=D //THAT = *(--R14)
// #4695
@R14
// #4696
AM=M-1
// #4697
D=M
// #4698
@THIS
// #4699
M=D //THIS = *(--R14)
// #4700
@R14
// #4701
AM=M-1
// #4702
D=M
// #4703
@ARG
// #4704
M=D //ARG = *(--R14)
// #4705
@R14
// #4706
AM=M-1
// #4707
D=M
// #4708
@LCL
// #4709
M=D //LCL = *(--R14)
// #4710
@R15
// #4711
A=M
// #4712
0;JMP //goto *R15
//
//// function Memory.peek 0
(Memory.peek)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #4713
@ARG
// #4714
D=M
// #4715
@0
// #4716
A=D+A
// #4717
D=M
//^^ push_d_to_stack
// #4718
@SP
// #4719
A=M
// #4720
M=D
// #4721
@SP
// #4722
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push static 0
//^^ push_from_loc(Memory.vm.0)
// #4723
@Memory.vm.0
// #4724
D=M
//^^ push_d_to_stack
// #4725
@SP
// #4726
A=M
// #4727
M=D
// #4728
@SP
// #4729
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Memory.vm.0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #4730
@SP
// #4731
M=M-1
// #4732
A=M
// #4733
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #4734
@R13
// #4735
M=D
//^^ pop_stack_to_d
// #4736
@SP
// #4737
M=M-1
// #4738
A=M
// #4739
D=M
//vv pop_stack_to_d
// #4740
@R13
// #4741
D=D+M
// #4742
@R13
// #4743
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #4744
@SP
// #4745
A=M
// #4746
M=D
// #4747
@SP
// #4748
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #4749
@SP
// #4750
M=M-1
// #4751
A=M
// #4752
D=M
//vv pop_stack_to_d
// #4753
@4
// #4754
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #4755
@THAT
// #4756
D=M
// #4757
@0
// #4758
A=D+A
// #4759
D=M
//^^ push_d_to_stack
// #4760
@SP
// #4761
A=M
// #4762
M=D
// #4763
@SP
// #4764
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// return
// #4765
@LCL
// #4766
D=M
// #4767
@R14
// #4768
M=D //R14=LCL
// #4769
@5
// #4770
A=D-A
// #4771
D=M
// #4772
@R15
// #4773
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #4774
@SP
// #4775
M=M-1
// #4776
A=M
// #4777
D=M
//vv pop_stack_to_d
// #4778
@ARG
// #4779
A=M
// #4780
M=D //*ARG = pop()
// #4781
@ARG
// #4782
D=M
// #4783
@SP
// #4784
M=D+1 //SP=ARG+1
// #4785
@R14
// #4786
AM=M-1
// #4787
D=M
// #4788
@THAT
// #4789
M=D //THAT = *(--R14)
// #4790
@R14
// #4791
AM=M-1
// #4792
D=M
// #4793
@THIS
// #4794
M=D //THIS = *(--R14)
// #4795
@R14
// #4796
AM=M-1
// #4797
D=M
// #4798
@ARG
// #4799
M=D //ARG = *(--R14)
// #4800
@R14
// #4801
AM=M-1
// #4802
D=M
// #4803
@LCL
// #4804
M=D //LCL = *(--R14)
// #4805
@R15
// #4806
A=M
// #4807
0;JMP //goto *R15
//
//// function Memory.poke 0
(Memory.poke)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #4808
@ARG
// #4809
D=M
// #4810
@0
// #4811
A=D+A
// #4812
D=M
//^^ push_d_to_stack
// #4813
@SP
// #4814
A=M
// #4815
M=D
// #4816
@SP
// #4817
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push constant 1
//^^ push_constant(1)
// #4818
@1
// #4819
D=A
//^^ push_d_to_stack
// #4820
@SP
// #4821
A=M
// #4822
M=D
// #4823
@SP
// #4824
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #4825
@SP
// #4826
M=M-1
// #4827
A=M
// #4828
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #4829
@R13
// #4830
M=D
//^^ pop_stack_to_d
// #4831
@SP
// #4832
M=M-1
// #4833
A=M
// #4834
D=M
//vv pop_stack_to_d
// #4835
@R13
// #4836
D=D-M
// #4837
@R13
// #4838
M=0
//vv arith_d_with_stack_top(D-M)
// #4839
@PUT_TRUE_62
// #4840
D;JLT
// #4841
@R13
// #4842
M=0
// #4843
@CONT_62
// #4844
0;JMP
(PUT_TRUE_62)
// #4845
@R13
// #4846
M=-1
(CONT_62)
// #4847
@R13
// #4848
D=M
// #4849
@R13
// #4850
M=0
//^^ push_d_to_stack
// #4851
@SP
// #4852
A=M
// #4853
M=D
// #4854
@SP
// #4855
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// if-goto IF_TRUE0
//^^ pop_stack_to_d
// #4856
@SP
// #4857
M=M-1
// #4858
A=M
// #4859
D=M
//vv pop_stack_to_d
// #4860
@Memory.alloc$IF_TRUE0
// #4861
D;JNE
//
//// goto IF_FALSE0
// #4862
@Memory.alloc$IF_FALSE0
// #4863
0;JMP
//
//// label IF_TRUE0
(Memory.alloc$IF_TRUE0)
//
//// push constant 5
//^^ push_constant(5)
// #4864
@5
// #4865
D=A
//^^ push_d_to_stack
// #4866
@SP
// #4867
A=M
// #4868
M=D
// #4869
@SP
// #4870
M=M+1
//vv push_d_to_stack
//vv push_constant(5)
//
//// call Sys.error 1
//^^ push_constant(RET_ADDR_63)
// #4871
@RET_ADDR_63
// #4872
D=A
//^^ push_d_to_stack
// #4873
@SP
// #4874
A=M
// #4875
M=D
// #4876
@SP
// #4877
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_63)
//push return-address
// #4878
@LCL
// #4879
D=M
//^^ push_d_to_stack
// #4880
@SP
// #4881
A=M
// #4882
M=D
// #4883
@SP
// #4884
M=M+1
//vv push_d_to_stack
//push LCL
// #4885
@ARG
// #4886
D=M
//^^ push_d_to_stack
// #4887
@SP
// #4888
A=M
// #4889
M=D
// #4890
@SP
// #4891
M=M+1
//vv push_d_to_stack
//push ARG
// #4892
@THIS
// #4893
D=M
//^^ push_d_to_stack
// #4894
@SP
// #4895
A=M
// #4896
M=D
// #4897
@SP
// #4898
M=M+1
//vv push_d_to_stack
//push THIS
// #4899
@THAT
// #4900
D=M
//^^ push_d_to_stack
// #4901
@SP
// #4902
A=M
// #4903
M=D
// #4904
@SP
// #4905
M=M+1
//vv push_d_to_stack
//push THAT
// #4906
@SP
// #4907
D=M
// #4908
@ARG
// #4909
M=D
// #4910
@6
// #4911
D=A
// #4912
@ARG
// #4913
M=M-D // ARG = SP - args - 5
// #4914
@SP
// #4915
D=M
// #4916
@LCL
// #4917
M=D // LCL = SP
// #4918
@Sys.error
// #4919
0;JMP
(RET_ADDR_63)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #4920
@SP
// #4921
M=M-1
// #4922
A=M
// #4923
D=M
//vv pop_stack_to_d
// #4924
@5
// #4925
M=D
//vv pop_to_loc{5)
//
//// label IF_FALSE0
(Memory.alloc$IF_FALSE0)
//
//// push constant 2048
//^^ push_constant(2048)
// #4926
@2048
// #4927
D=A
//^^ push_d_to_stack
// #4928
@SP
// #4929
A=M
// #4930
M=D
// #4931
@SP
// #4932
M=M+1
//vv push_d_to_stack
//vv push_constant(2048)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
// #4933
@LCL
// #4934
D=M
// #4935
@0
// #4936
D=D+A
// #4937
@R13
// #4938
M=D
//^^ pop_stack_to_d
// #4939
@SP
// #4940
M=M-1
// #4941
A=M
// #4942
D=M
//vv pop_stack_to_d
// #4943
@R13
// #4944
A=M
// #4945
M=D
// #4946
@R13
// #4947
M=0
//vv pop_to_ram(LCL, 0)
//
//// label WHILE_EXP0
(Memory.alloc$WHILE_EXP0)
//
//// push constant 0
//^^ push_constant(0)
// #4948
@0
// #4949
D=A
//^^ push_d_to_stack
// #4950
@SP
// #4951
A=M
// #4952
M=D
// #4953
@SP
// #4954
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #4955
@LCL
// #4956
D=M
// #4957
@0
// #4958
A=D+A
// #4959
D=M
//^^ push_d_to_stack
// #4960
@SP
// #4961
A=M
// #4962
M=D
// #4963
@SP
// #4964
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #4965
@SP
// #4966
M=M-1
// #4967
A=M
// #4968
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #4969
@R13
// #4970
M=D
//^^ pop_stack_to_d
// #4971
@SP
// #4972
M=M-1
// #4973
A=M
// #4974
D=M
//vv pop_stack_to_d
// #4975
@R13
// #4976
D=D+M
// #4977
@R13
// #4978
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #4979
@SP
// #4980
A=M
// #4981
M=D
// #4982
@SP
// #4983
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #4984
@SP
// #4985
M=M-1
// #4986
A=M
// #4987
D=M
//vv pop_stack_to_d
// #4988
@4
// #4989
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #4990
@THAT
// #4991
D=M
// #4992
@0
// #4993
A=D+A
// #4994
D=M
//^^ push_d_to_stack
// #4995
@SP
// #4996
A=M
// #4997
M=D
// #4998
@SP
// #4999
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #5000
@ARG
// #5001
D=M
// #5002
@0
// #5003
A=D+A
// #5004
D=M
//^^ push_d_to_stack
// #5005
@SP
// #5006
A=M
// #5007
M=D
// #5008
@SP
// #5009
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #5010
@SP
// #5011
M=M-1
// #5012
A=M
// #5013
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #5014
@R13
// #5015
M=D
//^^ pop_stack_to_d
// #5016
@SP
// #5017
M=M-1
// #5018
A=M
// #5019
D=M
//vv pop_stack_to_d
// #5020
@R13
// #5021
D=D-M
// #5022
@R13
// #5023
M=0
//vv arith_d_with_stack_top(D-M)
// #5024
@PUT_TRUE_64
// #5025
D;JLT
// #5026
@R13
// #5027
M=0
// #5028
@CONT_64
// #5029
0;JMP
(PUT_TRUE_64)
// #5030
@R13
// #5031
M=-1
(CONT_64)
// #5032
@R13
// #5033
D=M
// #5034
@R13
// #5035
M=0
//^^ push_d_to_stack
// #5036
@SP
// #5037
A=M
// #5038
M=D
// #5039
@SP
// #5040
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #5041
@SP
// #5042
M=M-1
// #5043
A=M
// #5044
D=M
//vv pop_stack_to_d
// #5045
D=!D
//^^ push_d_to_stack
// #5046
@SP
// #5047
A=M
// #5048
M=D
// #5049
@SP
// #5050
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// if-goto WHILE_END0
//^^ pop_stack_to_d
// #5051
@SP
// #5052
M=M-1
// #5053
A=M
// #5054
D=M
//vv pop_stack_to_d
// #5055
@Memory.alloc$WHILE_END0
// #5056
D;JNE
//
//// push constant 1
//^^ push_constant(1)
// #5057
@1
// #5058
D=A
//^^ push_d_to_stack
// #5059
@SP
// #5060
A=M
// #5061
M=D
// #5062
@SP
// #5063
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #5064
@LCL
// #5065
D=M
// #5066
@0
// #5067
A=D+A
// #5068
D=M
//^^ push_d_to_stack
// #5069
@SP
// #5070
A=M
// #5071
M=D
// #5072
@SP
// #5073
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #5074
@SP
// #5075
M=M-1
// #5076
A=M
// #5077
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #5078
@R13
// #5079
M=D
//^^ pop_stack_to_d
// #5080
@SP
// #5081
M=M-1
// #5082
A=M
// #5083
D=M
//vv pop_stack_to_d
// #5084
@R13
// #5085
D=D+M
// #5086
@R13
// #5087
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #5088
@SP
// #5089
A=M
// #5090
M=D
// #5091
@SP
// #5092
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #5093
@SP
// #5094
M=M-1
// #5095
A=M
// #5096
D=M
//vv pop_stack_to_d
// #5097
@4
// #5098
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #5099
@THAT
// #5100
D=M
// #5101
@0
// #5102
A=D+A
// #5103
D=M
//^^ push_d_to_stack
// #5104
@SP
// #5105
A=M
// #5106
M=D
// #5107
@SP
// #5108
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
// #5109
@LCL
// #5110
D=M
// #5111
@0
// #5112
D=D+A
// #5113
@R13
// #5114
M=D
//^^ pop_stack_to_d
// #5115
@SP
// #5116
M=M-1
// #5117
A=M
// #5118
D=M
//vv pop_stack_to_d
// #5119
@R13
// #5120
A=M
// #5121
M=D
// #5122
@R13
// #5123
M=0
//vv pop_to_ram(LCL, 0)
//
//// goto WHILE_EXP0
// #5124
@Memory.alloc$WHILE_EXP0
// #5125
0;JMP
//
//// label WHILE_END0
(Memory.alloc$WHILE_END0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #5126
@LCL
// #5127
D=M
// #5128
@0
// #5129
A=D+A
// #5130
D=M
//^^ push_d_to_stack
// #5131
@SP
// #5132
A=M
// #5133
M=D
// #5134
@SP
// #5135
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #5136
@ARG
// #5137
D=M
// #5138
@0
// #5139
A=D+A
// #5140
D=M
//^^ push_d_to_stack
// #5141
@SP
// #5142
A=M
// #5143
M=D
// #5144
@SP
// #5145
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #5146
@SP
// #5147
M=M-1
// #5148
A=M
// #5149
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #5150
@R13
// #5151
M=D
//^^ pop_stack_to_d
// #5152
@SP
// #5153
M=M-1
// #5154
A=M
// #5155
D=M
//vv pop_stack_to_d
// #5156
@R13
// #5157
D=D+M
// #5158
@R13
// #5159
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #5160
@SP
// #5161
A=M
// #5162
M=D
// #5163
@SP
// #5164
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push constant 16379
//^^ push_constant(16379)
// #5165
@16379
// #5166
D=A
//^^ push_d_to_stack
// #5167
@SP
// #5168
A=M
// #5169
M=D
// #5170
@SP
// #5171
M=M+1
//vv push_d_to_stack
//vv push_constant(16379)
//
//// gt
//^^ arith_cmp_op(JGT)
//^^ pop_stack_to_d
// #5172
@SP
// #5173
M=M-1
// #5174
A=M
// #5175
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #5176
@R13
// #5177
M=D
//^^ pop_stack_to_d
// #5178
@SP
// #5179
M=M-1
// #5180
A=M
// #5181
D=M
//vv pop_stack_to_d
// #5182
@R13
// #5183
D=D-M
// #5184
@R13
// #5185
M=0
//vv arith_d_with_stack_top(D-M)
// #5186
@PUT_TRUE_65
// #5187
D;JGT
// #5188
@R13
// #5189
M=0
// #5190
@CONT_65
// #5191
0;JMP
(PUT_TRUE_65)
// #5192
@R13
// #5193
M=-1
(CONT_65)
// #5194
@R13
// #5195
D=M
// #5196
@R13
// #5197
M=0
//^^ push_d_to_stack
// #5198
@SP
// #5199
A=M
// #5200
M=D
// #5201
@SP
// #5202
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JGT)
//
//// if-goto IF_TRUE1
//^^ pop_stack_to_d
// #5203
@SP
// #5204
M=M-1
// #5205
A=M
// #5206
D=M
//vv pop_stack_to_d
// #5207
@Memory.alloc$IF_TRUE1
// #5208
D;JNE
//
//// goto IF_FALSE1
// #5209
@Memory.alloc$IF_FALSE1
// #5210
0;JMP
//
//// label IF_TRUE1
(Memory.alloc$IF_TRUE1)
//
//// push constant 6
//^^ push_constant(6)
// #5211
@6
// #5212
D=A
//^^ push_d_to_stack
// #5213
@SP
// #5214
A=M
// #5215
M=D
// #5216
@SP
// #5217
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// call Sys.error 1
//^^ push_constant(RET_ADDR_66)
// #5218
@RET_ADDR_66
// #5219
D=A
//^^ push_d_to_stack
// #5220
@SP
// #5221
A=M
// #5222
M=D
// #5223
@SP
// #5224
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_66)
//push return-address
// #5225
@LCL
// #5226
D=M
//^^ push_d_to_stack
// #5227
@SP
// #5228
A=M
// #5229
M=D
// #5230
@SP
// #5231
M=M+1
//vv push_d_to_stack
//push LCL
// #5232
@ARG
// #5233
D=M
//^^ push_d_to_stack
// #5234
@SP
// #5235
A=M
// #5236
M=D
// #5237
@SP
// #5238
M=M+1
//vv push_d_to_stack
//push ARG
// #5239
@THIS
// #5240
D=M
//^^ push_d_to_stack
// #5241
@SP
// #5242
A=M
// #5243
M=D
// #5244
@SP
// #5245
M=M+1
//vv push_d_to_stack
//push THIS
// #5246
@THAT
// #5247
D=M
//^^ push_d_to_stack
// #5248
@SP
// #5249
A=M
// #5250
M=D
// #5251
@SP
// #5252
M=M+1
//vv push_d_to_stack
//push THAT
// #5253
@SP
// #5254
D=M
// #5255
@ARG
// #5256
M=D
// #5257
@6
// #5258
D=A
// #5259
@ARG
// #5260
M=M-D // ARG = SP - args - 5
// #5261
@SP
// #5262
D=M
// #5263
@LCL
// #5264
M=D // LCL = SP
// #5265
@Sys.error
// #5266
0;JMP
(RET_ADDR_66)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #5267
@SP
// #5268
M=M-1
// #5269
A=M
// #5270
D=M
//vv pop_stack_to_d
// #5271
@5
// #5272
M=D
//vv pop_to_loc{5)
//
//// label IF_FALSE1
(Memory.alloc$IF_FALSE1)
//
//// push constant 0
//^^ push_constant(0)
// #5273
@0
// #5274
D=A
//^^ push_d_to_stack
// #5275
@SP
// #5276
A=M
// #5277
M=D
// #5278
@SP
// #5279
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #5280
@LCL
// #5281
D=M
// #5282
@0
// #5283
A=D+A
// #5284
D=M
//^^ push_d_to_stack
// #5285
@SP
// #5286
A=M
// #5287
M=D
// #5288
@SP
// #5289
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #5290
@SP
// #5291
M=M-1
// #5292
A=M
// #5293
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #5294
@R13
// #5295
M=D
//^^ pop_stack_to_d
// #5296
@SP
// #5297
M=M-1
// #5298
A=M
// #5299
D=M
//vv pop_stack_to_d
// #5300
@R13
// #5301
D=D+M
// #5302
@R13
// #5303
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #5304
@SP
// #5305
A=M
// #5306
M=D
// #5307
@SP
// #5308
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #5309
@SP
// #5310
M=M-1
// #5311
A=M
// #5312
D=M
//vv pop_stack_to_d
// #5313
@4
// #5314
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #5315
@THAT
// #5316
D=M
// #5317
@0
// #5318
A=D+A
// #5319
D=M
//^^ push_d_to_stack
// #5320
@SP
// #5321
A=M
// #5322
M=D
// #5323
@SP
// #5324
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #5325
@ARG
// #5326
D=M
// #5327
@0
// #5328
A=D+A
// #5329
D=M
//^^ push_d_to_stack
// #5330
@SP
// #5331
A=M
// #5332
M=D
// #5333
@SP
// #5334
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push constant 2
//^^ push_constant(2)
// #5335
@2
// #5336
D=A
//^^ push_d_to_stack
// #5337
@SP
// #5338
A=M
// #5339
M=D
// #5340
@SP
// #5341
M=M+1
//vv push_d_to_stack
//vv push_constant(2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #5342
@SP
// #5343
M=M-1
// #5344
A=M
// #5345
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #5346
@R13
// #5347
M=D
//^^ pop_stack_to_d
// #5348
@SP
// #5349
M=M-1
// #5350
A=M
// #5351
D=M
//vv pop_stack_to_d
// #5352
@R13
// #5353
D=D+M
// #5354
@R13
// #5355
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #5356
@SP
// #5357
A=M
// #5358
M=D
// #5359
@SP
// #5360
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// gt
//^^ arith_cmp_op(JGT)
//^^ pop_stack_to_d
// #5361
@SP
// #5362
M=M-1
// #5363
A=M
// #5364
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #5365
@R13
// #5366
M=D
//^^ pop_stack_to_d
// #5367
@SP
// #5368
M=M-1
// #5369
A=M
// #5370
D=M
//vv pop_stack_to_d
// #5371
@R13
// #5372
D=D-M
// #5373
@R13
// #5374
M=0
//vv arith_d_with_stack_top(D-M)
// #5375
@PUT_TRUE_67
// #5376
D;JGT
// #5377
@R13
// #5378
M=0
// #5379
@CONT_67
// #5380
0;JMP
(PUT_TRUE_67)
// #5381
@R13
// #5382
M=-1
(CONT_67)
// #5383
@R13
// #5384
D=M
// #5385
@R13
// #5386
M=0
//^^ push_d_to_stack
// #5387
@SP
// #5388
A=M
// #5389
M=D
// #5390
@SP
// #5391
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JGT)
//
//// if-goto IF_TRUE2
//^^ pop_stack_to_d
// #5392
@SP
// #5393
M=M-1
// #5394
A=M
// #5395
D=M
//vv pop_stack_to_d
// #5396
@Memory.alloc$IF_TRUE2
// #5397
D;JNE
//
//// goto IF_FALSE2
// #5398
@Memory.alloc$IF_FALSE2
// #5399
0;JMP
//
//// label IF_TRUE2
(Memory.alloc$IF_TRUE2)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #5400
@ARG
// #5401
D=M
// #5402
@0
// #5403
A=D+A
// #5404
D=M
//^^ push_d_to_stack
// #5405
@SP
// #5406
A=M
// #5407
M=D
// #5408
@SP
// #5409
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push constant 2
//^^ push_constant(2)
// #5410
@2
// #5411
D=A
//^^ push_d_to_stack
// #5412
@SP
// #5413
A=M
// #5414
M=D
// #5415
@SP
// #5416
M=M+1
//vv push_d_to_stack
//vv push_constant(2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #5417
@SP
// #5418
M=M-1
// #5419
A=M
// #5420
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #5421
@R13
// #5422
M=D
//^^ pop_stack_to_d
// #5423
@SP
// #5424
M=M-1
// #5425
A=M
// #5426
D=M
//vv pop_stack_to_d
// #5427
@R13
// #5428
D=D+M
// #5429
@R13
// #5430
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #5431
@SP
// #5432
A=M
// #5433
M=D
// #5434
@SP
// #5435
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #5436
@LCL
// #5437
D=M
// #5438
@0
// #5439
A=D+A
// #5440
D=M
//^^ push_d_to_stack
// #5441
@SP
// #5442
A=M
// #5443
M=D
// #5444
@SP
// #5445
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #5446
@SP
// #5447
M=M-1
// #5448
A=M
// #5449
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #5450
@R13
// #5451
M=D
//^^ pop_stack_to_d
// #5452
@SP
// #5453
M=M-1
// #5454
A=M
// #5455
D=M
//vv pop_stack_to_d
// #5456
@R13
// #5457
D=D+M
// #5458
@R13
// #5459
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #5460
@SP
// #5461
A=M
// #5462
M=D
// #5463
@SP
// #5464
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push constant 0
//^^ push_constant(0)
// #5465
@0
// #5466
D=A
//^^ push_d_to_stack
// #5467
@SP
// #5468
A=M
// #5469
M=D
// #5470
@SP
// #5471
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #5472
@LCL
// #5473
D=M
// #5474
@0
// #5475
A=D+A
// #5476
D=M
//^^ push_d_to_stack
// #5477
@SP
// #5478
A=M
// #5479
M=D
// #5480
@SP
// #5481
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #5482
@SP
// #5483
M=M-1
// #5484
A=M
// #5485
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #5486
@R13
// #5487
M=D
//^^ pop_stack_to_d
// #5488
@SP
// #5489
M=M-1
// #5490
A=M
// #5491
D=M
//vv pop_stack_to_d
// #5492
@R13
// #5493
D=D+M
// #5494
@R13
// #5495
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #5496
@SP
// #5497
A=M
// #5498
M=D
// #5499
@SP
// #5500
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #5501
@SP
// #5502
M=M-1
// #5503
A=M
// #5504
D=M
//vv pop_stack_to_d
// #5505
@4
// #5506
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #5507
@THAT
// #5508
D=M
// #5509
@0
// #5510
A=D+A
// #5511
D=M
//^^ push_d_to_stack
// #5512
@SP
// #5513
A=M
// #5514
M=D
// #5515
@SP
// #5516
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #5517
@ARG
// #5518
D=M
// #5519
@0
// #5520
A=D+A
// #5521
D=M
//^^ push_d_to_stack
// #5522
@SP
// #5523
A=M
// #5524
M=D
// #5525
@SP
// #5526
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #5527
@SP
// #5528
M=M-1
// #5529
A=M
// #5530
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #5531
@R13
// #5532
M=D
//^^ pop_stack_to_d
// #5533
@SP
// #5534
M=M-1
// #5535
A=M
// #5536
D=M
//vv pop_stack_to_d
// #5537
@R13
// #5538
D=D-M
// #5539
@R13
// #5540
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #5541
@SP
// #5542
A=M
// #5543
M=D
// #5544
@SP
// #5545
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// push constant 2
//^^ push_constant(2)
// #5546
@2
// #5547
D=A
//^^ push_d_to_stack
// #5548
@SP
// #5549
A=M
// #5550
M=D
// #5551
@SP
// #5552
M=M+1
//vv push_d_to_stack
//vv push_constant(2)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #5553
@SP
// #5554
M=M-1
// #5555
A=M
// #5556
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #5557
@R13
// #5558
M=D
//^^ pop_stack_to_d
// #5559
@SP
// #5560
M=M-1
// #5561
A=M
// #5562
D=M
//vv pop_stack_to_d
// #5563
@R13
// #5564
D=D-M
// #5565
@R13
// #5566
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #5567
@SP
// #5568
A=M
// #5569
M=D
// #5570
@SP
// #5571
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #5572
@SP
// #5573
M=M-1
// #5574
A=M
// #5575
D=M
//vv pop_stack_to_d
// #5576
@5
// #5577
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #5578
@SP
// #5579
M=M-1
// #5580
A=M
// #5581
D=M
//vv pop_stack_to_d
// #5582
@4
// #5583
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #5584
@5
// #5585
D=M
//^^ push_d_to_stack
// #5586
@SP
// #5587
A=M
// #5588
M=D
// #5589
@SP
// #5590
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #5591
@THAT
// #5592
D=M
// #5593
@0
// #5594
D=D+A
// #5595
@R13
// #5596
M=D
//^^ pop_stack_to_d
// #5597
@SP
// #5598
M=M-1
// #5599
A=M
// #5600
D=M
//vv pop_stack_to_d
// #5601
@R13
// #5602
A=M
// #5603
M=D
// #5604
@R13
// #5605
M=0
//vv pop_to_ram(THAT, 0)
//
//// push constant 1
//^^ push_constant(1)
// #5606
@1
// #5607
D=A
//^^ push_d_to_stack
// #5608
@SP
// #5609
A=M
// #5610
M=D
// #5611
@SP
// #5612
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #5613
@LCL
// #5614
D=M
// #5615
@0
// #5616
A=D+A
// #5617
D=M
//^^ push_d_to_stack
// #5618
@SP
// #5619
A=M
// #5620
M=D
// #5621
@SP
// #5622
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #5623
@SP
// #5624
M=M-1
// #5625
A=M
// #5626
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #5627
@R13
// #5628
M=D
//^^ pop_stack_to_d
// #5629
@SP
// #5630
M=M-1
// #5631
A=M
// #5632
D=M
//vv pop_stack_to_d
// #5633
@R13
// #5634
D=D+M
// #5635
@R13
// #5636
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #5637
@SP
// #5638
A=M
// #5639
M=D
// #5640
@SP
// #5641
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #5642
@SP
// #5643
M=M-1
// #5644
A=M
// #5645
D=M
//vv pop_stack_to_d
// #5646
@4
// #5647
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #5648
@THAT
// #5649
D=M
// #5650
@0
// #5651
A=D+A
// #5652
D=M
//^^ push_d_to_stack
// #5653
@SP
// #5654
A=M
// #5655
M=D
// #5656
@SP
// #5657
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #5658
@LCL
// #5659
D=M
// #5660
@0
// #5661
A=D+A
// #5662
D=M
//^^ push_d_to_stack
// #5663
@SP
// #5664
A=M
// #5665
M=D
// #5666
@SP
// #5667
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 2
//^^ push_constant(2)
// #5668
@2
// #5669
D=A
//^^ push_d_to_stack
// #5670
@SP
// #5671
A=M
// #5672
M=D
// #5673
@SP
// #5674
M=M+1
//vv push_d_to_stack
//vv push_constant(2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #5675
@SP
// #5676
M=M-1
// #5677
A=M
// #5678
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #5679
@R13
// #5680
M=D
//^^ pop_stack_to_d
// #5681
@SP
// #5682
M=M-1
// #5683
A=M
// #5684
D=M
//vv pop_stack_to_d
// #5685
@R13
// #5686
D=D+M
// #5687
@R13
// #5688
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #5689
@SP
// #5690
A=M
// #5691
M=D
// #5692
@SP
// #5693
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #5694
@SP
// #5695
M=M-1
// #5696
A=M
// #5697
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #5698
@R13
// #5699
M=D
//^^ pop_stack_to_d
// #5700
@SP
// #5701
M=M-1
// #5702
A=M
// #5703
D=M
//vv pop_stack_to_d
// #5704
@R13
// #5705
D=D-M
// #5706
@R13
// #5707
M=0
//vv arith_d_with_stack_top(D-M)
// #5708
@PUT_TRUE_68
// #5709
D;JEQ
// #5710
@R13
// #5711
M=0
// #5712
@CONT_68
// #5713
0;JMP
(PUT_TRUE_68)
// #5714
@R13
// #5715
M=-1
(CONT_68)
// #5716
@R13
// #5717
D=M
// #5718
@R13
// #5719
M=0
//^^ push_d_to_stack
// #5720
@SP
// #5721
A=M
// #5722
M=D
// #5723
@SP
// #5724
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// if-goto IF_TRUE3
//^^ pop_stack_to_d
// #5725
@SP
// #5726
M=M-1
// #5727
A=M
// #5728
D=M
//vv pop_stack_to_d
// #5729
@Memory.alloc$IF_TRUE3
// #5730
D;JNE
//
//// goto IF_FALSE3
// #5731
@Memory.alloc$IF_FALSE3
// #5732
0;JMP
//
//// label IF_TRUE3
(Memory.alloc$IF_TRUE3)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #5733
@ARG
// #5734
D=M
// #5735
@0
// #5736
A=D+A
// #5737
D=M
//^^ push_d_to_stack
// #5738
@SP
// #5739
A=M
// #5740
M=D
// #5741
@SP
// #5742
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push constant 3
//^^ push_constant(3)
// #5743
@3
// #5744
D=A
//^^ push_d_to_stack
// #5745
@SP
// #5746
A=M
// #5747
M=D
// #5748
@SP
// #5749
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #5750
@SP
// #5751
M=M-1
// #5752
A=M
// #5753
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #5754
@R13
// #5755
M=D
//^^ pop_stack_to_d
// #5756
@SP
// #5757
M=M-1
// #5758
A=M
// #5759
D=M
//vv pop_stack_to_d
// #5760
@R13
// #5761
D=D+M
// #5762
@R13
// #5763
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #5764
@SP
// #5765
A=M
// #5766
M=D
// #5767
@SP
// #5768
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #5769
@LCL
// #5770
D=M
// #5771
@0
// #5772
A=D+A
// #5773
D=M
//^^ push_d_to_stack
// #5774
@SP
// #5775
A=M
// #5776
M=D
// #5777
@SP
// #5778
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #5779
@SP
// #5780
M=M-1
// #5781
A=M
// #5782
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #5783
@R13
// #5784
M=D
//^^ pop_stack_to_d
// #5785
@SP
// #5786
M=M-1
// #5787
A=M
// #5788
D=M
//vv pop_stack_to_d
// #5789
@R13
// #5790
D=D+M
// #5791
@R13
// #5792
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #5793
@SP
// #5794
A=M
// #5795
M=D
// #5796
@SP
// #5797
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #5798
@LCL
// #5799
D=M
// #5800
@0
// #5801
A=D+A
// #5802
D=M
//^^ push_d_to_stack
// #5803
@SP
// #5804
A=M
// #5805
M=D
// #5806
@SP
// #5807
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #5808
@ARG
// #5809
D=M
// #5810
@0
// #5811
A=D+A
// #5812
D=M
//^^ push_d_to_stack
// #5813
@SP
// #5814
A=M
// #5815
M=D
// #5816
@SP
// #5817
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #5818
@SP
// #5819
M=M-1
// #5820
A=M
// #5821
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #5822
@R13
// #5823
M=D
//^^ pop_stack_to_d
// #5824
@SP
// #5825
M=M-1
// #5826
A=M
// #5827
D=M
//vv pop_stack_to_d
// #5828
@R13
// #5829
D=D+M
// #5830
@R13
// #5831
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #5832
@SP
// #5833
A=M
// #5834
M=D
// #5835
@SP
// #5836
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push constant 4
//^^ push_constant(4)
// #5837
@4
// #5838
D=A
//^^ push_d_to_stack
// #5839
@SP
// #5840
A=M
// #5841
M=D
// #5842
@SP
// #5843
M=M+1
//vv push_d_to_stack
//vv push_constant(4)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #5844
@SP
// #5845
M=M-1
// #5846
A=M
// #5847
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #5848
@R13
// #5849
M=D
//^^ pop_stack_to_d
// #5850
@SP
// #5851
M=M-1
// #5852
A=M
// #5853
D=M
//vv pop_stack_to_d
// #5854
@R13
// #5855
D=D+M
// #5856
@R13
// #5857
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #5858
@SP
// #5859
A=M
// #5860
M=D
// #5861
@SP
// #5862
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #5863
@SP
// #5864
M=M-1
// #5865
A=M
// #5866
D=M
//vv pop_stack_to_d
// #5867
@5
// #5868
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #5869
@SP
// #5870
M=M-1
// #5871
A=M
// #5872
D=M
//vv pop_stack_to_d
// #5873
@4
// #5874
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #5875
@5
// #5876
D=M
//^^ push_d_to_stack
// #5877
@SP
// #5878
A=M
// #5879
M=D
// #5880
@SP
// #5881
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #5882
@THAT
// #5883
D=M
// #5884
@0
// #5885
D=D+A
// #5886
@R13
// #5887
M=D
//^^ pop_stack_to_d
// #5888
@SP
// #5889
M=M-1
// #5890
A=M
// #5891
D=M
//vv pop_stack_to_d
// #5892
@R13
// #5893
A=M
// #5894
M=D
// #5895
@R13
// #5896
M=0
//vv pop_to_ram(THAT, 0)
//
//// goto IF_END3
// #5897
@Memory.alloc$IF_END3
// #5898
0;JMP
//
//// label IF_FALSE3
(Memory.alloc$IF_FALSE3)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #5899
@ARG
// #5900
D=M
// #5901
@0
// #5902
A=D+A
// #5903
D=M
//^^ push_d_to_stack
// #5904
@SP
// #5905
A=M
// #5906
M=D
// #5907
@SP
// #5908
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push constant 3
//^^ push_constant(3)
// #5909
@3
// #5910
D=A
//^^ push_d_to_stack
// #5911
@SP
// #5912
A=M
// #5913
M=D
// #5914
@SP
// #5915
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #5916
@SP
// #5917
M=M-1
// #5918
A=M
// #5919
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #5920
@R13
// #5921
M=D
//^^ pop_stack_to_d
// #5922
@SP
// #5923
M=M-1
// #5924
A=M
// #5925
D=M
//vv pop_stack_to_d
// #5926
@R13
// #5927
D=D+M
// #5928
@R13
// #5929
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #5930
@SP
// #5931
A=M
// #5932
M=D
// #5933
@SP
// #5934
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #5935
@LCL
// #5936
D=M
// #5937
@0
// #5938
A=D+A
// #5939
D=M
//^^ push_d_to_stack
// #5940
@SP
// #5941
A=M
// #5942
M=D
// #5943
@SP
// #5944
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #5945
@SP
// #5946
M=M-1
// #5947
A=M
// #5948
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #5949
@R13
// #5950
M=D
//^^ pop_stack_to_d
// #5951
@SP
// #5952
M=M-1
// #5953
A=M
// #5954
D=M
//vv pop_stack_to_d
// #5955
@R13
// #5956
D=D+M
// #5957
@R13
// #5958
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #5959
@SP
// #5960
A=M
// #5961
M=D
// #5962
@SP
// #5963
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push constant 1
//^^ push_constant(1)
// #5964
@1
// #5965
D=A
//^^ push_d_to_stack
// #5966
@SP
// #5967
A=M
// #5968
M=D
// #5969
@SP
// #5970
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #5971
@LCL
// #5972
D=M
// #5973
@0
// #5974
A=D+A
// #5975
D=M
//^^ push_d_to_stack
// #5976
@SP
// #5977
A=M
// #5978
M=D
// #5979
@SP
// #5980
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #5981
@SP
// #5982
M=M-1
// #5983
A=M
// #5984
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #5985
@R13
// #5986
M=D
//^^ pop_stack_to_d
// #5987
@SP
// #5988
M=M-1
// #5989
A=M
// #5990
D=M
//vv pop_stack_to_d
// #5991
@R13
// #5992
D=D+M
// #5993
@R13
// #5994
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #5995
@SP
// #5996
A=M
// #5997
M=D
// #5998
@SP
// #5999
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #6000
@SP
// #6001
M=M-1
// #6002
A=M
// #6003
D=M
//vv pop_stack_to_d
// #6004
@4
// #6005
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #6006
@THAT
// #6007
D=M
// #6008
@0
// #6009
A=D+A
// #6010
D=M
//^^ push_d_to_stack
// #6011
@SP
// #6012
A=M
// #6013
M=D
// #6014
@SP
// #6015
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #6016
@SP
// #6017
M=M-1
// #6018
A=M
// #6019
D=M
//vv pop_stack_to_d
// #6020
@5
// #6021
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #6022
@SP
// #6023
M=M-1
// #6024
A=M
// #6025
D=M
//vv pop_stack_to_d
// #6026
@4
// #6027
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #6028
@5
// #6029
D=M
//^^ push_d_to_stack
// #6030
@SP
// #6031
A=M
// #6032
M=D
// #6033
@SP
// #6034
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #6035
@THAT
// #6036
D=M
// #6037
@0
// #6038
D=D+A
// #6039
@R13
// #6040
M=D
//^^ pop_stack_to_d
// #6041
@SP
// #6042
M=M-1
// #6043
A=M
// #6044
D=M
//vv pop_stack_to_d
// #6045
@R13
// #6046
A=M
// #6047
M=D
// #6048
@R13
// #6049
M=0
//vv pop_to_ram(THAT, 0)
//
//// label IF_END3
(Memory.alloc$IF_END3)
//
//// push constant 1
//^^ push_constant(1)
// #6050
@1
// #6051
D=A
//^^ push_d_to_stack
// #6052
@SP
// #6053
A=M
// #6054
M=D
// #6055
@SP
// #6056
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #6057
@LCL
// #6058
D=M
// #6059
@0
// #6060
A=D+A
// #6061
D=M
//^^ push_d_to_stack
// #6062
@SP
// #6063
A=M
// #6064
M=D
// #6065
@SP
// #6066
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #6067
@SP
// #6068
M=M-1
// #6069
A=M
// #6070
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #6071
@R13
// #6072
M=D
//^^ pop_stack_to_d
// #6073
@SP
// #6074
M=M-1
// #6075
A=M
// #6076
D=M
//vv pop_stack_to_d
// #6077
@R13
// #6078
D=D+M
// #6079
@R13
// #6080
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #6081
@SP
// #6082
A=M
// #6083
M=D
// #6084
@SP
// #6085
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #6086
@LCL
// #6087
D=M
// #6088
@0
// #6089
A=D+A
// #6090
D=M
//^^ push_d_to_stack
// #6091
@SP
// #6092
A=M
// #6093
M=D
// #6094
@SP
// #6095
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #6096
@ARG
// #6097
D=M
// #6098
@0
// #6099
A=D+A
// #6100
D=M
//^^ push_d_to_stack
// #6101
@SP
// #6102
A=M
// #6103
M=D
// #6104
@SP
// #6105
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #6106
@SP
// #6107
M=M-1
// #6108
A=M
// #6109
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #6110
@R13
// #6111
M=D
//^^ pop_stack_to_d
// #6112
@SP
// #6113
M=M-1
// #6114
A=M
// #6115
D=M
//vv pop_stack_to_d
// #6116
@R13
// #6117
D=D+M
// #6118
@R13
// #6119
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #6120
@SP
// #6121
A=M
// #6122
M=D
// #6123
@SP
// #6124
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push constant 2
//^^ push_constant(2)
// #6125
@2
// #6126
D=A
//^^ push_d_to_stack
// #6127
@SP
// #6128
A=M
// #6129
M=D
// #6130
@SP
// #6131
M=M+1
//vv push_d_to_stack
//vv push_constant(2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #6132
@SP
// #6133
M=M-1
// #6134
A=M
// #6135
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #6136
@R13
// #6137
M=D
//^^ pop_stack_to_d
// #6138
@SP
// #6139
M=M-1
// #6140
A=M
// #6141
D=M
//vv pop_stack_to_d
// #6142
@R13
// #6143
D=D+M
// #6144
@R13
// #6145
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #6146
@SP
// #6147
A=M
// #6148
M=D
// #6149
@SP
// #6150
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #6151
@SP
// #6152
M=M-1
// #6153
A=M
// #6154
D=M
//vv pop_stack_to_d
// #6155
@5
// #6156
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #6157
@SP
// #6158
M=M-1
// #6159
A=M
// #6160
D=M
//vv pop_stack_to_d
// #6161
@4
// #6162
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #6163
@5
// #6164
D=M
//^^ push_d_to_stack
// #6165
@SP
// #6166
A=M
// #6167
M=D
// #6168
@SP
// #6169
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #6170
@THAT
// #6171
D=M
// #6172
@0
// #6173
D=D+A
// #6174
@R13
// #6175
M=D
//^^ pop_stack_to_d
// #6176
@SP
// #6177
M=M-1
// #6178
A=M
// #6179
D=M
//vv pop_stack_to_d
// #6180
@R13
// #6181
A=M
// #6182
M=D
// #6183
@R13
// #6184
M=0
//vv pop_to_ram(THAT, 0)
//
//// label IF_FALSE2
(Memory.alloc$IF_FALSE2)
//
//// push constant 0
//^^ push_constant(0)
// #6185
@0
// #6186
D=A
//^^ push_d_to_stack
// #6187
@SP
// #6188
A=M
// #6189
M=D
// #6190
@SP
// #6191
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #6192
@LCL
// #6193
D=M
// #6194
@0
// #6195
A=D+A
// #6196
D=M
//^^ push_d_to_stack
// #6197
@SP
// #6198
A=M
// #6199
M=D
// #6200
@SP
// #6201
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #6202
@SP
// #6203
M=M-1
// #6204
A=M
// #6205
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #6206
@R13
// #6207
M=D
//^^ pop_stack_to_d
// #6208
@SP
// #6209
M=M-1
// #6210
A=M
// #6211
D=M
//vv pop_stack_to_d
// #6212
@R13
// #6213
D=D+M
// #6214
@R13
// #6215
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #6216
@SP
// #6217
A=M
// #6218
M=D
// #6219
@SP
// #6220
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push constant 0
//^^ push_constant(0)
// #6221
@0
// #6222
D=A
//^^ push_d_to_stack
// #6223
@SP
// #6224
A=M
// #6225
M=D
// #6226
@SP
// #6227
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #6228
@SP
// #6229
M=M-1
// #6230
A=M
// #6231
D=M
//vv pop_stack_to_d
// #6232
@5
// #6233
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #6234
@SP
// #6235
M=M-1
// #6236
A=M
// #6237
D=M
//vv pop_stack_to_d
// #6238
@4
// #6239
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #6240
@5
// #6241
D=M
//^^ push_d_to_stack
// #6242
@SP
// #6243
A=M
// #6244
M=D
// #6245
@SP
// #6246
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #6247
@THAT
// #6248
D=M
// #6249
@0
// #6250
D=D+A
// #6251
@R13
// #6252
M=D
//^^ pop_stack_to_d
// #6253
@SP
// #6254
M=M-1
// #6255
A=M
// #6256
D=M
//vv pop_stack_to_d
// #6257
@R13
// #6258
A=M
// #6259
M=D
// #6260
@R13
// #6261
M=0
//vv pop_to_ram(THAT, 0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #6262
@LCL
// #6263
D=M
// #6264
@0
// #6265
A=D+A
// #6266
D=M
//^^ push_d_to_stack
// #6267
@SP
// #6268
A=M
// #6269
M=D
// #6270
@SP
// #6271
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 2
//^^ push_constant(2)
// #6272
@2
// #6273
D=A
//^^ push_d_to_stack
// #6274
@SP
// #6275
A=M
// #6276
M=D
// #6277
@SP
// #6278
M=M+1
//vv push_d_to_stack
//vv push_constant(2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #6279
@SP
// #6280
M=M-1
// #6281
A=M
// #6282
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #6283
@R13
// #6284
M=D
//^^ pop_stack_to_d
// #6285
@SP
// #6286
M=M-1
// #6287
A=M
// #6288
D=M
//vv pop_stack_to_d
// #6289
@R13
// #6290
D=D+M
// #6291
@R13
// #6292
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #6293
@SP
// #6294
A=M
// #6295
M=D
// #6296
@SP
// #6297
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// return
// #6298
@LCL
// #6299
D=M
// #6300
@R14
// #6301
M=D //R14=LCL
// #6302
@5
// #6303
A=D-A
// #6304
D=M
// #6305
@R15
// #6306
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #6307
@SP
// #6308
M=M-1
// #6309
A=M
// #6310
D=M
//vv pop_stack_to_d
// #6311
@ARG
// #6312
A=M
// #6313
M=D //*ARG = pop()
// #6314
@ARG
// #6315
D=M
// #6316
@SP
// #6317
M=D+1 //SP=ARG+1
// #6318
@R14
// #6319
AM=M-1
// #6320
D=M
// #6321
@THAT
// #6322
M=D //THAT = *(--R14)
// #6323
@R14
// #6324
AM=M-1
// #6325
D=M
// #6326
@THIS
// #6327
M=D //THIS = *(--R14)
// #6328
@R14
// #6329
AM=M-1
// #6330
D=M
// #6331
@ARG
// #6332
M=D //ARG = *(--R14)
// #6333
@R14
// #6334
AM=M-1
// #6335
D=M
// #6336
@LCL
// #6337
M=D //LCL = *(--R14)
// #6338
@R15
// #6339
A=M
// #6340
0;JMP //goto *R15
//
//// function Memory.deAlloc 2
(Memory.deAlloc)
// #6341
D=0
//^^ push_d_to_stack
// #6342
@SP
// #6343
A=M
// #6344
M=D
// #6345
@SP
// #6346
M=M+1
//vv push_d_to_stack
// #6347
D=0
//^^ push_d_to_stack
// #6348
@SP
// #6349
A=M
// #6350
M=D
// #6351
@SP
// #6352
M=M+1
//vv push_d_to_stack
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #6353
@ARG
// #6354
D=M
// #6355
@0
// #6356
A=D+A
// #6357
D=M
//^^ push_d_to_stack
// #6358
@SP
// #6359
A=M
// #6360
M=D
// #6361
@SP
// #6362
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push constant 2
//^^ push_constant(2)
// #6363
@2
// #6364
D=A
//^^ push_d_to_stack
// #6365
@SP
// #6366
A=M
// #6367
M=D
// #6368
@SP
// #6369
M=M+1
//vv push_d_to_stack
//vv push_constant(2)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #6370
@SP
// #6371
M=M-1
// #6372
A=M
// #6373
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #6374
@R13
// #6375
M=D
//^^ pop_stack_to_d
// #6376
@SP
// #6377
M=M-1
// #6378
A=M
// #6379
D=M
//vv pop_stack_to_d
// #6380
@R13
// #6381
D=D-M
// #6382
@R13
// #6383
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #6384
@SP
// #6385
A=M
// #6386
M=D
// #6387
@SP
// #6388
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
// #6389
@LCL
// #6390
D=M
// #6391
@0
// #6392
D=D+A
// #6393
@R13
// #6394
M=D
//^^ pop_stack_to_d
// #6395
@SP
// #6396
M=M-1
// #6397
A=M
// #6398
D=M
//vv pop_stack_to_d
// #6399
@R13
// #6400
A=M
// #6401
M=D
// #6402
@R13
// #6403
M=0
//vv pop_to_ram(LCL, 0)
//
//// push constant 1
//^^ push_constant(1)
// #6404
@1
// #6405
D=A
//^^ push_d_to_stack
// #6406
@SP
// #6407
A=M
// #6408
M=D
// #6409
@SP
// #6410
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #6411
@LCL
// #6412
D=M
// #6413
@0
// #6414
A=D+A
// #6415
D=M
//^^ push_d_to_stack
// #6416
@SP
// #6417
A=M
// #6418
M=D
// #6419
@SP
// #6420
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #6421
@SP
// #6422
M=M-1
// #6423
A=M
// #6424
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #6425
@R13
// #6426
M=D
//^^ pop_stack_to_d
// #6427
@SP
// #6428
M=M-1
// #6429
A=M
// #6430
D=M
//vv pop_stack_to_d
// #6431
@R13
// #6432
D=D+M
// #6433
@R13
// #6434
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #6435
@SP
// #6436
A=M
// #6437
M=D
// #6438
@SP
// #6439
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #6440
@SP
// #6441
M=M-1
// #6442
A=M
// #6443
D=M
//vv pop_stack_to_d
// #6444
@4
// #6445
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #6446
@THAT
// #6447
D=M
// #6448
@0
// #6449
A=D+A
// #6450
D=M
//^^ push_d_to_stack
// #6451
@SP
// #6452
A=M
// #6453
M=D
// #6454
@SP
// #6455
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// pop local 1
//^^ pop_to_ram(LCL, 1)
// #6456
@LCL
// #6457
D=M
// #6458
@1
// #6459
D=D+A
// #6460
@R13
// #6461
M=D
//^^ pop_stack_to_d
// #6462
@SP
// #6463
M=M-1
// #6464
A=M
// #6465
D=M
//vv pop_stack_to_d
// #6466
@R13
// #6467
A=M
// #6468
M=D
// #6469
@R13
// #6470
M=0
//vv pop_to_ram(LCL, 1)
//
//// push constant 0
//^^ push_constant(0)
// #6471
@0
// #6472
D=A
//^^ push_d_to_stack
// #6473
@SP
// #6474
A=M
// #6475
M=D
// #6476
@SP
// #6477
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push local 1
//^^ push_from_ram(LCL, 1)
// #6478
@LCL
// #6479
D=M
// #6480
@1
// #6481
A=D+A
// #6482
D=M
//^^ push_d_to_stack
// #6483
@SP
// #6484
A=M
// #6485
M=D
// #6486
@SP
// #6487
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #6488
@SP
// #6489
M=M-1
// #6490
A=M
// #6491
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #6492
@R13
// #6493
M=D
//^^ pop_stack_to_d
// #6494
@SP
// #6495
M=M-1
// #6496
A=M
// #6497
D=M
//vv pop_stack_to_d
// #6498
@R13
// #6499
D=D+M
// #6500
@R13
// #6501
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #6502
@SP
// #6503
A=M
// #6504
M=D
// #6505
@SP
// #6506
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #6507
@SP
// #6508
M=M-1
// #6509
A=M
// #6510
D=M
//vv pop_stack_to_d
// #6511
@4
// #6512
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #6513
@THAT
// #6514
D=M
// #6515
@0
// #6516
A=D+A
// #6517
D=M
//^^ push_d_to_stack
// #6518
@SP
// #6519
A=M
// #6520
M=D
// #6521
@SP
// #6522
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// push constant 0
//^^ push_constant(0)
// #6523
@0
// #6524
D=A
//^^ push_d_to_stack
// #6525
@SP
// #6526
A=M
// #6527
M=D
// #6528
@SP
// #6529
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #6530
@SP
// #6531
M=M-1
// #6532
A=M
// #6533
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #6534
@R13
// #6535
M=D
//^^ pop_stack_to_d
// #6536
@SP
// #6537
M=M-1
// #6538
A=M
// #6539
D=M
//vv pop_stack_to_d
// #6540
@R13
// #6541
D=D-M
// #6542
@R13
// #6543
M=0
//vv arith_d_with_stack_top(D-M)
// #6544
@PUT_TRUE_69
// #6545
D;JEQ
// #6546
@R13
// #6547
M=0
// #6548
@CONT_69
// #6549
0;JMP
(PUT_TRUE_69)
// #6550
@R13
// #6551
M=-1
(CONT_69)
// #6552
@R13
// #6553
D=M
// #6554
@R13
// #6555
M=0
//^^ push_d_to_stack
// #6556
@SP
// #6557
A=M
// #6558
M=D
// #6559
@SP
// #6560
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// if-goto IF_TRUE0
//^^ pop_stack_to_d
// #6561
@SP
// #6562
M=M-1
// #6563
A=M
// #6564
D=M
//vv pop_stack_to_d
// #6565
@Memory.deAlloc$IF_TRUE0
// #6566
D;JNE
//
//// goto IF_FALSE0
// #6567
@Memory.deAlloc$IF_FALSE0
// #6568
0;JMP
//
//// label IF_TRUE0
(Memory.deAlloc$IF_TRUE0)
//
//// push constant 0
//^^ push_constant(0)
// #6569
@0
// #6570
D=A
//^^ push_d_to_stack
// #6571
@SP
// #6572
A=M
// #6573
M=D
// #6574
@SP
// #6575
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #6576
@LCL
// #6577
D=M
// #6578
@0
// #6579
A=D+A
// #6580
D=M
//^^ push_d_to_stack
// #6581
@SP
// #6582
A=M
// #6583
M=D
// #6584
@SP
// #6585
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #6586
@SP
// #6587
M=M-1
// #6588
A=M
// #6589
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #6590
@R13
// #6591
M=D
//^^ pop_stack_to_d
// #6592
@SP
// #6593
M=M-1
// #6594
A=M
// #6595
D=M
//vv pop_stack_to_d
// #6596
@R13
// #6597
D=D+M
// #6598
@R13
// #6599
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #6600
@SP
// #6601
A=M
// #6602
M=D
// #6603
@SP
// #6604
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push constant 1
//^^ push_constant(1)
// #6605
@1
// #6606
D=A
//^^ push_d_to_stack
// #6607
@SP
// #6608
A=M
// #6609
M=D
// #6610
@SP
// #6611
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #6612
@LCL
// #6613
D=M
// #6614
@0
// #6615
A=D+A
// #6616
D=M
//^^ push_d_to_stack
// #6617
@SP
// #6618
A=M
// #6619
M=D
// #6620
@SP
// #6621
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #6622
@SP
// #6623
M=M-1
// #6624
A=M
// #6625
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #6626
@R13
// #6627
M=D
//^^ pop_stack_to_d
// #6628
@SP
// #6629
M=M-1
// #6630
A=M
// #6631
D=M
//vv pop_stack_to_d
// #6632
@R13
// #6633
D=D+M
// #6634
@R13
// #6635
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #6636
@SP
// #6637
A=M
// #6638
M=D
// #6639
@SP
// #6640
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #6641
@SP
// #6642
M=M-1
// #6643
A=M
// #6644
D=M
//vv pop_stack_to_d
// #6645
@4
// #6646
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #6647
@THAT
// #6648
D=M
// #6649
@0
// #6650
A=D+A
// #6651
D=M
//^^ push_d_to_stack
// #6652
@SP
// #6653
A=M
// #6654
M=D
// #6655
@SP
// #6656
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #6657
@LCL
// #6658
D=M
// #6659
@0
// #6660
A=D+A
// #6661
D=M
//^^ push_d_to_stack
// #6662
@SP
// #6663
A=M
// #6664
M=D
// #6665
@SP
// #6666
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #6667
@SP
// #6668
M=M-1
// #6669
A=M
// #6670
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #6671
@R13
// #6672
M=D
//^^ pop_stack_to_d
// #6673
@SP
// #6674
M=M-1
// #6675
A=M
// #6676
D=M
//vv pop_stack_to_d
// #6677
@R13
// #6678
D=D-M
// #6679
@R13
// #6680
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #6681
@SP
// #6682
A=M
// #6683
M=D
// #6684
@SP
// #6685
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// push constant 2
//^^ push_constant(2)
// #6686
@2
// #6687
D=A
//^^ push_d_to_stack
// #6688
@SP
// #6689
A=M
// #6690
M=D
// #6691
@SP
// #6692
M=M+1
//vv push_d_to_stack
//vv push_constant(2)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #6693
@SP
// #6694
M=M-1
// #6695
A=M
// #6696
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #6697
@R13
// #6698
M=D
//^^ pop_stack_to_d
// #6699
@SP
// #6700
M=M-1
// #6701
A=M
// #6702
D=M
//vv pop_stack_to_d
// #6703
@R13
// #6704
D=D-M
// #6705
@R13
// #6706
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #6707
@SP
// #6708
A=M
// #6709
M=D
// #6710
@SP
// #6711
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #6712
@SP
// #6713
M=M-1
// #6714
A=M
// #6715
D=M
//vv pop_stack_to_d
// #6716
@5
// #6717
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #6718
@SP
// #6719
M=M-1
// #6720
A=M
// #6721
D=M
//vv pop_stack_to_d
// #6722
@4
// #6723
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #6724
@5
// #6725
D=M
//^^ push_d_to_stack
// #6726
@SP
// #6727
A=M
// #6728
M=D
// #6729
@SP
// #6730
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #6731
@THAT
// #6732
D=M
// #6733
@0
// #6734
D=D+A
// #6735
@R13
// #6736
M=D
//^^ pop_stack_to_d
// #6737
@SP
// #6738
M=M-1
// #6739
A=M
// #6740
D=M
//vv pop_stack_to_d
// #6741
@R13
// #6742
A=M
// #6743
M=D
// #6744
@R13
// #6745
M=0
//vv pop_to_ram(THAT, 0)
//
//// goto IF_END0
// #6746
@Memory.deAlloc$IF_END0
// #6747
0;JMP
//
//// label IF_FALSE0
(Memory.deAlloc$IF_FALSE0)
//
//// push constant 0
//^^ push_constant(0)
// #6748
@0
// #6749
D=A
//^^ push_d_to_stack
// #6750
@SP
// #6751
A=M
// #6752
M=D
// #6753
@SP
// #6754
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #6755
@LCL
// #6756
D=M
// #6757
@0
// #6758
A=D+A
// #6759
D=M
//^^ push_d_to_stack
// #6760
@SP
// #6761
A=M
// #6762
M=D
// #6763
@SP
// #6764
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #6765
@SP
// #6766
M=M-1
// #6767
A=M
// #6768
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #6769
@R13
// #6770
M=D
//^^ pop_stack_to_d
// #6771
@SP
// #6772
M=M-1
// #6773
A=M
// #6774
D=M
//vv pop_stack_to_d
// #6775
@R13
// #6776
D=D+M
// #6777
@R13
// #6778
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #6779
@SP
// #6780
A=M
// #6781
M=D
// #6782
@SP
// #6783
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push constant 1
//^^ push_constant(1)
// #6784
@1
// #6785
D=A
//^^ push_d_to_stack
// #6786
@SP
// #6787
A=M
// #6788
M=D
// #6789
@SP
// #6790
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #6791
@LCL
// #6792
D=M
// #6793
@0
// #6794
A=D+A
// #6795
D=M
//^^ push_d_to_stack
// #6796
@SP
// #6797
A=M
// #6798
M=D
// #6799
@SP
// #6800
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #6801
@SP
// #6802
M=M-1
// #6803
A=M
// #6804
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #6805
@R13
// #6806
M=D
//^^ pop_stack_to_d
// #6807
@SP
// #6808
M=M-1
// #6809
A=M
// #6810
D=M
//vv pop_stack_to_d
// #6811
@R13
// #6812
D=D+M
// #6813
@R13
// #6814
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #6815
@SP
// #6816
A=M
// #6817
M=D
// #6818
@SP
// #6819
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #6820
@SP
// #6821
M=M-1
// #6822
A=M
// #6823
D=M
//vv pop_stack_to_d
// #6824
@4
// #6825
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #6826
@THAT
// #6827
D=M
// #6828
@0
// #6829
A=D+A
// #6830
D=M
//^^ push_d_to_stack
// #6831
@SP
// #6832
A=M
// #6833
M=D
// #6834
@SP
// #6835
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #6836
@LCL
// #6837
D=M
// #6838
@0
// #6839
A=D+A
// #6840
D=M
//^^ push_d_to_stack
// #6841
@SP
// #6842
A=M
// #6843
M=D
// #6844
@SP
// #6845
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #6846
@SP
// #6847
M=M-1
// #6848
A=M
// #6849
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #6850
@R13
// #6851
M=D
//^^ pop_stack_to_d
// #6852
@SP
// #6853
M=M-1
// #6854
A=M
// #6855
D=M
//vv pop_stack_to_d
// #6856
@R13
// #6857
D=D-M
// #6858
@R13
// #6859
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #6860
@SP
// #6861
A=M
// #6862
M=D
// #6863
@SP
// #6864
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// push constant 0
//^^ push_constant(0)
// #6865
@0
// #6866
D=A
//^^ push_d_to_stack
// #6867
@SP
// #6868
A=M
// #6869
M=D
// #6870
@SP
// #6871
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push local 1
//^^ push_from_ram(LCL, 1)
// #6872
@LCL
// #6873
D=M
// #6874
@1
// #6875
A=D+A
// #6876
D=M
//^^ push_d_to_stack
// #6877
@SP
// #6878
A=M
// #6879
M=D
// #6880
@SP
// #6881
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #6882
@SP
// #6883
M=M-1
// #6884
A=M
// #6885
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #6886
@R13
// #6887
M=D
//^^ pop_stack_to_d
// #6888
@SP
// #6889
M=M-1
// #6890
A=M
// #6891
D=M
//vv pop_stack_to_d
// #6892
@R13
// #6893
D=D+M
// #6894
@R13
// #6895
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #6896
@SP
// #6897
A=M
// #6898
M=D
// #6899
@SP
// #6900
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #6901
@SP
// #6902
M=M-1
// #6903
A=M
// #6904
D=M
//vv pop_stack_to_d
// #6905
@4
// #6906
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #6907
@THAT
// #6908
D=M
// #6909
@0
// #6910
A=D+A
// #6911
D=M
//^^ push_d_to_stack
// #6912
@SP
// #6913
A=M
// #6914
M=D
// #6915
@SP
// #6916
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #6917
@SP
// #6918
M=M-1
// #6919
A=M
// #6920
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #6921
@R13
// #6922
M=D
//^^ pop_stack_to_d
// #6923
@SP
// #6924
M=M-1
// #6925
A=M
// #6926
D=M
//vv pop_stack_to_d
// #6927
@R13
// #6928
D=D+M
// #6929
@R13
// #6930
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #6931
@SP
// #6932
A=M
// #6933
M=D
// #6934
@SP
// #6935
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #6936
@SP
// #6937
M=M-1
// #6938
A=M
// #6939
D=M
//vv pop_stack_to_d
// #6940
@5
// #6941
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #6942
@SP
// #6943
M=M-1
// #6944
A=M
// #6945
D=M
//vv pop_stack_to_d
// #6946
@4
// #6947
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #6948
@5
// #6949
D=M
//^^ push_d_to_stack
// #6950
@SP
// #6951
A=M
// #6952
M=D
// #6953
@SP
// #6954
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #6955
@THAT
// #6956
D=M
// #6957
@0
// #6958
D=D+A
// #6959
@R13
// #6960
M=D
//^^ pop_stack_to_d
// #6961
@SP
// #6962
M=M-1
// #6963
A=M
// #6964
D=M
//vv pop_stack_to_d
// #6965
@R13
// #6966
A=M
// #6967
M=D
// #6968
@R13
// #6969
M=0
//vv pop_to_ram(THAT, 0)
//
//// push constant 1
//^^ push_constant(1)
// #6970
@1
// #6971
D=A
//^^ push_d_to_stack
// #6972
@SP
// #6973
A=M
// #6974
M=D
// #6975
@SP
// #6976
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// push local 1
//^^ push_from_ram(LCL, 1)
// #6977
@LCL
// #6978
D=M
// #6979
@1
// #6980
A=D+A
// #6981
D=M
//^^ push_d_to_stack
// #6982
@SP
// #6983
A=M
// #6984
M=D
// #6985
@SP
// #6986
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #6987
@SP
// #6988
M=M-1
// #6989
A=M
// #6990
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #6991
@R13
// #6992
M=D
//^^ pop_stack_to_d
// #6993
@SP
// #6994
M=M-1
// #6995
A=M
// #6996
D=M
//vv pop_stack_to_d
// #6997
@R13
// #6998
D=D+M
// #6999
@R13
// #7000
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #7001
@SP
// #7002
A=M
// #7003
M=D
// #7004
@SP
// #7005
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #7006
@SP
// #7007
M=M-1
// #7008
A=M
// #7009
D=M
//vv pop_stack_to_d
// #7010
@4
// #7011
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #7012
@THAT
// #7013
D=M
// #7014
@0
// #7015
A=D+A
// #7016
D=M
//^^ push_d_to_stack
// #7017
@SP
// #7018
A=M
// #7019
M=D
// #7020
@SP
// #7021
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// push local 1
//^^ push_from_ram(LCL, 1)
// #7022
@LCL
// #7023
D=M
// #7024
@1
// #7025
A=D+A
// #7026
D=M
//^^ push_d_to_stack
// #7027
@SP
// #7028
A=M
// #7029
M=D
// #7030
@SP
// #7031
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 1)
//
//// push constant 2
//^^ push_constant(2)
// #7032
@2
// #7033
D=A
//^^ push_d_to_stack
// #7034
@SP
// #7035
A=M
// #7036
M=D
// #7037
@SP
// #7038
M=M+1
//vv push_d_to_stack
//vv push_constant(2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #7039
@SP
// #7040
M=M-1
// #7041
A=M
// #7042
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #7043
@R13
// #7044
M=D
//^^ pop_stack_to_d
// #7045
@SP
// #7046
M=M-1
// #7047
A=M
// #7048
D=M
//vv pop_stack_to_d
// #7049
@R13
// #7050
D=D+M
// #7051
@R13
// #7052
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #7053
@SP
// #7054
A=M
// #7055
M=D
// #7056
@SP
// #7057
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #7058
@SP
// #7059
M=M-1
// #7060
A=M
// #7061
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #7062
@R13
// #7063
M=D
//^^ pop_stack_to_d
// #7064
@SP
// #7065
M=M-1
// #7066
A=M
// #7067
D=M
//vv pop_stack_to_d
// #7068
@R13
// #7069
D=D-M
// #7070
@R13
// #7071
M=0
//vv arith_d_with_stack_top(D-M)
// #7072
@PUT_TRUE_70
// #7073
D;JEQ
// #7074
@R13
// #7075
M=0
// #7076
@CONT_70
// #7077
0;JMP
(PUT_TRUE_70)
// #7078
@R13
// #7079
M=-1
(CONT_70)
// #7080
@R13
// #7081
D=M
// #7082
@R13
// #7083
M=0
//^^ push_d_to_stack
// #7084
@SP
// #7085
A=M
// #7086
M=D
// #7087
@SP
// #7088
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// if-goto IF_TRUE1
//^^ pop_stack_to_d
// #7089
@SP
// #7090
M=M-1
// #7091
A=M
// #7092
D=M
//vv pop_stack_to_d
// #7093
@Memory.deAlloc$IF_TRUE1
// #7094
D;JNE
//
//// goto IF_FALSE1
// #7095
@Memory.deAlloc$IF_FALSE1
// #7096
0;JMP
//
//// label IF_TRUE1
(Memory.deAlloc$IF_TRUE1)
//
//// push constant 1
//^^ push_constant(1)
// #7097
@1
// #7098
D=A
//^^ push_d_to_stack
// #7099
@SP
// #7100
A=M
// #7101
M=D
// #7102
@SP
// #7103
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #7104
@LCL
// #7105
D=M
// #7106
@0
// #7107
A=D+A
// #7108
D=M
//^^ push_d_to_stack
// #7109
@SP
// #7110
A=M
// #7111
M=D
// #7112
@SP
// #7113
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #7114
@SP
// #7115
M=M-1
// #7116
A=M
// #7117
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #7118
@R13
// #7119
M=D
//^^ pop_stack_to_d
// #7120
@SP
// #7121
M=M-1
// #7122
A=M
// #7123
D=M
//vv pop_stack_to_d
// #7124
@R13
// #7125
D=D+M
// #7126
@R13
// #7127
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #7128
@SP
// #7129
A=M
// #7130
M=D
// #7131
@SP
// #7132
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #7133
@LCL
// #7134
D=M
// #7135
@0
// #7136
A=D+A
// #7137
D=M
//^^ push_d_to_stack
// #7138
@SP
// #7139
A=M
// #7140
M=D
// #7141
@SP
// #7142
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 2
//^^ push_constant(2)
// #7143
@2
// #7144
D=A
//^^ push_d_to_stack
// #7145
@SP
// #7146
A=M
// #7147
M=D
// #7148
@SP
// #7149
M=M+1
//vv push_d_to_stack
//vv push_constant(2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #7150
@SP
// #7151
M=M-1
// #7152
A=M
// #7153
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #7154
@R13
// #7155
M=D
//^^ pop_stack_to_d
// #7156
@SP
// #7157
M=M-1
// #7158
A=M
// #7159
D=M
//vv pop_stack_to_d
// #7160
@R13
// #7161
D=D+M
// #7162
@R13
// #7163
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #7164
@SP
// #7165
A=M
// #7166
M=D
// #7167
@SP
// #7168
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #7169
@SP
// #7170
M=M-1
// #7171
A=M
// #7172
D=M
//vv pop_stack_to_d
// #7173
@5
// #7174
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #7175
@SP
// #7176
M=M-1
// #7177
A=M
// #7178
D=M
//vv pop_stack_to_d
// #7179
@4
// #7180
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #7181
@5
// #7182
D=M
//^^ push_d_to_stack
// #7183
@SP
// #7184
A=M
// #7185
M=D
// #7186
@SP
// #7187
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #7188
@THAT
// #7189
D=M
// #7190
@0
// #7191
D=D+A
// #7192
@R13
// #7193
M=D
//^^ pop_stack_to_d
// #7194
@SP
// #7195
M=M-1
// #7196
A=M
// #7197
D=M
//vv pop_stack_to_d
// #7198
@R13
// #7199
A=M
// #7200
M=D
// #7201
@R13
// #7202
M=0
//vv pop_to_ram(THAT, 0)
//
//// goto IF_END1
// #7203
@Memory.deAlloc$IF_END1
// #7204
0;JMP
//
//// label IF_FALSE1
(Memory.deAlloc$IF_FALSE1)
//
//// push constant 1
//^^ push_constant(1)
// #7205
@1
// #7206
D=A
//^^ push_d_to_stack
// #7207
@SP
// #7208
A=M
// #7209
M=D
// #7210
@SP
// #7211
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #7212
@LCL
// #7213
D=M
// #7214
@0
// #7215
A=D+A
// #7216
D=M
//^^ push_d_to_stack
// #7217
@SP
// #7218
A=M
// #7219
M=D
// #7220
@SP
// #7221
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #7222
@SP
// #7223
M=M-1
// #7224
A=M
// #7225
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #7226
@R13
// #7227
M=D
//^^ pop_stack_to_d
// #7228
@SP
// #7229
M=M-1
// #7230
A=M
// #7231
D=M
//vv pop_stack_to_d
// #7232
@R13
// #7233
D=D+M
// #7234
@R13
// #7235
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #7236
@SP
// #7237
A=M
// #7238
M=D
// #7239
@SP
// #7240
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push constant 1
//^^ push_constant(1)
// #7241
@1
// #7242
D=A
//^^ push_d_to_stack
// #7243
@SP
// #7244
A=M
// #7245
M=D
// #7246
@SP
// #7247
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// push local 1
//^^ push_from_ram(LCL, 1)
// #7248
@LCL
// #7249
D=M
// #7250
@1
// #7251
A=D+A
// #7252
D=M
//^^ push_d_to_stack
// #7253
@SP
// #7254
A=M
// #7255
M=D
// #7256
@SP
// #7257
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #7258
@SP
// #7259
M=M-1
// #7260
A=M
// #7261
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #7262
@R13
// #7263
M=D
//^^ pop_stack_to_d
// #7264
@SP
// #7265
M=M-1
// #7266
A=M
// #7267
D=M
//vv pop_stack_to_d
// #7268
@R13
// #7269
D=D+M
// #7270
@R13
// #7271
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #7272
@SP
// #7273
A=M
// #7274
M=D
// #7275
@SP
// #7276
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #7277
@SP
// #7278
M=M-1
// #7279
A=M
// #7280
D=M
//vv pop_stack_to_d
// #7281
@4
// #7282
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #7283
@THAT
// #7284
D=M
// #7285
@0
// #7286
A=D+A
// #7287
D=M
//^^ push_d_to_stack
// #7288
@SP
// #7289
A=M
// #7290
M=D
// #7291
@SP
// #7292
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #7293
@SP
// #7294
M=M-1
// #7295
A=M
// #7296
D=M
//vv pop_stack_to_d
// #7297
@5
// #7298
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #7299
@SP
// #7300
M=M-1
// #7301
A=M
// #7302
D=M
//vv pop_stack_to_d
// #7303
@4
// #7304
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #7305
@5
// #7306
D=M
//^^ push_d_to_stack
// #7307
@SP
// #7308
A=M
// #7309
M=D
// #7310
@SP
// #7311
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #7312
@THAT
// #7313
D=M
// #7314
@0
// #7315
D=D+A
// #7316
@R13
// #7317
M=D
//^^ pop_stack_to_d
// #7318
@SP
// #7319
M=M-1
// #7320
A=M
// #7321
D=M
//vv pop_stack_to_d
// #7322
@R13
// #7323
A=M
// #7324
M=D
// #7325
@R13
// #7326
M=0
//vv pop_to_ram(THAT, 0)
//
//// label IF_END1
(Memory.deAlloc$IF_END1)
//
//// label IF_END0
(Memory.deAlloc$IF_END0)
//
//// push constant 0
//^^ push_constant(0)
// #7327
@0
// #7328
D=A
//^^ push_d_to_stack
// #7329
@SP
// #7330
A=M
// #7331
M=D
// #7332
@SP
// #7333
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #7334
@LCL
// #7335
D=M
// #7336
@R14
// #7337
M=D //R14=LCL
// #7338
@5
// #7339
A=D-A
// #7340
D=M
// #7341
@R15
// #7342
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #7343
@SP
// #7344
M=M-1
// #7345
A=M
// #7346
D=M
//vv pop_stack_to_d
// #7347
@ARG
// #7348
A=M
// #7349
M=D //*ARG = pop()
// #7350
@ARG
// #7351
D=M
// #7352
@SP
// #7353
M=D+1 //SP=ARG+1
// #7354
@R14
// #7355
AM=M-1
// #7356
D=M
// #7357
@THAT
// #7358
M=D //THAT = *(--R14)
// #7359
@R14
// #7360
AM=M-1
// #7361
D=M
// #7362
@THIS
// #7363
M=D //THIS = *(--R14)
// #7364
@R14
// #7365
AM=M-1
// #7366
D=M
// #7367
@ARG
// #7368
M=D //ARG = *(--R14)
// #7369
@R14
// #7370
AM=M-1
// #7371
D=M
// #7372
@LCL
// #7373
M=D //LCL = *(--R14)
// #7374
@R15
// #7375
A=M
// #7376
0;JMP //goto *R15
//
//// function Output.init 0
(Output.init)
//
//// push constant 16384
//^^ push_constant(16384)
// #7377
@16384
// #7378
D=A
//^^ push_d_to_stack
// #7379
@SP
// #7380
A=M
// #7381
M=D
// #7382
@SP
// #7383
M=M+1
//vv push_d_to_stack
//vv push_constant(16384)
//
//// pop static 4
//^^ pop_to_loc{Output.vm.4)
//^^ pop_stack_to_d
// #7384
@SP
// #7385
M=M-1
// #7386
A=M
// #7387
D=M
//vv pop_stack_to_d
// #7388
@Output.vm.4
// #7389
M=D
//vv pop_to_loc{Output.vm.4)
//
//// push constant 0
//^^ push_constant(0)
// #7390
@0
// #7391
D=A
//^^ push_d_to_stack
// #7392
@SP
// #7393
A=M
// #7394
M=D
// #7395
@SP
// #7396
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #7397
@SP
// #7398
M=M-1
// #7399
A=M
// #7400
D=M
//vv pop_stack_to_d
// #7401
D=!D
//^^ push_d_to_stack
// #7402
@SP
// #7403
A=M
// #7404
M=D
// #7405
@SP
// #7406
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// pop static 2
//^^ pop_to_loc{Output.vm.2)
//^^ pop_stack_to_d
// #7407
@SP
// #7408
M=M-1
// #7409
A=M
// #7410
D=M
//vv pop_stack_to_d
// #7411
@Output.vm.2
// #7412
M=D
//vv pop_to_loc{Output.vm.2)
//
//// push constant 32
//^^ push_constant(32)
// #7413
@32
// #7414
D=A
//^^ push_d_to_stack
// #7415
@SP
// #7416
A=M
// #7417
M=D
// #7418
@SP
// #7419
M=M+1
//vv push_d_to_stack
//vv push_constant(32)
//
//// pop static 1
//^^ pop_to_loc{Output.vm.1)
//^^ pop_stack_to_d
// #7420
@SP
// #7421
M=M-1
// #7422
A=M
// #7423
D=M
//vv pop_stack_to_d
// #7424
@Output.vm.1
// #7425
M=D
//vv pop_to_loc{Output.vm.1)
//
//// push constant 0
//^^ push_constant(0)
// #7426
@0
// #7427
D=A
//^^ push_d_to_stack
// #7428
@SP
// #7429
A=M
// #7430
M=D
// #7431
@SP
// #7432
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// pop static 0
//^^ pop_to_loc{Output.vm.0)
//^^ pop_stack_to_d
// #7433
@SP
// #7434
M=M-1
// #7435
A=M
// #7436
D=M
//vv pop_stack_to_d
// #7437
@Output.vm.0
// #7438
M=D
//vv pop_to_loc{Output.vm.0)
//
//// push constant 6
//^^ push_constant(6)
// #7439
@6
// #7440
D=A
//^^ push_d_to_stack
// #7441
@SP
// #7442
A=M
// #7443
M=D
// #7444
@SP
// #7445
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// call String.new 1
//^^ push_constant(RET_ADDR_71)
// #7446
@RET_ADDR_71
// #7447
D=A
//^^ push_d_to_stack
// #7448
@SP
// #7449
A=M
// #7450
M=D
// #7451
@SP
// #7452
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_71)
//push return-address
// #7453
@LCL
// #7454
D=M
//^^ push_d_to_stack
// #7455
@SP
// #7456
A=M
// #7457
M=D
// #7458
@SP
// #7459
M=M+1
//vv push_d_to_stack
//push LCL
// #7460
@ARG
// #7461
D=M
//^^ push_d_to_stack
// #7462
@SP
// #7463
A=M
// #7464
M=D
// #7465
@SP
// #7466
M=M+1
//vv push_d_to_stack
//push ARG
// #7467
@THIS
// #7468
D=M
//^^ push_d_to_stack
// #7469
@SP
// #7470
A=M
// #7471
M=D
// #7472
@SP
// #7473
M=M+1
//vv push_d_to_stack
//push THIS
// #7474
@THAT
// #7475
D=M
//^^ push_d_to_stack
// #7476
@SP
// #7477
A=M
// #7478
M=D
// #7479
@SP
// #7480
M=M+1
//vv push_d_to_stack
//push THAT
// #7481
@SP
// #7482
D=M
// #7483
@ARG
// #7484
M=D
// #7485
@6
// #7486
D=A
// #7487
@ARG
// #7488
M=M-D // ARG = SP - args - 5
// #7489
@SP
// #7490
D=M
// #7491
@LCL
// #7492
M=D // LCL = SP
// #7493
@String.new
// #7494
0;JMP
(RET_ADDR_71)
//
//// pop static 3
//^^ pop_to_loc{Output.vm.3)
//^^ pop_stack_to_d
// #7495
@SP
// #7496
M=M-1
// #7497
A=M
// #7498
D=M
//vv pop_stack_to_d
// #7499
@Output.vm.3
// #7500
M=D
//vv pop_to_loc{Output.vm.3)
//
//// call Output.initMap 0
//^^ push_constant(RET_ADDR_72)
// #7501
@RET_ADDR_72
// #7502
D=A
//^^ push_d_to_stack
// #7503
@SP
// #7504
A=M
// #7505
M=D
// #7506
@SP
// #7507
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_72)
//push return-address
// #7508
@LCL
// #7509
D=M
//^^ push_d_to_stack
// #7510
@SP
// #7511
A=M
// #7512
M=D
// #7513
@SP
// #7514
M=M+1
//vv push_d_to_stack
//push LCL
// #7515
@ARG
// #7516
D=M
//^^ push_d_to_stack
// #7517
@SP
// #7518
A=M
// #7519
M=D
// #7520
@SP
// #7521
M=M+1
//vv push_d_to_stack
//push ARG
// #7522
@THIS
// #7523
D=M
//^^ push_d_to_stack
// #7524
@SP
// #7525
A=M
// #7526
M=D
// #7527
@SP
// #7528
M=M+1
//vv push_d_to_stack
//push THIS
// #7529
@THAT
// #7530
D=M
//^^ push_d_to_stack
// #7531
@SP
// #7532
A=M
// #7533
M=D
// #7534
@SP
// #7535
M=M+1
//vv push_d_to_stack
//push THAT
// #7536
@SP
// #7537
D=M
// #7538
@ARG
// #7539
M=D
// #7540
@5
// #7541
D=A
// #7542
@ARG
// #7543
M=M-D // ARG = SP - args - 5
// #7544
@SP
// #7545
D=M
// #7546
@LCL
// #7547
M=D // LCL = SP
// #7548
@Output.initMap
// #7549
0;JMP
(RET_ADDR_72)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #7550
@SP
// #7551
M=M-1
// #7552
A=M
// #7553
D=M
//vv pop_stack_to_d
// #7554
@5
// #7555
M=D
//vv pop_to_loc{5)
//
//// call Output.createShiftedMap 0
//^^ push_constant(RET_ADDR_73)
// #7556
@RET_ADDR_73
// #7557
D=A
//^^ push_d_to_stack
// #7558
@SP
// #7559
A=M
// #7560
M=D
// #7561
@SP
// #7562
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_73)
//push return-address
// #7563
@LCL
// #7564
D=M
//^^ push_d_to_stack
// #7565
@SP
// #7566
A=M
// #7567
M=D
// #7568
@SP
// #7569
M=M+1
//vv push_d_to_stack
//push LCL
// #7570
@ARG
// #7571
D=M
//^^ push_d_to_stack
// #7572
@SP
// #7573
A=M
// #7574
M=D
// #7575
@SP
// #7576
M=M+1
//vv push_d_to_stack
//push ARG
// #7577
@THIS
// #7578
D=M
//^^ push_d_to_stack
// #7579
@SP
// #7580
A=M
// #7581
M=D
// #7582
@SP
// #7583
M=M+1
//vv push_d_to_stack
//push THIS
// #7584
@THAT
// #7585
D=M
//^^ push_d_to_stack
// #7586
@SP
// #7587
A=M
// #7588
M=D
// #7589
@SP
// #7590
M=M+1
//vv push_d_to_stack
//push THAT
// #7591
@SP
// #7592
D=M
// #7593
@ARG
// #7594
M=D
// #7595
@5
// #7596
D=A
// #7597
@ARG
// #7598
M=M-D // ARG = SP - args - 5
// #7599
@SP
// #7600
D=M
// #7601
@LCL
// #7602
M=D // LCL = SP
// #7603
@Output.createShiftedMap
// #7604
0;JMP
(RET_ADDR_73)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #7605
@SP
// #7606
M=M-1
// #7607
A=M
// #7608
D=M
//vv pop_stack_to_d
// #7609
@5
// #7610
M=D
//vv pop_to_loc{5)
//
//// push constant 0
//^^ push_constant(0)
// #7611
@0
// #7612
D=A
//^^ push_d_to_stack
// #7613
@SP
// #7614
A=M
// #7615
M=D
// #7616
@SP
// #7617
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #7618
@LCL
// #7619
D=M
// #7620
@R14
// #7621
M=D //R14=LCL
// #7622
@5
// #7623
A=D-A
// #7624
D=M
// #7625
@R15
// #7626
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #7627
@SP
// #7628
M=M-1
// #7629
A=M
// #7630
D=M
//vv pop_stack_to_d
// #7631
@ARG
// #7632
A=M
// #7633
M=D //*ARG = pop()
// #7634
@ARG
// #7635
D=M
// #7636
@SP
// #7637
M=D+1 //SP=ARG+1
// #7638
@R14
// #7639
AM=M-1
// #7640
D=M
// #7641
@THAT
// #7642
M=D //THAT = *(--R14)
// #7643
@R14
// #7644
AM=M-1
// #7645
D=M
// #7646
@THIS
// #7647
M=D //THIS = *(--R14)
// #7648
@R14
// #7649
AM=M-1
// #7650
D=M
// #7651
@ARG
// #7652
M=D //ARG = *(--R14)
// #7653
@R14
// #7654
AM=M-1
// #7655
D=M
// #7656
@LCL
// #7657
M=D //LCL = *(--R14)
// #7658
@R15
// #7659
A=M
// #7660
0;JMP //goto *R15
//
//// function Output.initMap 0
(Output.initMap)
//
//// push constant 127
//^^ push_constant(127)
// #7661
@127
// #7662
D=A
//^^ push_d_to_stack
// #7663
@SP
// #7664
A=M
// #7665
M=D
// #7666
@SP
// #7667
M=M+1
//vv push_d_to_stack
//vv push_constant(127)
//
//// call Array.new 1
//^^ push_constant(RET_ADDR_74)
// #7668
@RET_ADDR_74
// #7669
D=A
//^^ push_d_to_stack
// #7670
@SP
// #7671
A=M
// #7672
M=D
// #7673
@SP
// #7674
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_74)
//push return-address
// #7675
@LCL
// #7676
D=M
//^^ push_d_to_stack
// #7677
@SP
// #7678
A=M
// #7679
M=D
// #7680
@SP
// #7681
M=M+1
//vv push_d_to_stack
//push LCL
// #7682
@ARG
// #7683
D=M
//^^ push_d_to_stack
// #7684
@SP
// #7685
A=M
// #7686
M=D
// #7687
@SP
// #7688
M=M+1
//vv push_d_to_stack
//push ARG
// #7689
@THIS
// #7690
D=M
//^^ push_d_to_stack
// #7691
@SP
// #7692
A=M
// #7693
M=D
// #7694
@SP
// #7695
M=M+1
//vv push_d_to_stack
//push THIS
// #7696
@THAT
// #7697
D=M
//^^ push_d_to_stack
// #7698
@SP
// #7699
A=M
// #7700
M=D
// #7701
@SP
// #7702
M=M+1
//vv push_d_to_stack
//push THAT
// #7703
@SP
// #7704
D=M
// #7705
@ARG
// #7706
M=D
// #7707
@6
// #7708
D=A
// #7709
@ARG
// #7710
M=M-D // ARG = SP - args - 5
// #7711
@SP
// #7712
D=M
// #7713
@LCL
// #7714
M=D // LCL = SP
// #7715
@Array.new
// #7716
0;JMP
(RET_ADDR_74)
//
//// pop static 5
//^^ pop_to_loc{Output.vm.5)
//^^ pop_stack_to_d
// #7717
@SP
// #7718
M=M-1
// #7719
A=M
// #7720
D=M
//vv pop_stack_to_d
// #7721
@Output.vm.5
// #7722
M=D
//vv pop_to_loc{Output.vm.5)
//
//// push constant 0
//^^ push_constant(0)
// #7723
@0
// #7724
D=A
//^^ push_d_to_stack
// #7725
@SP
// #7726
A=M
// #7727
M=D
// #7728
@SP
// #7729
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 63
//^^ push_constant(63)
// #7730
@63
// #7731
D=A
//^^ push_d_to_stack
// #7732
@SP
// #7733
A=M
// #7734
M=D
// #7735
@SP
// #7736
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 63
//^^ push_constant(63)
// #7737
@63
// #7738
D=A
//^^ push_d_to_stack
// #7739
@SP
// #7740
A=M
// #7741
M=D
// #7742
@SP
// #7743
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 63
//^^ push_constant(63)
// #7744
@63
// #7745
D=A
//^^ push_d_to_stack
// #7746
@SP
// #7747
A=M
// #7748
M=D
// #7749
@SP
// #7750
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 63
//^^ push_constant(63)
// #7751
@63
// #7752
D=A
//^^ push_d_to_stack
// #7753
@SP
// #7754
A=M
// #7755
M=D
// #7756
@SP
// #7757
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 63
//^^ push_constant(63)
// #7758
@63
// #7759
D=A
//^^ push_d_to_stack
// #7760
@SP
// #7761
A=M
// #7762
M=D
// #7763
@SP
// #7764
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 63
//^^ push_constant(63)
// #7765
@63
// #7766
D=A
//^^ push_d_to_stack
// #7767
@SP
// #7768
A=M
// #7769
M=D
// #7770
@SP
// #7771
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 63
//^^ push_constant(63)
// #7772
@63
// #7773
D=A
//^^ push_d_to_stack
// #7774
@SP
// #7775
A=M
// #7776
M=D
// #7777
@SP
// #7778
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 63
//^^ push_constant(63)
// #7779
@63
// #7780
D=A
//^^ push_d_to_stack
// #7781
@SP
// #7782
A=M
// #7783
M=D
// #7784
@SP
// #7785
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 63
//^^ push_constant(63)
// #7786
@63
// #7787
D=A
//^^ push_d_to_stack
// #7788
@SP
// #7789
A=M
// #7790
M=D
// #7791
@SP
// #7792
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 0
//^^ push_constant(0)
// #7793
@0
// #7794
D=A
//^^ push_d_to_stack
// #7795
@SP
// #7796
A=M
// #7797
M=D
// #7798
@SP
// #7799
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #7800
@0
// #7801
D=A
//^^ push_d_to_stack
// #7802
@SP
// #7803
A=M
// #7804
M=D
// #7805
@SP
// #7806
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_75)
// #7807
@RET_ADDR_75
// #7808
D=A
//^^ push_d_to_stack
// #7809
@SP
// #7810
A=M
// #7811
M=D
// #7812
@SP
// #7813
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_75)
//push return-address
// #7814
@LCL
// #7815
D=M
//^^ push_d_to_stack
// #7816
@SP
// #7817
A=M
// #7818
M=D
// #7819
@SP
// #7820
M=M+1
//vv push_d_to_stack
//push LCL
// #7821
@ARG
// #7822
D=M
//^^ push_d_to_stack
// #7823
@SP
// #7824
A=M
// #7825
M=D
// #7826
@SP
// #7827
M=M+1
//vv push_d_to_stack
//push ARG
// #7828
@THIS
// #7829
D=M
//^^ push_d_to_stack
// #7830
@SP
// #7831
A=M
// #7832
M=D
// #7833
@SP
// #7834
M=M+1
//vv push_d_to_stack
//push THIS
// #7835
@THAT
// #7836
D=M
//^^ push_d_to_stack
// #7837
@SP
// #7838
A=M
// #7839
M=D
// #7840
@SP
// #7841
M=M+1
//vv push_d_to_stack
//push THAT
// #7842
@SP
// #7843
D=M
// #7844
@ARG
// #7845
M=D
// #7846
@17
// #7847
D=A
// #7848
@ARG
// #7849
M=M-D // ARG = SP - args - 5
// #7850
@SP
// #7851
D=M
// #7852
@LCL
// #7853
M=D // LCL = SP
// #7854
@Output.create
// #7855
0;JMP
(RET_ADDR_75)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #7856
@SP
// #7857
M=M-1
// #7858
A=M
// #7859
D=M
//vv pop_stack_to_d
// #7860
@5
// #7861
M=D
//vv pop_to_loc{5)
//
//// push constant 32
//^^ push_constant(32)
// #7862
@32
// #7863
D=A
//^^ push_d_to_stack
// #7864
@SP
// #7865
A=M
// #7866
M=D
// #7867
@SP
// #7868
M=M+1
//vv push_d_to_stack
//vv push_constant(32)
//
//// push constant 0
//^^ push_constant(0)
// #7869
@0
// #7870
D=A
//^^ push_d_to_stack
// #7871
@SP
// #7872
A=M
// #7873
M=D
// #7874
@SP
// #7875
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #7876
@0
// #7877
D=A
//^^ push_d_to_stack
// #7878
@SP
// #7879
A=M
// #7880
M=D
// #7881
@SP
// #7882
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #7883
@0
// #7884
D=A
//^^ push_d_to_stack
// #7885
@SP
// #7886
A=M
// #7887
M=D
// #7888
@SP
// #7889
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #7890
@0
// #7891
D=A
//^^ push_d_to_stack
// #7892
@SP
// #7893
A=M
// #7894
M=D
// #7895
@SP
// #7896
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #7897
@0
// #7898
D=A
//^^ push_d_to_stack
// #7899
@SP
// #7900
A=M
// #7901
M=D
// #7902
@SP
// #7903
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #7904
@0
// #7905
D=A
//^^ push_d_to_stack
// #7906
@SP
// #7907
A=M
// #7908
M=D
// #7909
@SP
// #7910
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #7911
@0
// #7912
D=A
//^^ push_d_to_stack
// #7913
@SP
// #7914
A=M
// #7915
M=D
// #7916
@SP
// #7917
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #7918
@0
// #7919
D=A
//^^ push_d_to_stack
// #7920
@SP
// #7921
A=M
// #7922
M=D
// #7923
@SP
// #7924
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #7925
@0
// #7926
D=A
//^^ push_d_to_stack
// #7927
@SP
// #7928
A=M
// #7929
M=D
// #7930
@SP
// #7931
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #7932
@0
// #7933
D=A
//^^ push_d_to_stack
// #7934
@SP
// #7935
A=M
// #7936
M=D
// #7937
@SP
// #7938
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #7939
@0
// #7940
D=A
//^^ push_d_to_stack
// #7941
@SP
// #7942
A=M
// #7943
M=D
// #7944
@SP
// #7945
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_76)
// #7946
@RET_ADDR_76
// #7947
D=A
//^^ push_d_to_stack
// #7948
@SP
// #7949
A=M
// #7950
M=D
// #7951
@SP
// #7952
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_76)
//push return-address
// #7953
@LCL
// #7954
D=M
//^^ push_d_to_stack
// #7955
@SP
// #7956
A=M
// #7957
M=D
// #7958
@SP
// #7959
M=M+1
//vv push_d_to_stack
//push LCL
// #7960
@ARG
// #7961
D=M
//^^ push_d_to_stack
// #7962
@SP
// #7963
A=M
// #7964
M=D
// #7965
@SP
// #7966
M=M+1
//vv push_d_to_stack
//push ARG
// #7967
@THIS
// #7968
D=M
//^^ push_d_to_stack
// #7969
@SP
// #7970
A=M
// #7971
M=D
// #7972
@SP
// #7973
M=M+1
//vv push_d_to_stack
//push THIS
// #7974
@THAT
// #7975
D=M
//^^ push_d_to_stack
// #7976
@SP
// #7977
A=M
// #7978
M=D
// #7979
@SP
// #7980
M=M+1
//vv push_d_to_stack
//push THAT
// #7981
@SP
// #7982
D=M
// #7983
@ARG
// #7984
M=D
// #7985
@17
// #7986
D=A
// #7987
@ARG
// #7988
M=M-D // ARG = SP - args - 5
// #7989
@SP
// #7990
D=M
// #7991
@LCL
// #7992
M=D // LCL = SP
// #7993
@Output.create
// #7994
0;JMP
(RET_ADDR_76)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #7995
@SP
// #7996
M=M-1
// #7997
A=M
// #7998
D=M
//vv pop_stack_to_d
// #7999
@5
// #8000
M=D
//vv pop_to_loc{5)
//
//// push constant 33
//^^ push_constant(33)
// #8001
@33
// #8002
D=A
//^^ push_d_to_stack
// #8003
@SP
// #8004
A=M
// #8005
M=D
// #8006
@SP
// #8007
M=M+1
//vv push_d_to_stack
//vv push_constant(33)
//
//// push constant 12
//^^ push_constant(12)
// #8008
@12
// #8009
D=A
//^^ push_d_to_stack
// #8010
@SP
// #8011
A=M
// #8012
M=D
// #8013
@SP
// #8014
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 30
//^^ push_constant(30)
// #8015
@30
// #8016
D=A
//^^ push_d_to_stack
// #8017
@SP
// #8018
A=M
// #8019
M=D
// #8020
@SP
// #8021
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 30
//^^ push_constant(30)
// #8022
@30
// #8023
D=A
//^^ push_d_to_stack
// #8024
@SP
// #8025
A=M
// #8026
M=D
// #8027
@SP
// #8028
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 30
//^^ push_constant(30)
// #8029
@30
// #8030
D=A
//^^ push_d_to_stack
// #8031
@SP
// #8032
A=M
// #8033
M=D
// #8034
@SP
// #8035
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 12
//^^ push_constant(12)
// #8036
@12
// #8037
D=A
//^^ push_d_to_stack
// #8038
@SP
// #8039
A=M
// #8040
M=D
// #8041
@SP
// #8042
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #8043
@12
// #8044
D=A
//^^ push_d_to_stack
// #8045
@SP
// #8046
A=M
// #8047
M=D
// #8048
@SP
// #8049
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 0
//^^ push_constant(0)
// #8050
@0
// #8051
D=A
//^^ push_d_to_stack
// #8052
@SP
// #8053
A=M
// #8054
M=D
// #8055
@SP
// #8056
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 12
//^^ push_constant(12)
// #8057
@12
// #8058
D=A
//^^ push_d_to_stack
// #8059
@SP
// #8060
A=M
// #8061
M=D
// #8062
@SP
// #8063
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #8064
@12
// #8065
D=A
//^^ push_d_to_stack
// #8066
@SP
// #8067
A=M
// #8068
M=D
// #8069
@SP
// #8070
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 0
//^^ push_constant(0)
// #8071
@0
// #8072
D=A
//^^ push_d_to_stack
// #8073
@SP
// #8074
A=M
// #8075
M=D
// #8076
@SP
// #8077
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #8078
@0
// #8079
D=A
//^^ push_d_to_stack
// #8080
@SP
// #8081
A=M
// #8082
M=D
// #8083
@SP
// #8084
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_77)
// #8085
@RET_ADDR_77
// #8086
D=A
//^^ push_d_to_stack
// #8087
@SP
// #8088
A=M
// #8089
M=D
// #8090
@SP
// #8091
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_77)
//push return-address
// #8092
@LCL
// #8093
D=M
//^^ push_d_to_stack
// #8094
@SP
// #8095
A=M
// #8096
M=D
// #8097
@SP
// #8098
M=M+1
//vv push_d_to_stack
//push LCL
// #8099
@ARG
// #8100
D=M
//^^ push_d_to_stack
// #8101
@SP
// #8102
A=M
// #8103
M=D
// #8104
@SP
// #8105
M=M+1
//vv push_d_to_stack
//push ARG
// #8106
@THIS
// #8107
D=M
//^^ push_d_to_stack
// #8108
@SP
// #8109
A=M
// #8110
M=D
// #8111
@SP
// #8112
M=M+1
//vv push_d_to_stack
//push THIS
// #8113
@THAT
// #8114
D=M
//^^ push_d_to_stack
// #8115
@SP
// #8116
A=M
// #8117
M=D
// #8118
@SP
// #8119
M=M+1
//vv push_d_to_stack
//push THAT
// #8120
@SP
// #8121
D=M
// #8122
@ARG
// #8123
M=D
// #8124
@17
// #8125
D=A
// #8126
@ARG
// #8127
M=M-D // ARG = SP - args - 5
// #8128
@SP
// #8129
D=M
// #8130
@LCL
// #8131
M=D // LCL = SP
// #8132
@Output.create
// #8133
0;JMP
(RET_ADDR_77)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #8134
@SP
// #8135
M=M-1
// #8136
A=M
// #8137
D=M
//vv pop_stack_to_d
// #8138
@5
// #8139
M=D
//vv pop_to_loc{5)
//
//// push constant 34
//^^ push_constant(34)
// #8140
@34
// #8141
D=A
//^^ push_d_to_stack
// #8142
@SP
// #8143
A=M
// #8144
M=D
// #8145
@SP
// #8146
M=M+1
//vv push_d_to_stack
//vv push_constant(34)
//
//// push constant 54
//^^ push_constant(54)
// #8147
@54
// #8148
D=A
//^^ push_d_to_stack
// #8149
@SP
// #8150
A=M
// #8151
M=D
// #8152
@SP
// #8153
M=M+1
//vv push_d_to_stack
//vv push_constant(54)
//
//// push constant 54
//^^ push_constant(54)
// #8154
@54
// #8155
D=A
//^^ push_d_to_stack
// #8156
@SP
// #8157
A=M
// #8158
M=D
// #8159
@SP
// #8160
M=M+1
//vv push_d_to_stack
//vv push_constant(54)
//
//// push constant 20
//^^ push_constant(20)
// #8161
@20
// #8162
D=A
//^^ push_d_to_stack
// #8163
@SP
// #8164
A=M
// #8165
M=D
// #8166
@SP
// #8167
M=M+1
//vv push_d_to_stack
//vv push_constant(20)
//
//// push constant 0
//^^ push_constant(0)
// #8168
@0
// #8169
D=A
//^^ push_d_to_stack
// #8170
@SP
// #8171
A=M
// #8172
M=D
// #8173
@SP
// #8174
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #8175
@0
// #8176
D=A
//^^ push_d_to_stack
// #8177
@SP
// #8178
A=M
// #8179
M=D
// #8180
@SP
// #8181
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #8182
@0
// #8183
D=A
//^^ push_d_to_stack
// #8184
@SP
// #8185
A=M
// #8186
M=D
// #8187
@SP
// #8188
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #8189
@0
// #8190
D=A
//^^ push_d_to_stack
// #8191
@SP
// #8192
A=M
// #8193
M=D
// #8194
@SP
// #8195
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #8196
@0
// #8197
D=A
//^^ push_d_to_stack
// #8198
@SP
// #8199
A=M
// #8200
M=D
// #8201
@SP
// #8202
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #8203
@0
// #8204
D=A
//^^ push_d_to_stack
// #8205
@SP
// #8206
A=M
// #8207
M=D
// #8208
@SP
// #8209
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #8210
@0
// #8211
D=A
//^^ push_d_to_stack
// #8212
@SP
// #8213
A=M
// #8214
M=D
// #8215
@SP
// #8216
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #8217
@0
// #8218
D=A
//^^ push_d_to_stack
// #8219
@SP
// #8220
A=M
// #8221
M=D
// #8222
@SP
// #8223
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_78)
// #8224
@RET_ADDR_78
// #8225
D=A
//^^ push_d_to_stack
// #8226
@SP
// #8227
A=M
// #8228
M=D
// #8229
@SP
// #8230
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_78)
//push return-address
// #8231
@LCL
// #8232
D=M
//^^ push_d_to_stack
// #8233
@SP
// #8234
A=M
// #8235
M=D
// #8236
@SP
// #8237
M=M+1
//vv push_d_to_stack
//push LCL
// #8238
@ARG
// #8239
D=M
//^^ push_d_to_stack
// #8240
@SP
// #8241
A=M
// #8242
M=D
// #8243
@SP
// #8244
M=M+1
//vv push_d_to_stack
//push ARG
// #8245
@THIS
// #8246
D=M
//^^ push_d_to_stack
// #8247
@SP
// #8248
A=M
// #8249
M=D
// #8250
@SP
// #8251
M=M+1
//vv push_d_to_stack
//push THIS
// #8252
@THAT
// #8253
D=M
//^^ push_d_to_stack
// #8254
@SP
// #8255
A=M
// #8256
M=D
// #8257
@SP
// #8258
M=M+1
//vv push_d_to_stack
//push THAT
// #8259
@SP
// #8260
D=M
// #8261
@ARG
// #8262
M=D
// #8263
@17
// #8264
D=A
// #8265
@ARG
// #8266
M=M-D // ARG = SP - args - 5
// #8267
@SP
// #8268
D=M
// #8269
@LCL
// #8270
M=D // LCL = SP
// #8271
@Output.create
// #8272
0;JMP
(RET_ADDR_78)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #8273
@SP
// #8274
M=M-1
// #8275
A=M
// #8276
D=M
//vv pop_stack_to_d
// #8277
@5
// #8278
M=D
//vv pop_to_loc{5)
//
//// push constant 35
//^^ push_constant(35)
// #8279
@35
// #8280
D=A
//^^ push_d_to_stack
// #8281
@SP
// #8282
A=M
// #8283
M=D
// #8284
@SP
// #8285
M=M+1
//vv push_d_to_stack
//vv push_constant(35)
//
//// push constant 0
//^^ push_constant(0)
// #8286
@0
// #8287
D=A
//^^ push_d_to_stack
// #8288
@SP
// #8289
A=M
// #8290
M=D
// #8291
@SP
// #8292
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 18
//^^ push_constant(18)
// #8293
@18
// #8294
D=A
//^^ push_d_to_stack
// #8295
@SP
// #8296
A=M
// #8297
M=D
// #8298
@SP
// #8299
M=M+1
//vv push_d_to_stack
//vv push_constant(18)
//
//// push constant 18
//^^ push_constant(18)
// #8300
@18
// #8301
D=A
//^^ push_d_to_stack
// #8302
@SP
// #8303
A=M
// #8304
M=D
// #8305
@SP
// #8306
M=M+1
//vv push_d_to_stack
//vv push_constant(18)
//
//// push constant 63
//^^ push_constant(63)
// #8307
@63
// #8308
D=A
//^^ push_d_to_stack
// #8309
@SP
// #8310
A=M
// #8311
M=D
// #8312
@SP
// #8313
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 18
//^^ push_constant(18)
// #8314
@18
// #8315
D=A
//^^ push_d_to_stack
// #8316
@SP
// #8317
A=M
// #8318
M=D
// #8319
@SP
// #8320
M=M+1
//vv push_d_to_stack
//vv push_constant(18)
//
//// push constant 18
//^^ push_constant(18)
// #8321
@18
// #8322
D=A
//^^ push_d_to_stack
// #8323
@SP
// #8324
A=M
// #8325
M=D
// #8326
@SP
// #8327
M=M+1
//vv push_d_to_stack
//vv push_constant(18)
//
//// push constant 63
//^^ push_constant(63)
// #8328
@63
// #8329
D=A
//^^ push_d_to_stack
// #8330
@SP
// #8331
A=M
// #8332
M=D
// #8333
@SP
// #8334
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 18
//^^ push_constant(18)
// #8335
@18
// #8336
D=A
//^^ push_d_to_stack
// #8337
@SP
// #8338
A=M
// #8339
M=D
// #8340
@SP
// #8341
M=M+1
//vv push_d_to_stack
//vv push_constant(18)
//
//// push constant 18
//^^ push_constant(18)
// #8342
@18
// #8343
D=A
//^^ push_d_to_stack
// #8344
@SP
// #8345
A=M
// #8346
M=D
// #8347
@SP
// #8348
M=M+1
//vv push_d_to_stack
//vv push_constant(18)
//
//// push constant 0
//^^ push_constant(0)
// #8349
@0
// #8350
D=A
//^^ push_d_to_stack
// #8351
@SP
// #8352
A=M
// #8353
M=D
// #8354
@SP
// #8355
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #8356
@0
// #8357
D=A
//^^ push_d_to_stack
// #8358
@SP
// #8359
A=M
// #8360
M=D
// #8361
@SP
// #8362
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_79)
// #8363
@RET_ADDR_79
// #8364
D=A
//^^ push_d_to_stack
// #8365
@SP
// #8366
A=M
// #8367
M=D
// #8368
@SP
// #8369
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_79)
//push return-address
// #8370
@LCL
// #8371
D=M
//^^ push_d_to_stack
// #8372
@SP
// #8373
A=M
// #8374
M=D
// #8375
@SP
// #8376
M=M+1
//vv push_d_to_stack
//push LCL
// #8377
@ARG
// #8378
D=M
//^^ push_d_to_stack
// #8379
@SP
// #8380
A=M
// #8381
M=D
// #8382
@SP
// #8383
M=M+1
//vv push_d_to_stack
//push ARG
// #8384
@THIS
// #8385
D=M
//^^ push_d_to_stack
// #8386
@SP
// #8387
A=M
// #8388
M=D
// #8389
@SP
// #8390
M=M+1
//vv push_d_to_stack
//push THIS
// #8391
@THAT
// #8392
D=M
//^^ push_d_to_stack
// #8393
@SP
// #8394
A=M
// #8395
M=D
// #8396
@SP
// #8397
M=M+1
//vv push_d_to_stack
//push THAT
// #8398
@SP
// #8399
D=M
// #8400
@ARG
// #8401
M=D
// #8402
@17
// #8403
D=A
// #8404
@ARG
// #8405
M=M-D // ARG = SP - args - 5
// #8406
@SP
// #8407
D=M
// #8408
@LCL
// #8409
M=D // LCL = SP
// #8410
@Output.create
// #8411
0;JMP
(RET_ADDR_79)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #8412
@SP
// #8413
M=M-1
// #8414
A=M
// #8415
D=M
//vv pop_stack_to_d
// #8416
@5
// #8417
M=D
//vv pop_to_loc{5)
//
//// push constant 36
//^^ push_constant(36)
// #8418
@36
// #8419
D=A
//^^ push_d_to_stack
// #8420
@SP
// #8421
A=M
// #8422
M=D
// #8423
@SP
// #8424
M=M+1
//vv push_d_to_stack
//vv push_constant(36)
//
//// push constant 12
//^^ push_constant(12)
// #8425
@12
// #8426
D=A
//^^ push_d_to_stack
// #8427
@SP
// #8428
A=M
// #8429
M=D
// #8430
@SP
// #8431
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 30
//^^ push_constant(30)
// #8432
@30
// #8433
D=A
//^^ push_d_to_stack
// #8434
@SP
// #8435
A=M
// #8436
M=D
// #8437
@SP
// #8438
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 51
//^^ push_constant(51)
// #8439
@51
// #8440
D=A
//^^ push_d_to_stack
// #8441
@SP
// #8442
A=M
// #8443
M=D
// #8444
@SP
// #8445
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 3
//^^ push_constant(3)
// #8446
@3
// #8447
D=A
//^^ push_d_to_stack
// #8448
@SP
// #8449
A=M
// #8450
M=D
// #8451
@SP
// #8452
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 30
//^^ push_constant(30)
// #8453
@30
// #8454
D=A
//^^ push_d_to_stack
// #8455
@SP
// #8456
A=M
// #8457
M=D
// #8458
@SP
// #8459
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 48
//^^ push_constant(48)
// #8460
@48
// #8461
D=A
//^^ push_d_to_stack
// #8462
@SP
// #8463
A=M
// #8464
M=D
// #8465
@SP
// #8466
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 51
//^^ push_constant(51)
// #8467
@51
// #8468
D=A
//^^ push_d_to_stack
// #8469
@SP
// #8470
A=M
// #8471
M=D
// #8472
@SP
// #8473
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #8474
@30
// #8475
D=A
//^^ push_d_to_stack
// #8476
@SP
// #8477
A=M
// #8478
M=D
// #8479
@SP
// #8480
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 12
//^^ push_constant(12)
// #8481
@12
// #8482
D=A
//^^ push_d_to_stack
// #8483
@SP
// #8484
A=M
// #8485
M=D
// #8486
@SP
// #8487
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #8488
@12
// #8489
D=A
//^^ push_d_to_stack
// #8490
@SP
// #8491
A=M
// #8492
M=D
// #8493
@SP
// #8494
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 0
//^^ push_constant(0)
// #8495
@0
// #8496
D=A
//^^ push_d_to_stack
// #8497
@SP
// #8498
A=M
// #8499
M=D
// #8500
@SP
// #8501
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_80)
// #8502
@RET_ADDR_80
// #8503
D=A
//^^ push_d_to_stack
// #8504
@SP
// #8505
A=M
// #8506
M=D
// #8507
@SP
// #8508
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_80)
//push return-address
// #8509
@LCL
// #8510
D=M
//^^ push_d_to_stack
// #8511
@SP
// #8512
A=M
// #8513
M=D
// #8514
@SP
// #8515
M=M+1
//vv push_d_to_stack
//push LCL
// #8516
@ARG
// #8517
D=M
//^^ push_d_to_stack
// #8518
@SP
// #8519
A=M
// #8520
M=D
// #8521
@SP
// #8522
M=M+1
//vv push_d_to_stack
//push ARG
// #8523
@THIS
// #8524
D=M
//^^ push_d_to_stack
// #8525
@SP
// #8526
A=M
// #8527
M=D
// #8528
@SP
// #8529
M=M+1
//vv push_d_to_stack
//push THIS
// #8530
@THAT
// #8531
D=M
//^^ push_d_to_stack
// #8532
@SP
// #8533
A=M
// #8534
M=D
// #8535
@SP
// #8536
M=M+1
//vv push_d_to_stack
//push THAT
// #8537
@SP
// #8538
D=M
// #8539
@ARG
// #8540
M=D
// #8541
@17
// #8542
D=A
// #8543
@ARG
// #8544
M=M-D // ARG = SP - args - 5
// #8545
@SP
// #8546
D=M
// #8547
@LCL
// #8548
M=D // LCL = SP
// #8549
@Output.create
// #8550
0;JMP
(RET_ADDR_80)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #8551
@SP
// #8552
M=M-1
// #8553
A=M
// #8554
D=M
//vv pop_stack_to_d
// #8555
@5
// #8556
M=D
//vv pop_to_loc{5)
//
//// push constant 37
//^^ push_constant(37)
// #8557
@37
// #8558
D=A
//^^ push_d_to_stack
// #8559
@SP
// #8560
A=M
// #8561
M=D
// #8562
@SP
// #8563
M=M+1
//vv push_d_to_stack
//vv push_constant(37)
//
//// push constant 0
//^^ push_constant(0)
// #8564
@0
// #8565
D=A
//^^ push_d_to_stack
// #8566
@SP
// #8567
A=M
// #8568
M=D
// #8569
@SP
// #8570
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #8571
@0
// #8572
D=A
//^^ push_d_to_stack
// #8573
@SP
// #8574
A=M
// #8575
M=D
// #8576
@SP
// #8577
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 35
//^^ push_constant(35)
// #8578
@35
// #8579
D=A
//^^ push_d_to_stack
// #8580
@SP
// #8581
A=M
// #8582
M=D
// #8583
@SP
// #8584
M=M+1
//vv push_d_to_stack
//vv push_constant(35)
//
//// push constant 51
//^^ push_constant(51)
// #8585
@51
// #8586
D=A
//^^ push_d_to_stack
// #8587
@SP
// #8588
A=M
// #8589
M=D
// #8590
@SP
// #8591
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 24
//^^ push_constant(24)
// #8592
@24
// #8593
D=A
//^^ push_d_to_stack
// #8594
@SP
// #8595
A=M
// #8596
M=D
// #8597
@SP
// #8598
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 12
//^^ push_constant(12)
// #8599
@12
// #8600
D=A
//^^ push_d_to_stack
// #8601
@SP
// #8602
A=M
// #8603
M=D
// #8604
@SP
// #8605
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 6
//^^ push_constant(6)
// #8606
@6
// #8607
D=A
//^^ push_d_to_stack
// #8608
@SP
// #8609
A=M
// #8610
M=D
// #8611
@SP
// #8612
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 51
//^^ push_constant(51)
// #8613
@51
// #8614
D=A
//^^ push_d_to_stack
// #8615
@SP
// #8616
A=M
// #8617
M=D
// #8618
@SP
// #8619
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 49
//^^ push_constant(49)
// #8620
@49
// #8621
D=A
//^^ push_d_to_stack
// #8622
@SP
// #8623
A=M
// #8624
M=D
// #8625
@SP
// #8626
M=M+1
//vv push_d_to_stack
//vv push_constant(49)
//
//// push constant 0
//^^ push_constant(0)
// #8627
@0
// #8628
D=A
//^^ push_d_to_stack
// #8629
@SP
// #8630
A=M
// #8631
M=D
// #8632
@SP
// #8633
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #8634
@0
// #8635
D=A
//^^ push_d_to_stack
// #8636
@SP
// #8637
A=M
// #8638
M=D
// #8639
@SP
// #8640
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_81)
// #8641
@RET_ADDR_81
// #8642
D=A
//^^ push_d_to_stack
// #8643
@SP
// #8644
A=M
// #8645
M=D
// #8646
@SP
// #8647
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_81)
//push return-address
// #8648
@LCL
// #8649
D=M
//^^ push_d_to_stack
// #8650
@SP
// #8651
A=M
// #8652
M=D
// #8653
@SP
// #8654
M=M+1
//vv push_d_to_stack
//push LCL
// #8655
@ARG
// #8656
D=M
//^^ push_d_to_stack
// #8657
@SP
// #8658
A=M
// #8659
M=D
// #8660
@SP
// #8661
M=M+1
//vv push_d_to_stack
//push ARG
// #8662
@THIS
// #8663
D=M
//^^ push_d_to_stack
// #8664
@SP
// #8665
A=M
// #8666
M=D
// #8667
@SP
// #8668
M=M+1
//vv push_d_to_stack
//push THIS
// #8669
@THAT
// #8670
D=M
//^^ push_d_to_stack
// #8671
@SP
// #8672
A=M
// #8673
M=D
// #8674
@SP
// #8675
M=M+1
//vv push_d_to_stack
//push THAT
// #8676
@SP
// #8677
D=M
// #8678
@ARG
// #8679
M=D
// #8680
@17
// #8681
D=A
// #8682
@ARG
// #8683
M=M-D // ARG = SP - args - 5
// #8684
@SP
// #8685
D=M
// #8686
@LCL
// #8687
M=D // LCL = SP
// #8688
@Output.create
// #8689
0;JMP
(RET_ADDR_81)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #8690
@SP
// #8691
M=M-1
// #8692
A=M
// #8693
D=M
//vv pop_stack_to_d
// #8694
@5
// #8695
M=D
//vv pop_to_loc{5)
//
//// push constant 38
//^^ push_constant(38)
// #8696
@38
// #8697
D=A
//^^ push_d_to_stack
// #8698
@SP
// #8699
A=M
// #8700
M=D
// #8701
@SP
// #8702
M=M+1
//vv push_d_to_stack
//vv push_constant(38)
//
//// push constant 12
//^^ push_constant(12)
// #8703
@12
// #8704
D=A
//^^ push_d_to_stack
// #8705
@SP
// #8706
A=M
// #8707
M=D
// #8708
@SP
// #8709
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 30
//^^ push_constant(30)
// #8710
@30
// #8711
D=A
//^^ push_d_to_stack
// #8712
@SP
// #8713
A=M
// #8714
M=D
// #8715
@SP
// #8716
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 30
//^^ push_constant(30)
// #8717
@30
// #8718
D=A
//^^ push_d_to_stack
// #8719
@SP
// #8720
A=M
// #8721
M=D
// #8722
@SP
// #8723
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 12
//^^ push_constant(12)
// #8724
@12
// #8725
D=A
//^^ push_d_to_stack
// #8726
@SP
// #8727
A=M
// #8728
M=D
// #8729
@SP
// #8730
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 54
//^^ push_constant(54)
// #8731
@54
// #8732
D=A
//^^ push_d_to_stack
// #8733
@SP
// #8734
A=M
// #8735
M=D
// #8736
@SP
// #8737
M=M+1
//vv push_d_to_stack
//vv push_constant(54)
//
//// push constant 27
//^^ push_constant(27)
// #8738
@27
// #8739
D=A
//^^ push_d_to_stack
// #8740
@SP
// #8741
A=M
// #8742
M=D
// #8743
@SP
// #8744
M=M+1
//vv push_d_to_stack
//vv push_constant(27)
//
//// push constant 27
//^^ push_constant(27)
// #8745
@27
// #8746
D=A
//^^ push_d_to_stack
// #8747
@SP
// #8748
A=M
// #8749
M=D
// #8750
@SP
// #8751
M=M+1
//vv push_d_to_stack
//vv push_constant(27)
//
//// push constant 27
//^^ push_constant(27)
// #8752
@27
// #8753
D=A
//^^ push_d_to_stack
// #8754
@SP
// #8755
A=M
// #8756
M=D
// #8757
@SP
// #8758
M=M+1
//vv push_d_to_stack
//vv push_constant(27)
//
//// push constant 54
//^^ push_constant(54)
// #8759
@54
// #8760
D=A
//^^ push_d_to_stack
// #8761
@SP
// #8762
A=M
// #8763
M=D
// #8764
@SP
// #8765
M=M+1
//vv push_d_to_stack
//vv push_constant(54)
//
//// push constant 0
//^^ push_constant(0)
// #8766
@0
// #8767
D=A
//^^ push_d_to_stack
// #8768
@SP
// #8769
A=M
// #8770
M=D
// #8771
@SP
// #8772
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #8773
@0
// #8774
D=A
//^^ push_d_to_stack
// #8775
@SP
// #8776
A=M
// #8777
M=D
// #8778
@SP
// #8779
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_82)
// #8780
@RET_ADDR_82
// #8781
D=A
//^^ push_d_to_stack
// #8782
@SP
// #8783
A=M
// #8784
M=D
// #8785
@SP
// #8786
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_82)
//push return-address
// #8787
@LCL
// #8788
D=M
//^^ push_d_to_stack
// #8789
@SP
// #8790
A=M
// #8791
M=D
// #8792
@SP
// #8793
M=M+1
//vv push_d_to_stack
//push LCL
// #8794
@ARG
// #8795
D=M
//^^ push_d_to_stack
// #8796
@SP
// #8797
A=M
// #8798
M=D
// #8799
@SP
// #8800
M=M+1
//vv push_d_to_stack
//push ARG
// #8801
@THIS
// #8802
D=M
//^^ push_d_to_stack
// #8803
@SP
// #8804
A=M
// #8805
M=D
// #8806
@SP
// #8807
M=M+1
//vv push_d_to_stack
//push THIS
// #8808
@THAT
// #8809
D=M
//^^ push_d_to_stack
// #8810
@SP
// #8811
A=M
// #8812
M=D
// #8813
@SP
// #8814
M=M+1
//vv push_d_to_stack
//push THAT
// #8815
@SP
// #8816
D=M
// #8817
@ARG
// #8818
M=D
// #8819
@17
// #8820
D=A
// #8821
@ARG
// #8822
M=M-D // ARG = SP - args - 5
// #8823
@SP
// #8824
D=M
// #8825
@LCL
// #8826
M=D // LCL = SP
// #8827
@Output.create
// #8828
0;JMP
(RET_ADDR_82)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #8829
@SP
// #8830
M=M-1
// #8831
A=M
// #8832
D=M
//vv pop_stack_to_d
// #8833
@5
// #8834
M=D
//vv pop_to_loc{5)
//
//// push constant 39
//^^ push_constant(39)
// #8835
@39
// #8836
D=A
//^^ push_d_to_stack
// #8837
@SP
// #8838
A=M
// #8839
M=D
// #8840
@SP
// #8841
M=M+1
//vv push_d_to_stack
//vv push_constant(39)
//
//// push constant 12
//^^ push_constant(12)
// #8842
@12
// #8843
D=A
//^^ push_d_to_stack
// #8844
@SP
// #8845
A=M
// #8846
M=D
// #8847
@SP
// #8848
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #8849
@12
// #8850
D=A
//^^ push_d_to_stack
// #8851
@SP
// #8852
A=M
// #8853
M=D
// #8854
@SP
// #8855
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 6
//^^ push_constant(6)
// #8856
@6
// #8857
D=A
//^^ push_d_to_stack
// #8858
@SP
// #8859
A=M
// #8860
M=D
// #8861
@SP
// #8862
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 0
//^^ push_constant(0)
// #8863
@0
// #8864
D=A
//^^ push_d_to_stack
// #8865
@SP
// #8866
A=M
// #8867
M=D
// #8868
@SP
// #8869
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #8870
@0
// #8871
D=A
//^^ push_d_to_stack
// #8872
@SP
// #8873
A=M
// #8874
M=D
// #8875
@SP
// #8876
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #8877
@0
// #8878
D=A
//^^ push_d_to_stack
// #8879
@SP
// #8880
A=M
// #8881
M=D
// #8882
@SP
// #8883
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #8884
@0
// #8885
D=A
//^^ push_d_to_stack
// #8886
@SP
// #8887
A=M
// #8888
M=D
// #8889
@SP
// #8890
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #8891
@0
// #8892
D=A
//^^ push_d_to_stack
// #8893
@SP
// #8894
A=M
// #8895
M=D
// #8896
@SP
// #8897
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #8898
@0
// #8899
D=A
//^^ push_d_to_stack
// #8900
@SP
// #8901
A=M
// #8902
M=D
// #8903
@SP
// #8904
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #8905
@0
// #8906
D=A
//^^ push_d_to_stack
// #8907
@SP
// #8908
A=M
// #8909
M=D
// #8910
@SP
// #8911
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #8912
@0
// #8913
D=A
//^^ push_d_to_stack
// #8914
@SP
// #8915
A=M
// #8916
M=D
// #8917
@SP
// #8918
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_83)
// #8919
@RET_ADDR_83
// #8920
D=A
//^^ push_d_to_stack
// #8921
@SP
// #8922
A=M
// #8923
M=D
// #8924
@SP
// #8925
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_83)
//push return-address
// #8926
@LCL
// #8927
D=M
//^^ push_d_to_stack
// #8928
@SP
// #8929
A=M
// #8930
M=D
// #8931
@SP
// #8932
M=M+1
//vv push_d_to_stack
//push LCL
// #8933
@ARG
// #8934
D=M
//^^ push_d_to_stack
// #8935
@SP
// #8936
A=M
// #8937
M=D
// #8938
@SP
// #8939
M=M+1
//vv push_d_to_stack
//push ARG
// #8940
@THIS
// #8941
D=M
//^^ push_d_to_stack
// #8942
@SP
// #8943
A=M
// #8944
M=D
// #8945
@SP
// #8946
M=M+1
//vv push_d_to_stack
//push THIS
// #8947
@THAT
// #8948
D=M
//^^ push_d_to_stack
// #8949
@SP
// #8950
A=M
// #8951
M=D
// #8952
@SP
// #8953
M=M+1
//vv push_d_to_stack
//push THAT
// #8954
@SP
// #8955
D=M
// #8956
@ARG
// #8957
M=D
// #8958
@17
// #8959
D=A
// #8960
@ARG
// #8961
M=M-D // ARG = SP - args - 5
// #8962
@SP
// #8963
D=M
// #8964
@LCL
// #8965
M=D // LCL = SP
// #8966
@Output.create
// #8967
0;JMP
(RET_ADDR_83)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #8968
@SP
// #8969
M=M-1
// #8970
A=M
// #8971
D=M
//vv pop_stack_to_d
// #8972
@5
// #8973
M=D
//vv pop_to_loc{5)
//
//// push constant 40
//^^ push_constant(40)
// #8974
@40
// #8975
D=A
//^^ push_d_to_stack
// #8976
@SP
// #8977
A=M
// #8978
M=D
// #8979
@SP
// #8980
M=M+1
//vv push_d_to_stack
//vv push_constant(40)
//
//// push constant 24
//^^ push_constant(24)
// #8981
@24
// #8982
D=A
//^^ push_d_to_stack
// #8983
@SP
// #8984
A=M
// #8985
M=D
// #8986
@SP
// #8987
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 12
//^^ push_constant(12)
// #8988
@12
// #8989
D=A
//^^ push_d_to_stack
// #8990
@SP
// #8991
A=M
// #8992
M=D
// #8993
@SP
// #8994
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 6
//^^ push_constant(6)
// #8995
@6
// #8996
D=A
//^^ push_d_to_stack
// #8997
@SP
// #8998
A=M
// #8999
M=D
// #9000
@SP
// #9001
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 6
//^^ push_constant(6)
// #9002
@6
// #9003
D=A
//^^ push_d_to_stack
// #9004
@SP
// #9005
A=M
// #9006
M=D
// #9007
@SP
// #9008
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 6
//^^ push_constant(6)
// #9009
@6
// #9010
D=A
//^^ push_d_to_stack
// #9011
@SP
// #9012
A=M
// #9013
M=D
// #9014
@SP
// #9015
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 6
//^^ push_constant(6)
// #9016
@6
// #9017
D=A
//^^ push_d_to_stack
// #9018
@SP
// #9019
A=M
// #9020
M=D
// #9021
@SP
// #9022
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 6
//^^ push_constant(6)
// #9023
@6
// #9024
D=A
//^^ push_d_to_stack
// #9025
@SP
// #9026
A=M
// #9027
M=D
// #9028
@SP
// #9029
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 12
//^^ push_constant(12)
// #9030
@12
// #9031
D=A
//^^ push_d_to_stack
// #9032
@SP
// #9033
A=M
// #9034
M=D
// #9035
@SP
// #9036
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 24
//^^ push_constant(24)
// #9037
@24
// #9038
D=A
//^^ push_d_to_stack
// #9039
@SP
// #9040
A=M
// #9041
M=D
// #9042
@SP
// #9043
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 0
//^^ push_constant(0)
// #9044
@0
// #9045
D=A
//^^ push_d_to_stack
// #9046
@SP
// #9047
A=M
// #9048
M=D
// #9049
@SP
// #9050
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9051
@0
// #9052
D=A
//^^ push_d_to_stack
// #9053
@SP
// #9054
A=M
// #9055
M=D
// #9056
@SP
// #9057
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_84)
// #9058
@RET_ADDR_84
// #9059
D=A
//^^ push_d_to_stack
// #9060
@SP
// #9061
A=M
// #9062
M=D
// #9063
@SP
// #9064
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_84)
//push return-address
// #9065
@LCL
// #9066
D=M
//^^ push_d_to_stack
// #9067
@SP
// #9068
A=M
// #9069
M=D
// #9070
@SP
// #9071
M=M+1
//vv push_d_to_stack
//push LCL
// #9072
@ARG
// #9073
D=M
//^^ push_d_to_stack
// #9074
@SP
// #9075
A=M
// #9076
M=D
// #9077
@SP
// #9078
M=M+1
//vv push_d_to_stack
//push ARG
// #9079
@THIS
// #9080
D=M
//^^ push_d_to_stack
// #9081
@SP
// #9082
A=M
// #9083
M=D
// #9084
@SP
// #9085
M=M+1
//vv push_d_to_stack
//push THIS
// #9086
@THAT
// #9087
D=M
//^^ push_d_to_stack
// #9088
@SP
// #9089
A=M
// #9090
M=D
// #9091
@SP
// #9092
M=M+1
//vv push_d_to_stack
//push THAT
// #9093
@SP
// #9094
D=M
// #9095
@ARG
// #9096
M=D
// #9097
@17
// #9098
D=A
// #9099
@ARG
// #9100
M=M-D // ARG = SP - args - 5
// #9101
@SP
// #9102
D=M
// #9103
@LCL
// #9104
M=D // LCL = SP
// #9105
@Output.create
// #9106
0;JMP
(RET_ADDR_84)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #9107
@SP
// #9108
M=M-1
// #9109
A=M
// #9110
D=M
//vv pop_stack_to_d
// #9111
@5
// #9112
M=D
//vv pop_to_loc{5)
//
//// push constant 41
//^^ push_constant(41)
// #9113
@41
// #9114
D=A
//^^ push_d_to_stack
// #9115
@SP
// #9116
A=M
// #9117
M=D
// #9118
@SP
// #9119
M=M+1
//vv push_d_to_stack
//vv push_constant(41)
//
//// push constant 6
//^^ push_constant(6)
// #9120
@6
// #9121
D=A
//^^ push_d_to_stack
// #9122
@SP
// #9123
A=M
// #9124
M=D
// #9125
@SP
// #9126
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 12
//^^ push_constant(12)
// #9127
@12
// #9128
D=A
//^^ push_d_to_stack
// #9129
@SP
// #9130
A=M
// #9131
M=D
// #9132
@SP
// #9133
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 24
//^^ push_constant(24)
// #9134
@24
// #9135
D=A
//^^ push_d_to_stack
// #9136
@SP
// #9137
A=M
// #9138
M=D
// #9139
@SP
// #9140
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 24
//^^ push_constant(24)
// #9141
@24
// #9142
D=A
//^^ push_d_to_stack
// #9143
@SP
// #9144
A=M
// #9145
M=D
// #9146
@SP
// #9147
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 24
//^^ push_constant(24)
// #9148
@24
// #9149
D=A
//^^ push_d_to_stack
// #9150
@SP
// #9151
A=M
// #9152
M=D
// #9153
@SP
// #9154
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 24
//^^ push_constant(24)
// #9155
@24
// #9156
D=A
//^^ push_d_to_stack
// #9157
@SP
// #9158
A=M
// #9159
M=D
// #9160
@SP
// #9161
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 24
//^^ push_constant(24)
// #9162
@24
// #9163
D=A
//^^ push_d_to_stack
// #9164
@SP
// #9165
A=M
// #9166
M=D
// #9167
@SP
// #9168
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 12
//^^ push_constant(12)
// #9169
@12
// #9170
D=A
//^^ push_d_to_stack
// #9171
@SP
// #9172
A=M
// #9173
M=D
// #9174
@SP
// #9175
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 6
//^^ push_constant(6)
// #9176
@6
// #9177
D=A
//^^ push_d_to_stack
// #9178
@SP
// #9179
A=M
// #9180
M=D
// #9181
@SP
// #9182
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 0
//^^ push_constant(0)
// #9183
@0
// #9184
D=A
//^^ push_d_to_stack
// #9185
@SP
// #9186
A=M
// #9187
M=D
// #9188
@SP
// #9189
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9190
@0
// #9191
D=A
//^^ push_d_to_stack
// #9192
@SP
// #9193
A=M
// #9194
M=D
// #9195
@SP
// #9196
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_85)
// #9197
@RET_ADDR_85
// #9198
D=A
//^^ push_d_to_stack
// #9199
@SP
// #9200
A=M
// #9201
M=D
// #9202
@SP
// #9203
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_85)
//push return-address
// #9204
@LCL
// #9205
D=M
//^^ push_d_to_stack
// #9206
@SP
// #9207
A=M
// #9208
M=D
// #9209
@SP
// #9210
M=M+1
//vv push_d_to_stack
//push LCL
// #9211
@ARG
// #9212
D=M
//^^ push_d_to_stack
// #9213
@SP
// #9214
A=M
// #9215
M=D
// #9216
@SP
// #9217
M=M+1
//vv push_d_to_stack
//push ARG
// #9218
@THIS
// #9219
D=M
//^^ push_d_to_stack
// #9220
@SP
// #9221
A=M
// #9222
M=D
// #9223
@SP
// #9224
M=M+1
//vv push_d_to_stack
//push THIS
// #9225
@THAT
// #9226
D=M
//^^ push_d_to_stack
// #9227
@SP
// #9228
A=M
// #9229
M=D
// #9230
@SP
// #9231
M=M+1
//vv push_d_to_stack
//push THAT
// #9232
@SP
// #9233
D=M
// #9234
@ARG
// #9235
M=D
// #9236
@17
// #9237
D=A
// #9238
@ARG
// #9239
M=M-D // ARG = SP - args - 5
// #9240
@SP
// #9241
D=M
// #9242
@LCL
// #9243
M=D // LCL = SP
// #9244
@Output.create
// #9245
0;JMP
(RET_ADDR_85)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #9246
@SP
// #9247
M=M-1
// #9248
A=M
// #9249
D=M
//vv pop_stack_to_d
// #9250
@5
// #9251
M=D
//vv pop_to_loc{5)
//
//// push constant 42
//^^ push_constant(42)
// #9252
@42
// #9253
D=A
//^^ push_d_to_stack
// #9254
@SP
// #9255
A=M
// #9256
M=D
// #9257
@SP
// #9258
M=M+1
//vv push_d_to_stack
//vv push_constant(42)
//
//// push constant 0
//^^ push_constant(0)
// #9259
@0
// #9260
D=A
//^^ push_d_to_stack
// #9261
@SP
// #9262
A=M
// #9263
M=D
// #9264
@SP
// #9265
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9266
@0
// #9267
D=A
//^^ push_d_to_stack
// #9268
@SP
// #9269
A=M
// #9270
M=D
// #9271
@SP
// #9272
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9273
@0
// #9274
D=A
//^^ push_d_to_stack
// #9275
@SP
// #9276
A=M
// #9277
M=D
// #9278
@SP
// #9279
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 51
//^^ push_constant(51)
// #9280
@51
// #9281
D=A
//^^ push_d_to_stack
// #9282
@SP
// #9283
A=M
// #9284
M=D
// #9285
@SP
// #9286
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #9287
@30
// #9288
D=A
//^^ push_d_to_stack
// #9289
@SP
// #9290
A=M
// #9291
M=D
// #9292
@SP
// #9293
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 63
//^^ push_constant(63)
// #9294
@63
// #9295
D=A
//^^ push_d_to_stack
// #9296
@SP
// #9297
A=M
// #9298
M=D
// #9299
@SP
// #9300
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 30
//^^ push_constant(30)
// #9301
@30
// #9302
D=A
//^^ push_d_to_stack
// #9303
@SP
// #9304
A=M
// #9305
M=D
// #9306
@SP
// #9307
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 51
//^^ push_constant(51)
// #9308
@51
// #9309
D=A
//^^ push_d_to_stack
// #9310
@SP
// #9311
A=M
// #9312
M=D
// #9313
@SP
// #9314
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 0
//^^ push_constant(0)
// #9315
@0
// #9316
D=A
//^^ push_d_to_stack
// #9317
@SP
// #9318
A=M
// #9319
M=D
// #9320
@SP
// #9321
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9322
@0
// #9323
D=A
//^^ push_d_to_stack
// #9324
@SP
// #9325
A=M
// #9326
M=D
// #9327
@SP
// #9328
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9329
@0
// #9330
D=A
//^^ push_d_to_stack
// #9331
@SP
// #9332
A=M
// #9333
M=D
// #9334
@SP
// #9335
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_86)
// #9336
@RET_ADDR_86
// #9337
D=A
//^^ push_d_to_stack
// #9338
@SP
// #9339
A=M
// #9340
M=D
// #9341
@SP
// #9342
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_86)
//push return-address
// #9343
@LCL
// #9344
D=M
//^^ push_d_to_stack
// #9345
@SP
// #9346
A=M
// #9347
M=D
// #9348
@SP
// #9349
M=M+1
//vv push_d_to_stack
//push LCL
// #9350
@ARG
// #9351
D=M
//^^ push_d_to_stack
// #9352
@SP
// #9353
A=M
// #9354
M=D
// #9355
@SP
// #9356
M=M+1
//vv push_d_to_stack
//push ARG
// #9357
@THIS
// #9358
D=M
//^^ push_d_to_stack
// #9359
@SP
// #9360
A=M
// #9361
M=D
// #9362
@SP
// #9363
M=M+1
//vv push_d_to_stack
//push THIS
// #9364
@THAT
// #9365
D=M
//^^ push_d_to_stack
// #9366
@SP
// #9367
A=M
// #9368
M=D
// #9369
@SP
// #9370
M=M+1
//vv push_d_to_stack
//push THAT
// #9371
@SP
// #9372
D=M
// #9373
@ARG
// #9374
M=D
// #9375
@17
// #9376
D=A
// #9377
@ARG
// #9378
M=M-D // ARG = SP - args - 5
// #9379
@SP
// #9380
D=M
// #9381
@LCL
// #9382
M=D // LCL = SP
// #9383
@Output.create
// #9384
0;JMP
(RET_ADDR_86)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #9385
@SP
// #9386
M=M-1
// #9387
A=M
// #9388
D=M
//vv pop_stack_to_d
// #9389
@5
// #9390
M=D
//vv pop_to_loc{5)
//
//// push constant 43
//^^ push_constant(43)
// #9391
@43
// #9392
D=A
//^^ push_d_to_stack
// #9393
@SP
// #9394
A=M
// #9395
M=D
// #9396
@SP
// #9397
M=M+1
//vv push_d_to_stack
//vv push_constant(43)
//
//// push constant 0
//^^ push_constant(0)
// #9398
@0
// #9399
D=A
//^^ push_d_to_stack
// #9400
@SP
// #9401
A=M
// #9402
M=D
// #9403
@SP
// #9404
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9405
@0
// #9406
D=A
//^^ push_d_to_stack
// #9407
@SP
// #9408
A=M
// #9409
M=D
// #9410
@SP
// #9411
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9412
@0
// #9413
D=A
//^^ push_d_to_stack
// #9414
@SP
// #9415
A=M
// #9416
M=D
// #9417
@SP
// #9418
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 12
//^^ push_constant(12)
// #9419
@12
// #9420
D=A
//^^ push_d_to_stack
// #9421
@SP
// #9422
A=M
// #9423
M=D
// #9424
@SP
// #9425
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #9426
@12
// #9427
D=A
//^^ push_d_to_stack
// #9428
@SP
// #9429
A=M
// #9430
M=D
// #9431
@SP
// #9432
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 63
//^^ push_constant(63)
// #9433
@63
// #9434
D=A
//^^ push_d_to_stack
// #9435
@SP
// #9436
A=M
// #9437
M=D
// #9438
@SP
// #9439
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 12
//^^ push_constant(12)
// #9440
@12
// #9441
D=A
//^^ push_d_to_stack
// #9442
@SP
// #9443
A=M
// #9444
M=D
// #9445
@SP
// #9446
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #9447
@12
// #9448
D=A
//^^ push_d_to_stack
// #9449
@SP
// #9450
A=M
// #9451
M=D
// #9452
@SP
// #9453
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 0
//^^ push_constant(0)
// #9454
@0
// #9455
D=A
//^^ push_d_to_stack
// #9456
@SP
// #9457
A=M
// #9458
M=D
// #9459
@SP
// #9460
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9461
@0
// #9462
D=A
//^^ push_d_to_stack
// #9463
@SP
// #9464
A=M
// #9465
M=D
// #9466
@SP
// #9467
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9468
@0
// #9469
D=A
//^^ push_d_to_stack
// #9470
@SP
// #9471
A=M
// #9472
M=D
// #9473
@SP
// #9474
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_87)
// #9475
@RET_ADDR_87
// #9476
D=A
//^^ push_d_to_stack
// #9477
@SP
// #9478
A=M
// #9479
M=D
// #9480
@SP
// #9481
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_87)
//push return-address
// #9482
@LCL
// #9483
D=M
//^^ push_d_to_stack
// #9484
@SP
// #9485
A=M
// #9486
M=D
// #9487
@SP
// #9488
M=M+1
//vv push_d_to_stack
//push LCL
// #9489
@ARG
// #9490
D=M
//^^ push_d_to_stack
// #9491
@SP
// #9492
A=M
// #9493
M=D
// #9494
@SP
// #9495
M=M+1
//vv push_d_to_stack
//push ARG
// #9496
@THIS
// #9497
D=M
//^^ push_d_to_stack
// #9498
@SP
// #9499
A=M
// #9500
M=D
// #9501
@SP
// #9502
M=M+1
//vv push_d_to_stack
//push THIS
// #9503
@THAT
// #9504
D=M
//^^ push_d_to_stack
// #9505
@SP
// #9506
A=M
// #9507
M=D
// #9508
@SP
// #9509
M=M+1
//vv push_d_to_stack
//push THAT
// #9510
@SP
// #9511
D=M
// #9512
@ARG
// #9513
M=D
// #9514
@17
// #9515
D=A
// #9516
@ARG
// #9517
M=M-D // ARG = SP - args - 5
// #9518
@SP
// #9519
D=M
// #9520
@LCL
// #9521
M=D // LCL = SP
// #9522
@Output.create
// #9523
0;JMP
(RET_ADDR_87)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #9524
@SP
// #9525
M=M-1
// #9526
A=M
// #9527
D=M
//vv pop_stack_to_d
// #9528
@5
// #9529
M=D
//vv pop_to_loc{5)
//
//// push constant 44
//^^ push_constant(44)
// #9530
@44
// #9531
D=A
//^^ push_d_to_stack
// #9532
@SP
// #9533
A=M
// #9534
M=D
// #9535
@SP
// #9536
M=M+1
//vv push_d_to_stack
//vv push_constant(44)
//
//// push constant 0
//^^ push_constant(0)
// #9537
@0
// #9538
D=A
//^^ push_d_to_stack
// #9539
@SP
// #9540
A=M
// #9541
M=D
// #9542
@SP
// #9543
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9544
@0
// #9545
D=A
//^^ push_d_to_stack
// #9546
@SP
// #9547
A=M
// #9548
M=D
// #9549
@SP
// #9550
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9551
@0
// #9552
D=A
//^^ push_d_to_stack
// #9553
@SP
// #9554
A=M
// #9555
M=D
// #9556
@SP
// #9557
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9558
@0
// #9559
D=A
//^^ push_d_to_stack
// #9560
@SP
// #9561
A=M
// #9562
M=D
// #9563
@SP
// #9564
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9565
@0
// #9566
D=A
//^^ push_d_to_stack
// #9567
@SP
// #9568
A=M
// #9569
M=D
// #9570
@SP
// #9571
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9572
@0
// #9573
D=A
//^^ push_d_to_stack
// #9574
@SP
// #9575
A=M
// #9576
M=D
// #9577
@SP
// #9578
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9579
@0
// #9580
D=A
//^^ push_d_to_stack
// #9581
@SP
// #9582
A=M
// #9583
M=D
// #9584
@SP
// #9585
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 12
//^^ push_constant(12)
// #9586
@12
// #9587
D=A
//^^ push_d_to_stack
// #9588
@SP
// #9589
A=M
// #9590
M=D
// #9591
@SP
// #9592
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #9593
@12
// #9594
D=A
//^^ push_d_to_stack
// #9595
@SP
// #9596
A=M
// #9597
M=D
// #9598
@SP
// #9599
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 6
//^^ push_constant(6)
// #9600
@6
// #9601
D=A
//^^ push_d_to_stack
// #9602
@SP
// #9603
A=M
// #9604
M=D
// #9605
@SP
// #9606
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 0
//^^ push_constant(0)
// #9607
@0
// #9608
D=A
//^^ push_d_to_stack
// #9609
@SP
// #9610
A=M
// #9611
M=D
// #9612
@SP
// #9613
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_88)
// #9614
@RET_ADDR_88
// #9615
D=A
//^^ push_d_to_stack
// #9616
@SP
// #9617
A=M
// #9618
M=D
// #9619
@SP
// #9620
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_88)
//push return-address
// #9621
@LCL
// #9622
D=M
//^^ push_d_to_stack
// #9623
@SP
// #9624
A=M
// #9625
M=D
// #9626
@SP
// #9627
M=M+1
//vv push_d_to_stack
//push LCL
// #9628
@ARG
// #9629
D=M
//^^ push_d_to_stack
// #9630
@SP
// #9631
A=M
// #9632
M=D
// #9633
@SP
// #9634
M=M+1
//vv push_d_to_stack
//push ARG
// #9635
@THIS
// #9636
D=M
//^^ push_d_to_stack
// #9637
@SP
// #9638
A=M
// #9639
M=D
// #9640
@SP
// #9641
M=M+1
//vv push_d_to_stack
//push THIS
// #9642
@THAT
// #9643
D=M
//^^ push_d_to_stack
// #9644
@SP
// #9645
A=M
// #9646
M=D
// #9647
@SP
// #9648
M=M+1
//vv push_d_to_stack
//push THAT
// #9649
@SP
// #9650
D=M
// #9651
@ARG
// #9652
M=D
// #9653
@17
// #9654
D=A
// #9655
@ARG
// #9656
M=M-D // ARG = SP - args - 5
// #9657
@SP
// #9658
D=M
// #9659
@LCL
// #9660
M=D // LCL = SP
// #9661
@Output.create
// #9662
0;JMP
(RET_ADDR_88)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #9663
@SP
// #9664
M=M-1
// #9665
A=M
// #9666
D=M
//vv pop_stack_to_d
// #9667
@5
// #9668
M=D
//vv pop_to_loc{5)
//
//// push constant 45
//^^ push_constant(45)
// #9669
@45
// #9670
D=A
//^^ push_d_to_stack
// #9671
@SP
// #9672
A=M
// #9673
M=D
// #9674
@SP
// #9675
M=M+1
//vv push_d_to_stack
//vv push_constant(45)
//
//// push constant 0
//^^ push_constant(0)
// #9676
@0
// #9677
D=A
//^^ push_d_to_stack
// #9678
@SP
// #9679
A=M
// #9680
M=D
// #9681
@SP
// #9682
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9683
@0
// #9684
D=A
//^^ push_d_to_stack
// #9685
@SP
// #9686
A=M
// #9687
M=D
// #9688
@SP
// #9689
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9690
@0
// #9691
D=A
//^^ push_d_to_stack
// #9692
@SP
// #9693
A=M
// #9694
M=D
// #9695
@SP
// #9696
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9697
@0
// #9698
D=A
//^^ push_d_to_stack
// #9699
@SP
// #9700
A=M
// #9701
M=D
// #9702
@SP
// #9703
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9704
@0
// #9705
D=A
//^^ push_d_to_stack
// #9706
@SP
// #9707
A=M
// #9708
M=D
// #9709
@SP
// #9710
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 63
//^^ push_constant(63)
// #9711
@63
// #9712
D=A
//^^ push_d_to_stack
// #9713
@SP
// #9714
A=M
// #9715
M=D
// #9716
@SP
// #9717
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 0
//^^ push_constant(0)
// #9718
@0
// #9719
D=A
//^^ push_d_to_stack
// #9720
@SP
// #9721
A=M
// #9722
M=D
// #9723
@SP
// #9724
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9725
@0
// #9726
D=A
//^^ push_d_to_stack
// #9727
@SP
// #9728
A=M
// #9729
M=D
// #9730
@SP
// #9731
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9732
@0
// #9733
D=A
//^^ push_d_to_stack
// #9734
@SP
// #9735
A=M
// #9736
M=D
// #9737
@SP
// #9738
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9739
@0
// #9740
D=A
//^^ push_d_to_stack
// #9741
@SP
// #9742
A=M
// #9743
M=D
// #9744
@SP
// #9745
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9746
@0
// #9747
D=A
//^^ push_d_to_stack
// #9748
@SP
// #9749
A=M
// #9750
M=D
// #9751
@SP
// #9752
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_89)
// #9753
@RET_ADDR_89
// #9754
D=A
//^^ push_d_to_stack
// #9755
@SP
// #9756
A=M
// #9757
M=D
// #9758
@SP
// #9759
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_89)
//push return-address
// #9760
@LCL
// #9761
D=M
//^^ push_d_to_stack
// #9762
@SP
// #9763
A=M
// #9764
M=D
// #9765
@SP
// #9766
M=M+1
//vv push_d_to_stack
//push LCL
// #9767
@ARG
// #9768
D=M
//^^ push_d_to_stack
// #9769
@SP
// #9770
A=M
// #9771
M=D
// #9772
@SP
// #9773
M=M+1
//vv push_d_to_stack
//push ARG
// #9774
@THIS
// #9775
D=M
//^^ push_d_to_stack
// #9776
@SP
// #9777
A=M
// #9778
M=D
// #9779
@SP
// #9780
M=M+1
//vv push_d_to_stack
//push THIS
// #9781
@THAT
// #9782
D=M
//^^ push_d_to_stack
// #9783
@SP
// #9784
A=M
// #9785
M=D
// #9786
@SP
// #9787
M=M+1
//vv push_d_to_stack
//push THAT
// #9788
@SP
// #9789
D=M
// #9790
@ARG
// #9791
M=D
// #9792
@17
// #9793
D=A
// #9794
@ARG
// #9795
M=M-D // ARG = SP - args - 5
// #9796
@SP
// #9797
D=M
// #9798
@LCL
// #9799
M=D // LCL = SP
// #9800
@Output.create
// #9801
0;JMP
(RET_ADDR_89)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #9802
@SP
// #9803
M=M-1
// #9804
A=M
// #9805
D=M
//vv pop_stack_to_d
// #9806
@5
// #9807
M=D
//vv pop_to_loc{5)
//
//// push constant 46
//^^ push_constant(46)
// #9808
@46
// #9809
D=A
//^^ push_d_to_stack
// #9810
@SP
// #9811
A=M
// #9812
M=D
// #9813
@SP
// #9814
M=M+1
//vv push_d_to_stack
//vv push_constant(46)
//
//// push constant 0
//^^ push_constant(0)
// #9815
@0
// #9816
D=A
//^^ push_d_to_stack
// #9817
@SP
// #9818
A=M
// #9819
M=D
// #9820
@SP
// #9821
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9822
@0
// #9823
D=A
//^^ push_d_to_stack
// #9824
@SP
// #9825
A=M
// #9826
M=D
// #9827
@SP
// #9828
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9829
@0
// #9830
D=A
//^^ push_d_to_stack
// #9831
@SP
// #9832
A=M
// #9833
M=D
// #9834
@SP
// #9835
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9836
@0
// #9837
D=A
//^^ push_d_to_stack
// #9838
@SP
// #9839
A=M
// #9840
M=D
// #9841
@SP
// #9842
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9843
@0
// #9844
D=A
//^^ push_d_to_stack
// #9845
@SP
// #9846
A=M
// #9847
M=D
// #9848
@SP
// #9849
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9850
@0
// #9851
D=A
//^^ push_d_to_stack
// #9852
@SP
// #9853
A=M
// #9854
M=D
// #9855
@SP
// #9856
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9857
@0
// #9858
D=A
//^^ push_d_to_stack
// #9859
@SP
// #9860
A=M
// #9861
M=D
// #9862
@SP
// #9863
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 12
//^^ push_constant(12)
// #9864
@12
// #9865
D=A
//^^ push_d_to_stack
// #9866
@SP
// #9867
A=M
// #9868
M=D
// #9869
@SP
// #9870
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #9871
@12
// #9872
D=A
//^^ push_d_to_stack
// #9873
@SP
// #9874
A=M
// #9875
M=D
// #9876
@SP
// #9877
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 0
//^^ push_constant(0)
// #9878
@0
// #9879
D=A
//^^ push_d_to_stack
// #9880
@SP
// #9881
A=M
// #9882
M=D
// #9883
@SP
// #9884
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9885
@0
// #9886
D=A
//^^ push_d_to_stack
// #9887
@SP
// #9888
A=M
// #9889
M=D
// #9890
@SP
// #9891
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_90)
// #9892
@RET_ADDR_90
// #9893
D=A
//^^ push_d_to_stack
// #9894
@SP
// #9895
A=M
// #9896
M=D
// #9897
@SP
// #9898
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_90)
//push return-address
// #9899
@LCL
// #9900
D=M
//^^ push_d_to_stack
// #9901
@SP
// #9902
A=M
// #9903
M=D
// #9904
@SP
// #9905
M=M+1
//vv push_d_to_stack
//push LCL
// #9906
@ARG
// #9907
D=M
//^^ push_d_to_stack
// #9908
@SP
// #9909
A=M
// #9910
M=D
// #9911
@SP
// #9912
M=M+1
//vv push_d_to_stack
//push ARG
// #9913
@THIS
// #9914
D=M
//^^ push_d_to_stack
// #9915
@SP
// #9916
A=M
// #9917
M=D
// #9918
@SP
// #9919
M=M+1
//vv push_d_to_stack
//push THIS
// #9920
@THAT
// #9921
D=M
//^^ push_d_to_stack
// #9922
@SP
// #9923
A=M
// #9924
M=D
// #9925
@SP
// #9926
M=M+1
//vv push_d_to_stack
//push THAT
// #9927
@SP
// #9928
D=M
// #9929
@ARG
// #9930
M=D
// #9931
@17
// #9932
D=A
// #9933
@ARG
// #9934
M=M-D // ARG = SP - args - 5
// #9935
@SP
// #9936
D=M
// #9937
@LCL
// #9938
M=D // LCL = SP
// #9939
@Output.create
// #9940
0;JMP
(RET_ADDR_90)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #9941
@SP
// #9942
M=M-1
// #9943
A=M
// #9944
D=M
//vv pop_stack_to_d
// #9945
@5
// #9946
M=D
//vv pop_to_loc{5)
//
//// push constant 47
//^^ push_constant(47)
// #9947
@47
// #9948
D=A
//^^ push_d_to_stack
// #9949
@SP
// #9950
A=M
// #9951
M=D
// #9952
@SP
// #9953
M=M+1
//vv push_d_to_stack
//vv push_constant(47)
//
//// push constant 0
//^^ push_constant(0)
// #9954
@0
// #9955
D=A
//^^ push_d_to_stack
// #9956
@SP
// #9957
A=M
// #9958
M=D
// #9959
@SP
// #9960
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #9961
@0
// #9962
D=A
//^^ push_d_to_stack
// #9963
@SP
// #9964
A=M
// #9965
M=D
// #9966
@SP
// #9967
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 32
//^^ push_constant(32)
// #9968
@32
// #9969
D=A
//^^ push_d_to_stack
// #9970
@SP
// #9971
A=M
// #9972
M=D
// #9973
@SP
// #9974
M=M+1
//vv push_d_to_stack
//vv push_constant(32)
//
//// push constant 48
//^^ push_constant(48)
// #9975
@48
// #9976
D=A
//^^ push_d_to_stack
// #9977
@SP
// #9978
A=M
// #9979
M=D
// #9980
@SP
// #9981
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 24
//^^ push_constant(24)
// #9982
@24
// #9983
D=A
//^^ push_d_to_stack
// #9984
@SP
// #9985
A=M
// #9986
M=D
// #9987
@SP
// #9988
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 12
//^^ push_constant(12)
// #9989
@12
// #9990
D=A
//^^ push_d_to_stack
// #9991
@SP
// #9992
A=M
// #9993
M=D
// #9994
@SP
// #9995
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 6
//^^ push_constant(6)
// #9996
@6
// #9997
D=A
//^^ push_d_to_stack
// #9998
@SP
// #9999
A=M
// #10000
M=D
// #10001
@SP
// #10002
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 3
//^^ push_constant(3)
// #10003
@3
// #10004
D=A
//^^ push_d_to_stack
// #10005
@SP
// #10006
A=M
// #10007
M=D
// #10008
@SP
// #10009
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 1
//^^ push_constant(1)
// #10010
@1
// #10011
D=A
//^^ push_d_to_stack
// #10012
@SP
// #10013
A=M
// #10014
M=D
// #10015
@SP
// #10016
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// push constant 0
//^^ push_constant(0)
// #10017
@0
// #10018
D=A
//^^ push_d_to_stack
// #10019
@SP
// #10020
A=M
// #10021
M=D
// #10022
@SP
// #10023
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #10024
@0
// #10025
D=A
//^^ push_d_to_stack
// #10026
@SP
// #10027
A=M
// #10028
M=D
// #10029
@SP
// #10030
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_91)
// #10031
@RET_ADDR_91
// #10032
D=A
//^^ push_d_to_stack
// #10033
@SP
// #10034
A=M
// #10035
M=D
// #10036
@SP
// #10037
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_91)
//push return-address
// #10038
@LCL
// #10039
D=M
//^^ push_d_to_stack
// #10040
@SP
// #10041
A=M
// #10042
M=D
// #10043
@SP
// #10044
M=M+1
//vv push_d_to_stack
//push LCL
// #10045
@ARG
// #10046
D=M
//^^ push_d_to_stack
// #10047
@SP
// #10048
A=M
// #10049
M=D
// #10050
@SP
// #10051
M=M+1
//vv push_d_to_stack
//push ARG
// #10052
@THIS
// #10053
D=M
//^^ push_d_to_stack
// #10054
@SP
// #10055
A=M
// #10056
M=D
// #10057
@SP
// #10058
M=M+1
//vv push_d_to_stack
//push THIS
// #10059
@THAT
// #10060
D=M
//^^ push_d_to_stack
// #10061
@SP
// #10062
A=M
// #10063
M=D
// #10064
@SP
// #10065
M=M+1
//vv push_d_to_stack
//push THAT
// #10066
@SP
// #10067
D=M
// #10068
@ARG
// #10069
M=D
// #10070
@17
// #10071
D=A
// #10072
@ARG
// #10073
M=M-D // ARG = SP - args - 5
// #10074
@SP
// #10075
D=M
// #10076
@LCL
// #10077
M=D // LCL = SP
// #10078
@Output.create
// #10079
0;JMP
(RET_ADDR_91)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #10080
@SP
// #10081
M=M-1
// #10082
A=M
// #10083
D=M
//vv pop_stack_to_d
// #10084
@5
// #10085
M=D
//vv pop_to_loc{5)
//
//// push constant 48
//^^ push_constant(48)
// #10086
@48
// #10087
D=A
//^^ push_d_to_stack
// #10088
@SP
// #10089
A=M
// #10090
M=D
// #10091
@SP
// #10092
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 12
//^^ push_constant(12)
// #10093
@12
// #10094
D=A
//^^ push_d_to_stack
// #10095
@SP
// #10096
A=M
// #10097
M=D
// #10098
@SP
// #10099
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 30
//^^ push_constant(30)
// #10100
@30
// #10101
D=A
//^^ push_d_to_stack
// #10102
@SP
// #10103
A=M
// #10104
M=D
// #10105
@SP
// #10106
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 51
//^^ push_constant(51)
// #10107
@51
// #10108
D=A
//^^ push_d_to_stack
// #10109
@SP
// #10110
A=M
// #10111
M=D
// #10112
@SP
// #10113
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #10114
@51
// #10115
D=A
//^^ push_d_to_stack
// #10116
@SP
// #10117
A=M
// #10118
M=D
// #10119
@SP
// #10120
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #10121
@51
// #10122
D=A
//^^ push_d_to_stack
// #10123
@SP
// #10124
A=M
// #10125
M=D
// #10126
@SP
// #10127
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #10128
@51
// #10129
D=A
//^^ push_d_to_stack
// #10130
@SP
// #10131
A=M
// #10132
M=D
// #10133
@SP
// #10134
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #10135
@51
// #10136
D=A
//^^ push_d_to_stack
// #10137
@SP
// #10138
A=M
// #10139
M=D
// #10140
@SP
// #10141
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #10142
@30
// #10143
D=A
//^^ push_d_to_stack
// #10144
@SP
// #10145
A=M
// #10146
M=D
// #10147
@SP
// #10148
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 12
//^^ push_constant(12)
// #10149
@12
// #10150
D=A
//^^ push_d_to_stack
// #10151
@SP
// #10152
A=M
// #10153
M=D
// #10154
@SP
// #10155
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 0
//^^ push_constant(0)
// #10156
@0
// #10157
D=A
//^^ push_d_to_stack
// #10158
@SP
// #10159
A=M
// #10160
M=D
// #10161
@SP
// #10162
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #10163
@0
// #10164
D=A
//^^ push_d_to_stack
// #10165
@SP
// #10166
A=M
// #10167
M=D
// #10168
@SP
// #10169
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_92)
// #10170
@RET_ADDR_92
// #10171
D=A
//^^ push_d_to_stack
// #10172
@SP
// #10173
A=M
// #10174
M=D
// #10175
@SP
// #10176
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_92)
//push return-address
// #10177
@LCL
// #10178
D=M
//^^ push_d_to_stack
// #10179
@SP
// #10180
A=M
// #10181
M=D
// #10182
@SP
// #10183
M=M+1
//vv push_d_to_stack
//push LCL
// #10184
@ARG
// #10185
D=M
//^^ push_d_to_stack
// #10186
@SP
// #10187
A=M
// #10188
M=D
// #10189
@SP
// #10190
M=M+1
//vv push_d_to_stack
//push ARG
// #10191
@THIS
// #10192
D=M
//^^ push_d_to_stack
// #10193
@SP
// #10194
A=M
// #10195
M=D
// #10196
@SP
// #10197
M=M+1
//vv push_d_to_stack
//push THIS
// #10198
@THAT
// #10199
D=M
//^^ push_d_to_stack
// #10200
@SP
// #10201
A=M
// #10202
M=D
// #10203
@SP
// #10204
M=M+1
//vv push_d_to_stack
//push THAT
// #10205
@SP
// #10206
D=M
// #10207
@ARG
// #10208
M=D
// #10209
@17
// #10210
D=A
// #10211
@ARG
// #10212
M=M-D // ARG = SP - args - 5
// #10213
@SP
// #10214
D=M
// #10215
@LCL
// #10216
M=D // LCL = SP
// #10217
@Output.create
// #10218
0;JMP
(RET_ADDR_92)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #10219
@SP
// #10220
M=M-1
// #10221
A=M
// #10222
D=M
//vv pop_stack_to_d
// #10223
@5
// #10224
M=D
//vv pop_to_loc{5)
//
//// push constant 49
//^^ push_constant(49)
// #10225
@49
// #10226
D=A
//^^ push_d_to_stack
// #10227
@SP
// #10228
A=M
// #10229
M=D
// #10230
@SP
// #10231
M=M+1
//vv push_d_to_stack
//vv push_constant(49)
//
//// push constant 12
//^^ push_constant(12)
// #10232
@12
// #10233
D=A
//^^ push_d_to_stack
// #10234
@SP
// #10235
A=M
// #10236
M=D
// #10237
@SP
// #10238
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 14
//^^ push_constant(14)
// #10239
@14
// #10240
D=A
//^^ push_d_to_stack
// #10241
@SP
// #10242
A=M
// #10243
M=D
// #10244
@SP
// #10245
M=M+1
//vv push_d_to_stack
//vv push_constant(14)
//
//// push constant 15
//^^ push_constant(15)
// #10246
@15
// #10247
D=A
//^^ push_d_to_stack
// #10248
@SP
// #10249
A=M
// #10250
M=D
// #10251
@SP
// #10252
M=M+1
//vv push_d_to_stack
//vv push_constant(15)
//
//// push constant 12
//^^ push_constant(12)
// #10253
@12
// #10254
D=A
//^^ push_d_to_stack
// #10255
@SP
// #10256
A=M
// #10257
M=D
// #10258
@SP
// #10259
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #10260
@12
// #10261
D=A
//^^ push_d_to_stack
// #10262
@SP
// #10263
A=M
// #10264
M=D
// #10265
@SP
// #10266
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #10267
@12
// #10268
D=A
//^^ push_d_to_stack
// #10269
@SP
// #10270
A=M
// #10271
M=D
// #10272
@SP
// #10273
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #10274
@12
// #10275
D=A
//^^ push_d_to_stack
// #10276
@SP
// #10277
A=M
// #10278
M=D
// #10279
@SP
// #10280
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #10281
@12
// #10282
D=A
//^^ push_d_to_stack
// #10283
@SP
// #10284
A=M
// #10285
M=D
// #10286
@SP
// #10287
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 63
//^^ push_constant(63)
// #10288
@63
// #10289
D=A
//^^ push_d_to_stack
// #10290
@SP
// #10291
A=M
// #10292
M=D
// #10293
@SP
// #10294
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 0
//^^ push_constant(0)
// #10295
@0
// #10296
D=A
//^^ push_d_to_stack
// #10297
@SP
// #10298
A=M
// #10299
M=D
// #10300
@SP
// #10301
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #10302
@0
// #10303
D=A
//^^ push_d_to_stack
// #10304
@SP
// #10305
A=M
// #10306
M=D
// #10307
@SP
// #10308
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_93)
// #10309
@RET_ADDR_93
// #10310
D=A
//^^ push_d_to_stack
// #10311
@SP
// #10312
A=M
// #10313
M=D
// #10314
@SP
// #10315
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_93)
//push return-address
// #10316
@LCL
// #10317
D=M
//^^ push_d_to_stack
// #10318
@SP
// #10319
A=M
// #10320
M=D
// #10321
@SP
// #10322
M=M+1
//vv push_d_to_stack
//push LCL
// #10323
@ARG
// #10324
D=M
//^^ push_d_to_stack
// #10325
@SP
// #10326
A=M
// #10327
M=D
// #10328
@SP
// #10329
M=M+1
//vv push_d_to_stack
//push ARG
// #10330
@THIS
// #10331
D=M
//^^ push_d_to_stack
// #10332
@SP
// #10333
A=M
// #10334
M=D
// #10335
@SP
// #10336
M=M+1
//vv push_d_to_stack
//push THIS
// #10337
@THAT
// #10338
D=M
//^^ push_d_to_stack
// #10339
@SP
// #10340
A=M
// #10341
M=D
// #10342
@SP
// #10343
M=M+1
//vv push_d_to_stack
//push THAT
// #10344
@SP
// #10345
D=M
// #10346
@ARG
// #10347
M=D
// #10348
@17
// #10349
D=A
// #10350
@ARG
// #10351
M=M-D // ARG = SP - args - 5
// #10352
@SP
// #10353
D=M
// #10354
@LCL
// #10355
M=D // LCL = SP
// #10356
@Output.create
// #10357
0;JMP
(RET_ADDR_93)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #10358
@SP
// #10359
M=M-1
// #10360
A=M
// #10361
D=M
//vv pop_stack_to_d
// #10362
@5
// #10363
M=D
//vv pop_to_loc{5)
//
//// push constant 50
//^^ push_constant(50)
// #10364
@50
// #10365
D=A
//^^ push_d_to_stack
// #10366
@SP
// #10367
A=M
// #10368
M=D
// #10369
@SP
// #10370
M=M+1
//vv push_d_to_stack
//vv push_constant(50)
//
//// push constant 30
//^^ push_constant(30)
// #10371
@30
// #10372
D=A
//^^ push_d_to_stack
// #10373
@SP
// #10374
A=M
// #10375
M=D
// #10376
@SP
// #10377
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 51
//^^ push_constant(51)
// #10378
@51
// #10379
D=A
//^^ push_d_to_stack
// #10380
@SP
// #10381
A=M
// #10382
M=D
// #10383
@SP
// #10384
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 48
//^^ push_constant(48)
// #10385
@48
// #10386
D=A
//^^ push_d_to_stack
// #10387
@SP
// #10388
A=M
// #10389
M=D
// #10390
@SP
// #10391
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 24
//^^ push_constant(24)
// #10392
@24
// #10393
D=A
//^^ push_d_to_stack
// #10394
@SP
// #10395
A=M
// #10396
M=D
// #10397
@SP
// #10398
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 12
//^^ push_constant(12)
// #10399
@12
// #10400
D=A
//^^ push_d_to_stack
// #10401
@SP
// #10402
A=M
// #10403
M=D
// #10404
@SP
// #10405
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 6
//^^ push_constant(6)
// #10406
@6
// #10407
D=A
//^^ push_d_to_stack
// #10408
@SP
// #10409
A=M
// #10410
M=D
// #10411
@SP
// #10412
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 3
//^^ push_constant(3)
// #10413
@3
// #10414
D=A
//^^ push_d_to_stack
// #10415
@SP
// #10416
A=M
// #10417
M=D
// #10418
@SP
// #10419
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 51
//^^ push_constant(51)
// #10420
@51
// #10421
D=A
//^^ push_d_to_stack
// #10422
@SP
// #10423
A=M
// #10424
M=D
// #10425
@SP
// #10426
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 63
//^^ push_constant(63)
// #10427
@63
// #10428
D=A
//^^ push_d_to_stack
// #10429
@SP
// #10430
A=M
// #10431
M=D
// #10432
@SP
// #10433
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 0
//^^ push_constant(0)
// #10434
@0
// #10435
D=A
//^^ push_d_to_stack
// #10436
@SP
// #10437
A=M
// #10438
M=D
// #10439
@SP
// #10440
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #10441
@0
// #10442
D=A
//^^ push_d_to_stack
// #10443
@SP
// #10444
A=M
// #10445
M=D
// #10446
@SP
// #10447
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_94)
// #10448
@RET_ADDR_94
// #10449
D=A
//^^ push_d_to_stack
// #10450
@SP
// #10451
A=M
// #10452
M=D
// #10453
@SP
// #10454
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_94)
//push return-address
// #10455
@LCL
// #10456
D=M
//^^ push_d_to_stack
// #10457
@SP
// #10458
A=M
// #10459
M=D
// #10460
@SP
// #10461
M=M+1
//vv push_d_to_stack
//push LCL
// #10462
@ARG
// #10463
D=M
//^^ push_d_to_stack
// #10464
@SP
// #10465
A=M
// #10466
M=D
// #10467
@SP
// #10468
M=M+1
//vv push_d_to_stack
//push ARG
// #10469
@THIS
// #10470
D=M
//^^ push_d_to_stack
// #10471
@SP
// #10472
A=M
// #10473
M=D
// #10474
@SP
// #10475
M=M+1
//vv push_d_to_stack
//push THIS
// #10476
@THAT
// #10477
D=M
//^^ push_d_to_stack
// #10478
@SP
// #10479
A=M
// #10480
M=D
// #10481
@SP
// #10482
M=M+1
//vv push_d_to_stack
//push THAT
// #10483
@SP
// #10484
D=M
// #10485
@ARG
// #10486
M=D
// #10487
@17
// #10488
D=A
// #10489
@ARG
// #10490
M=M-D // ARG = SP - args - 5
// #10491
@SP
// #10492
D=M
// #10493
@LCL
// #10494
M=D // LCL = SP
// #10495
@Output.create
// #10496
0;JMP
(RET_ADDR_94)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #10497
@SP
// #10498
M=M-1
// #10499
A=M
// #10500
D=M
//vv pop_stack_to_d
// #10501
@5
// #10502
M=D
//vv pop_to_loc{5)
//
//// push constant 51
//^^ push_constant(51)
// #10503
@51
// #10504
D=A
//^^ push_d_to_stack
// #10505
@SP
// #10506
A=M
// #10507
M=D
// #10508
@SP
// #10509
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #10510
@30
// #10511
D=A
//^^ push_d_to_stack
// #10512
@SP
// #10513
A=M
// #10514
M=D
// #10515
@SP
// #10516
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 51
//^^ push_constant(51)
// #10517
@51
// #10518
D=A
//^^ push_d_to_stack
// #10519
@SP
// #10520
A=M
// #10521
M=D
// #10522
@SP
// #10523
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 48
//^^ push_constant(48)
// #10524
@48
// #10525
D=A
//^^ push_d_to_stack
// #10526
@SP
// #10527
A=M
// #10528
M=D
// #10529
@SP
// #10530
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 48
//^^ push_constant(48)
// #10531
@48
// #10532
D=A
//^^ push_d_to_stack
// #10533
@SP
// #10534
A=M
// #10535
M=D
// #10536
@SP
// #10537
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 28
//^^ push_constant(28)
// #10538
@28
// #10539
D=A
//^^ push_d_to_stack
// #10540
@SP
// #10541
A=M
// #10542
M=D
// #10543
@SP
// #10544
M=M+1
//vv push_d_to_stack
//vv push_constant(28)
//
//// push constant 48
//^^ push_constant(48)
// #10545
@48
// #10546
D=A
//^^ push_d_to_stack
// #10547
@SP
// #10548
A=M
// #10549
M=D
// #10550
@SP
// #10551
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 48
//^^ push_constant(48)
// #10552
@48
// #10553
D=A
//^^ push_d_to_stack
// #10554
@SP
// #10555
A=M
// #10556
M=D
// #10557
@SP
// #10558
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 51
//^^ push_constant(51)
// #10559
@51
// #10560
D=A
//^^ push_d_to_stack
// #10561
@SP
// #10562
A=M
// #10563
M=D
// #10564
@SP
// #10565
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #10566
@30
// #10567
D=A
//^^ push_d_to_stack
// #10568
@SP
// #10569
A=M
// #10570
M=D
// #10571
@SP
// #10572
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 0
//^^ push_constant(0)
// #10573
@0
// #10574
D=A
//^^ push_d_to_stack
// #10575
@SP
// #10576
A=M
// #10577
M=D
// #10578
@SP
// #10579
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #10580
@0
// #10581
D=A
//^^ push_d_to_stack
// #10582
@SP
// #10583
A=M
// #10584
M=D
// #10585
@SP
// #10586
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_95)
// #10587
@RET_ADDR_95
// #10588
D=A
//^^ push_d_to_stack
// #10589
@SP
// #10590
A=M
// #10591
M=D
// #10592
@SP
// #10593
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_95)
//push return-address
// #10594
@LCL
// #10595
D=M
//^^ push_d_to_stack
// #10596
@SP
// #10597
A=M
// #10598
M=D
// #10599
@SP
// #10600
M=M+1
//vv push_d_to_stack
//push LCL
// #10601
@ARG
// #10602
D=M
//^^ push_d_to_stack
// #10603
@SP
// #10604
A=M
// #10605
M=D
// #10606
@SP
// #10607
M=M+1
//vv push_d_to_stack
//push ARG
// #10608
@THIS
// #10609
D=M
//^^ push_d_to_stack
// #10610
@SP
// #10611
A=M
// #10612
M=D
// #10613
@SP
// #10614
M=M+1
//vv push_d_to_stack
//push THIS
// #10615
@THAT
// #10616
D=M
//^^ push_d_to_stack
// #10617
@SP
// #10618
A=M
// #10619
M=D
// #10620
@SP
// #10621
M=M+1
//vv push_d_to_stack
//push THAT
// #10622
@SP
// #10623
D=M
// #10624
@ARG
// #10625
M=D
// #10626
@17
// #10627
D=A
// #10628
@ARG
// #10629
M=M-D // ARG = SP - args - 5
// #10630
@SP
// #10631
D=M
// #10632
@LCL
// #10633
M=D // LCL = SP
// #10634
@Output.create
// #10635
0;JMP
(RET_ADDR_95)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #10636
@SP
// #10637
M=M-1
// #10638
A=M
// #10639
D=M
//vv pop_stack_to_d
// #10640
@5
// #10641
M=D
//vv pop_to_loc{5)
//
//// push constant 52
//^^ push_constant(52)
// #10642
@52
// #10643
D=A
//^^ push_d_to_stack
// #10644
@SP
// #10645
A=M
// #10646
M=D
// #10647
@SP
// #10648
M=M+1
//vv push_d_to_stack
//vv push_constant(52)
//
//// push constant 16
//^^ push_constant(16)
// #10649
@16
// #10650
D=A
//^^ push_d_to_stack
// #10651
@SP
// #10652
A=M
// #10653
M=D
// #10654
@SP
// #10655
M=M+1
//vv push_d_to_stack
//vv push_constant(16)
//
//// push constant 24
//^^ push_constant(24)
// #10656
@24
// #10657
D=A
//^^ push_d_to_stack
// #10658
@SP
// #10659
A=M
// #10660
M=D
// #10661
@SP
// #10662
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 28
//^^ push_constant(28)
// #10663
@28
// #10664
D=A
//^^ push_d_to_stack
// #10665
@SP
// #10666
A=M
// #10667
M=D
// #10668
@SP
// #10669
M=M+1
//vv push_d_to_stack
//vv push_constant(28)
//
//// push constant 26
//^^ push_constant(26)
// #10670
@26
// #10671
D=A
//^^ push_d_to_stack
// #10672
@SP
// #10673
A=M
// #10674
M=D
// #10675
@SP
// #10676
M=M+1
//vv push_d_to_stack
//vv push_constant(26)
//
//// push constant 25
//^^ push_constant(25)
// #10677
@25
// #10678
D=A
//^^ push_d_to_stack
// #10679
@SP
// #10680
A=M
// #10681
M=D
// #10682
@SP
// #10683
M=M+1
//vv push_d_to_stack
//vv push_constant(25)
//
//// push constant 63
//^^ push_constant(63)
// #10684
@63
// #10685
D=A
//^^ push_d_to_stack
// #10686
@SP
// #10687
A=M
// #10688
M=D
// #10689
@SP
// #10690
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 24
//^^ push_constant(24)
// #10691
@24
// #10692
D=A
//^^ push_d_to_stack
// #10693
@SP
// #10694
A=M
// #10695
M=D
// #10696
@SP
// #10697
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 24
//^^ push_constant(24)
// #10698
@24
// #10699
D=A
//^^ push_d_to_stack
// #10700
@SP
// #10701
A=M
// #10702
M=D
// #10703
@SP
// #10704
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 60
//^^ push_constant(60)
// #10705
@60
// #10706
D=A
//^^ push_d_to_stack
// #10707
@SP
// #10708
A=M
// #10709
M=D
// #10710
@SP
// #10711
M=M+1
//vv push_d_to_stack
//vv push_constant(60)
//
//// push constant 0
//^^ push_constant(0)
// #10712
@0
// #10713
D=A
//^^ push_d_to_stack
// #10714
@SP
// #10715
A=M
// #10716
M=D
// #10717
@SP
// #10718
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #10719
@0
// #10720
D=A
//^^ push_d_to_stack
// #10721
@SP
// #10722
A=M
// #10723
M=D
// #10724
@SP
// #10725
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_96)
// #10726
@RET_ADDR_96
// #10727
D=A
//^^ push_d_to_stack
// #10728
@SP
// #10729
A=M
// #10730
M=D
// #10731
@SP
// #10732
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_96)
//push return-address
// #10733
@LCL
// #10734
D=M
//^^ push_d_to_stack
// #10735
@SP
// #10736
A=M
// #10737
M=D
// #10738
@SP
// #10739
M=M+1
//vv push_d_to_stack
//push LCL
// #10740
@ARG
// #10741
D=M
//^^ push_d_to_stack
// #10742
@SP
// #10743
A=M
// #10744
M=D
// #10745
@SP
// #10746
M=M+1
//vv push_d_to_stack
//push ARG
// #10747
@THIS
// #10748
D=M
//^^ push_d_to_stack
// #10749
@SP
// #10750
A=M
// #10751
M=D
// #10752
@SP
// #10753
M=M+1
//vv push_d_to_stack
//push THIS
// #10754
@THAT
// #10755
D=M
//^^ push_d_to_stack
// #10756
@SP
// #10757
A=M
// #10758
M=D
// #10759
@SP
// #10760
M=M+1
//vv push_d_to_stack
//push THAT
// #10761
@SP
// #10762
D=M
// #10763
@ARG
// #10764
M=D
// #10765
@17
// #10766
D=A
// #10767
@ARG
// #10768
M=M-D // ARG = SP - args - 5
// #10769
@SP
// #10770
D=M
// #10771
@LCL
// #10772
M=D // LCL = SP
// #10773
@Output.create
// #10774
0;JMP
(RET_ADDR_96)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #10775
@SP
// #10776
M=M-1
// #10777
A=M
// #10778
D=M
//vv pop_stack_to_d
// #10779
@5
// #10780
M=D
//vv pop_to_loc{5)
//
//// push constant 53
//^^ push_constant(53)
// #10781
@53
// #10782
D=A
//^^ push_d_to_stack
// #10783
@SP
// #10784
A=M
// #10785
M=D
// #10786
@SP
// #10787
M=M+1
//vv push_d_to_stack
//vv push_constant(53)
//
//// push constant 63
//^^ push_constant(63)
// #10788
@63
// #10789
D=A
//^^ push_d_to_stack
// #10790
@SP
// #10791
A=M
// #10792
M=D
// #10793
@SP
// #10794
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 3
//^^ push_constant(3)
// #10795
@3
// #10796
D=A
//^^ push_d_to_stack
// #10797
@SP
// #10798
A=M
// #10799
M=D
// #10800
@SP
// #10801
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 3
//^^ push_constant(3)
// #10802
@3
// #10803
D=A
//^^ push_d_to_stack
// #10804
@SP
// #10805
A=M
// #10806
M=D
// #10807
@SP
// #10808
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 31
//^^ push_constant(31)
// #10809
@31
// #10810
D=A
//^^ push_d_to_stack
// #10811
@SP
// #10812
A=M
// #10813
M=D
// #10814
@SP
// #10815
M=M+1
//vv push_d_to_stack
//vv push_constant(31)
//
//// push constant 48
//^^ push_constant(48)
// #10816
@48
// #10817
D=A
//^^ push_d_to_stack
// #10818
@SP
// #10819
A=M
// #10820
M=D
// #10821
@SP
// #10822
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 48
//^^ push_constant(48)
// #10823
@48
// #10824
D=A
//^^ push_d_to_stack
// #10825
@SP
// #10826
A=M
// #10827
M=D
// #10828
@SP
// #10829
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 48
//^^ push_constant(48)
// #10830
@48
// #10831
D=A
//^^ push_d_to_stack
// #10832
@SP
// #10833
A=M
// #10834
M=D
// #10835
@SP
// #10836
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 51
//^^ push_constant(51)
// #10837
@51
// #10838
D=A
//^^ push_d_to_stack
// #10839
@SP
// #10840
A=M
// #10841
M=D
// #10842
@SP
// #10843
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #10844
@30
// #10845
D=A
//^^ push_d_to_stack
// #10846
@SP
// #10847
A=M
// #10848
M=D
// #10849
@SP
// #10850
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 0
//^^ push_constant(0)
// #10851
@0
// #10852
D=A
//^^ push_d_to_stack
// #10853
@SP
// #10854
A=M
// #10855
M=D
// #10856
@SP
// #10857
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #10858
@0
// #10859
D=A
//^^ push_d_to_stack
// #10860
@SP
// #10861
A=M
// #10862
M=D
// #10863
@SP
// #10864
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_97)
// #10865
@RET_ADDR_97
// #10866
D=A
//^^ push_d_to_stack
// #10867
@SP
// #10868
A=M
// #10869
M=D
// #10870
@SP
// #10871
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_97)
//push return-address
// #10872
@LCL
// #10873
D=M
//^^ push_d_to_stack
// #10874
@SP
// #10875
A=M
// #10876
M=D
// #10877
@SP
// #10878
M=M+1
//vv push_d_to_stack
//push LCL
// #10879
@ARG
// #10880
D=M
//^^ push_d_to_stack
// #10881
@SP
// #10882
A=M
// #10883
M=D
// #10884
@SP
// #10885
M=M+1
//vv push_d_to_stack
//push ARG
// #10886
@THIS
// #10887
D=M
//^^ push_d_to_stack
// #10888
@SP
// #10889
A=M
// #10890
M=D
// #10891
@SP
// #10892
M=M+1
//vv push_d_to_stack
//push THIS
// #10893
@THAT
// #10894
D=M
//^^ push_d_to_stack
// #10895
@SP
// #10896
A=M
// #10897
M=D
// #10898
@SP
// #10899
M=M+1
//vv push_d_to_stack
//push THAT
// #10900
@SP
// #10901
D=M
// #10902
@ARG
// #10903
M=D
// #10904
@17
// #10905
D=A
// #10906
@ARG
// #10907
M=M-D // ARG = SP - args - 5
// #10908
@SP
// #10909
D=M
// #10910
@LCL
// #10911
M=D // LCL = SP
// #10912
@Output.create
// #10913
0;JMP
(RET_ADDR_97)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #10914
@SP
// #10915
M=M-1
// #10916
A=M
// #10917
D=M
//vv pop_stack_to_d
// #10918
@5
// #10919
M=D
//vv pop_to_loc{5)
//
//// push constant 54
//^^ push_constant(54)
// #10920
@54
// #10921
D=A
//^^ push_d_to_stack
// #10922
@SP
// #10923
A=M
// #10924
M=D
// #10925
@SP
// #10926
M=M+1
//vv push_d_to_stack
//vv push_constant(54)
//
//// push constant 28
//^^ push_constant(28)
// #10927
@28
// #10928
D=A
//^^ push_d_to_stack
// #10929
@SP
// #10930
A=M
// #10931
M=D
// #10932
@SP
// #10933
M=M+1
//vv push_d_to_stack
//vv push_constant(28)
//
//// push constant 6
//^^ push_constant(6)
// #10934
@6
// #10935
D=A
//^^ push_d_to_stack
// #10936
@SP
// #10937
A=M
// #10938
M=D
// #10939
@SP
// #10940
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 3
//^^ push_constant(3)
// #10941
@3
// #10942
D=A
//^^ push_d_to_stack
// #10943
@SP
// #10944
A=M
// #10945
M=D
// #10946
@SP
// #10947
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 3
//^^ push_constant(3)
// #10948
@3
// #10949
D=A
//^^ push_d_to_stack
// #10950
@SP
// #10951
A=M
// #10952
M=D
// #10953
@SP
// #10954
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 31
//^^ push_constant(31)
// #10955
@31
// #10956
D=A
//^^ push_d_to_stack
// #10957
@SP
// #10958
A=M
// #10959
M=D
// #10960
@SP
// #10961
M=M+1
//vv push_d_to_stack
//vv push_constant(31)
//
//// push constant 51
//^^ push_constant(51)
// #10962
@51
// #10963
D=A
//^^ push_d_to_stack
// #10964
@SP
// #10965
A=M
// #10966
M=D
// #10967
@SP
// #10968
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #10969
@51
// #10970
D=A
//^^ push_d_to_stack
// #10971
@SP
// #10972
A=M
// #10973
M=D
// #10974
@SP
// #10975
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #10976
@51
// #10977
D=A
//^^ push_d_to_stack
// #10978
@SP
// #10979
A=M
// #10980
M=D
// #10981
@SP
// #10982
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #10983
@30
// #10984
D=A
//^^ push_d_to_stack
// #10985
@SP
// #10986
A=M
// #10987
M=D
// #10988
@SP
// #10989
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 0
//^^ push_constant(0)
// #10990
@0
// #10991
D=A
//^^ push_d_to_stack
// #10992
@SP
// #10993
A=M
// #10994
M=D
// #10995
@SP
// #10996
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #10997
@0
// #10998
D=A
//^^ push_d_to_stack
// #10999
@SP
// #11000
A=M
// #11001
M=D
// #11002
@SP
// #11003
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_98)
// #11004
@RET_ADDR_98
// #11005
D=A
//^^ push_d_to_stack
// #11006
@SP
// #11007
A=M
// #11008
M=D
// #11009
@SP
// #11010
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_98)
//push return-address
// #11011
@LCL
// #11012
D=M
//^^ push_d_to_stack
// #11013
@SP
// #11014
A=M
// #11015
M=D
// #11016
@SP
// #11017
M=M+1
//vv push_d_to_stack
//push LCL
// #11018
@ARG
// #11019
D=M
//^^ push_d_to_stack
// #11020
@SP
// #11021
A=M
// #11022
M=D
// #11023
@SP
// #11024
M=M+1
//vv push_d_to_stack
//push ARG
// #11025
@THIS
// #11026
D=M
//^^ push_d_to_stack
// #11027
@SP
// #11028
A=M
// #11029
M=D
// #11030
@SP
// #11031
M=M+1
//vv push_d_to_stack
//push THIS
// #11032
@THAT
// #11033
D=M
//^^ push_d_to_stack
// #11034
@SP
// #11035
A=M
// #11036
M=D
// #11037
@SP
// #11038
M=M+1
//vv push_d_to_stack
//push THAT
// #11039
@SP
// #11040
D=M
// #11041
@ARG
// #11042
M=D
// #11043
@17
// #11044
D=A
// #11045
@ARG
// #11046
M=M-D // ARG = SP - args - 5
// #11047
@SP
// #11048
D=M
// #11049
@LCL
// #11050
M=D // LCL = SP
// #11051
@Output.create
// #11052
0;JMP
(RET_ADDR_98)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #11053
@SP
// #11054
M=M-1
// #11055
A=M
// #11056
D=M
//vv pop_stack_to_d
// #11057
@5
// #11058
M=D
//vv pop_to_loc{5)
//
//// push constant 55
//^^ push_constant(55)
// #11059
@55
// #11060
D=A
//^^ push_d_to_stack
// #11061
@SP
// #11062
A=M
// #11063
M=D
// #11064
@SP
// #11065
M=M+1
//vv push_d_to_stack
//vv push_constant(55)
//
//// push constant 63
//^^ push_constant(63)
// #11066
@63
// #11067
D=A
//^^ push_d_to_stack
// #11068
@SP
// #11069
A=M
// #11070
M=D
// #11071
@SP
// #11072
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 49
//^^ push_constant(49)
// #11073
@49
// #11074
D=A
//^^ push_d_to_stack
// #11075
@SP
// #11076
A=M
// #11077
M=D
// #11078
@SP
// #11079
M=M+1
//vv push_d_to_stack
//vv push_constant(49)
//
//// push constant 48
//^^ push_constant(48)
// #11080
@48
// #11081
D=A
//^^ push_d_to_stack
// #11082
@SP
// #11083
A=M
// #11084
M=D
// #11085
@SP
// #11086
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 48
//^^ push_constant(48)
// #11087
@48
// #11088
D=A
//^^ push_d_to_stack
// #11089
@SP
// #11090
A=M
// #11091
M=D
// #11092
@SP
// #11093
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 24
//^^ push_constant(24)
// #11094
@24
// #11095
D=A
//^^ push_d_to_stack
// #11096
@SP
// #11097
A=M
// #11098
M=D
// #11099
@SP
// #11100
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 12
//^^ push_constant(12)
// #11101
@12
// #11102
D=A
//^^ push_d_to_stack
// #11103
@SP
// #11104
A=M
// #11105
M=D
// #11106
@SP
// #11107
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #11108
@12
// #11109
D=A
//^^ push_d_to_stack
// #11110
@SP
// #11111
A=M
// #11112
M=D
// #11113
@SP
// #11114
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #11115
@12
// #11116
D=A
//^^ push_d_to_stack
// #11117
@SP
// #11118
A=M
// #11119
M=D
// #11120
@SP
// #11121
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #11122
@12
// #11123
D=A
//^^ push_d_to_stack
// #11124
@SP
// #11125
A=M
// #11126
M=D
// #11127
@SP
// #11128
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 0
//^^ push_constant(0)
// #11129
@0
// #11130
D=A
//^^ push_d_to_stack
// #11131
@SP
// #11132
A=M
// #11133
M=D
// #11134
@SP
// #11135
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #11136
@0
// #11137
D=A
//^^ push_d_to_stack
// #11138
@SP
// #11139
A=M
// #11140
M=D
// #11141
@SP
// #11142
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_99)
// #11143
@RET_ADDR_99
// #11144
D=A
//^^ push_d_to_stack
// #11145
@SP
// #11146
A=M
// #11147
M=D
// #11148
@SP
// #11149
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_99)
//push return-address
// #11150
@LCL
// #11151
D=M
//^^ push_d_to_stack
// #11152
@SP
// #11153
A=M
// #11154
M=D
// #11155
@SP
// #11156
M=M+1
//vv push_d_to_stack
//push LCL
// #11157
@ARG
// #11158
D=M
//^^ push_d_to_stack
// #11159
@SP
// #11160
A=M
// #11161
M=D
// #11162
@SP
// #11163
M=M+1
//vv push_d_to_stack
//push ARG
// #11164
@THIS
// #11165
D=M
//^^ push_d_to_stack
// #11166
@SP
// #11167
A=M
// #11168
M=D
// #11169
@SP
// #11170
M=M+1
//vv push_d_to_stack
//push THIS
// #11171
@THAT
// #11172
D=M
//^^ push_d_to_stack
// #11173
@SP
// #11174
A=M
// #11175
M=D
// #11176
@SP
// #11177
M=M+1
//vv push_d_to_stack
//push THAT
// #11178
@SP
// #11179
D=M
// #11180
@ARG
// #11181
M=D
// #11182
@17
// #11183
D=A
// #11184
@ARG
// #11185
M=M-D // ARG = SP - args - 5
// #11186
@SP
// #11187
D=M
// #11188
@LCL
// #11189
M=D // LCL = SP
// #11190
@Output.create
// #11191
0;JMP
(RET_ADDR_99)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #11192
@SP
// #11193
M=M-1
// #11194
A=M
// #11195
D=M
//vv pop_stack_to_d
// #11196
@5
// #11197
M=D
//vv pop_to_loc{5)
//
//// push constant 56
//^^ push_constant(56)
// #11198
@56
// #11199
D=A
//^^ push_d_to_stack
// #11200
@SP
// #11201
A=M
// #11202
M=D
// #11203
@SP
// #11204
M=M+1
//vv push_d_to_stack
//vv push_constant(56)
//
//// push constant 30
//^^ push_constant(30)
// #11205
@30
// #11206
D=A
//^^ push_d_to_stack
// #11207
@SP
// #11208
A=M
// #11209
M=D
// #11210
@SP
// #11211
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 51
//^^ push_constant(51)
// #11212
@51
// #11213
D=A
//^^ push_d_to_stack
// #11214
@SP
// #11215
A=M
// #11216
M=D
// #11217
@SP
// #11218
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #11219
@51
// #11220
D=A
//^^ push_d_to_stack
// #11221
@SP
// #11222
A=M
// #11223
M=D
// #11224
@SP
// #11225
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #11226
@51
// #11227
D=A
//^^ push_d_to_stack
// #11228
@SP
// #11229
A=M
// #11230
M=D
// #11231
@SP
// #11232
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #11233
@30
// #11234
D=A
//^^ push_d_to_stack
// #11235
@SP
// #11236
A=M
// #11237
M=D
// #11238
@SP
// #11239
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 51
//^^ push_constant(51)
// #11240
@51
// #11241
D=A
//^^ push_d_to_stack
// #11242
@SP
// #11243
A=M
// #11244
M=D
// #11245
@SP
// #11246
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #11247
@51
// #11248
D=A
//^^ push_d_to_stack
// #11249
@SP
// #11250
A=M
// #11251
M=D
// #11252
@SP
// #11253
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #11254
@51
// #11255
D=A
//^^ push_d_to_stack
// #11256
@SP
// #11257
A=M
// #11258
M=D
// #11259
@SP
// #11260
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #11261
@30
// #11262
D=A
//^^ push_d_to_stack
// #11263
@SP
// #11264
A=M
// #11265
M=D
// #11266
@SP
// #11267
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 0
//^^ push_constant(0)
// #11268
@0
// #11269
D=A
//^^ push_d_to_stack
// #11270
@SP
// #11271
A=M
// #11272
M=D
// #11273
@SP
// #11274
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #11275
@0
// #11276
D=A
//^^ push_d_to_stack
// #11277
@SP
// #11278
A=M
// #11279
M=D
// #11280
@SP
// #11281
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_100)
// #11282
@RET_ADDR_100
// #11283
D=A
//^^ push_d_to_stack
// #11284
@SP
// #11285
A=M
// #11286
M=D
// #11287
@SP
// #11288
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_100)
//push return-address
// #11289
@LCL
// #11290
D=M
//^^ push_d_to_stack
// #11291
@SP
// #11292
A=M
// #11293
M=D
// #11294
@SP
// #11295
M=M+1
//vv push_d_to_stack
//push LCL
// #11296
@ARG
// #11297
D=M
//^^ push_d_to_stack
// #11298
@SP
// #11299
A=M
// #11300
M=D
// #11301
@SP
// #11302
M=M+1
//vv push_d_to_stack
//push ARG
// #11303
@THIS
// #11304
D=M
//^^ push_d_to_stack
// #11305
@SP
// #11306
A=M
// #11307
M=D
// #11308
@SP
// #11309
M=M+1
//vv push_d_to_stack
//push THIS
// #11310
@THAT
// #11311
D=M
//^^ push_d_to_stack
// #11312
@SP
// #11313
A=M
// #11314
M=D
// #11315
@SP
// #11316
M=M+1
//vv push_d_to_stack
//push THAT
// #11317
@SP
// #11318
D=M
// #11319
@ARG
// #11320
M=D
// #11321
@17
// #11322
D=A
// #11323
@ARG
// #11324
M=M-D // ARG = SP - args - 5
// #11325
@SP
// #11326
D=M
// #11327
@LCL
// #11328
M=D // LCL = SP
// #11329
@Output.create
// #11330
0;JMP
(RET_ADDR_100)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #11331
@SP
// #11332
M=M-1
// #11333
A=M
// #11334
D=M
//vv pop_stack_to_d
// #11335
@5
// #11336
M=D
//vv pop_to_loc{5)
//
//// push constant 57
//^^ push_constant(57)
// #11337
@57
// #11338
D=A
//^^ push_d_to_stack
// #11339
@SP
// #11340
A=M
// #11341
M=D
// #11342
@SP
// #11343
M=M+1
//vv push_d_to_stack
//vv push_constant(57)
//
//// push constant 30
//^^ push_constant(30)
// #11344
@30
// #11345
D=A
//^^ push_d_to_stack
// #11346
@SP
// #11347
A=M
// #11348
M=D
// #11349
@SP
// #11350
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 51
//^^ push_constant(51)
// #11351
@51
// #11352
D=A
//^^ push_d_to_stack
// #11353
@SP
// #11354
A=M
// #11355
M=D
// #11356
@SP
// #11357
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #11358
@51
// #11359
D=A
//^^ push_d_to_stack
// #11360
@SP
// #11361
A=M
// #11362
M=D
// #11363
@SP
// #11364
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #11365
@51
// #11366
D=A
//^^ push_d_to_stack
// #11367
@SP
// #11368
A=M
// #11369
M=D
// #11370
@SP
// #11371
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 62
//^^ push_constant(62)
// #11372
@62
// #11373
D=A
//^^ push_d_to_stack
// #11374
@SP
// #11375
A=M
// #11376
M=D
// #11377
@SP
// #11378
M=M+1
//vv push_d_to_stack
//vv push_constant(62)
//
//// push constant 48
//^^ push_constant(48)
// #11379
@48
// #11380
D=A
//^^ push_d_to_stack
// #11381
@SP
// #11382
A=M
// #11383
M=D
// #11384
@SP
// #11385
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 48
//^^ push_constant(48)
// #11386
@48
// #11387
D=A
//^^ push_d_to_stack
// #11388
@SP
// #11389
A=M
// #11390
M=D
// #11391
@SP
// #11392
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 24
//^^ push_constant(24)
// #11393
@24
// #11394
D=A
//^^ push_d_to_stack
// #11395
@SP
// #11396
A=M
// #11397
M=D
// #11398
@SP
// #11399
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 14
//^^ push_constant(14)
// #11400
@14
// #11401
D=A
//^^ push_d_to_stack
// #11402
@SP
// #11403
A=M
// #11404
M=D
// #11405
@SP
// #11406
M=M+1
//vv push_d_to_stack
//vv push_constant(14)
//
//// push constant 0
//^^ push_constant(0)
// #11407
@0
// #11408
D=A
//^^ push_d_to_stack
// #11409
@SP
// #11410
A=M
// #11411
M=D
// #11412
@SP
// #11413
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #11414
@0
// #11415
D=A
//^^ push_d_to_stack
// #11416
@SP
// #11417
A=M
// #11418
M=D
// #11419
@SP
// #11420
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_101)
// #11421
@RET_ADDR_101
// #11422
D=A
//^^ push_d_to_stack
// #11423
@SP
// #11424
A=M
// #11425
M=D
// #11426
@SP
// #11427
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_101)
//push return-address
// #11428
@LCL
// #11429
D=M
//^^ push_d_to_stack
// #11430
@SP
// #11431
A=M
// #11432
M=D
// #11433
@SP
// #11434
M=M+1
//vv push_d_to_stack
//push LCL
// #11435
@ARG
// #11436
D=M
//^^ push_d_to_stack
// #11437
@SP
// #11438
A=M
// #11439
M=D
// #11440
@SP
// #11441
M=M+1
//vv push_d_to_stack
//push ARG
// #11442
@THIS
// #11443
D=M
//^^ push_d_to_stack
// #11444
@SP
// #11445
A=M
// #11446
M=D
// #11447
@SP
// #11448
M=M+1
//vv push_d_to_stack
//push THIS
// #11449
@THAT
// #11450
D=M
//^^ push_d_to_stack
// #11451
@SP
// #11452
A=M
// #11453
M=D
// #11454
@SP
// #11455
M=M+1
//vv push_d_to_stack
//push THAT
// #11456
@SP
// #11457
D=M
// #11458
@ARG
// #11459
M=D
// #11460
@17
// #11461
D=A
// #11462
@ARG
// #11463
M=M-D // ARG = SP - args - 5
// #11464
@SP
// #11465
D=M
// #11466
@LCL
// #11467
M=D // LCL = SP
// #11468
@Output.create
// #11469
0;JMP
(RET_ADDR_101)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #11470
@SP
// #11471
M=M-1
// #11472
A=M
// #11473
D=M
//vv pop_stack_to_d
// #11474
@5
// #11475
M=D
//vv pop_to_loc{5)
//
//// push constant 58
//^^ push_constant(58)
// #11476
@58
// #11477
D=A
//^^ push_d_to_stack
// #11478
@SP
// #11479
A=M
// #11480
M=D
// #11481
@SP
// #11482
M=M+1
//vv push_d_to_stack
//vv push_constant(58)
//
//// push constant 0
//^^ push_constant(0)
// #11483
@0
// #11484
D=A
//^^ push_d_to_stack
// #11485
@SP
// #11486
A=M
// #11487
M=D
// #11488
@SP
// #11489
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #11490
@0
// #11491
D=A
//^^ push_d_to_stack
// #11492
@SP
// #11493
A=M
// #11494
M=D
// #11495
@SP
// #11496
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 12
//^^ push_constant(12)
// #11497
@12
// #11498
D=A
//^^ push_d_to_stack
// #11499
@SP
// #11500
A=M
// #11501
M=D
// #11502
@SP
// #11503
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #11504
@12
// #11505
D=A
//^^ push_d_to_stack
// #11506
@SP
// #11507
A=M
// #11508
M=D
// #11509
@SP
// #11510
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 0
//^^ push_constant(0)
// #11511
@0
// #11512
D=A
//^^ push_d_to_stack
// #11513
@SP
// #11514
A=M
// #11515
M=D
// #11516
@SP
// #11517
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #11518
@0
// #11519
D=A
//^^ push_d_to_stack
// #11520
@SP
// #11521
A=M
// #11522
M=D
// #11523
@SP
// #11524
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 12
//^^ push_constant(12)
// #11525
@12
// #11526
D=A
//^^ push_d_to_stack
// #11527
@SP
// #11528
A=M
// #11529
M=D
// #11530
@SP
// #11531
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #11532
@12
// #11533
D=A
//^^ push_d_to_stack
// #11534
@SP
// #11535
A=M
// #11536
M=D
// #11537
@SP
// #11538
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 0
//^^ push_constant(0)
// #11539
@0
// #11540
D=A
//^^ push_d_to_stack
// #11541
@SP
// #11542
A=M
// #11543
M=D
// #11544
@SP
// #11545
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #11546
@0
// #11547
D=A
//^^ push_d_to_stack
// #11548
@SP
// #11549
A=M
// #11550
M=D
// #11551
@SP
// #11552
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #11553
@0
// #11554
D=A
//^^ push_d_to_stack
// #11555
@SP
// #11556
A=M
// #11557
M=D
// #11558
@SP
// #11559
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_102)
// #11560
@RET_ADDR_102
// #11561
D=A
//^^ push_d_to_stack
// #11562
@SP
// #11563
A=M
// #11564
M=D
// #11565
@SP
// #11566
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_102)
//push return-address
// #11567
@LCL
// #11568
D=M
//^^ push_d_to_stack
// #11569
@SP
// #11570
A=M
// #11571
M=D
// #11572
@SP
// #11573
M=M+1
//vv push_d_to_stack
//push LCL
// #11574
@ARG
// #11575
D=M
//^^ push_d_to_stack
// #11576
@SP
// #11577
A=M
// #11578
M=D
// #11579
@SP
// #11580
M=M+1
//vv push_d_to_stack
//push ARG
// #11581
@THIS
// #11582
D=M
//^^ push_d_to_stack
// #11583
@SP
// #11584
A=M
// #11585
M=D
// #11586
@SP
// #11587
M=M+1
//vv push_d_to_stack
//push THIS
// #11588
@THAT
// #11589
D=M
//^^ push_d_to_stack
// #11590
@SP
// #11591
A=M
// #11592
M=D
// #11593
@SP
// #11594
M=M+1
//vv push_d_to_stack
//push THAT
// #11595
@SP
// #11596
D=M
// #11597
@ARG
// #11598
M=D
// #11599
@17
// #11600
D=A
// #11601
@ARG
// #11602
M=M-D // ARG = SP - args - 5
// #11603
@SP
// #11604
D=M
// #11605
@LCL
// #11606
M=D // LCL = SP
// #11607
@Output.create
// #11608
0;JMP
(RET_ADDR_102)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #11609
@SP
// #11610
M=M-1
// #11611
A=M
// #11612
D=M
//vv pop_stack_to_d
// #11613
@5
// #11614
M=D
//vv pop_to_loc{5)
//
//// push constant 59
//^^ push_constant(59)
// #11615
@59
// #11616
D=A
//^^ push_d_to_stack
// #11617
@SP
// #11618
A=M
// #11619
M=D
// #11620
@SP
// #11621
M=M+1
//vv push_d_to_stack
//vv push_constant(59)
//
//// push constant 0
//^^ push_constant(0)
// #11622
@0
// #11623
D=A
//^^ push_d_to_stack
// #11624
@SP
// #11625
A=M
// #11626
M=D
// #11627
@SP
// #11628
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #11629
@0
// #11630
D=A
//^^ push_d_to_stack
// #11631
@SP
// #11632
A=M
// #11633
M=D
// #11634
@SP
// #11635
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 12
//^^ push_constant(12)
// #11636
@12
// #11637
D=A
//^^ push_d_to_stack
// #11638
@SP
// #11639
A=M
// #11640
M=D
// #11641
@SP
// #11642
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #11643
@12
// #11644
D=A
//^^ push_d_to_stack
// #11645
@SP
// #11646
A=M
// #11647
M=D
// #11648
@SP
// #11649
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 0
//^^ push_constant(0)
// #11650
@0
// #11651
D=A
//^^ push_d_to_stack
// #11652
@SP
// #11653
A=M
// #11654
M=D
// #11655
@SP
// #11656
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #11657
@0
// #11658
D=A
//^^ push_d_to_stack
// #11659
@SP
// #11660
A=M
// #11661
M=D
// #11662
@SP
// #11663
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 12
//^^ push_constant(12)
// #11664
@12
// #11665
D=A
//^^ push_d_to_stack
// #11666
@SP
// #11667
A=M
// #11668
M=D
// #11669
@SP
// #11670
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #11671
@12
// #11672
D=A
//^^ push_d_to_stack
// #11673
@SP
// #11674
A=M
// #11675
M=D
// #11676
@SP
// #11677
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 6
//^^ push_constant(6)
// #11678
@6
// #11679
D=A
//^^ push_d_to_stack
// #11680
@SP
// #11681
A=M
// #11682
M=D
// #11683
@SP
// #11684
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 0
//^^ push_constant(0)
// #11685
@0
// #11686
D=A
//^^ push_d_to_stack
// #11687
@SP
// #11688
A=M
// #11689
M=D
// #11690
@SP
// #11691
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #11692
@0
// #11693
D=A
//^^ push_d_to_stack
// #11694
@SP
// #11695
A=M
// #11696
M=D
// #11697
@SP
// #11698
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_103)
// #11699
@RET_ADDR_103
// #11700
D=A
//^^ push_d_to_stack
// #11701
@SP
// #11702
A=M
// #11703
M=D
// #11704
@SP
// #11705
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_103)
//push return-address
// #11706
@LCL
// #11707
D=M
//^^ push_d_to_stack
// #11708
@SP
// #11709
A=M
// #11710
M=D
// #11711
@SP
// #11712
M=M+1
//vv push_d_to_stack
//push LCL
// #11713
@ARG
// #11714
D=M
//^^ push_d_to_stack
// #11715
@SP
// #11716
A=M
// #11717
M=D
// #11718
@SP
// #11719
M=M+1
//vv push_d_to_stack
//push ARG
// #11720
@THIS
// #11721
D=M
//^^ push_d_to_stack
// #11722
@SP
// #11723
A=M
// #11724
M=D
// #11725
@SP
// #11726
M=M+1
//vv push_d_to_stack
//push THIS
// #11727
@THAT
// #11728
D=M
//^^ push_d_to_stack
// #11729
@SP
// #11730
A=M
// #11731
M=D
// #11732
@SP
// #11733
M=M+1
//vv push_d_to_stack
//push THAT
// #11734
@SP
// #11735
D=M
// #11736
@ARG
// #11737
M=D
// #11738
@17
// #11739
D=A
// #11740
@ARG
// #11741
M=M-D // ARG = SP - args - 5
// #11742
@SP
// #11743
D=M
// #11744
@LCL
// #11745
M=D // LCL = SP
// #11746
@Output.create
// #11747
0;JMP
(RET_ADDR_103)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #11748
@SP
// #11749
M=M-1
// #11750
A=M
// #11751
D=M
//vv pop_stack_to_d
// #11752
@5
// #11753
M=D
//vv pop_to_loc{5)
//
//// push constant 60
//^^ push_constant(60)
// #11754
@60
// #11755
D=A
//^^ push_d_to_stack
// #11756
@SP
// #11757
A=M
// #11758
M=D
// #11759
@SP
// #11760
M=M+1
//vv push_d_to_stack
//vv push_constant(60)
//
//// push constant 0
//^^ push_constant(0)
// #11761
@0
// #11762
D=A
//^^ push_d_to_stack
// #11763
@SP
// #11764
A=M
// #11765
M=D
// #11766
@SP
// #11767
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #11768
@0
// #11769
D=A
//^^ push_d_to_stack
// #11770
@SP
// #11771
A=M
// #11772
M=D
// #11773
@SP
// #11774
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 24
//^^ push_constant(24)
// #11775
@24
// #11776
D=A
//^^ push_d_to_stack
// #11777
@SP
// #11778
A=M
// #11779
M=D
// #11780
@SP
// #11781
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 12
//^^ push_constant(12)
// #11782
@12
// #11783
D=A
//^^ push_d_to_stack
// #11784
@SP
// #11785
A=M
// #11786
M=D
// #11787
@SP
// #11788
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 6
//^^ push_constant(6)
// #11789
@6
// #11790
D=A
//^^ push_d_to_stack
// #11791
@SP
// #11792
A=M
// #11793
M=D
// #11794
@SP
// #11795
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 3
//^^ push_constant(3)
// #11796
@3
// #11797
D=A
//^^ push_d_to_stack
// #11798
@SP
// #11799
A=M
// #11800
M=D
// #11801
@SP
// #11802
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 6
//^^ push_constant(6)
// #11803
@6
// #11804
D=A
//^^ push_d_to_stack
// #11805
@SP
// #11806
A=M
// #11807
M=D
// #11808
@SP
// #11809
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 12
//^^ push_constant(12)
// #11810
@12
// #11811
D=A
//^^ push_d_to_stack
// #11812
@SP
// #11813
A=M
// #11814
M=D
// #11815
@SP
// #11816
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 24
//^^ push_constant(24)
// #11817
@24
// #11818
D=A
//^^ push_d_to_stack
// #11819
@SP
// #11820
A=M
// #11821
M=D
// #11822
@SP
// #11823
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 0
//^^ push_constant(0)
// #11824
@0
// #11825
D=A
//^^ push_d_to_stack
// #11826
@SP
// #11827
A=M
// #11828
M=D
// #11829
@SP
// #11830
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #11831
@0
// #11832
D=A
//^^ push_d_to_stack
// #11833
@SP
// #11834
A=M
// #11835
M=D
// #11836
@SP
// #11837
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_104)
// #11838
@RET_ADDR_104
// #11839
D=A
//^^ push_d_to_stack
// #11840
@SP
// #11841
A=M
// #11842
M=D
// #11843
@SP
// #11844
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_104)
//push return-address
// #11845
@LCL
// #11846
D=M
//^^ push_d_to_stack
// #11847
@SP
// #11848
A=M
// #11849
M=D
// #11850
@SP
// #11851
M=M+1
//vv push_d_to_stack
//push LCL
// #11852
@ARG
// #11853
D=M
//^^ push_d_to_stack
// #11854
@SP
// #11855
A=M
// #11856
M=D
// #11857
@SP
// #11858
M=M+1
//vv push_d_to_stack
//push ARG
// #11859
@THIS
// #11860
D=M
//^^ push_d_to_stack
// #11861
@SP
// #11862
A=M
// #11863
M=D
// #11864
@SP
// #11865
M=M+1
//vv push_d_to_stack
//push THIS
// #11866
@THAT
// #11867
D=M
//^^ push_d_to_stack
// #11868
@SP
// #11869
A=M
// #11870
M=D
// #11871
@SP
// #11872
M=M+1
//vv push_d_to_stack
//push THAT
// #11873
@SP
// #11874
D=M
// #11875
@ARG
// #11876
M=D
// #11877
@17
// #11878
D=A
// #11879
@ARG
// #11880
M=M-D // ARG = SP - args - 5
// #11881
@SP
// #11882
D=M
// #11883
@LCL
// #11884
M=D // LCL = SP
// #11885
@Output.create
// #11886
0;JMP
(RET_ADDR_104)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #11887
@SP
// #11888
M=M-1
// #11889
A=M
// #11890
D=M
//vv pop_stack_to_d
// #11891
@5
// #11892
M=D
//vv pop_to_loc{5)
//
//// push constant 61
//^^ push_constant(61)
// #11893
@61
// #11894
D=A
//^^ push_d_to_stack
// #11895
@SP
// #11896
A=M
// #11897
M=D
// #11898
@SP
// #11899
M=M+1
//vv push_d_to_stack
//vv push_constant(61)
//
//// push constant 0
//^^ push_constant(0)
// #11900
@0
// #11901
D=A
//^^ push_d_to_stack
// #11902
@SP
// #11903
A=M
// #11904
M=D
// #11905
@SP
// #11906
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #11907
@0
// #11908
D=A
//^^ push_d_to_stack
// #11909
@SP
// #11910
A=M
// #11911
M=D
// #11912
@SP
// #11913
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #11914
@0
// #11915
D=A
//^^ push_d_to_stack
// #11916
@SP
// #11917
A=M
// #11918
M=D
// #11919
@SP
// #11920
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 63
//^^ push_constant(63)
// #11921
@63
// #11922
D=A
//^^ push_d_to_stack
// #11923
@SP
// #11924
A=M
// #11925
M=D
// #11926
@SP
// #11927
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 0
//^^ push_constant(0)
// #11928
@0
// #11929
D=A
//^^ push_d_to_stack
// #11930
@SP
// #11931
A=M
// #11932
M=D
// #11933
@SP
// #11934
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #11935
@0
// #11936
D=A
//^^ push_d_to_stack
// #11937
@SP
// #11938
A=M
// #11939
M=D
// #11940
@SP
// #11941
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 63
//^^ push_constant(63)
// #11942
@63
// #11943
D=A
//^^ push_d_to_stack
// #11944
@SP
// #11945
A=M
// #11946
M=D
// #11947
@SP
// #11948
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 0
//^^ push_constant(0)
// #11949
@0
// #11950
D=A
//^^ push_d_to_stack
// #11951
@SP
// #11952
A=M
// #11953
M=D
// #11954
@SP
// #11955
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #11956
@0
// #11957
D=A
//^^ push_d_to_stack
// #11958
@SP
// #11959
A=M
// #11960
M=D
// #11961
@SP
// #11962
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #11963
@0
// #11964
D=A
//^^ push_d_to_stack
// #11965
@SP
// #11966
A=M
// #11967
M=D
// #11968
@SP
// #11969
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #11970
@0
// #11971
D=A
//^^ push_d_to_stack
// #11972
@SP
// #11973
A=M
// #11974
M=D
// #11975
@SP
// #11976
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_105)
// #11977
@RET_ADDR_105
// #11978
D=A
//^^ push_d_to_stack
// #11979
@SP
// #11980
A=M
// #11981
M=D
// #11982
@SP
// #11983
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_105)
//push return-address
// #11984
@LCL
// #11985
D=M
//^^ push_d_to_stack
// #11986
@SP
// #11987
A=M
// #11988
M=D
// #11989
@SP
// #11990
M=M+1
//vv push_d_to_stack
//push LCL
// #11991
@ARG
// #11992
D=M
//^^ push_d_to_stack
// #11993
@SP
// #11994
A=M
// #11995
M=D
// #11996
@SP
// #11997
M=M+1
//vv push_d_to_stack
//push ARG
// #11998
@THIS
// #11999
D=M
//^^ push_d_to_stack
// #12000
@SP
// #12001
A=M
// #12002
M=D
// #12003
@SP
// #12004
M=M+1
//vv push_d_to_stack
//push THIS
// #12005
@THAT
// #12006
D=M
//^^ push_d_to_stack
// #12007
@SP
// #12008
A=M
// #12009
M=D
// #12010
@SP
// #12011
M=M+1
//vv push_d_to_stack
//push THAT
// #12012
@SP
// #12013
D=M
// #12014
@ARG
// #12015
M=D
// #12016
@17
// #12017
D=A
// #12018
@ARG
// #12019
M=M-D // ARG = SP - args - 5
// #12020
@SP
// #12021
D=M
// #12022
@LCL
// #12023
M=D // LCL = SP
// #12024
@Output.create
// #12025
0;JMP
(RET_ADDR_105)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #12026
@SP
// #12027
M=M-1
// #12028
A=M
// #12029
D=M
//vv pop_stack_to_d
// #12030
@5
// #12031
M=D
//vv pop_to_loc{5)
//
//// push constant 62
//^^ push_constant(62)
// #12032
@62
// #12033
D=A
//^^ push_d_to_stack
// #12034
@SP
// #12035
A=M
// #12036
M=D
// #12037
@SP
// #12038
M=M+1
//vv push_d_to_stack
//vv push_constant(62)
//
//// push constant 0
//^^ push_constant(0)
// #12039
@0
// #12040
D=A
//^^ push_d_to_stack
// #12041
@SP
// #12042
A=M
// #12043
M=D
// #12044
@SP
// #12045
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #12046
@0
// #12047
D=A
//^^ push_d_to_stack
// #12048
@SP
// #12049
A=M
// #12050
M=D
// #12051
@SP
// #12052
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 3
//^^ push_constant(3)
// #12053
@3
// #12054
D=A
//^^ push_d_to_stack
// #12055
@SP
// #12056
A=M
// #12057
M=D
// #12058
@SP
// #12059
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 6
//^^ push_constant(6)
// #12060
@6
// #12061
D=A
//^^ push_d_to_stack
// #12062
@SP
// #12063
A=M
// #12064
M=D
// #12065
@SP
// #12066
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 12
//^^ push_constant(12)
// #12067
@12
// #12068
D=A
//^^ push_d_to_stack
// #12069
@SP
// #12070
A=M
// #12071
M=D
// #12072
@SP
// #12073
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 24
//^^ push_constant(24)
// #12074
@24
// #12075
D=A
//^^ push_d_to_stack
// #12076
@SP
// #12077
A=M
// #12078
M=D
// #12079
@SP
// #12080
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 12
//^^ push_constant(12)
// #12081
@12
// #12082
D=A
//^^ push_d_to_stack
// #12083
@SP
// #12084
A=M
// #12085
M=D
// #12086
@SP
// #12087
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 6
//^^ push_constant(6)
// #12088
@6
// #12089
D=A
//^^ push_d_to_stack
// #12090
@SP
// #12091
A=M
// #12092
M=D
// #12093
@SP
// #12094
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 3
//^^ push_constant(3)
// #12095
@3
// #12096
D=A
//^^ push_d_to_stack
// #12097
@SP
// #12098
A=M
// #12099
M=D
// #12100
@SP
// #12101
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 0
//^^ push_constant(0)
// #12102
@0
// #12103
D=A
//^^ push_d_to_stack
// #12104
@SP
// #12105
A=M
// #12106
M=D
// #12107
@SP
// #12108
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #12109
@0
// #12110
D=A
//^^ push_d_to_stack
// #12111
@SP
// #12112
A=M
// #12113
M=D
// #12114
@SP
// #12115
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_106)
// #12116
@RET_ADDR_106
// #12117
D=A
//^^ push_d_to_stack
// #12118
@SP
// #12119
A=M
// #12120
M=D
// #12121
@SP
// #12122
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_106)
//push return-address
// #12123
@LCL
// #12124
D=M
//^^ push_d_to_stack
// #12125
@SP
// #12126
A=M
// #12127
M=D
// #12128
@SP
// #12129
M=M+1
//vv push_d_to_stack
//push LCL
// #12130
@ARG
// #12131
D=M
//^^ push_d_to_stack
// #12132
@SP
// #12133
A=M
// #12134
M=D
// #12135
@SP
// #12136
M=M+1
//vv push_d_to_stack
//push ARG
// #12137
@THIS
// #12138
D=M
//^^ push_d_to_stack
// #12139
@SP
// #12140
A=M
// #12141
M=D
// #12142
@SP
// #12143
M=M+1
//vv push_d_to_stack
//push THIS
// #12144
@THAT
// #12145
D=M
//^^ push_d_to_stack
// #12146
@SP
// #12147
A=M
// #12148
M=D
// #12149
@SP
// #12150
M=M+1
//vv push_d_to_stack
//push THAT
// #12151
@SP
// #12152
D=M
// #12153
@ARG
// #12154
M=D
// #12155
@17
// #12156
D=A
// #12157
@ARG
// #12158
M=M-D // ARG = SP - args - 5
// #12159
@SP
// #12160
D=M
// #12161
@LCL
// #12162
M=D // LCL = SP
// #12163
@Output.create
// #12164
0;JMP
(RET_ADDR_106)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #12165
@SP
// #12166
M=M-1
// #12167
A=M
// #12168
D=M
//vv pop_stack_to_d
// #12169
@5
// #12170
M=D
//vv pop_to_loc{5)
//
//// push constant 64
//^^ push_constant(64)
// #12171
@64
// #12172
D=A
//^^ push_d_to_stack
// #12173
@SP
// #12174
A=M
// #12175
M=D
// #12176
@SP
// #12177
M=M+1
//vv push_d_to_stack
//vv push_constant(64)
//
//// push constant 30
//^^ push_constant(30)
// #12178
@30
// #12179
D=A
//^^ push_d_to_stack
// #12180
@SP
// #12181
A=M
// #12182
M=D
// #12183
@SP
// #12184
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 51
//^^ push_constant(51)
// #12185
@51
// #12186
D=A
//^^ push_d_to_stack
// #12187
@SP
// #12188
A=M
// #12189
M=D
// #12190
@SP
// #12191
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #12192
@51
// #12193
D=A
//^^ push_d_to_stack
// #12194
@SP
// #12195
A=M
// #12196
M=D
// #12197
@SP
// #12198
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 59
//^^ push_constant(59)
// #12199
@59
// #12200
D=A
//^^ push_d_to_stack
// #12201
@SP
// #12202
A=M
// #12203
M=D
// #12204
@SP
// #12205
M=M+1
//vv push_d_to_stack
//vv push_constant(59)
//
//// push constant 59
//^^ push_constant(59)
// #12206
@59
// #12207
D=A
//^^ push_d_to_stack
// #12208
@SP
// #12209
A=M
// #12210
M=D
// #12211
@SP
// #12212
M=M+1
//vv push_d_to_stack
//vv push_constant(59)
//
//// push constant 59
//^^ push_constant(59)
// #12213
@59
// #12214
D=A
//^^ push_d_to_stack
// #12215
@SP
// #12216
A=M
// #12217
M=D
// #12218
@SP
// #12219
M=M+1
//vv push_d_to_stack
//vv push_constant(59)
//
//// push constant 27
//^^ push_constant(27)
// #12220
@27
// #12221
D=A
//^^ push_d_to_stack
// #12222
@SP
// #12223
A=M
// #12224
M=D
// #12225
@SP
// #12226
M=M+1
//vv push_d_to_stack
//vv push_constant(27)
//
//// push constant 3
//^^ push_constant(3)
// #12227
@3
// #12228
D=A
//^^ push_d_to_stack
// #12229
@SP
// #12230
A=M
// #12231
M=D
// #12232
@SP
// #12233
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 30
//^^ push_constant(30)
// #12234
@30
// #12235
D=A
//^^ push_d_to_stack
// #12236
@SP
// #12237
A=M
// #12238
M=D
// #12239
@SP
// #12240
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 0
//^^ push_constant(0)
// #12241
@0
// #12242
D=A
//^^ push_d_to_stack
// #12243
@SP
// #12244
A=M
// #12245
M=D
// #12246
@SP
// #12247
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #12248
@0
// #12249
D=A
//^^ push_d_to_stack
// #12250
@SP
// #12251
A=M
// #12252
M=D
// #12253
@SP
// #12254
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_107)
// #12255
@RET_ADDR_107
// #12256
D=A
//^^ push_d_to_stack
// #12257
@SP
// #12258
A=M
// #12259
M=D
// #12260
@SP
// #12261
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_107)
//push return-address
// #12262
@LCL
// #12263
D=M
//^^ push_d_to_stack
// #12264
@SP
// #12265
A=M
// #12266
M=D
// #12267
@SP
// #12268
M=M+1
//vv push_d_to_stack
//push LCL
// #12269
@ARG
// #12270
D=M
//^^ push_d_to_stack
// #12271
@SP
// #12272
A=M
// #12273
M=D
// #12274
@SP
// #12275
M=M+1
//vv push_d_to_stack
//push ARG
// #12276
@THIS
// #12277
D=M
//^^ push_d_to_stack
// #12278
@SP
// #12279
A=M
// #12280
M=D
// #12281
@SP
// #12282
M=M+1
//vv push_d_to_stack
//push THIS
// #12283
@THAT
// #12284
D=M
//^^ push_d_to_stack
// #12285
@SP
// #12286
A=M
// #12287
M=D
// #12288
@SP
// #12289
M=M+1
//vv push_d_to_stack
//push THAT
// #12290
@SP
// #12291
D=M
// #12292
@ARG
// #12293
M=D
// #12294
@17
// #12295
D=A
// #12296
@ARG
// #12297
M=M-D // ARG = SP - args - 5
// #12298
@SP
// #12299
D=M
// #12300
@LCL
// #12301
M=D // LCL = SP
// #12302
@Output.create
// #12303
0;JMP
(RET_ADDR_107)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #12304
@SP
// #12305
M=M-1
// #12306
A=M
// #12307
D=M
//vv pop_stack_to_d
// #12308
@5
// #12309
M=D
//vv pop_to_loc{5)
//
//// push constant 63
//^^ push_constant(63)
// #12310
@63
// #12311
D=A
//^^ push_d_to_stack
// #12312
@SP
// #12313
A=M
// #12314
M=D
// #12315
@SP
// #12316
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 30
//^^ push_constant(30)
// #12317
@30
// #12318
D=A
//^^ push_d_to_stack
// #12319
@SP
// #12320
A=M
// #12321
M=D
// #12322
@SP
// #12323
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 51
//^^ push_constant(51)
// #12324
@51
// #12325
D=A
//^^ push_d_to_stack
// #12326
@SP
// #12327
A=M
// #12328
M=D
// #12329
@SP
// #12330
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #12331
@51
// #12332
D=A
//^^ push_d_to_stack
// #12333
@SP
// #12334
A=M
// #12335
M=D
// #12336
@SP
// #12337
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 24
//^^ push_constant(24)
// #12338
@24
// #12339
D=A
//^^ push_d_to_stack
// #12340
@SP
// #12341
A=M
// #12342
M=D
// #12343
@SP
// #12344
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 12
//^^ push_constant(12)
// #12345
@12
// #12346
D=A
//^^ push_d_to_stack
// #12347
@SP
// #12348
A=M
// #12349
M=D
// #12350
@SP
// #12351
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #12352
@12
// #12353
D=A
//^^ push_d_to_stack
// #12354
@SP
// #12355
A=M
// #12356
M=D
// #12357
@SP
// #12358
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 0
//^^ push_constant(0)
// #12359
@0
// #12360
D=A
//^^ push_d_to_stack
// #12361
@SP
// #12362
A=M
// #12363
M=D
// #12364
@SP
// #12365
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 12
//^^ push_constant(12)
// #12366
@12
// #12367
D=A
//^^ push_d_to_stack
// #12368
@SP
// #12369
A=M
// #12370
M=D
// #12371
@SP
// #12372
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #12373
@12
// #12374
D=A
//^^ push_d_to_stack
// #12375
@SP
// #12376
A=M
// #12377
M=D
// #12378
@SP
// #12379
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 0
//^^ push_constant(0)
// #12380
@0
// #12381
D=A
//^^ push_d_to_stack
// #12382
@SP
// #12383
A=M
// #12384
M=D
// #12385
@SP
// #12386
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #12387
@0
// #12388
D=A
//^^ push_d_to_stack
// #12389
@SP
// #12390
A=M
// #12391
M=D
// #12392
@SP
// #12393
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_108)
// #12394
@RET_ADDR_108
// #12395
D=A
//^^ push_d_to_stack
// #12396
@SP
// #12397
A=M
// #12398
M=D
// #12399
@SP
// #12400
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_108)
//push return-address
// #12401
@LCL
// #12402
D=M
//^^ push_d_to_stack
// #12403
@SP
// #12404
A=M
// #12405
M=D
// #12406
@SP
// #12407
M=M+1
//vv push_d_to_stack
//push LCL
// #12408
@ARG
// #12409
D=M
//^^ push_d_to_stack
// #12410
@SP
// #12411
A=M
// #12412
M=D
// #12413
@SP
// #12414
M=M+1
//vv push_d_to_stack
//push ARG
// #12415
@THIS
// #12416
D=M
//^^ push_d_to_stack
// #12417
@SP
// #12418
A=M
// #12419
M=D
// #12420
@SP
// #12421
M=M+1
//vv push_d_to_stack
//push THIS
// #12422
@THAT
// #12423
D=M
//^^ push_d_to_stack
// #12424
@SP
// #12425
A=M
// #12426
M=D
// #12427
@SP
// #12428
M=M+1
//vv push_d_to_stack
//push THAT
// #12429
@SP
// #12430
D=M
// #12431
@ARG
// #12432
M=D
// #12433
@17
// #12434
D=A
// #12435
@ARG
// #12436
M=M-D // ARG = SP - args - 5
// #12437
@SP
// #12438
D=M
// #12439
@LCL
// #12440
M=D // LCL = SP
// #12441
@Output.create
// #12442
0;JMP
(RET_ADDR_108)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #12443
@SP
// #12444
M=M-1
// #12445
A=M
// #12446
D=M
//vv pop_stack_to_d
// #12447
@5
// #12448
M=D
//vv pop_to_loc{5)
//
//// push constant 65
//^^ push_constant(65)
// #12449
@65
// #12450
D=A
//^^ push_d_to_stack
// #12451
@SP
// #12452
A=M
// #12453
M=D
// #12454
@SP
// #12455
M=M+1
//vv push_d_to_stack
//vv push_constant(65)
//
//// push constant 12
//^^ push_constant(12)
// #12456
@12
// #12457
D=A
//^^ push_d_to_stack
// #12458
@SP
// #12459
A=M
// #12460
M=D
// #12461
@SP
// #12462
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 30
//^^ push_constant(30)
// #12463
@30
// #12464
D=A
//^^ push_d_to_stack
// #12465
@SP
// #12466
A=M
// #12467
M=D
// #12468
@SP
// #12469
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 51
//^^ push_constant(51)
// #12470
@51
// #12471
D=A
//^^ push_d_to_stack
// #12472
@SP
// #12473
A=M
// #12474
M=D
// #12475
@SP
// #12476
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #12477
@51
// #12478
D=A
//^^ push_d_to_stack
// #12479
@SP
// #12480
A=M
// #12481
M=D
// #12482
@SP
// #12483
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 63
//^^ push_constant(63)
// #12484
@63
// #12485
D=A
//^^ push_d_to_stack
// #12486
@SP
// #12487
A=M
// #12488
M=D
// #12489
@SP
// #12490
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 51
//^^ push_constant(51)
// #12491
@51
// #12492
D=A
//^^ push_d_to_stack
// #12493
@SP
// #12494
A=M
// #12495
M=D
// #12496
@SP
// #12497
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #12498
@51
// #12499
D=A
//^^ push_d_to_stack
// #12500
@SP
// #12501
A=M
// #12502
M=D
// #12503
@SP
// #12504
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #12505
@51
// #12506
D=A
//^^ push_d_to_stack
// #12507
@SP
// #12508
A=M
// #12509
M=D
// #12510
@SP
// #12511
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #12512
@51
// #12513
D=A
//^^ push_d_to_stack
// #12514
@SP
// #12515
A=M
// #12516
M=D
// #12517
@SP
// #12518
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 0
//^^ push_constant(0)
// #12519
@0
// #12520
D=A
//^^ push_d_to_stack
// #12521
@SP
// #12522
A=M
// #12523
M=D
// #12524
@SP
// #12525
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #12526
@0
// #12527
D=A
//^^ push_d_to_stack
// #12528
@SP
// #12529
A=M
// #12530
M=D
// #12531
@SP
// #12532
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_109)
// #12533
@RET_ADDR_109
// #12534
D=A
//^^ push_d_to_stack
// #12535
@SP
// #12536
A=M
// #12537
M=D
// #12538
@SP
// #12539
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_109)
//push return-address
// #12540
@LCL
// #12541
D=M
//^^ push_d_to_stack
// #12542
@SP
// #12543
A=M
// #12544
M=D
// #12545
@SP
// #12546
M=M+1
//vv push_d_to_stack
//push LCL
// #12547
@ARG
// #12548
D=M
//^^ push_d_to_stack
// #12549
@SP
// #12550
A=M
// #12551
M=D
// #12552
@SP
// #12553
M=M+1
//vv push_d_to_stack
//push ARG
// #12554
@THIS
// #12555
D=M
//^^ push_d_to_stack
// #12556
@SP
// #12557
A=M
// #12558
M=D
// #12559
@SP
// #12560
M=M+1
//vv push_d_to_stack
//push THIS
// #12561
@THAT
// #12562
D=M
//^^ push_d_to_stack
// #12563
@SP
// #12564
A=M
// #12565
M=D
// #12566
@SP
// #12567
M=M+1
//vv push_d_to_stack
//push THAT
// #12568
@SP
// #12569
D=M
// #12570
@ARG
// #12571
M=D
// #12572
@17
// #12573
D=A
// #12574
@ARG
// #12575
M=M-D // ARG = SP - args - 5
// #12576
@SP
// #12577
D=M
// #12578
@LCL
// #12579
M=D // LCL = SP
// #12580
@Output.create
// #12581
0;JMP
(RET_ADDR_109)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #12582
@SP
// #12583
M=M-1
// #12584
A=M
// #12585
D=M
//vv pop_stack_to_d
// #12586
@5
// #12587
M=D
//vv pop_to_loc{5)
//
//// push constant 66
//^^ push_constant(66)
// #12588
@66
// #12589
D=A
//^^ push_d_to_stack
// #12590
@SP
// #12591
A=M
// #12592
M=D
// #12593
@SP
// #12594
M=M+1
//vv push_d_to_stack
//vv push_constant(66)
//
//// push constant 31
//^^ push_constant(31)
// #12595
@31
// #12596
D=A
//^^ push_d_to_stack
// #12597
@SP
// #12598
A=M
// #12599
M=D
// #12600
@SP
// #12601
M=M+1
//vv push_d_to_stack
//vv push_constant(31)
//
//// push constant 51
//^^ push_constant(51)
// #12602
@51
// #12603
D=A
//^^ push_d_to_stack
// #12604
@SP
// #12605
A=M
// #12606
M=D
// #12607
@SP
// #12608
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #12609
@51
// #12610
D=A
//^^ push_d_to_stack
// #12611
@SP
// #12612
A=M
// #12613
M=D
// #12614
@SP
// #12615
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #12616
@51
// #12617
D=A
//^^ push_d_to_stack
// #12618
@SP
// #12619
A=M
// #12620
M=D
// #12621
@SP
// #12622
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 31
//^^ push_constant(31)
// #12623
@31
// #12624
D=A
//^^ push_d_to_stack
// #12625
@SP
// #12626
A=M
// #12627
M=D
// #12628
@SP
// #12629
M=M+1
//vv push_d_to_stack
//vv push_constant(31)
//
//// push constant 51
//^^ push_constant(51)
// #12630
@51
// #12631
D=A
//^^ push_d_to_stack
// #12632
@SP
// #12633
A=M
// #12634
M=D
// #12635
@SP
// #12636
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #12637
@51
// #12638
D=A
//^^ push_d_to_stack
// #12639
@SP
// #12640
A=M
// #12641
M=D
// #12642
@SP
// #12643
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #12644
@51
// #12645
D=A
//^^ push_d_to_stack
// #12646
@SP
// #12647
A=M
// #12648
M=D
// #12649
@SP
// #12650
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 31
//^^ push_constant(31)
// #12651
@31
// #12652
D=A
//^^ push_d_to_stack
// #12653
@SP
// #12654
A=M
// #12655
M=D
// #12656
@SP
// #12657
M=M+1
//vv push_d_to_stack
//vv push_constant(31)
//
//// push constant 0
//^^ push_constant(0)
// #12658
@0
// #12659
D=A
//^^ push_d_to_stack
// #12660
@SP
// #12661
A=M
// #12662
M=D
// #12663
@SP
// #12664
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #12665
@0
// #12666
D=A
//^^ push_d_to_stack
// #12667
@SP
// #12668
A=M
// #12669
M=D
// #12670
@SP
// #12671
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_110)
// #12672
@RET_ADDR_110
// #12673
D=A
//^^ push_d_to_stack
// #12674
@SP
// #12675
A=M
// #12676
M=D
// #12677
@SP
// #12678
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_110)
//push return-address
// #12679
@LCL
// #12680
D=M
//^^ push_d_to_stack
// #12681
@SP
// #12682
A=M
// #12683
M=D
// #12684
@SP
// #12685
M=M+1
//vv push_d_to_stack
//push LCL
// #12686
@ARG
// #12687
D=M
//^^ push_d_to_stack
// #12688
@SP
// #12689
A=M
// #12690
M=D
// #12691
@SP
// #12692
M=M+1
//vv push_d_to_stack
//push ARG
// #12693
@THIS
// #12694
D=M
//^^ push_d_to_stack
// #12695
@SP
// #12696
A=M
// #12697
M=D
// #12698
@SP
// #12699
M=M+1
//vv push_d_to_stack
//push THIS
// #12700
@THAT
// #12701
D=M
//^^ push_d_to_stack
// #12702
@SP
// #12703
A=M
// #12704
M=D
// #12705
@SP
// #12706
M=M+1
//vv push_d_to_stack
//push THAT
// #12707
@SP
// #12708
D=M
// #12709
@ARG
// #12710
M=D
// #12711
@17
// #12712
D=A
// #12713
@ARG
// #12714
M=M-D // ARG = SP - args - 5
// #12715
@SP
// #12716
D=M
// #12717
@LCL
// #12718
M=D // LCL = SP
// #12719
@Output.create
// #12720
0;JMP
(RET_ADDR_110)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #12721
@SP
// #12722
M=M-1
// #12723
A=M
// #12724
D=M
//vv pop_stack_to_d
// #12725
@5
// #12726
M=D
//vv pop_to_loc{5)
//
//// push constant 67
//^^ push_constant(67)
// #12727
@67
// #12728
D=A
//^^ push_d_to_stack
// #12729
@SP
// #12730
A=M
// #12731
M=D
// #12732
@SP
// #12733
M=M+1
//vv push_d_to_stack
//vv push_constant(67)
//
//// push constant 28
//^^ push_constant(28)
// #12734
@28
// #12735
D=A
//^^ push_d_to_stack
// #12736
@SP
// #12737
A=M
// #12738
M=D
// #12739
@SP
// #12740
M=M+1
//vv push_d_to_stack
//vv push_constant(28)
//
//// push constant 54
//^^ push_constant(54)
// #12741
@54
// #12742
D=A
//^^ push_d_to_stack
// #12743
@SP
// #12744
A=M
// #12745
M=D
// #12746
@SP
// #12747
M=M+1
//vv push_d_to_stack
//vv push_constant(54)
//
//// push constant 35
//^^ push_constant(35)
// #12748
@35
// #12749
D=A
//^^ push_d_to_stack
// #12750
@SP
// #12751
A=M
// #12752
M=D
// #12753
@SP
// #12754
M=M+1
//vv push_d_to_stack
//vv push_constant(35)
//
//// push constant 3
//^^ push_constant(3)
// #12755
@3
// #12756
D=A
//^^ push_d_to_stack
// #12757
@SP
// #12758
A=M
// #12759
M=D
// #12760
@SP
// #12761
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 3
//^^ push_constant(3)
// #12762
@3
// #12763
D=A
//^^ push_d_to_stack
// #12764
@SP
// #12765
A=M
// #12766
M=D
// #12767
@SP
// #12768
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 3
//^^ push_constant(3)
// #12769
@3
// #12770
D=A
//^^ push_d_to_stack
// #12771
@SP
// #12772
A=M
// #12773
M=D
// #12774
@SP
// #12775
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 35
//^^ push_constant(35)
// #12776
@35
// #12777
D=A
//^^ push_d_to_stack
// #12778
@SP
// #12779
A=M
// #12780
M=D
// #12781
@SP
// #12782
M=M+1
//vv push_d_to_stack
//vv push_constant(35)
//
//// push constant 54
//^^ push_constant(54)
// #12783
@54
// #12784
D=A
//^^ push_d_to_stack
// #12785
@SP
// #12786
A=M
// #12787
M=D
// #12788
@SP
// #12789
M=M+1
//vv push_d_to_stack
//vv push_constant(54)
//
//// push constant 28
//^^ push_constant(28)
// #12790
@28
// #12791
D=A
//^^ push_d_to_stack
// #12792
@SP
// #12793
A=M
// #12794
M=D
// #12795
@SP
// #12796
M=M+1
//vv push_d_to_stack
//vv push_constant(28)
//
//// push constant 0
//^^ push_constant(0)
// #12797
@0
// #12798
D=A
//^^ push_d_to_stack
// #12799
@SP
// #12800
A=M
// #12801
M=D
// #12802
@SP
// #12803
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #12804
@0
// #12805
D=A
//^^ push_d_to_stack
// #12806
@SP
// #12807
A=M
// #12808
M=D
// #12809
@SP
// #12810
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_111)
// #12811
@RET_ADDR_111
// #12812
D=A
//^^ push_d_to_stack
// #12813
@SP
// #12814
A=M
// #12815
M=D
// #12816
@SP
// #12817
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_111)
//push return-address
// #12818
@LCL
// #12819
D=M
//^^ push_d_to_stack
// #12820
@SP
// #12821
A=M
// #12822
M=D
// #12823
@SP
// #12824
M=M+1
//vv push_d_to_stack
//push LCL
// #12825
@ARG
// #12826
D=M
//^^ push_d_to_stack
// #12827
@SP
// #12828
A=M
// #12829
M=D
// #12830
@SP
// #12831
M=M+1
//vv push_d_to_stack
//push ARG
// #12832
@THIS
// #12833
D=M
//^^ push_d_to_stack
// #12834
@SP
// #12835
A=M
// #12836
M=D
// #12837
@SP
// #12838
M=M+1
//vv push_d_to_stack
//push THIS
// #12839
@THAT
// #12840
D=M
//^^ push_d_to_stack
// #12841
@SP
// #12842
A=M
// #12843
M=D
// #12844
@SP
// #12845
M=M+1
//vv push_d_to_stack
//push THAT
// #12846
@SP
// #12847
D=M
// #12848
@ARG
// #12849
M=D
// #12850
@17
// #12851
D=A
// #12852
@ARG
// #12853
M=M-D // ARG = SP - args - 5
// #12854
@SP
// #12855
D=M
// #12856
@LCL
// #12857
M=D // LCL = SP
// #12858
@Output.create
// #12859
0;JMP
(RET_ADDR_111)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #12860
@SP
// #12861
M=M-1
// #12862
A=M
// #12863
D=M
//vv pop_stack_to_d
// #12864
@5
// #12865
M=D
//vv pop_to_loc{5)
//
//// push constant 68
//^^ push_constant(68)
// #12866
@68
// #12867
D=A
//^^ push_d_to_stack
// #12868
@SP
// #12869
A=M
// #12870
M=D
// #12871
@SP
// #12872
M=M+1
//vv push_d_to_stack
//vv push_constant(68)
//
//// push constant 15
//^^ push_constant(15)
// #12873
@15
// #12874
D=A
//^^ push_d_to_stack
// #12875
@SP
// #12876
A=M
// #12877
M=D
// #12878
@SP
// #12879
M=M+1
//vv push_d_to_stack
//vv push_constant(15)
//
//// push constant 27
//^^ push_constant(27)
// #12880
@27
// #12881
D=A
//^^ push_d_to_stack
// #12882
@SP
// #12883
A=M
// #12884
M=D
// #12885
@SP
// #12886
M=M+1
//vv push_d_to_stack
//vv push_constant(27)
//
//// push constant 51
//^^ push_constant(51)
// #12887
@51
// #12888
D=A
//^^ push_d_to_stack
// #12889
@SP
// #12890
A=M
// #12891
M=D
// #12892
@SP
// #12893
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #12894
@51
// #12895
D=A
//^^ push_d_to_stack
// #12896
@SP
// #12897
A=M
// #12898
M=D
// #12899
@SP
// #12900
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #12901
@51
// #12902
D=A
//^^ push_d_to_stack
// #12903
@SP
// #12904
A=M
// #12905
M=D
// #12906
@SP
// #12907
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #12908
@51
// #12909
D=A
//^^ push_d_to_stack
// #12910
@SP
// #12911
A=M
// #12912
M=D
// #12913
@SP
// #12914
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #12915
@51
// #12916
D=A
//^^ push_d_to_stack
// #12917
@SP
// #12918
A=M
// #12919
M=D
// #12920
@SP
// #12921
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 27
//^^ push_constant(27)
// #12922
@27
// #12923
D=A
//^^ push_d_to_stack
// #12924
@SP
// #12925
A=M
// #12926
M=D
// #12927
@SP
// #12928
M=M+1
//vv push_d_to_stack
//vv push_constant(27)
//
//// push constant 15
//^^ push_constant(15)
// #12929
@15
// #12930
D=A
//^^ push_d_to_stack
// #12931
@SP
// #12932
A=M
// #12933
M=D
// #12934
@SP
// #12935
M=M+1
//vv push_d_to_stack
//vv push_constant(15)
//
//// push constant 0
//^^ push_constant(0)
// #12936
@0
// #12937
D=A
//^^ push_d_to_stack
// #12938
@SP
// #12939
A=M
// #12940
M=D
// #12941
@SP
// #12942
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #12943
@0
// #12944
D=A
//^^ push_d_to_stack
// #12945
@SP
// #12946
A=M
// #12947
M=D
// #12948
@SP
// #12949
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_112)
// #12950
@RET_ADDR_112
// #12951
D=A
//^^ push_d_to_stack
// #12952
@SP
// #12953
A=M
// #12954
M=D
// #12955
@SP
// #12956
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_112)
//push return-address
// #12957
@LCL
// #12958
D=M
//^^ push_d_to_stack
// #12959
@SP
// #12960
A=M
// #12961
M=D
// #12962
@SP
// #12963
M=M+1
//vv push_d_to_stack
//push LCL
// #12964
@ARG
// #12965
D=M
//^^ push_d_to_stack
// #12966
@SP
// #12967
A=M
// #12968
M=D
// #12969
@SP
// #12970
M=M+1
//vv push_d_to_stack
//push ARG
// #12971
@THIS
// #12972
D=M
//^^ push_d_to_stack
// #12973
@SP
// #12974
A=M
// #12975
M=D
// #12976
@SP
// #12977
M=M+1
//vv push_d_to_stack
//push THIS
// #12978
@THAT
// #12979
D=M
//^^ push_d_to_stack
// #12980
@SP
// #12981
A=M
// #12982
M=D
// #12983
@SP
// #12984
M=M+1
//vv push_d_to_stack
//push THAT
// #12985
@SP
// #12986
D=M
// #12987
@ARG
// #12988
M=D
// #12989
@17
// #12990
D=A
// #12991
@ARG
// #12992
M=M-D // ARG = SP - args - 5
// #12993
@SP
// #12994
D=M
// #12995
@LCL
// #12996
M=D // LCL = SP
// #12997
@Output.create
// #12998
0;JMP
(RET_ADDR_112)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #12999
@SP
// #13000
M=M-1
// #13001
A=M
// #13002
D=M
//vv pop_stack_to_d
// #13003
@5
// #13004
M=D
//vv pop_to_loc{5)
//
//// push constant 69
//^^ push_constant(69)
// #13005
@69
// #13006
D=A
//^^ push_d_to_stack
// #13007
@SP
// #13008
A=M
// #13009
M=D
// #13010
@SP
// #13011
M=M+1
//vv push_d_to_stack
//vv push_constant(69)
//
//// push constant 63
//^^ push_constant(63)
// #13012
@63
// #13013
D=A
//^^ push_d_to_stack
// #13014
@SP
// #13015
A=M
// #13016
M=D
// #13017
@SP
// #13018
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 51
//^^ push_constant(51)
// #13019
@51
// #13020
D=A
//^^ push_d_to_stack
// #13021
@SP
// #13022
A=M
// #13023
M=D
// #13024
@SP
// #13025
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 35
//^^ push_constant(35)
// #13026
@35
// #13027
D=A
//^^ push_d_to_stack
// #13028
@SP
// #13029
A=M
// #13030
M=D
// #13031
@SP
// #13032
M=M+1
//vv push_d_to_stack
//vv push_constant(35)
//
//// push constant 11
//^^ push_constant(11)
// #13033
@11
// #13034
D=A
//^^ push_d_to_stack
// #13035
@SP
// #13036
A=M
// #13037
M=D
// #13038
@SP
// #13039
M=M+1
//vv push_d_to_stack
//vv push_constant(11)
//
//// push constant 15
//^^ push_constant(15)
// #13040
@15
// #13041
D=A
//^^ push_d_to_stack
// #13042
@SP
// #13043
A=M
// #13044
M=D
// #13045
@SP
// #13046
M=M+1
//vv push_d_to_stack
//vv push_constant(15)
//
//// push constant 11
//^^ push_constant(11)
// #13047
@11
// #13048
D=A
//^^ push_d_to_stack
// #13049
@SP
// #13050
A=M
// #13051
M=D
// #13052
@SP
// #13053
M=M+1
//vv push_d_to_stack
//vv push_constant(11)
//
//// push constant 35
//^^ push_constant(35)
// #13054
@35
// #13055
D=A
//^^ push_d_to_stack
// #13056
@SP
// #13057
A=M
// #13058
M=D
// #13059
@SP
// #13060
M=M+1
//vv push_d_to_stack
//vv push_constant(35)
//
//// push constant 51
//^^ push_constant(51)
// #13061
@51
// #13062
D=A
//^^ push_d_to_stack
// #13063
@SP
// #13064
A=M
// #13065
M=D
// #13066
@SP
// #13067
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 63
//^^ push_constant(63)
// #13068
@63
// #13069
D=A
//^^ push_d_to_stack
// #13070
@SP
// #13071
A=M
// #13072
M=D
// #13073
@SP
// #13074
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 0
//^^ push_constant(0)
// #13075
@0
// #13076
D=A
//^^ push_d_to_stack
// #13077
@SP
// #13078
A=M
// #13079
M=D
// #13080
@SP
// #13081
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #13082
@0
// #13083
D=A
//^^ push_d_to_stack
// #13084
@SP
// #13085
A=M
// #13086
M=D
// #13087
@SP
// #13088
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_113)
// #13089
@RET_ADDR_113
// #13090
D=A
//^^ push_d_to_stack
// #13091
@SP
// #13092
A=M
// #13093
M=D
// #13094
@SP
// #13095
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_113)
//push return-address
// #13096
@LCL
// #13097
D=M
//^^ push_d_to_stack
// #13098
@SP
// #13099
A=M
// #13100
M=D
// #13101
@SP
// #13102
M=M+1
//vv push_d_to_stack
//push LCL
// #13103
@ARG
// #13104
D=M
//^^ push_d_to_stack
// #13105
@SP
// #13106
A=M
// #13107
M=D
// #13108
@SP
// #13109
M=M+1
//vv push_d_to_stack
//push ARG
// #13110
@THIS
// #13111
D=M
//^^ push_d_to_stack
// #13112
@SP
// #13113
A=M
// #13114
M=D
// #13115
@SP
// #13116
M=M+1
//vv push_d_to_stack
//push THIS
// #13117
@THAT
// #13118
D=M
//^^ push_d_to_stack
// #13119
@SP
// #13120
A=M
// #13121
M=D
// #13122
@SP
// #13123
M=M+1
//vv push_d_to_stack
//push THAT
// #13124
@SP
// #13125
D=M
// #13126
@ARG
// #13127
M=D
// #13128
@17
// #13129
D=A
// #13130
@ARG
// #13131
M=M-D // ARG = SP - args - 5
// #13132
@SP
// #13133
D=M
// #13134
@LCL
// #13135
M=D // LCL = SP
// #13136
@Output.create
// #13137
0;JMP
(RET_ADDR_113)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #13138
@SP
// #13139
M=M-1
// #13140
A=M
// #13141
D=M
//vv pop_stack_to_d
// #13142
@5
// #13143
M=D
//vv pop_to_loc{5)
//
//// push constant 70
//^^ push_constant(70)
// #13144
@70
// #13145
D=A
//^^ push_d_to_stack
// #13146
@SP
// #13147
A=M
// #13148
M=D
// #13149
@SP
// #13150
M=M+1
//vv push_d_to_stack
//vv push_constant(70)
//
//// push constant 63
//^^ push_constant(63)
// #13151
@63
// #13152
D=A
//^^ push_d_to_stack
// #13153
@SP
// #13154
A=M
// #13155
M=D
// #13156
@SP
// #13157
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 51
//^^ push_constant(51)
// #13158
@51
// #13159
D=A
//^^ push_d_to_stack
// #13160
@SP
// #13161
A=M
// #13162
M=D
// #13163
@SP
// #13164
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 35
//^^ push_constant(35)
// #13165
@35
// #13166
D=A
//^^ push_d_to_stack
// #13167
@SP
// #13168
A=M
// #13169
M=D
// #13170
@SP
// #13171
M=M+1
//vv push_d_to_stack
//vv push_constant(35)
//
//// push constant 11
//^^ push_constant(11)
// #13172
@11
// #13173
D=A
//^^ push_d_to_stack
// #13174
@SP
// #13175
A=M
// #13176
M=D
// #13177
@SP
// #13178
M=M+1
//vv push_d_to_stack
//vv push_constant(11)
//
//// push constant 15
//^^ push_constant(15)
// #13179
@15
// #13180
D=A
//^^ push_d_to_stack
// #13181
@SP
// #13182
A=M
// #13183
M=D
// #13184
@SP
// #13185
M=M+1
//vv push_d_to_stack
//vv push_constant(15)
//
//// push constant 11
//^^ push_constant(11)
// #13186
@11
// #13187
D=A
//^^ push_d_to_stack
// #13188
@SP
// #13189
A=M
// #13190
M=D
// #13191
@SP
// #13192
M=M+1
//vv push_d_to_stack
//vv push_constant(11)
//
//// push constant 3
//^^ push_constant(3)
// #13193
@3
// #13194
D=A
//^^ push_d_to_stack
// #13195
@SP
// #13196
A=M
// #13197
M=D
// #13198
@SP
// #13199
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 3
//^^ push_constant(3)
// #13200
@3
// #13201
D=A
//^^ push_d_to_stack
// #13202
@SP
// #13203
A=M
// #13204
M=D
// #13205
@SP
// #13206
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 3
//^^ push_constant(3)
// #13207
@3
// #13208
D=A
//^^ push_d_to_stack
// #13209
@SP
// #13210
A=M
// #13211
M=D
// #13212
@SP
// #13213
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 0
//^^ push_constant(0)
// #13214
@0
// #13215
D=A
//^^ push_d_to_stack
// #13216
@SP
// #13217
A=M
// #13218
M=D
// #13219
@SP
// #13220
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #13221
@0
// #13222
D=A
//^^ push_d_to_stack
// #13223
@SP
// #13224
A=M
// #13225
M=D
// #13226
@SP
// #13227
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_114)
// #13228
@RET_ADDR_114
// #13229
D=A
//^^ push_d_to_stack
// #13230
@SP
// #13231
A=M
// #13232
M=D
// #13233
@SP
// #13234
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_114)
//push return-address
// #13235
@LCL
// #13236
D=M
//^^ push_d_to_stack
// #13237
@SP
// #13238
A=M
// #13239
M=D
// #13240
@SP
// #13241
M=M+1
//vv push_d_to_stack
//push LCL
// #13242
@ARG
// #13243
D=M
//^^ push_d_to_stack
// #13244
@SP
// #13245
A=M
// #13246
M=D
// #13247
@SP
// #13248
M=M+1
//vv push_d_to_stack
//push ARG
// #13249
@THIS
// #13250
D=M
//^^ push_d_to_stack
// #13251
@SP
// #13252
A=M
// #13253
M=D
// #13254
@SP
// #13255
M=M+1
//vv push_d_to_stack
//push THIS
// #13256
@THAT
// #13257
D=M
//^^ push_d_to_stack
// #13258
@SP
// #13259
A=M
// #13260
M=D
// #13261
@SP
// #13262
M=M+1
//vv push_d_to_stack
//push THAT
// #13263
@SP
// #13264
D=M
// #13265
@ARG
// #13266
M=D
// #13267
@17
// #13268
D=A
// #13269
@ARG
// #13270
M=M-D // ARG = SP - args - 5
// #13271
@SP
// #13272
D=M
// #13273
@LCL
// #13274
M=D // LCL = SP
// #13275
@Output.create
// #13276
0;JMP
(RET_ADDR_114)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #13277
@SP
// #13278
M=M-1
// #13279
A=M
// #13280
D=M
//vv pop_stack_to_d
// #13281
@5
// #13282
M=D
//vv pop_to_loc{5)
//
//// push constant 71
//^^ push_constant(71)
// #13283
@71
// #13284
D=A
//^^ push_d_to_stack
// #13285
@SP
// #13286
A=M
// #13287
M=D
// #13288
@SP
// #13289
M=M+1
//vv push_d_to_stack
//vv push_constant(71)
//
//// push constant 28
//^^ push_constant(28)
// #13290
@28
// #13291
D=A
//^^ push_d_to_stack
// #13292
@SP
// #13293
A=M
// #13294
M=D
// #13295
@SP
// #13296
M=M+1
//vv push_d_to_stack
//vv push_constant(28)
//
//// push constant 54
//^^ push_constant(54)
// #13297
@54
// #13298
D=A
//^^ push_d_to_stack
// #13299
@SP
// #13300
A=M
// #13301
M=D
// #13302
@SP
// #13303
M=M+1
//vv push_d_to_stack
//vv push_constant(54)
//
//// push constant 35
//^^ push_constant(35)
// #13304
@35
// #13305
D=A
//^^ push_d_to_stack
// #13306
@SP
// #13307
A=M
// #13308
M=D
// #13309
@SP
// #13310
M=M+1
//vv push_d_to_stack
//vv push_constant(35)
//
//// push constant 3
//^^ push_constant(3)
// #13311
@3
// #13312
D=A
//^^ push_d_to_stack
// #13313
@SP
// #13314
A=M
// #13315
M=D
// #13316
@SP
// #13317
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 59
//^^ push_constant(59)
// #13318
@59
// #13319
D=A
//^^ push_d_to_stack
// #13320
@SP
// #13321
A=M
// #13322
M=D
// #13323
@SP
// #13324
M=M+1
//vv push_d_to_stack
//vv push_constant(59)
//
//// push constant 51
//^^ push_constant(51)
// #13325
@51
// #13326
D=A
//^^ push_d_to_stack
// #13327
@SP
// #13328
A=M
// #13329
M=D
// #13330
@SP
// #13331
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #13332
@51
// #13333
D=A
//^^ push_d_to_stack
// #13334
@SP
// #13335
A=M
// #13336
M=D
// #13337
@SP
// #13338
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 54
//^^ push_constant(54)
// #13339
@54
// #13340
D=A
//^^ push_d_to_stack
// #13341
@SP
// #13342
A=M
// #13343
M=D
// #13344
@SP
// #13345
M=M+1
//vv push_d_to_stack
//vv push_constant(54)
//
//// push constant 44
//^^ push_constant(44)
// #13346
@44
// #13347
D=A
//^^ push_d_to_stack
// #13348
@SP
// #13349
A=M
// #13350
M=D
// #13351
@SP
// #13352
M=M+1
//vv push_d_to_stack
//vv push_constant(44)
//
//// push constant 0
//^^ push_constant(0)
// #13353
@0
// #13354
D=A
//^^ push_d_to_stack
// #13355
@SP
// #13356
A=M
// #13357
M=D
// #13358
@SP
// #13359
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #13360
@0
// #13361
D=A
//^^ push_d_to_stack
// #13362
@SP
// #13363
A=M
// #13364
M=D
// #13365
@SP
// #13366
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_115)
// #13367
@RET_ADDR_115
// #13368
D=A
//^^ push_d_to_stack
// #13369
@SP
// #13370
A=M
// #13371
M=D
// #13372
@SP
// #13373
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_115)
//push return-address
// #13374
@LCL
// #13375
D=M
//^^ push_d_to_stack
// #13376
@SP
// #13377
A=M
// #13378
M=D
// #13379
@SP
// #13380
M=M+1
//vv push_d_to_stack
//push LCL
// #13381
@ARG
// #13382
D=M
//^^ push_d_to_stack
// #13383
@SP
// #13384
A=M
// #13385
M=D
// #13386
@SP
// #13387
M=M+1
//vv push_d_to_stack
//push ARG
// #13388
@THIS
// #13389
D=M
//^^ push_d_to_stack
// #13390
@SP
// #13391
A=M
// #13392
M=D
// #13393
@SP
// #13394
M=M+1
//vv push_d_to_stack
//push THIS
// #13395
@THAT
// #13396
D=M
//^^ push_d_to_stack
// #13397
@SP
// #13398
A=M
// #13399
M=D
// #13400
@SP
// #13401
M=M+1
//vv push_d_to_stack
//push THAT
// #13402
@SP
// #13403
D=M
// #13404
@ARG
// #13405
M=D
// #13406
@17
// #13407
D=A
// #13408
@ARG
// #13409
M=M-D // ARG = SP - args - 5
// #13410
@SP
// #13411
D=M
// #13412
@LCL
// #13413
M=D // LCL = SP
// #13414
@Output.create
// #13415
0;JMP
(RET_ADDR_115)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #13416
@SP
// #13417
M=M-1
// #13418
A=M
// #13419
D=M
//vv pop_stack_to_d
// #13420
@5
// #13421
M=D
//vv pop_to_loc{5)
//
//// push constant 72
//^^ push_constant(72)
// #13422
@72
// #13423
D=A
//^^ push_d_to_stack
// #13424
@SP
// #13425
A=M
// #13426
M=D
// #13427
@SP
// #13428
M=M+1
//vv push_d_to_stack
//vv push_constant(72)
//
//// push constant 51
//^^ push_constant(51)
// #13429
@51
// #13430
D=A
//^^ push_d_to_stack
// #13431
@SP
// #13432
A=M
// #13433
M=D
// #13434
@SP
// #13435
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #13436
@51
// #13437
D=A
//^^ push_d_to_stack
// #13438
@SP
// #13439
A=M
// #13440
M=D
// #13441
@SP
// #13442
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #13443
@51
// #13444
D=A
//^^ push_d_to_stack
// #13445
@SP
// #13446
A=M
// #13447
M=D
// #13448
@SP
// #13449
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #13450
@51
// #13451
D=A
//^^ push_d_to_stack
// #13452
@SP
// #13453
A=M
// #13454
M=D
// #13455
@SP
// #13456
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 63
//^^ push_constant(63)
// #13457
@63
// #13458
D=A
//^^ push_d_to_stack
// #13459
@SP
// #13460
A=M
// #13461
M=D
// #13462
@SP
// #13463
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 51
//^^ push_constant(51)
// #13464
@51
// #13465
D=A
//^^ push_d_to_stack
// #13466
@SP
// #13467
A=M
// #13468
M=D
// #13469
@SP
// #13470
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #13471
@51
// #13472
D=A
//^^ push_d_to_stack
// #13473
@SP
// #13474
A=M
// #13475
M=D
// #13476
@SP
// #13477
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #13478
@51
// #13479
D=A
//^^ push_d_to_stack
// #13480
@SP
// #13481
A=M
// #13482
M=D
// #13483
@SP
// #13484
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #13485
@51
// #13486
D=A
//^^ push_d_to_stack
// #13487
@SP
// #13488
A=M
// #13489
M=D
// #13490
@SP
// #13491
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 0
//^^ push_constant(0)
// #13492
@0
// #13493
D=A
//^^ push_d_to_stack
// #13494
@SP
// #13495
A=M
// #13496
M=D
// #13497
@SP
// #13498
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #13499
@0
// #13500
D=A
//^^ push_d_to_stack
// #13501
@SP
// #13502
A=M
// #13503
M=D
// #13504
@SP
// #13505
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_116)
// #13506
@RET_ADDR_116
// #13507
D=A
//^^ push_d_to_stack
// #13508
@SP
// #13509
A=M
// #13510
M=D
// #13511
@SP
// #13512
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_116)
//push return-address
// #13513
@LCL
// #13514
D=M
//^^ push_d_to_stack
// #13515
@SP
// #13516
A=M
// #13517
M=D
// #13518
@SP
// #13519
M=M+1
//vv push_d_to_stack
//push LCL
// #13520
@ARG
// #13521
D=M
//^^ push_d_to_stack
// #13522
@SP
// #13523
A=M
// #13524
M=D
// #13525
@SP
// #13526
M=M+1
//vv push_d_to_stack
//push ARG
// #13527
@THIS
// #13528
D=M
//^^ push_d_to_stack
// #13529
@SP
// #13530
A=M
// #13531
M=D
// #13532
@SP
// #13533
M=M+1
//vv push_d_to_stack
//push THIS
// #13534
@THAT
// #13535
D=M
//^^ push_d_to_stack
// #13536
@SP
// #13537
A=M
// #13538
M=D
// #13539
@SP
// #13540
M=M+1
//vv push_d_to_stack
//push THAT
// #13541
@SP
// #13542
D=M
// #13543
@ARG
// #13544
M=D
// #13545
@17
// #13546
D=A
// #13547
@ARG
// #13548
M=M-D // ARG = SP - args - 5
// #13549
@SP
// #13550
D=M
// #13551
@LCL
// #13552
M=D // LCL = SP
// #13553
@Output.create
// #13554
0;JMP
(RET_ADDR_116)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #13555
@SP
// #13556
M=M-1
// #13557
A=M
// #13558
D=M
//vv pop_stack_to_d
// #13559
@5
// #13560
M=D
//vv pop_to_loc{5)
//
//// push constant 73
//^^ push_constant(73)
// #13561
@73
// #13562
D=A
//^^ push_d_to_stack
// #13563
@SP
// #13564
A=M
// #13565
M=D
// #13566
@SP
// #13567
M=M+1
//vv push_d_to_stack
//vv push_constant(73)
//
//// push constant 30
//^^ push_constant(30)
// #13568
@30
// #13569
D=A
//^^ push_d_to_stack
// #13570
@SP
// #13571
A=M
// #13572
M=D
// #13573
@SP
// #13574
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 12
//^^ push_constant(12)
// #13575
@12
// #13576
D=A
//^^ push_d_to_stack
// #13577
@SP
// #13578
A=M
// #13579
M=D
// #13580
@SP
// #13581
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #13582
@12
// #13583
D=A
//^^ push_d_to_stack
// #13584
@SP
// #13585
A=M
// #13586
M=D
// #13587
@SP
// #13588
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #13589
@12
// #13590
D=A
//^^ push_d_to_stack
// #13591
@SP
// #13592
A=M
// #13593
M=D
// #13594
@SP
// #13595
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #13596
@12
// #13597
D=A
//^^ push_d_to_stack
// #13598
@SP
// #13599
A=M
// #13600
M=D
// #13601
@SP
// #13602
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #13603
@12
// #13604
D=A
//^^ push_d_to_stack
// #13605
@SP
// #13606
A=M
// #13607
M=D
// #13608
@SP
// #13609
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #13610
@12
// #13611
D=A
//^^ push_d_to_stack
// #13612
@SP
// #13613
A=M
// #13614
M=D
// #13615
@SP
// #13616
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #13617
@12
// #13618
D=A
//^^ push_d_to_stack
// #13619
@SP
// #13620
A=M
// #13621
M=D
// #13622
@SP
// #13623
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 30
//^^ push_constant(30)
// #13624
@30
// #13625
D=A
//^^ push_d_to_stack
// #13626
@SP
// #13627
A=M
// #13628
M=D
// #13629
@SP
// #13630
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 0
//^^ push_constant(0)
// #13631
@0
// #13632
D=A
//^^ push_d_to_stack
// #13633
@SP
// #13634
A=M
// #13635
M=D
// #13636
@SP
// #13637
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #13638
@0
// #13639
D=A
//^^ push_d_to_stack
// #13640
@SP
// #13641
A=M
// #13642
M=D
// #13643
@SP
// #13644
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_117)
// #13645
@RET_ADDR_117
// #13646
D=A
//^^ push_d_to_stack
// #13647
@SP
// #13648
A=M
// #13649
M=D
// #13650
@SP
// #13651
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_117)
//push return-address
// #13652
@LCL
// #13653
D=M
//^^ push_d_to_stack
// #13654
@SP
// #13655
A=M
// #13656
M=D
// #13657
@SP
// #13658
M=M+1
//vv push_d_to_stack
//push LCL
// #13659
@ARG
// #13660
D=M
//^^ push_d_to_stack
// #13661
@SP
// #13662
A=M
// #13663
M=D
// #13664
@SP
// #13665
M=M+1
//vv push_d_to_stack
//push ARG
// #13666
@THIS
// #13667
D=M
//^^ push_d_to_stack
// #13668
@SP
// #13669
A=M
// #13670
M=D
// #13671
@SP
// #13672
M=M+1
//vv push_d_to_stack
//push THIS
// #13673
@THAT
// #13674
D=M
//^^ push_d_to_stack
// #13675
@SP
// #13676
A=M
// #13677
M=D
// #13678
@SP
// #13679
M=M+1
//vv push_d_to_stack
//push THAT
// #13680
@SP
// #13681
D=M
// #13682
@ARG
// #13683
M=D
// #13684
@17
// #13685
D=A
// #13686
@ARG
// #13687
M=M-D // ARG = SP - args - 5
// #13688
@SP
// #13689
D=M
// #13690
@LCL
// #13691
M=D // LCL = SP
// #13692
@Output.create
// #13693
0;JMP
(RET_ADDR_117)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #13694
@SP
// #13695
M=M-1
// #13696
A=M
// #13697
D=M
//vv pop_stack_to_d
// #13698
@5
// #13699
M=D
//vv pop_to_loc{5)
//
//// push constant 74
//^^ push_constant(74)
// #13700
@74
// #13701
D=A
//^^ push_d_to_stack
// #13702
@SP
// #13703
A=M
// #13704
M=D
// #13705
@SP
// #13706
M=M+1
//vv push_d_to_stack
//vv push_constant(74)
//
//// push constant 60
//^^ push_constant(60)
// #13707
@60
// #13708
D=A
//^^ push_d_to_stack
// #13709
@SP
// #13710
A=M
// #13711
M=D
// #13712
@SP
// #13713
M=M+1
//vv push_d_to_stack
//vv push_constant(60)
//
//// push constant 24
//^^ push_constant(24)
// #13714
@24
// #13715
D=A
//^^ push_d_to_stack
// #13716
@SP
// #13717
A=M
// #13718
M=D
// #13719
@SP
// #13720
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 24
//^^ push_constant(24)
// #13721
@24
// #13722
D=A
//^^ push_d_to_stack
// #13723
@SP
// #13724
A=M
// #13725
M=D
// #13726
@SP
// #13727
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 24
//^^ push_constant(24)
// #13728
@24
// #13729
D=A
//^^ push_d_to_stack
// #13730
@SP
// #13731
A=M
// #13732
M=D
// #13733
@SP
// #13734
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 24
//^^ push_constant(24)
// #13735
@24
// #13736
D=A
//^^ push_d_to_stack
// #13737
@SP
// #13738
A=M
// #13739
M=D
// #13740
@SP
// #13741
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 24
//^^ push_constant(24)
// #13742
@24
// #13743
D=A
//^^ push_d_to_stack
// #13744
@SP
// #13745
A=M
// #13746
M=D
// #13747
@SP
// #13748
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 27
//^^ push_constant(27)
// #13749
@27
// #13750
D=A
//^^ push_d_to_stack
// #13751
@SP
// #13752
A=M
// #13753
M=D
// #13754
@SP
// #13755
M=M+1
//vv push_d_to_stack
//vv push_constant(27)
//
//// push constant 27
//^^ push_constant(27)
// #13756
@27
// #13757
D=A
//^^ push_d_to_stack
// #13758
@SP
// #13759
A=M
// #13760
M=D
// #13761
@SP
// #13762
M=M+1
//vv push_d_to_stack
//vv push_constant(27)
//
//// push constant 14
//^^ push_constant(14)
// #13763
@14
// #13764
D=A
//^^ push_d_to_stack
// #13765
@SP
// #13766
A=M
// #13767
M=D
// #13768
@SP
// #13769
M=M+1
//vv push_d_to_stack
//vv push_constant(14)
//
//// push constant 0
//^^ push_constant(0)
// #13770
@0
// #13771
D=A
//^^ push_d_to_stack
// #13772
@SP
// #13773
A=M
// #13774
M=D
// #13775
@SP
// #13776
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #13777
@0
// #13778
D=A
//^^ push_d_to_stack
// #13779
@SP
// #13780
A=M
// #13781
M=D
// #13782
@SP
// #13783
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_118)
// #13784
@RET_ADDR_118
// #13785
D=A
//^^ push_d_to_stack
// #13786
@SP
// #13787
A=M
// #13788
M=D
// #13789
@SP
// #13790
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_118)
//push return-address
// #13791
@LCL
// #13792
D=M
//^^ push_d_to_stack
// #13793
@SP
// #13794
A=M
// #13795
M=D
// #13796
@SP
// #13797
M=M+1
//vv push_d_to_stack
//push LCL
// #13798
@ARG
// #13799
D=M
//^^ push_d_to_stack
// #13800
@SP
// #13801
A=M
// #13802
M=D
// #13803
@SP
// #13804
M=M+1
//vv push_d_to_stack
//push ARG
// #13805
@THIS
// #13806
D=M
//^^ push_d_to_stack
// #13807
@SP
// #13808
A=M
// #13809
M=D
// #13810
@SP
// #13811
M=M+1
//vv push_d_to_stack
//push THIS
// #13812
@THAT
// #13813
D=M
//^^ push_d_to_stack
// #13814
@SP
// #13815
A=M
// #13816
M=D
// #13817
@SP
// #13818
M=M+1
//vv push_d_to_stack
//push THAT
// #13819
@SP
// #13820
D=M
// #13821
@ARG
// #13822
M=D
// #13823
@17
// #13824
D=A
// #13825
@ARG
// #13826
M=M-D // ARG = SP - args - 5
// #13827
@SP
// #13828
D=M
// #13829
@LCL
// #13830
M=D // LCL = SP
// #13831
@Output.create
// #13832
0;JMP
(RET_ADDR_118)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #13833
@SP
// #13834
M=M-1
// #13835
A=M
// #13836
D=M
//vv pop_stack_to_d
// #13837
@5
// #13838
M=D
//vv pop_to_loc{5)
//
//// push constant 75
//^^ push_constant(75)
// #13839
@75
// #13840
D=A
//^^ push_d_to_stack
// #13841
@SP
// #13842
A=M
// #13843
M=D
// #13844
@SP
// #13845
M=M+1
//vv push_d_to_stack
//vv push_constant(75)
//
//// push constant 51
//^^ push_constant(51)
// #13846
@51
// #13847
D=A
//^^ push_d_to_stack
// #13848
@SP
// #13849
A=M
// #13850
M=D
// #13851
@SP
// #13852
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #13853
@51
// #13854
D=A
//^^ push_d_to_stack
// #13855
@SP
// #13856
A=M
// #13857
M=D
// #13858
@SP
// #13859
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #13860
@51
// #13861
D=A
//^^ push_d_to_stack
// #13862
@SP
// #13863
A=M
// #13864
M=D
// #13865
@SP
// #13866
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 27
//^^ push_constant(27)
// #13867
@27
// #13868
D=A
//^^ push_d_to_stack
// #13869
@SP
// #13870
A=M
// #13871
M=D
// #13872
@SP
// #13873
M=M+1
//vv push_d_to_stack
//vv push_constant(27)
//
//// push constant 15
//^^ push_constant(15)
// #13874
@15
// #13875
D=A
//^^ push_d_to_stack
// #13876
@SP
// #13877
A=M
// #13878
M=D
// #13879
@SP
// #13880
M=M+1
//vv push_d_to_stack
//vv push_constant(15)
//
//// push constant 27
//^^ push_constant(27)
// #13881
@27
// #13882
D=A
//^^ push_d_to_stack
// #13883
@SP
// #13884
A=M
// #13885
M=D
// #13886
@SP
// #13887
M=M+1
//vv push_d_to_stack
//vv push_constant(27)
//
//// push constant 51
//^^ push_constant(51)
// #13888
@51
// #13889
D=A
//^^ push_d_to_stack
// #13890
@SP
// #13891
A=M
// #13892
M=D
// #13893
@SP
// #13894
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #13895
@51
// #13896
D=A
//^^ push_d_to_stack
// #13897
@SP
// #13898
A=M
// #13899
M=D
// #13900
@SP
// #13901
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #13902
@51
// #13903
D=A
//^^ push_d_to_stack
// #13904
@SP
// #13905
A=M
// #13906
M=D
// #13907
@SP
// #13908
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 0
//^^ push_constant(0)
// #13909
@0
// #13910
D=A
//^^ push_d_to_stack
// #13911
@SP
// #13912
A=M
// #13913
M=D
// #13914
@SP
// #13915
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #13916
@0
// #13917
D=A
//^^ push_d_to_stack
// #13918
@SP
// #13919
A=M
// #13920
M=D
// #13921
@SP
// #13922
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_119)
// #13923
@RET_ADDR_119
// #13924
D=A
//^^ push_d_to_stack
// #13925
@SP
// #13926
A=M
// #13927
M=D
// #13928
@SP
// #13929
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_119)
//push return-address
// #13930
@LCL
// #13931
D=M
//^^ push_d_to_stack
// #13932
@SP
// #13933
A=M
// #13934
M=D
// #13935
@SP
// #13936
M=M+1
//vv push_d_to_stack
//push LCL
// #13937
@ARG
// #13938
D=M
//^^ push_d_to_stack
// #13939
@SP
// #13940
A=M
// #13941
M=D
// #13942
@SP
// #13943
M=M+1
//vv push_d_to_stack
//push ARG
// #13944
@THIS
// #13945
D=M
//^^ push_d_to_stack
// #13946
@SP
// #13947
A=M
// #13948
M=D
// #13949
@SP
// #13950
M=M+1
//vv push_d_to_stack
//push THIS
// #13951
@THAT
// #13952
D=M
//^^ push_d_to_stack
// #13953
@SP
// #13954
A=M
// #13955
M=D
// #13956
@SP
// #13957
M=M+1
//vv push_d_to_stack
//push THAT
// #13958
@SP
// #13959
D=M
// #13960
@ARG
// #13961
M=D
// #13962
@17
// #13963
D=A
// #13964
@ARG
// #13965
M=M-D // ARG = SP - args - 5
// #13966
@SP
// #13967
D=M
// #13968
@LCL
// #13969
M=D // LCL = SP
// #13970
@Output.create
// #13971
0;JMP
(RET_ADDR_119)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #13972
@SP
// #13973
M=M-1
// #13974
A=M
// #13975
D=M
//vv pop_stack_to_d
// #13976
@5
// #13977
M=D
//vv pop_to_loc{5)
//
//// push constant 76
//^^ push_constant(76)
// #13978
@76
// #13979
D=A
//^^ push_d_to_stack
// #13980
@SP
// #13981
A=M
// #13982
M=D
// #13983
@SP
// #13984
M=M+1
//vv push_d_to_stack
//vv push_constant(76)
//
//// push constant 3
//^^ push_constant(3)
// #13985
@3
// #13986
D=A
//^^ push_d_to_stack
// #13987
@SP
// #13988
A=M
// #13989
M=D
// #13990
@SP
// #13991
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 3
//^^ push_constant(3)
// #13992
@3
// #13993
D=A
//^^ push_d_to_stack
// #13994
@SP
// #13995
A=M
// #13996
M=D
// #13997
@SP
// #13998
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 3
//^^ push_constant(3)
// #13999
@3
// #14000
D=A
//^^ push_d_to_stack
// #14001
@SP
// #14002
A=M
// #14003
M=D
// #14004
@SP
// #14005
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 3
//^^ push_constant(3)
// #14006
@3
// #14007
D=A
//^^ push_d_to_stack
// #14008
@SP
// #14009
A=M
// #14010
M=D
// #14011
@SP
// #14012
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 3
//^^ push_constant(3)
// #14013
@3
// #14014
D=A
//^^ push_d_to_stack
// #14015
@SP
// #14016
A=M
// #14017
M=D
// #14018
@SP
// #14019
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 3
//^^ push_constant(3)
// #14020
@3
// #14021
D=A
//^^ push_d_to_stack
// #14022
@SP
// #14023
A=M
// #14024
M=D
// #14025
@SP
// #14026
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 35
//^^ push_constant(35)
// #14027
@35
// #14028
D=A
//^^ push_d_to_stack
// #14029
@SP
// #14030
A=M
// #14031
M=D
// #14032
@SP
// #14033
M=M+1
//vv push_d_to_stack
//vv push_constant(35)
//
//// push constant 51
//^^ push_constant(51)
// #14034
@51
// #14035
D=A
//^^ push_d_to_stack
// #14036
@SP
// #14037
A=M
// #14038
M=D
// #14039
@SP
// #14040
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 63
//^^ push_constant(63)
// #14041
@63
// #14042
D=A
//^^ push_d_to_stack
// #14043
@SP
// #14044
A=M
// #14045
M=D
// #14046
@SP
// #14047
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 0
//^^ push_constant(0)
// #14048
@0
// #14049
D=A
//^^ push_d_to_stack
// #14050
@SP
// #14051
A=M
// #14052
M=D
// #14053
@SP
// #14054
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #14055
@0
// #14056
D=A
//^^ push_d_to_stack
// #14057
@SP
// #14058
A=M
// #14059
M=D
// #14060
@SP
// #14061
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_120)
// #14062
@RET_ADDR_120
// #14063
D=A
//^^ push_d_to_stack
// #14064
@SP
// #14065
A=M
// #14066
M=D
// #14067
@SP
// #14068
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_120)
//push return-address
// #14069
@LCL
// #14070
D=M
//^^ push_d_to_stack
// #14071
@SP
// #14072
A=M
// #14073
M=D
// #14074
@SP
// #14075
M=M+1
//vv push_d_to_stack
//push LCL
// #14076
@ARG
// #14077
D=M
//^^ push_d_to_stack
// #14078
@SP
// #14079
A=M
// #14080
M=D
// #14081
@SP
// #14082
M=M+1
//vv push_d_to_stack
//push ARG
// #14083
@THIS
// #14084
D=M
//^^ push_d_to_stack
// #14085
@SP
// #14086
A=M
// #14087
M=D
// #14088
@SP
// #14089
M=M+1
//vv push_d_to_stack
//push THIS
// #14090
@THAT
// #14091
D=M
//^^ push_d_to_stack
// #14092
@SP
// #14093
A=M
// #14094
M=D
// #14095
@SP
// #14096
M=M+1
//vv push_d_to_stack
//push THAT
// #14097
@SP
// #14098
D=M
// #14099
@ARG
// #14100
M=D
// #14101
@17
// #14102
D=A
// #14103
@ARG
// #14104
M=M-D // ARG = SP - args - 5
// #14105
@SP
// #14106
D=M
// #14107
@LCL
// #14108
M=D // LCL = SP
// #14109
@Output.create
// #14110
0;JMP
(RET_ADDR_120)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #14111
@SP
// #14112
M=M-1
// #14113
A=M
// #14114
D=M
//vv pop_stack_to_d
// #14115
@5
// #14116
M=D
//vv pop_to_loc{5)
//
//// push constant 77
//^^ push_constant(77)
// #14117
@77
// #14118
D=A
//^^ push_d_to_stack
// #14119
@SP
// #14120
A=M
// #14121
M=D
// #14122
@SP
// #14123
M=M+1
//vv push_d_to_stack
//vv push_constant(77)
//
//// push constant 33
//^^ push_constant(33)
// #14124
@33
// #14125
D=A
//^^ push_d_to_stack
// #14126
@SP
// #14127
A=M
// #14128
M=D
// #14129
@SP
// #14130
M=M+1
//vv push_d_to_stack
//vv push_constant(33)
//
//// push constant 51
//^^ push_constant(51)
// #14131
@51
// #14132
D=A
//^^ push_d_to_stack
// #14133
@SP
// #14134
A=M
// #14135
M=D
// #14136
@SP
// #14137
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 63
//^^ push_constant(63)
// #14138
@63
// #14139
D=A
//^^ push_d_to_stack
// #14140
@SP
// #14141
A=M
// #14142
M=D
// #14143
@SP
// #14144
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 63
//^^ push_constant(63)
// #14145
@63
// #14146
D=A
//^^ push_d_to_stack
// #14147
@SP
// #14148
A=M
// #14149
M=D
// #14150
@SP
// #14151
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 51
//^^ push_constant(51)
// #14152
@51
// #14153
D=A
//^^ push_d_to_stack
// #14154
@SP
// #14155
A=M
// #14156
M=D
// #14157
@SP
// #14158
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #14159
@51
// #14160
D=A
//^^ push_d_to_stack
// #14161
@SP
// #14162
A=M
// #14163
M=D
// #14164
@SP
// #14165
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #14166
@51
// #14167
D=A
//^^ push_d_to_stack
// #14168
@SP
// #14169
A=M
// #14170
M=D
// #14171
@SP
// #14172
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #14173
@51
// #14174
D=A
//^^ push_d_to_stack
// #14175
@SP
// #14176
A=M
// #14177
M=D
// #14178
@SP
// #14179
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #14180
@51
// #14181
D=A
//^^ push_d_to_stack
// #14182
@SP
// #14183
A=M
// #14184
M=D
// #14185
@SP
// #14186
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 0
//^^ push_constant(0)
// #14187
@0
// #14188
D=A
//^^ push_d_to_stack
// #14189
@SP
// #14190
A=M
// #14191
M=D
// #14192
@SP
// #14193
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #14194
@0
// #14195
D=A
//^^ push_d_to_stack
// #14196
@SP
// #14197
A=M
// #14198
M=D
// #14199
@SP
// #14200
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_121)
// #14201
@RET_ADDR_121
// #14202
D=A
//^^ push_d_to_stack
// #14203
@SP
// #14204
A=M
// #14205
M=D
// #14206
@SP
// #14207
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_121)
//push return-address
// #14208
@LCL
// #14209
D=M
//^^ push_d_to_stack
// #14210
@SP
// #14211
A=M
// #14212
M=D
// #14213
@SP
// #14214
M=M+1
//vv push_d_to_stack
//push LCL
// #14215
@ARG
// #14216
D=M
//^^ push_d_to_stack
// #14217
@SP
// #14218
A=M
// #14219
M=D
// #14220
@SP
// #14221
M=M+1
//vv push_d_to_stack
//push ARG
// #14222
@THIS
// #14223
D=M
//^^ push_d_to_stack
// #14224
@SP
// #14225
A=M
// #14226
M=D
// #14227
@SP
// #14228
M=M+1
//vv push_d_to_stack
//push THIS
// #14229
@THAT
// #14230
D=M
//^^ push_d_to_stack
// #14231
@SP
// #14232
A=M
// #14233
M=D
// #14234
@SP
// #14235
M=M+1
//vv push_d_to_stack
//push THAT
// #14236
@SP
// #14237
D=M
// #14238
@ARG
// #14239
M=D
// #14240
@17
// #14241
D=A
// #14242
@ARG
// #14243
M=M-D // ARG = SP - args - 5
// #14244
@SP
// #14245
D=M
// #14246
@LCL
// #14247
M=D // LCL = SP
// #14248
@Output.create
// #14249
0;JMP
(RET_ADDR_121)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #14250
@SP
// #14251
M=M-1
// #14252
A=M
// #14253
D=M
//vv pop_stack_to_d
// #14254
@5
// #14255
M=D
//vv pop_to_loc{5)
//
//// push constant 78
//^^ push_constant(78)
// #14256
@78
// #14257
D=A
//^^ push_d_to_stack
// #14258
@SP
// #14259
A=M
// #14260
M=D
// #14261
@SP
// #14262
M=M+1
//vv push_d_to_stack
//vv push_constant(78)
//
//// push constant 51
//^^ push_constant(51)
// #14263
@51
// #14264
D=A
//^^ push_d_to_stack
// #14265
@SP
// #14266
A=M
// #14267
M=D
// #14268
@SP
// #14269
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #14270
@51
// #14271
D=A
//^^ push_d_to_stack
// #14272
@SP
// #14273
A=M
// #14274
M=D
// #14275
@SP
// #14276
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 55
//^^ push_constant(55)
// #14277
@55
// #14278
D=A
//^^ push_d_to_stack
// #14279
@SP
// #14280
A=M
// #14281
M=D
// #14282
@SP
// #14283
M=M+1
//vv push_d_to_stack
//vv push_constant(55)
//
//// push constant 55
//^^ push_constant(55)
// #14284
@55
// #14285
D=A
//^^ push_d_to_stack
// #14286
@SP
// #14287
A=M
// #14288
M=D
// #14289
@SP
// #14290
M=M+1
//vv push_d_to_stack
//vv push_constant(55)
//
//// push constant 63
//^^ push_constant(63)
// #14291
@63
// #14292
D=A
//^^ push_d_to_stack
// #14293
@SP
// #14294
A=M
// #14295
M=D
// #14296
@SP
// #14297
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 59
//^^ push_constant(59)
// #14298
@59
// #14299
D=A
//^^ push_d_to_stack
// #14300
@SP
// #14301
A=M
// #14302
M=D
// #14303
@SP
// #14304
M=M+1
//vv push_d_to_stack
//vv push_constant(59)
//
//// push constant 59
//^^ push_constant(59)
// #14305
@59
// #14306
D=A
//^^ push_d_to_stack
// #14307
@SP
// #14308
A=M
// #14309
M=D
// #14310
@SP
// #14311
M=M+1
//vv push_d_to_stack
//vv push_constant(59)
//
//// push constant 51
//^^ push_constant(51)
// #14312
@51
// #14313
D=A
//^^ push_d_to_stack
// #14314
@SP
// #14315
A=M
// #14316
M=D
// #14317
@SP
// #14318
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #14319
@51
// #14320
D=A
//^^ push_d_to_stack
// #14321
@SP
// #14322
A=M
// #14323
M=D
// #14324
@SP
// #14325
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 0
//^^ push_constant(0)
// #14326
@0
// #14327
D=A
//^^ push_d_to_stack
// #14328
@SP
// #14329
A=M
// #14330
M=D
// #14331
@SP
// #14332
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #14333
@0
// #14334
D=A
//^^ push_d_to_stack
// #14335
@SP
// #14336
A=M
// #14337
M=D
// #14338
@SP
// #14339
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_122)
// #14340
@RET_ADDR_122
// #14341
D=A
//^^ push_d_to_stack
// #14342
@SP
// #14343
A=M
// #14344
M=D
// #14345
@SP
// #14346
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_122)
//push return-address
// #14347
@LCL
// #14348
D=M
//^^ push_d_to_stack
// #14349
@SP
// #14350
A=M
// #14351
M=D
// #14352
@SP
// #14353
M=M+1
//vv push_d_to_stack
//push LCL
// #14354
@ARG
// #14355
D=M
//^^ push_d_to_stack
// #14356
@SP
// #14357
A=M
// #14358
M=D
// #14359
@SP
// #14360
M=M+1
//vv push_d_to_stack
//push ARG
// #14361
@THIS
// #14362
D=M
//^^ push_d_to_stack
// #14363
@SP
// #14364
A=M
// #14365
M=D
// #14366
@SP
// #14367
M=M+1
//vv push_d_to_stack
//push THIS
// #14368
@THAT
// #14369
D=M
//^^ push_d_to_stack
// #14370
@SP
// #14371
A=M
// #14372
M=D
// #14373
@SP
// #14374
M=M+1
//vv push_d_to_stack
//push THAT
// #14375
@SP
// #14376
D=M
// #14377
@ARG
// #14378
M=D
// #14379
@17
// #14380
D=A
// #14381
@ARG
// #14382
M=M-D // ARG = SP - args - 5
// #14383
@SP
// #14384
D=M
// #14385
@LCL
// #14386
M=D // LCL = SP
// #14387
@Output.create
// #14388
0;JMP
(RET_ADDR_122)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #14389
@SP
// #14390
M=M-1
// #14391
A=M
// #14392
D=M
//vv pop_stack_to_d
// #14393
@5
// #14394
M=D
//vv pop_to_loc{5)
//
//// push constant 79
//^^ push_constant(79)
// #14395
@79
// #14396
D=A
//^^ push_d_to_stack
// #14397
@SP
// #14398
A=M
// #14399
M=D
// #14400
@SP
// #14401
M=M+1
//vv push_d_to_stack
//vv push_constant(79)
//
//// push constant 30
//^^ push_constant(30)
// #14402
@30
// #14403
D=A
//^^ push_d_to_stack
// #14404
@SP
// #14405
A=M
// #14406
M=D
// #14407
@SP
// #14408
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 51
//^^ push_constant(51)
// #14409
@51
// #14410
D=A
//^^ push_d_to_stack
// #14411
@SP
// #14412
A=M
// #14413
M=D
// #14414
@SP
// #14415
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #14416
@51
// #14417
D=A
//^^ push_d_to_stack
// #14418
@SP
// #14419
A=M
// #14420
M=D
// #14421
@SP
// #14422
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #14423
@51
// #14424
D=A
//^^ push_d_to_stack
// #14425
@SP
// #14426
A=M
// #14427
M=D
// #14428
@SP
// #14429
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #14430
@51
// #14431
D=A
//^^ push_d_to_stack
// #14432
@SP
// #14433
A=M
// #14434
M=D
// #14435
@SP
// #14436
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #14437
@51
// #14438
D=A
//^^ push_d_to_stack
// #14439
@SP
// #14440
A=M
// #14441
M=D
// #14442
@SP
// #14443
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #14444
@51
// #14445
D=A
//^^ push_d_to_stack
// #14446
@SP
// #14447
A=M
// #14448
M=D
// #14449
@SP
// #14450
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #14451
@51
// #14452
D=A
//^^ push_d_to_stack
// #14453
@SP
// #14454
A=M
// #14455
M=D
// #14456
@SP
// #14457
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #14458
@30
// #14459
D=A
//^^ push_d_to_stack
// #14460
@SP
// #14461
A=M
// #14462
M=D
// #14463
@SP
// #14464
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 0
//^^ push_constant(0)
// #14465
@0
// #14466
D=A
//^^ push_d_to_stack
// #14467
@SP
// #14468
A=M
// #14469
M=D
// #14470
@SP
// #14471
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #14472
@0
// #14473
D=A
//^^ push_d_to_stack
// #14474
@SP
// #14475
A=M
// #14476
M=D
// #14477
@SP
// #14478
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_123)
// #14479
@RET_ADDR_123
// #14480
D=A
//^^ push_d_to_stack
// #14481
@SP
// #14482
A=M
// #14483
M=D
// #14484
@SP
// #14485
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_123)
//push return-address
// #14486
@LCL
// #14487
D=M
//^^ push_d_to_stack
// #14488
@SP
// #14489
A=M
// #14490
M=D
// #14491
@SP
// #14492
M=M+1
//vv push_d_to_stack
//push LCL
// #14493
@ARG
// #14494
D=M
//^^ push_d_to_stack
// #14495
@SP
// #14496
A=M
// #14497
M=D
// #14498
@SP
// #14499
M=M+1
//vv push_d_to_stack
//push ARG
// #14500
@THIS
// #14501
D=M
//^^ push_d_to_stack
// #14502
@SP
// #14503
A=M
// #14504
M=D
// #14505
@SP
// #14506
M=M+1
//vv push_d_to_stack
//push THIS
// #14507
@THAT
// #14508
D=M
//^^ push_d_to_stack
// #14509
@SP
// #14510
A=M
// #14511
M=D
// #14512
@SP
// #14513
M=M+1
//vv push_d_to_stack
//push THAT
// #14514
@SP
// #14515
D=M
// #14516
@ARG
// #14517
M=D
// #14518
@17
// #14519
D=A
// #14520
@ARG
// #14521
M=M-D // ARG = SP - args - 5
// #14522
@SP
// #14523
D=M
// #14524
@LCL
// #14525
M=D // LCL = SP
// #14526
@Output.create
// #14527
0;JMP
(RET_ADDR_123)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #14528
@SP
// #14529
M=M-1
// #14530
A=M
// #14531
D=M
//vv pop_stack_to_d
// #14532
@5
// #14533
M=D
//vv pop_to_loc{5)
//
//// push constant 80
//^^ push_constant(80)
// #14534
@80
// #14535
D=A
//^^ push_d_to_stack
// #14536
@SP
// #14537
A=M
// #14538
M=D
// #14539
@SP
// #14540
M=M+1
//vv push_d_to_stack
//vv push_constant(80)
//
//// push constant 31
//^^ push_constant(31)
// #14541
@31
// #14542
D=A
//^^ push_d_to_stack
// #14543
@SP
// #14544
A=M
// #14545
M=D
// #14546
@SP
// #14547
M=M+1
//vv push_d_to_stack
//vv push_constant(31)
//
//// push constant 51
//^^ push_constant(51)
// #14548
@51
// #14549
D=A
//^^ push_d_to_stack
// #14550
@SP
// #14551
A=M
// #14552
M=D
// #14553
@SP
// #14554
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #14555
@51
// #14556
D=A
//^^ push_d_to_stack
// #14557
@SP
// #14558
A=M
// #14559
M=D
// #14560
@SP
// #14561
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #14562
@51
// #14563
D=A
//^^ push_d_to_stack
// #14564
@SP
// #14565
A=M
// #14566
M=D
// #14567
@SP
// #14568
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 31
//^^ push_constant(31)
// #14569
@31
// #14570
D=A
//^^ push_d_to_stack
// #14571
@SP
// #14572
A=M
// #14573
M=D
// #14574
@SP
// #14575
M=M+1
//vv push_d_to_stack
//vv push_constant(31)
//
//// push constant 3
//^^ push_constant(3)
// #14576
@3
// #14577
D=A
//^^ push_d_to_stack
// #14578
@SP
// #14579
A=M
// #14580
M=D
// #14581
@SP
// #14582
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 3
//^^ push_constant(3)
// #14583
@3
// #14584
D=A
//^^ push_d_to_stack
// #14585
@SP
// #14586
A=M
// #14587
M=D
// #14588
@SP
// #14589
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 3
//^^ push_constant(3)
// #14590
@3
// #14591
D=A
//^^ push_d_to_stack
// #14592
@SP
// #14593
A=M
// #14594
M=D
// #14595
@SP
// #14596
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 3
//^^ push_constant(3)
// #14597
@3
// #14598
D=A
//^^ push_d_to_stack
// #14599
@SP
// #14600
A=M
// #14601
M=D
// #14602
@SP
// #14603
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 0
//^^ push_constant(0)
// #14604
@0
// #14605
D=A
//^^ push_d_to_stack
// #14606
@SP
// #14607
A=M
// #14608
M=D
// #14609
@SP
// #14610
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #14611
@0
// #14612
D=A
//^^ push_d_to_stack
// #14613
@SP
// #14614
A=M
// #14615
M=D
// #14616
@SP
// #14617
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_124)
// #14618
@RET_ADDR_124
// #14619
D=A
//^^ push_d_to_stack
// #14620
@SP
// #14621
A=M
// #14622
M=D
// #14623
@SP
// #14624
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_124)
//push return-address
// #14625
@LCL
// #14626
D=M
//^^ push_d_to_stack
// #14627
@SP
// #14628
A=M
// #14629
M=D
// #14630
@SP
// #14631
M=M+1
//vv push_d_to_stack
//push LCL
// #14632
@ARG
// #14633
D=M
//^^ push_d_to_stack
// #14634
@SP
// #14635
A=M
// #14636
M=D
// #14637
@SP
// #14638
M=M+1
//vv push_d_to_stack
//push ARG
// #14639
@THIS
// #14640
D=M
//^^ push_d_to_stack
// #14641
@SP
// #14642
A=M
// #14643
M=D
// #14644
@SP
// #14645
M=M+1
//vv push_d_to_stack
//push THIS
// #14646
@THAT
// #14647
D=M
//^^ push_d_to_stack
// #14648
@SP
// #14649
A=M
// #14650
M=D
// #14651
@SP
// #14652
M=M+1
//vv push_d_to_stack
//push THAT
// #14653
@SP
// #14654
D=M
// #14655
@ARG
// #14656
M=D
// #14657
@17
// #14658
D=A
// #14659
@ARG
// #14660
M=M-D // ARG = SP - args - 5
// #14661
@SP
// #14662
D=M
// #14663
@LCL
// #14664
M=D // LCL = SP
// #14665
@Output.create
// #14666
0;JMP
(RET_ADDR_124)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #14667
@SP
// #14668
M=M-1
// #14669
A=M
// #14670
D=M
//vv pop_stack_to_d
// #14671
@5
// #14672
M=D
//vv pop_to_loc{5)
//
//// push constant 81
//^^ push_constant(81)
// #14673
@81
// #14674
D=A
//^^ push_d_to_stack
// #14675
@SP
// #14676
A=M
// #14677
M=D
// #14678
@SP
// #14679
M=M+1
//vv push_d_to_stack
//vv push_constant(81)
//
//// push constant 30
//^^ push_constant(30)
// #14680
@30
// #14681
D=A
//^^ push_d_to_stack
// #14682
@SP
// #14683
A=M
// #14684
M=D
// #14685
@SP
// #14686
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 51
//^^ push_constant(51)
// #14687
@51
// #14688
D=A
//^^ push_d_to_stack
// #14689
@SP
// #14690
A=M
// #14691
M=D
// #14692
@SP
// #14693
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #14694
@51
// #14695
D=A
//^^ push_d_to_stack
// #14696
@SP
// #14697
A=M
// #14698
M=D
// #14699
@SP
// #14700
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #14701
@51
// #14702
D=A
//^^ push_d_to_stack
// #14703
@SP
// #14704
A=M
// #14705
M=D
// #14706
@SP
// #14707
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #14708
@51
// #14709
D=A
//^^ push_d_to_stack
// #14710
@SP
// #14711
A=M
// #14712
M=D
// #14713
@SP
// #14714
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #14715
@51
// #14716
D=A
//^^ push_d_to_stack
// #14717
@SP
// #14718
A=M
// #14719
M=D
// #14720
@SP
// #14721
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 63
//^^ push_constant(63)
// #14722
@63
// #14723
D=A
//^^ push_d_to_stack
// #14724
@SP
// #14725
A=M
// #14726
M=D
// #14727
@SP
// #14728
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 59
//^^ push_constant(59)
// #14729
@59
// #14730
D=A
//^^ push_d_to_stack
// #14731
@SP
// #14732
A=M
// #14733
M=D
// #14734
@SP
// #14735
M=M+1
//vv push_d_to_stack
//vv push_constant(59)
//
//// push constant 30
//^^ push_constant(30)
// #14736
@30
// #14737
D=A
//^^ push_d_to_stack
// #14738
@SP
// #14739
A=M
// #14740
M=D
// #14741
@SP
// #14742
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 48
//^^ push_constant(48)
// #14743
@48
// #14744
D=A
//^^ push_d_to_stack
// #14745
@SP
// #14746
A=M
// #14747
M=D
// #14748
@SP
// #14749
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 0
//^^ push_constant(0)
// #14750
@0
// #14751
D=A
//^^ push_d_to_stack
// #14752
@SP
// #14753
A=M
// #14754
M=D
// #14755
@SP
// #14756
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_125)
// #14757
@RET_ADDR_125
// #14758
D=A
//^^ push_d_to_stack
// #14759
@SP
// #14760
A=M
// #14761
M=D
// #14762
@SP
// #14763
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_125)
//push return-address
// #14764
@LCL
// #14765
D=M
//^^ push_d_to_stack
// #14766
@SP
// #14767
A=M
// #14768
M=D
// #14769
@SP
// #14770
M=M+1
//vv push_d_to_stack
//push LCL
// #14771
@ARG
// #14772
D=M
//^^ push_d_to_stack
// #14773
@SP
// #14774
A=M
// #14775
M=D
// #14776
@SP
// #14777
M=M+1
//vv push_d_to_stack
//push ARG
// #14778
@THIS
// #14779
D=M
//^^ push_d_to_stack
// #14780
@SP
// #14781
A=M
// #14782
M=D
// #14783
@SP
// #14784
M=M+1
//vv push_d_to_stack
//push THIS
// #14785
@THAT
// #14786
D=M
//^^ push_d_to_stack
// #14787
@SP
// #14788
A=M
// #14789
M=D
// #14790
@SP
// #14791
M=M+1
//vv push_d_to_stack
//push THAT
// #14792
@SP
// #14793
D=M
// #14794
@ARG
// #14795
M=D
// #14796
@17
// #14797
D=A
// #14798
@ARG
// #14799
M=M-D // ARG = SP - args - 5
// #14800
@SP
// #14801
D=M
// #14802
@LCL
// #14803
M=D // LCL = SP
// #14804
@Output.create
// #14805
0;JMP
(RET_ADDR_125)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #14806
@SP
// #14807
M=M-1
// #14808
A=M
// #14809
D=M
//vv pop_stack_to_d
// #14810
@5
// #14811
M=D
//vv pop_to_loc{5)
//
//// push constant 82
//^^ push_constant(82)
// #14812
@82
// #14813
D=A
//^^ push_d_to_stack
// #14814
@SP
// #14815
A=M
// #14816
M=D
// #14817
@SP
// #14818
M=M+1
//vv push_d_to_stack
//vv push_constant(82)
//
//// push constant 31
//^^ push_constant(31)
// #14819
@31
// #14820
D=A
//^^ push_d_to_stack
// #14821
@SP
// #14822
A=M
// #14823
M=D
// #14824
@SP
// #14825
M=M+1
//vv push_d_to_stack
//vv push_constant(31)
//
//// push constant 51
//^^ push_constant(51)
// #14826
@51
// #14827
D=A
//^^ push_d_to_stack
// #14828
@SP
// #14829
A=M
// #14830
M=D
// #14831
@SP
// #14832
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #14833
@51
// #14834
D=A
//^^ push_d_to_stack
// #14835
@SP
// #14836
A=M
// #14837
M=D
// #14838
@SP
// #14839
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #14840
@51
// #14841
D=A
//^^ push_d_to_stack
// #14842
@SP
// #14843
A=M
// #14844
M=D
// #14845
@SP
// #14846
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 31
//^^ push_constant(31)
// #14847
@31
// #14848
D=A
//^^ push_d_to_stack
// #14849
@SP
// #14850
A=M
// #14851
M=D
// #14852
@SP
// #14853
M=M+1
//vv push_d_to_stack
//vv push_constant(31)
//
//// push constant 27
//^^ push_constant(27)
// #14854
@27
// #14855
D=A
//^^ push_d_to_stack
// #14856
@SP
// #14857
A=M
// #14858
M=D
// #14859
@SP
// #14860
M=M+1
//vv push_d_to_stack
//vv push_constant(27)
//
//// push constant 51
//^^ push_constant(51)
// #14861
@51
// #14862
D=A
//^^ push_d_to_stack
// #14863
@SP
// #14864
A=M
// #14865
M=D
// #14866
@SP
// #14867
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #14868
@51
// #14869
D=A
//^^ push_d_to_stack
// #14870
@SP
// #14871
A=M
// #14872
M=D
// #14873
@SP
// #14874
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #14875
@51
// #14876
D=A
//^^ push_d_to_stack
// #14877
@SP
// #14878
A=M
// #14879
M=D
// #14880
@SP
// #14881
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 0
//^^ push_constant(0)
// #14882
@0
// #14883
D=A
//^^ push_d_to_stack
// #14884
@SP
// #14885
A=M
// #14886
M=D
// #14887
@SP
// #14888
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #14889
@0
// #14890
D=A
//^^ push_d_to_stack
// #14891
@SP
// #14892
A=M
// #14893
M=D
// #14894
@SP
// #14895
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_126)
// #14896
@RET_ADDR_126
// #14897
D=A
//^^ push_d_to_stack
// #14898
@SP
// #14899
A=M
// #14900
M=D
// #14901
@SP
// #14902
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_126)
//push return-address
// #14903
@LCL
// #14904
D=M
//^^ push_d_to_stack
// #14905
@SP
// #14906
A=M
// #14907
M=D
// #14908
@SP
// #14909
M=M+1
//vv push_d_to_stack
//push LCL
// #14910
@ARG
// #14911
D=M
//^^ push_d_to_stack
// #14912
@SP
// #14913
A=M
// #14914
M=D
// #14915
@SP
// #14916
M=M+1
//vv push_d_to_stack
//push ARG
// #14917
@THIS
// #14918
D=M
//^^ push_d_to_stack
// #14919
@SP
// #14920
A=M
// #14921
M=D
// #14922
@SP
// #14923
M=M+1
//vv push_d_to_stack
//push THIS
// #14924
@THAT
// #14925
D=M
//^^ push_d_to_stack
// #14926
@SP
// #14927
A=M
// #14928
M=D
// #14929
@SP
// #14930
M=M+1
//vv push_d_to_stack
//push THAT
// #14931
@SP
// #14932
D=M
// #14933
@ARG
// #14934
M=D
// #14935
@17
// #14936
D=A
// #14937
@ARG
// #14938
M=M-D // ARG = SP - args - 5
// #14939
@SP
// #14940
D=M
// #14941
@LCL
// #14942
M=D // LCL = SP
// #14943
@Output.create
// #14944
0;JMP
(RET_ADDR_126)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #14945
@SP
// #14946
M=M-1
// #14947
A=M
// #14948
D=M
//vv pop_stack_to_d
// #14949
@5
// #14950
M=D
//vv pop_to_loc{5)
//
//// push constant 83
//^^ push_constant(83)
// #14951
@83
// #14952
D=A
//^^ push_d_to_stack
// #14953
@SP
// #14954
A=M
// #14955
M=D
// #14956
@SP
// #14957
M=M+1
//vv push_d_to_stack
//vv push_constant(83)
//
//// push constant 30
//^^ push_constant(30)
// #14958
@30
// #14959
D=A
//^^ push_d_to_stack
// #14960
@SP
// #14961
A=M
// #14962
M=D
// #14963
@SP
// #14964
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 51
//^^ push_constant(51)
// #14965
@51
// #14966
D=A
//^^ push_d_to_stack
// #14967
@SP
// #14968
A=M
// #14969
M=D
// #14970
@SP
// #14971
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #14972
@51
// #14973
D=A
//^^ push_d_to_stack
// #14974
@SP
// #14975
A=M
// #14976
M=D
// #14977
@SP
// #14978
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 6
//^^ push_constant(6)
// #14979
@6
// #14980
D=A
//^^ push_d_to_stack
// #14981
@SP
// #14982
A=M
// #14983
M=D
// #14984
@SP
// #14985
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 28
//^^ push_constant(28)
// #14986
@28
// #14987
D=A
//^^ push_d_to_stack
// #14988
@SP
// #14989
A=M
// #14990
M=D
// #14991
@SP
// #14992
M=M+1
//vv push_d_to_stack
//vv push_constant(28)
//
//// push constant 48
//^^ push_constant(48)
// #14993
@48
// #14994
D=A
//^^ push_d_to_stack
// #14995
@SP
// #14996
A=M
// #14997
M=D
// #14998
@SP
// #14999
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 51
//^^ push_constant(51)
// #15000
@51
// #15001
D=A
//^^ push_d_to_stack
// #15002
@SP
// #15003
A=M
// #15004
M=D
// #15005
@SP
// #15006
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #15007
@51
// #15008
D=A
//^^ push_d_to_stack
// #15009
@SP
// #15010
A=M
// #15011
M=D
// #15012
@SP
// #15013
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #15014
@30
// #15015
D=A
//^^ push_d_to_stack
// #15016
@SP
// #15017
A=M
// #15018
M=D
// #15019
@SP
// #15020
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 0
//^^ push_constant(0)
// #15021
@0
// #15022
D=A
//^^ push_d_to_stack
// #15023
@SP
// #15024
A=M
// #15025
M=D
// #15026
@SP
// #15027
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #15028
@0
// #15029
D=A
//^^ push_d_to_stack
// #15030
@SP
// #15031
A=M
// #15032
M=D
// #15033
@SP
// #15034
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_127)
// #15035
@RET_ADDR_127
// #15036
D=A
//^^ push_d_to_stack
// #15037
@SP
// #15038
A=M
// #15039
M=D
// #15040
@SP
// #15041
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_127)
//push return-address
// #15042
@LCL
// #15043
D=M
//^^ push_d_to_stack
// #15044
@SP
// #15045
A=M
// #15046
M=D
// #15047
@SP
// #15048
M=M+1
//vv push_d_to_stack
//push LCL
// #15049
@ARG
// #15050
D=M
//^^ push_d_to_stack
// #15051
@SP
// #15052
A=M
// #15053
M=D
// #15054
@SP
// #15055
M=M+1
//vv push_d_to_stack
//push ARG
// #15056
@THIS
// #15057
D=M
//^^ push_d_to_stack
// #15058
@SP
// #15059
A=M
// #15060
M=D
// #15061
@SP
// #15062
M=M+1
//vv push_d_to_stack
//push THIS
// #15063
@THAT
// #15064
D=M
//^^ push_d_to_stack
// #15065
@SP
// #15066
A=M
// #15067
M=D
// #15068
@SP
// #15069
M=M+1
//vv push_d_to_stack
//push THAT
// #15070
@SP
// #15071
D=M
// #15072
@ARG
// #15073
M=D
// #15074
@17
// #15075
D=A
// #15076
@ARG
// #15077
M=M-D // ARG = SP - args - 5
// #15078
@SP
// #15079
D=M
// #15080
@LCL
// #15081
M=D // LCL = SP
// #15082
@Output.create
// #15083
0;JMP
(RET_ADDR_127)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #15084
@SP
// #15085
M=M-1
// #15086
A=M
// #15087
D=M
//vv pop_stack_to_d
// #15088
@5
// #15089
M=D
//vv pop_to_loc{5)
//
//// push constant 84
//^^ push_constant(84)
// #15090
@84
// #15091
D=A
//^^ push_d_to_stack
// #15092
@SP
// #15093
A=M
// #15094
M=D
// #15095
@SP
// #15096
M=M+1
//vv push_d_to_stack
//vv push_constant(84)
//
//// push constant 63
//^^ push_constant(63)
// #15097
@63
// #15098
D=A
//^^ push_d_to_stack
// #15099
@SP
// #15100
A=M
// #15101
M=D
// #15102
@SP
// #15103
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 63
//^^ push_constant(63)
// #15104
@63
// #15105
D=A
//^^ push_d_to_stack
// #15106
@SP
// #15107
A=M
// #15108
M=D
// #15109
@SP
// #15110
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 45
//^^ push_constant(45)
// #15111
@45
// #15112
D=A
//^^ push_d_to_stack
// #15113
@SP
// #15114
A=M
// #15115
M=D
// #15116
@SP
// #15117
M=M+1
//vv push_d_to_stack
//vv push_constant(45)
//
//// push constant 12
//^^ push_constant(12)
// #15118
@12
// #15119
D=A
//^^ push_d_to_stack
// #15120
@SP
// #15121
A=M
// #15122
M=D
// #15123
@SP
// #15124
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #15125
@12
// #15126
D=A
//^^ push_d_to_stack
// #15127
@SP
// #15128
A=M
// #15129
M=D
// #15130
@SP
// #15131
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #15132
@12
// #15133
D=A
//^^ push_d_to_stack
// #15134
@SP
// #15135
A=M
// #15136
M=D
// #15137
@SP
// #15138
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #15139
@12
// #15140
D=A
//^^ push_d_to_stack
// #15141
@SP
// #15142
A=M
// #15143
M=D
// #15144
@SP
// #15145
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #15146
@12
// #15147
D=A
//^^ push_d_to_stack
// #15148
@SP
// #15149
A=M
// #15150
M=D
// #15151
@SP
// #15152
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 30
//^^ push_constant(30)
// #15153
@30
// #15154
D=A
//^^ push_d_to_stack
// #15155
@SP
// #15156
A=M
// #15157
M=D
// #15158
@SP
// #15159
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 0
//^^ push_constant(0)
// #15160
@0
// #15161
D=A
//^^ push_d_to_stack
// #15162
@SP
// #15163
A=M
// #15164
M=D
// #15165
@SP
// #15166
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #15167
@0
// #15168
D=A
//^^ push_d_to_stack
// #15169
@SP
// #15170
A=M
// #15171
M=D
// #15172
@SP
// #15173
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_128)
// #15174
@RET_ADDR_128
// #15175
D=A
//^^ push_d_to_stack
// #15176
@SP
// #15177
A=M
// #15178
M=D
// #15179
@SP
// #15180
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_128)
//push return-address
// #15181
@LCL
// #15182
D=M
//^^ push_d_to_stack
// #15183
@SP
// #15184
A=M
// #15185
M=D
// #15186
@SP
// #15187
M=M+1
//vv push_d_to_stack
//push LCL
// #15188
@ARG
// #15189
D=M
//^^ push_d_to_stack
// #15190
@SP
// #15191
A=M
// #15192
M=D
// #15193
@SP
// #15194
M=M+1
//vv push_d_to_stack
//push ARG
// #15195
@THIS
// #15196
D=M
//^^ push_d_to_stack
// #15197
@SP
// #15198
A=M
// #15199
M=D
// #15200
@SP
// #15201
M=M+1
//vv push_d_to_stack
//push THIS
// #15202
@THAT
// #15203
D=M
//^^ push_d_to_stack
// #15204
@SP
// #15205
A=M
// #15206
M=D
// #15207
@SP
// #15208
M=M+1
//vv push_d_to_stack
//push THAT
// #15209
@SP
// #15210
D=M
// #15211
@ARG
// #15212
M=D
// #15213
@17
// #15214
D=A
// #15215
@ARG
// #15216
M=M-D // ARG = SP - args - 5
// #15217
@SP
// #15218
D=M
// #15219
@LCL
// #15220
M=D // LCL = SP
// #15221
@Output.create
// #15222
0;JMP
(RET_ADDR_128)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #15223
@SP
// #15224
M=M-1
// #15225
A=M
// #15226
D=M
//vv pop_stack_to_d
// #15227
@5
// #15228
M=D
//vv pop_to_loc{5)
//
//// push constant 85
//^^ push_constant(85)
// #15229
@85
// #15230
D=A
//^^ push_d_to_stack
// #15231
@SP
// #15232
A=M
// #15233
M=D
// #15234
@SP
// #15235
M=M+1
//vv push_d_to_stack
//vv push_constant(85)
//
//// push constant 51
//^^ push_constant(51)
// #15236
@51
// #15237
D=A
//^^ push_d_to_stack
// #15238
@SP
// #15239
A=M
// #15240
M=D
// #15241
@SP
// #15242
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #15243
@51
// #15244
D=A
//^^ push_d_to_stack
// #15245
@SP
// #15246
A=M
// #15247
M=D
// #15248
@SP
// #15249
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #15250
@51
// #15251
D=A
//^^ push_d_to_stack
// #15252
@SP
// #15253
A=M
// #15254
M=D
// #15255
@SP
// #15256
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #15257
@51
// #15258
D=A
//^^ push_d_to_stack
// #15259
@SP
// #15260
A=M
// #15261
M=D
// #15262
@SP
// #15263
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #15264
@51
// #15265
D=A
//^^ push_d_to_stack
// #15266
@SP
// #15267
A=M
// #15268
M=D
// #15269
@SP
// #15270
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #15271
@51
// #15272
D=A
//^^ push_d_to_stack
// #15273
@SP
// #15274
A=M
// #15275
M=D
// #15276
@SP
// #15277
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #15278
@51
// #15279
D=A
//^^ push_d_to_stack
// #15280
@SP
// #15281
A=M
// #15282
M=D
// #15283
@SP
// #15284
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #15285
@51
// #15286
D=A
//^^ push_d_to_stack
// #15287
@SP
// #15288
A=M
// #15289
M=D
// #15290
@SP
// #15291
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #15292
@30
// #15293
D=A
//^^ push_d_to_stack
// #15294
@SP
// #15295
A=M
// #15296
M=D
// #15297
@SP
// #15298
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 0
//^^ push_constant(0)
// #15299
@0
// #15300
D=A
//^^ push_d_to_stack
// #15301
@SP
// #15302
A=M
// #15303
M=D
// #15304
@SP
// #15305
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #15306
@0
// #15307
D=A
//^^ push_d_to_stack
// #15308
@SP
// #15309
A=M
// #15310
M=D
// #15311
@SP
// #15312
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_129)
// #15313
@RET_ADDR_129
// #15314
D=A
//^^ push_d_to_stack
// #15315
@SP
// #15316
A=M
// #15317
M=D
// #15318
@SP
// #15319
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_129)
//push return-address
// #15320
@LCL
// #15321
D=M
//^^ push_d_to_stack
// #15322
@SP
// #15323
A=M
// #15324
M=D
// #15325
@SP
// #15326
M=M+1
//vv push_d_to_stack
//push LCL
// #15327
@ARG
// #15328
D=M
//^^ push_d_to_stack
// #15329
@SP
// #15330
A=M
// #15331
M=D
// #15332
@SP
// #15333
M=M+1
//vv push_d_to_stack
//push ARG
// #15334
@THIS
// #15335
D=M
//^^ push_d_to_stack
// #15336
@SP
// #15337
A=M
// #15338
M=D
// #15339
@SP
// #15340
M=M+1
//vv push_d_to_stack
//push THIS
// #15341
@THAT
// #15342
D=M
//^^ push_d_to_stack
// #15343
@SP
// #15344
A=M
// #15345
M=D
// #15346
@SP
// #15347
M=M+1
//vv push_d_to_stack
//push THAT
// #15348
@SP
// #15349
D=M
// #15350
@ARG
// #15351
M=D
// #15352
@17
// #15353
D=A
// #15354
@ARG
// #15355
M=M-D // ARG = SP - args - 5
// #15356
@SP
// #15357
D=M
// #15358
@LCL
// #15359
M=D // LCL = SP
// #15360
@Output.create
// #15361
0;JMP
(RET_ADDR_129)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #15362
@SP
// #15363
M=M-1
// #15364
A=M
// #15365
D=M
//vv pop_stack_to_d
// #15366
@5
// #15367
M=D
//vv pop_to_loc{5)
//
//// push constant 86
//^^ push_constant(86)
// #15368
@86
// #15369
D=A
//^^ push_d_to_stack
// #15370
@SP
// #15371
A=M
// #15372
M=D
// #15373
@SP
// #15374
M=M+1
//vv push_d_to_stack
//vv push_constant(86)
//
//// push constant 51
//^^ push_constant(51)
// #15375
@51
// #15376
D=A
//^^ push_d_to_stack
// #15377
@SP
// #15378
A=M
// #15379
M=D
// #15380
@SP
// #15381
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #15382
@51
// #15383
D=A
//^^ push_d_to_stack
// #15384
@SP
// #15385
A=M
// #15386
M=D
// #15387
@SP
// #15388
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #15389
@51
// #15390
D=A
//^^ push_d_to_stack
// #15391
@SP
// #15392
A=M
// #15393
M=D
// #15394
@SP
// #15395
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #15396
@51
// #15397
D=A
//^^ push_d_to_stack
// #15398
@SP
// #15399
A=M
// #15400
M=D
// #15401
@SP
// #15402
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #15403
@51
// #15404
D=A
//^^ push_d_to_stack
// #15405
@SP
// #15406
A=M
// #15407
M=D
// #15408
@SP
// #15409
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #15410
@30
// #15411
D=A
//^^ push_d_to_stack
// #15412
@SP
// #15413
A=M
// #15414
M=D
// #15415
@SP
// #15416
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 30
//^^ push_constant(30)
// #15417
@30
// #15418
D=A
//^^ push_d_to_stack
// #15419
@SP
// #15420
A=M
// #15421
M=D
// #15422
@SP
// #15423
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 12
//^^ push_constant(12)
// #15424
@12
// #15425
D=A
//^^ push_d_to_stack
// #15426
@SP
// #15427
A=M
// #15428
M=D
// #15429
@SP
// #15430
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #15431
@12
// #15432
D=A
//^^ push_d_to_stack
// #15433
@SP
// #15434
A=M
// #15435
M=D
// #15436
@SP
// #15437
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 0
//^^ push_constant(0)
// #15438
@0
// #15439
D=A
//^^ push_d_to_stack
// #15440
@SP
// #15441
A=M
// #15442
M=D
// #15443
@SP
// #15444
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #15445
@0
// #15446
D=A
//^^ push_d_to_stack
// #15447
@SP
// #15448
A=M
// #15449
M=D
// #15450
@SP
// #15451
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_130)
// #15452
@RET_ADDR_130
// #15453
D=A
//^^ push_d_to_stack
// #15454
@SP
// #15455
A=M
// #15456
M=D
// #15457
@SP
// #15458
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_130)
//push return-address
// #15459
@LCL
// #15460
D=M
//^^ push_d_to_stack
// #15461
@SP
// #15462
A=M
// #15463
M=D
// #15464
@SP
// #15465
M=M+1
//vv push_d_to_stack
//push LCL
// #15466
@ARG
// #15467
D=M
//^^ push_d_to_stack
// #15468
@SP
// #15469
A=M
// #15470
M=D
// #15471
@SP
// #15472
M=M+1
//vv push_d_to_stack
//push ARG
// #15473
@THIS
// #15474
D=M
//^^ push_d_to_stack
// #15475
@SP
// #15476
A=M
// #15477
M=D
// #15478
@SP
// #15479
M=M+1
//vv push_d_to_stack
//push THIS
// #15480
@THAT
// #15481
D=M
//^^ push_d_to_stack
// #15482
@SP
// #15483
A=M
// #15484
M=D
// #15485
@SP
// #15486
M=M+1
//vv push_d_to_stack
//push THAT
// #15487
@SP
// #15488
D=M
// #15489
@ARG
// #15490
M=D
// #15491
@17
// #15492
D=A
// #15493
@ARG
// #15494
M=M-D // ARG = SP - args - 5
// #15495
@SP
// #15496
D=M
// #15497
@LCL
// #15498
M=D // LCL = SP
// #15499
@Output.create
// #15500
0;JMP
(RET_ADDR_130)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #15501
@SP
// #15502
M=M-1
// #15503
A=M
// #15504
D=M
//vv pop_stack_to_d
// #15505
@5
// #15506
M=D
//vv pop_to_loc{5)
//
//// push constant 87
//^^ push_constant(87)
// #15507
@87
// #15508
D=A
//^^ push_d_to_stack
// #15509
@SP
// #15510
A=M
// #15511
M=D
// #15512
@SP
// #15513
M=M+1
//vv push_d_to_stack
//vv push_constant(87)
//
//// push constant 51
//^^ push_constant(51)
// #15514
@51
// #15515
D=A
//^^ push_d_to_stack
// #15516
@SP
// #15517
A=M
// #15518
M=D
// #15519
@SP
// #15520
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #15521
@51
// #15522
D=A
//^^ push_d_to_stack
// #15523
@SP
// #15524
A=M
// #15525
M=D
// #15526
@SP
// #15527
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #15528
@51
// #15529
D=A
//^^ push_d_to_stack
// #15530
@SP
// #15531
A=M
// #15532
M=D
// #15533
@SP
// #15534
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #15535
@51
// #15536
D=A
//^^ push_d_to_stack
// #15537
@SP
// #15538
A=M
// #15539
M=D
// #15540
@SP
// #15541
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #15542
@51
// #15543
D=A
//^^ push_d_to_stack
// #15544
@SP
// #15545
A=M
// #15546
M=D
// #15547
@SP
// #15548
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 63
//^^ push_constant(63)
// #15549
@63
// #15550
D=A
//^^ push_d_to_stack
// #15551
@SP
// #15552
A=M
// #15553
M=D
// #15554
@SP
// #15555
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 63
//^^ push_constant(63)
// #15556
@63
// #15557
D=A
//^^ push_d_to_stack
// #15558
@SP
// #15559
A=M
// #15560
M=D
// #15561
@SP
// #15562
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 63
//^^ push_constant(63)
// #15563
@63
// #15564
D=A
//^^ push_d_to_stack
// #15565
@SP
// #15566
A=M
// #15567
M=D
// #15568
@SP
// #15569
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 18
//^^ push_constant(18)
// #15570
@18
// #15571
D=A
//^^ push_d_to_stack
// #15572
@SP
// #15573
A=M
// #15574
M=D
// #15575
@SP
// #15576
M=M+1
//vv push_d_to_stack
//vv push_constant(18)
//
//// push constant 0
//^^ push_constant(0)
// #15577
@0
// #15578
D=A
//^^ push_d_to_stack
// #15579
@SP
// #15580
A=M
// #15581
M=D
// #15582
@SP
// #15583
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #15584
@0
// #15585
D=A
//^^ push_d_to_stack
// #15586
@SP
// #15587
A=M
// #15588
M=D
// #15589
@SP
// #15590
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_131)
// #15591
@RET_ADDR_131
// #15592
D=A
//^^ push_d_to_stack
// #15593
@SP
// #15594
A=M
// #15595
M=D
// #15596
@SP
// #15597
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_131)
//push return-address
// #15598
@LCL
// #15599
D=M
//^^ push_d_to_stack
// #15600
@SP
// #15601
A=M
// #15602
M=D
// #15603
@SP
// #15604
M=M+1
//vv push_d_to_stack
//push LCL
// #15605
@ARG
// #15606
D=M
//^^ push_d_to_stack
// #15607
@SP
// #15608
A=M
// #15609
M=D
// #15610
@SP
// #15611
M=M+1
//vv push_d_to_stack
//push ARG
// #15612
@THIS
// #15613
D=M
//^^ push_d_to_stack
// #15614
@SP
// #15615
A=M
// #15616
M=D
// #15617
@SP
// #15618
M=M+1
//vv push_d_to_stack
//push THIS
// #15619
@THAT
// #15620
D=M
//^^ push_d_to_stack
// #15621
@SP
// #15622
A=M
// #15623
M=D
// #15624
@SP
// #15625
M=M+1
//vv push_d_to_stack
//push THAT
// #15626
@SP
// #15627
D=M
// #15628
@ARG
// #15629
M=D
// #15630
@17
// #15631
D=A
// #15632
@ARG
// #15633
M=M-D // ARG = SP - args - 5
// #15634
@SP
// #15635
D=M
// #15636
@LCL
// #15637
M=D // LCL = SP
// #15638
@Output.create
// #15639
0;JMP
(RET_ADDR_131)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #15640
@SP
// #15641
M=M-1
// #15642
A=M
// #15643
D=M
//vv pop_stack_to_d
// #15644
@5
// #15645
M=D
//vv pop_to_loc{5)
//
//// push constant 88
//^^ push_constant(88)
// #15646
@88
// #15647
D=A
//^^ push_d_to_stack
// #15648
@SP
// #15649
A=M
// #15650
M=D
// #15651
@SP
// #15652
M=M+1
//vv push_d_to_stack
//vv push_constant(88)
//
//// push constant 51
//^^ push_constant(51)
// #15653
@51
// #15654
D=A
//^^ push_d_to_stack
// #15655
@SP
// #15656
A=M
// #15657
M=D
// #15658
@SP
// #15659
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #15660
@51
// #15661
D=A
//^^ push_d_to_stack
// #15662
@SP
// #15663
A=M
// #15664
M=D
// #15665
@SP
// #15666
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #15667
@30
// #15668
D=A
//^^ push_d_to_stack
// #15669
@SP
// #15670
A=M
// #15671
M=D
// #15672
@SP
// #15673
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 30
//^^ push_constant(30)
// #15674
@30
// #15675
D=A
//^^ push_d_to_stack
// #15676
@SP
// #15677
A=M
// #15678
M=D
// #15679
@SP
// #15680
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 12
//^^ push_constant(12)
// #15681
@12
// #15682
D=A
//^^ push_d_to_stack
// #15683
@SP
// #15684
A=M
// #15685
M=D
// #15686
@SP
// #15687
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 30
//^^ push_constant(30)
// #15688
@30
// #15689
D=A
//^^ push_d_to_stack
// #15690
@SP
// #15691
A=M
// #15692
M=D
// #15693
@SP
// #15694
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 30
//^^ push_constant(30)
// #15695
@30
// #15696
D=A
//^^ push_d_to_stack
// #15697
@SP
// #15698
A=M
// #15699
M=D
// #15700
@SP
// #15701
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 51
//^^ push_constant(51)
// #15702
@51
// #15703
D=A
//^^ push_d_to_stack
// #15704
@SP
// #15705
A=M
// #15706
M=D
// #15707
@SP
// #15708
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #15709
@51
// #15710
D=A
//^^ push_d_to_stack
// #15711
@SP
// #15712
A=M
// #15713
M=D
// #15714
@SP
// #15715
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 0
//^^ push_constant(0)
// #15716
@0
// #15717
D=A
//^^ push_d_to_stack
// #15718
@SP
// #15719
A=M
// #15720
M=D
// #15721
@SP
// #15722
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #15723
@0
// #15724
D=A
//^^ push_d_to_stack
// #15725
@SP
// #15726
A=M
// #15727
M=D
// #15728
@SP
// #15729
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_132)
// #15730
@RET_ADDR_132
// #15731
D=A
//^^ push_d_to_stack
// #15732
@SP
// #15733
A=M
// #15734
M=D
// #15735
@SP
// #15736
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_132)
//push return-address
// #15737
@LCL
// #15738
D=M
//^^ push_d_to_stack
// #15739
@SP
// #15740
A=M
// #15741
M=D
// #15742
@SP
// #15743
M=M+1
//vv push_d_to_stack
//push LCL
// #15744
@ARG
// #15745
D=M
//^^ push_d_to_stack
// #15746
@SP
// #15747
A=M
// #15748
M=D
// #15749
@SP
// #15750
M=M+1
//vv push_d_to_stack
//push ARG
// #15751
@THIS
// #15752
D=M
//^^ push_d_to_stack
// #15753
@SP
// #15754
A=M
// #15755
M=D
// #15756
@SP
// #15757
M=M+1
//vv push_d_to_stack
//push THIS
// #15758
@THAT
// #15759
D=M
//^^ push_d_to_stack
// #15760
@SP
// #15761
A=M
// #15762
M=D
// #15763
@SP
// #15764
M=M+1
//vv push_d_to_stack
//push THAT
// #15765
@SP
// #15766
D=M
// #15767
@ARG
// #15768
M=D
// #15769
@17
// #15770
D=A
// #15771
@ARG
// #15772
M=M-D // ARG = SP - args - 5
// #15773
@SP
// #15774
D=M
// #15775
@LCL
// #15776
M=D // LCL = SP
// #15777
@Output.create
// #15778
0;JMP
(RET_ADDR_132)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #15779
@SP
// #15780
M=M-1
// #15781
A=M
// #15782
D=M
//vv pop_stack_to_d
// #15783
@5
// #15784
M=D
//vv pop_to_loc{5)
//
//// push constant 89
//^^ push_constant(89)
// #15785
@89
// #15786
D=A
//^^ push_d_to_stack
// #15787
@SP
// #15788
A=M
// #15789
M=D
// #15790
@SP
// #15791
M=M+1
//vv push_d_to_stack
//vv push_constant(89)
//
//// push constant 51
//^^ push_constant(51)
// #15792
@51
// #15793
D=A
//^^ push_d_to_stack
// #15794
@SP
// #15795
A=M
// #15796
M=D
// #15797
@SP
// #15798
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #15799
@51
// #15800
D=A
//^^ push_d_to_stack
// #15801
@SP
// #15802
A=M
// #15803
M=D
// #15804
@SP
// #15805
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #15806
@51
// #15807
D=A
//^^ push_d_to_stack
// #15808
@SP
// #15809
A=M
// #15810
M=D
// #15811
@SP
// #15812
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #15813
@51
// #15814
D=A
//^^ push_d_to_stack
// #15815
@SP
// #15816
A=M
// #15817
M=D
// #15818
@SP
// #15819
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #15820
@30
// #15821
D=A
//^^ push_d_to_stack
// #15822
@SP
// #15823
A=M
// #15824
M=D
// #15825
@SP
// #15826
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 12
//^^ push_constant(12)
// #15827
@12
// #15828
D=A
//^^ push_d_to_stack
// #15829
@SP
// #15830
A=M
// #15831
M=D
// #15832
@SP
// #15833
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #15834
@12
// #15835
D=A
//^^ push_d_to_stack
// #15836
@SP
// #15837
A=M
// #15838
M=D
// #15839
@SP
// #15840
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #15841
@12
// #15842
D=A
//^^ push_d_to_stack
// #15843
@SP
// #15844
A=M
// #15845
M=D
// #15846
@SP
// #15847
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 30
//^^ push_constant(30)
// #15848
@30
// #15849
D=A
//^^ push_d_to_stack
// #15850
@SP
// #15851
A=M
// #15852
M=D
// #15853
@SP
// #15854
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 0
//^^ push_constant(0)
// #15855
@0
// #15856
D=A
//^^ push_d_to_stack
// #15857
@SP
// #15858
A=M
// #15859
M=D
// #15860
@SP
// #15861
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #15862
@0
// #15863
D=A
//^^ push_d_to_stack
// #15864
@SP
// #15865
A=M
// #15866
M=D
// #15867
@SP
// #15868
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_133)
// #15869
@RET_ADDR_133
// #15870
D=A
//^^ push_d_to_stack
// #15871
@SP
// #15872
A=M
// #15873
M=D
// #15874
@SP
// #15875
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_133)
//push return-address
// #15876
@LCL
// #15877
D=M
//^^ push_d_to_stack
// #15878
@SP
// #15879
A=M
// #15880
M=D
// #15881
@SP
// #15882
M=M+1
//vv push_d_to_stack
//push LCL
// #15883
@ARG
// #15884
D=M
//^^ push_d_to_stack
// #15885
@SP
// #15886
A=M
// #15887
M=D
// #15888
@SP
// #15889
M=M+1
//vv push_d_to_stack
//push ARG
// #15890
@THIS
// #15891
D=M
//^^ push_d_to_stack
// #15892
@SP
// #15893
A=M
// #15894
M=D
// #15895
@SP
// #15896
M=M+1
//vv push_d_to_stack
//push THIS
// #15897
@THAT
// #15898
D=M
//^^ push_d_to_stack
// #15899
@SP
// #15900
A=M
// #15901
M=D
// #15902
@SP
// #15903
M=M+1
//vv push_d_to_stack
//push THAT
// #15904
@SP
// #15905
D=M
// #15906
@ARG
// #15907
M=D
// #15908
@17
// #15909
D=A
// #15910
@ARG
// #15911
M=M-D // ARG = SP - args - 5
// #15912
@SP
// #15913
D=M
// #15914
@LCL
// #15915
M=D // LCL = SP
// #15916
@Output.create
// #15917
0;JMP
(RET_ADDR_133)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #15918
@SP
// #15919
M=M-1
// #15920
A=M
// #15921
D=M
//vv pop_stack_to_d
// #15922
@5
// #15923
M=D
//vv pop_to_loc{5)
//
//// push constant 90
//^^ push_constant(90)
// #15924
@90
// #15925
D=A
//^^ push_d_to_stack
// #15926
@SP
// #15927
A=M
// #15928
M=D
// #15929
@SP
// #15930
M=M+1
//vv push_d_to_stack
//vv push_constant(90)
//
//// push constant 63
//^^ push_constant(63)
// #15931
@63
// #15932
D=A
//^^ push_d_to_stack
// #15933
@SP
// #15934
A=M
// #15935
M=D
// #15936
@SP
// #15937
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 51
//^^ push_constant(51)
// #15938
@51
// #15939
D=A
//^^ push_d_to_stack
// #15940
@SP
// #15941
A=M
// #15942
M=D
// #15943
@SP
// #15944
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 49
//^^ push_constant(49)
// #15945
@49
// #15946
D=A
//^^ push_d_to_stack
// #15947
@SP
// #15948
A=M
// #15949
M=D
// #15950
@SP
// #15951
M=M+1
//vv push_d_to_stack
//vv push_constant(49)
//
//// push constant 24
//^^ push_constant(24)
// #15952
@24
// #15953
D=A
//^^ push_d_to_stack
// #15954
@SP
// #15955
A=M
// #15956
M=D
// #15957
@SP
// #15958
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 12
//^^ push_constant(12)
// #15959
@12
// #15960
D=A
//^^ push_d_to_stack
// #15961
@SP
// #15962
A=M
// #15963
M=D
// #15964
@SP
// #15965
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 6
//^^ push_constant(6)
// #15966
@6
// #15967
D=A
//^^ push_d_to_stack
// #15968
@SP
// #15969
A=M
// #15970
M=D
// #15971
@SP
// #15972
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 35
//^^ push_constant(35)
// #15973
@35
// #15974
D=A
//^^ push_d_to_stack
// #15975
@SP
// #15976
A=M
// #15977
M=D
// #15978
@SP
// #15979
M=M+1
//vv push_d_to_stack
//vv push_constant(35)
//
//// push constant 51
//^^ push_constant(51)
// #15980
@51
// #15981
D=A
//^^ push_d_to_stack
// #15982
@SP
// #15983
A=M
// #15984
M=D
// #15985
@SP
// #15986
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 63
//^^ push_constant(63)
// #15987
@63
// #15988
D=A
//^^ push_d_to_stack
// #15989
@SP
// #15990
A=M
// #15991
M=D
// #15992
@SP
// #15993
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 0
//^^ push_constant(0)
// #15994
@0
// #15995
D=A
//^^ push_d_to_stack
// #15996
@SP
// #15997
A=M
// #15998
M=D
// #15999
@SP
// #16000
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16001
@0
// #16002
D=A
//^^ push_d_to_stack
// #16003
@SP
// #16004
A=M
// #16005
M=D
// #16006
@SP
// #16007
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_134)
// #16008
@RET_ADDR_134
// #16009
D=A
//^^ push_d_to_stack
// #16010
@SP
// #16011
A=M
// #16012
M=D
// #16013
@SP
// #16014
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_134)
//push return-address
// #16015
@LCL
// #16016
D=M
//^^ push_d_to_stack
// #16017
@SP
// #16018
A=M
// #16019
M=D
// #16020
@SP
// #16021
M=M+1
//vv push_d_to_stack
//push LCL
// #16022
@ARG
// #16023
D=M
//^^ push_d_to_stack
// #16024
@SP
// #16025
A=M
// #16026
M=D
// #16027
@SP
// #16028
M=M+1
//vv push_d_to_stack
//push ARG
// #16029
@THIS
// #16030
D=M
//^^ push_d_to_stack
// #16031
@SP
// #16032
A=M
// #16033
M=D
// #16034
@SP
// #16035
M=M+1
//vv push_d_to_stack
//push THIS
// #16036
@THAT
// #16037
D=M
//^^ push_d_to_stack
// #16038
@SP
// #16039
A=M
// #16040
M=D
// #16041
@SP
// #16042
M=M+1
//vv push_d_to_stack
//push THAT
// #16043
@SP
// #16044
D=M
// #16045
@ARG
// #16046
M=D
// #16047
@17
// #16048
D=A
// #16049
@ARG
// #16050
M=M-D // ARG = SP - args - 5
// #16051
@SP
// #16052
D=M
// #16053
@LCL
// #16054
M=D // LCL = SP
// #16055
@Output.create
// #16056
0;JMP
(RET_ADDR_134)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #16057
@SP
// #16058
M=M-1
// #16059
A=M
// #16060
D=M
//vv pop_stack_to_d
// #16061
@5
// #16062
M=D
//vv pop_to_loc{5)
//
//// push constant 91
//^^ push_constant(91)
// #16063
@91
// #16064
D=A
//^^ push_d_to_stack
// #16065
@SP
// #16066
A=M
// #16067
M=D
// #16068
@SP
// #16069
M=M+1
//vv push_d_to_stack
//vv push_constant(91)
//
//// push constant 30
//^^ push_constant(30)
// #16070
@30
// #16071
D=A
//^^ push_d_to_stack
// #16072
@SP
// #16073
A=M
// #16074
M=D
// #16075
@SP
// #16076
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 6
//^^ push_constant(6)
// #16077
@6
// #16078
D=A
//^^ push_d_to_stack
// #16079
@SP
// #16080
A=M
// #16081
M=D
// #16082
@SP
// #16083
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 6
//^^ push_constant(6)
// #16084
@6
// #16085
D=A
//^^ push_d_to_stack
// #16086
@SP
// #16087
A=M
// #16088
M=D
// #16089
@SP
// #16090
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 6
//^^ push_constant(6)
// #16091
@6
// #16092
D=A
//^^ push_d_to_stack
// #16093
@SP
// #16094
A=M
// #16095
M=D
// #16096
@SP
// #16097
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 6
//^^ push_constant(6)
// #16098
@6
// #16099
D=A
//^^ push_d_to_stack
// #16100
@SP
// #16101
A=M
// #16102
M=D
// #16103
@SP
// #16104
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 6
//^^ push_constant(6)
// #16105
@6
// #16106
D=A
//^^ push_d_to_stack
// #16107
@SP
// #16108
A=M
// #16109
M=D
// #16110
@SP
// #16111
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 6
//^^ push_constant(6)
// #16112
@6
// #16113
D=A
//^^ push_d_to_stack
// #16114
@SP
// #16115
A=M
// #16116
M=D
// #16117
@SP
// #16118
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 6
//^^ push_constant(6)
// #16119
@6
// #16120
D=A
//^^ push_d_to_stack
// #16121
@SP
// #16122
A=M
// #16123
M=D
// #16124
@SP
// #16125
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 30
//^^ push_constant(30)
// #16126
@30
// #16127
D=A
//^^ push_d_to_stack
// #16128
@SP
// #16129
A=M
// #16130
M=D
// #16131
@SP
// #16132
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 0
//^^ push_constant(0)
// #16133
@0
// #16134
D=A
//^^ push_d_to_stack
// #16135
@SP
// #16136
A=M
// #16137
M=D
// #16138
@SP
// #16139
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16140
@0
// #16141
D=A
//^^ push_d_to_stack
// #16142
@SP
// #16143
A=M
// #16144
M=D
// #16145
@SP
// #16146
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_135)
// #16147
@RET_ADDR_135
// #16148
D=A
//^^ push_d_to_stack
// #16149
@SP
// #16150
A=M
// #16151
M=D
// #16152
@SP
// #16153
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_135)
//push return-address
// #16154
@LCL
// #16155
D=M
//^^ push_d_to_stack
// #16156
@SP
// #16157
A=M
// #16158
M=D
// #16159
@SP
// #16160
M=M+1
//vv push_d_to_stack
//push LCL
// #16161
@ARG
// #16162
D=M
//^^ push_d_to_stack
// #16163
@SP
// #16164
A=M
// #16165
M=D
// #16166
@SP
// #16167
M=M+1
//vv push_d_to_stack
//push ARG
// #16168
@THIS
// #16169
D=M
//^^ push_d_to_stack
// #16170
@SP
// #16171
A=M
// #16172
M=D
// #16173
@SP
// #16174
M=M+1
//vv push_d_to_stack
//push THIS
// #16175
@THAT
// #16176
D=M
//^^ push_d_to_stack
// #16177
@SP
// #16178
A=M
// #16179
M=D
// #16180
@SP
// #16181
M=M+1
//vv push_d_to_stack
//push THAT
// #16182
@SP
// #16183
D=M
// #16184
@ARG
// #16185
M=D
// #16186
@17
// #16187
D=A
// #16188
@ARG
// #16189
M=M-D // ARG = SP - args - 5
// #16190
@SP
// #16191
D=M
// #16192
@LCL
// #16193
M=D // LCL = SP
// #16194
@Output.create
// #16195
0;JMP
(RET_ADDR_135)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #16196
@SP
// #16197
M=M-1
// #16198
A=M
// #16199
D=M
//vv pop_stack_to_d
// #16200
@5
// #16201
M=D
//vv pop_to_loc{5)
//
//// push constant 92
//^^ push_constant(92)
// #16202
@92
// #16203
D=A
//^^ push_d_to_stack
// #16204
@SP
// #16205
A=M
// #16206
M=D
// #16207
@SP
// #16208
M=M+1
//vv push_d_to_stack
//vv push_constant(92)
//
//// push constant 0
//^^ push_constant(0)
// #16209
@0
// #16210
D=A
//^^ push_d_to_stack
// #16211
@SP
// #16212
A=M
// #16213
M=D
// #16214
@SP
// #16215
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16216
@0
// #16217
D=A
//^^ push_d_to_stack
// #16218
@SP
// #16219
A=M
// #16220
M=D
// #16221
@SP
// #16222
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 1
//^^ push_constant(1)
// #16223
@1
// #16224
D=A
//^^ push_d_to_stack
// #16225
@SP
// #16226
A=M
// #16227
M=D
// #16228
@SP
// #16229
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// push constant 3
//^^ push_constant(3)
// #16230
@3
// #16231
D=A
//^^ push_d_to_stack
// #16232
@SP
// #16233
A=M
// #16234
M=D
// #16235
@SP
// #16236
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 6
//^^ push_constant(6)
// #16237
@6
// #16238
D=A
//^^ push_d_to_stack
// #16239
@SP
// #16240
A=M
// #16241
M=D
// #16242
@SP
// #16243
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 12
//^^ push_constant(12)
// #16244
@12
// #16245
D=A
//^^ push_d_to_stack
// #16246
@SP
// #16247
A=M
// #16248
M=D
// #16249
@SP
// #16250
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 24
//^^ push_constant(24)
// #16251
@24
// #16252
D=A
//^^ push_d_to_stack
// #16253
@SP
// #16254
A=M
// #16255
M=D
// #16256
@SP
// #16257
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 48
//^^ push_constant(48)
// #16258
@48
// #16259
D=A
//^^ push_d_to_stack
// #16260
@SP
// #16261
A=M
// #16262
M=D
// #16263
@SP
// #16264
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 32
//^^ push_constant(32)
// #16265
@32
// #16266
D=A
//^^ push_d_to_stack
// #16267
@SP
// #16268
A=M
// #16269
M=D
// #16270
@SP
// #16271
M=M+1
//vv push_d_to_stack
//vv push_constant(32)
//
//// push constant 0
//^^ push_constant(0)
// #16272
@0
// #16273
D=A
//^^ push_d_to_stack
// #16274
@SP
// #16275
A=M
// #16276
M=D
// #16277
@SP
// #16278
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16279
@0
// #16280
D=A
//^^ push_d_to_stack
// #16281
@SP
// #16282
A=M
// #16283
M=D
// #16284
@SP
// #16285
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_136)
// #16286
@RET_ADDR_136
// #16287
D=A
//^^ push_d_to_stack
// #16288
@SP
// #16289
A=M
// #16290
M=D
// #16291
@SP
// #16292
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_136)
//push return-address
// #16293
@LCL
// #16294
D=M
//^^ push_d_to_stack
// #16295
@SP
// #16296
A=M
// #16297
M=D
// #16298
@SP
// #16299
M=M+1
//vv push_d_to_stack
//push LCL
// #16300
@ARG
// #16301
D=M
//^^ push_d_to_stack
// #16302
@SP
// #16303
A=M
// #16304
M=D
// #16305
@SP
// #16306
M=M+1
//vv push_d_to_stack
//push ARG
// #16307
@THIS
// #16308
D=M
//^^ push_d_to_stack
// #16309
@SP
// #16310
A=M
// #16311
M=D
// #16312
@SP
// #16313
M=M+1
//vv push_d_to_stack
//push THIS
// #16314
@THAT
// #16315
D=M
//^^ push_d_to_stack
// #16316
@SP
// #16317
A=M
// #16318
M=D
// #16319
@SP
// #16320
M=M+1
//vv push_d_to_stack
//push THAT
// #16321
@SP
// #16322
D=M
// #16323
@ARG
// #16324
M=D
// #16325
@17
// #16326
D=A
// #16327
@ARG
// #16328
M=M-D // ARG = SP - args - 5
// #16329
@SP
// #16330
D=M
// #16331
@LCL
// #16332
M=D // LCL = SP
// #16333
@Output.create
// #16334
0;JMP
(RET_ADDR_136)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #16335
@SP
// #16336
M=M-1
// #16337
A=M
// #16338
D=M
//vv pop_stack_to_d
// #16339
@5
// #16340
M=D
//vv pop_to_loc{5)
//
//// push constant 93
//^^ push_constant(93)
// #16341
@93
// #16342
D=A
//^^ push_d_to_stack
// #16343
@SP
// #16344
A=M
// #16345
M=D
// #16346
@SP
// #16347
M=M+1
//vv push_d_to_stack
//vv push_constant(93)
//
//// push constant 30
//^^ push_constant(30)
// #16348
@30
// #16349
D=A
//^^ push_d_to_stack
// #16350
@SP
// #16351
A=M
// #16352
M=D
// #16353
@SP
// #16354
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 24
//^^ push_constant(24)
// #16355
@24
// #16356
D=A
//^^ push_d_to_stack
// #16357
@SP
// #16358
A=M
// #16359
M=D
// #16360
@SP
// #16361
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 24
//^^ push_constant(24)
// #16362
@24
// #16363
D=A
//^^ push_d_to_stack
// #16364
@SP
// #16365
A=M
// #16366
M=D
// #16367
@SP
// #16368
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 24
//^^ push_constant(24)
// #16369
@24
// #16370
D=A
//^^ push_d_to_stack
// #16371
@SP
// #16372
A=M
// #16373
M=D
// #16374
@SP
// #16375
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 24
//^^ push_constant(24)
// #16376
@24
// #16377
D=A
//^^ push_d_to_stack
// #16378
@SP
// #16379
A=M
// #16380
M=D
// #16381
@SP
// #16382
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 24
//^^ push_constant(24)
// #16383
@24
// #16384
D=A
//^^ push_d_to_stack
// #16385
@SP
// #16386
A=M
// #16387
M=D
// #16388
@SP
// #16389
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 24
//^^ push_constant(24)
// #16390
@24
// #16391
D=A
//^^ push_d_to_stack
// #16392
@SP
// #16393
A=M
// #16394
M=D
// #16395
@SP
// #16396
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 24
//^^ push_constant(24)
// #16397
@24
// #16398
D=A
//^^ push_d_to_stack
// #16399
@SP
// #16400
A=M
// #16401
M=D
// #16402
@SP
// #16403
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 30
//^^ push_constant(30)
// #16404
@30
// #16405
D=A
//^^ push_d_to_stack
// #16406
@SP
// #16407
A=M
// #16408
M=D
// #16409
@SP
// #16410
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 0
//^^ push_constant(0)
// #16411
@0
// #16412
D=A
//^^ push_d_to_stack
// #16413
@SP
// #16414
A=M
// #16415
M=D
// #16416
@SP
// #16417
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16418
@0
// #16419
D=A
//^^ push_d_to_stack
// #16420
@SP
// #16421
A=M
// #16422
M=D
// #16423
@SP
// #16424
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_137)
// #16425
@RET_ADDR_137
// #16426
D=A
//^^ push_d_to_stack
// #16427
@SP
// #16428
A=M
// #16429
M=D
// #16430
@SP
// #16431
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_137)
//push return-address
// #16432
@LCL
// #16433
D=M
//^^ push_d_to_stack
// #16434
@SP
// #16435
A=M
// #16436
M=D
// #16437
@SP
// #16438
M=M+1
//vv push_d_to_stack
//push LCL
// #16439
@ARG
// #16440
D=M
//^^ push_d_to_stack
// #16441
@SP
// #16442
A=M
// #16443
M=D
// #16444
@SP
// #16445
M=M+1
//vv push_d_to_stack
//push ARG
// #16446
@THIS
// #16447
D=M
//^^ push_d_to_stack
// #16448
@SP
// #16449
A=M
// #16450
M=D
// #16451
@SP
// #16452
M=M+1
//vv push_d_to_stack
//push THIS
// #16453
@THAT
// #16454
D=M
//^^ push_d_to_stack
// #16455
@SP
// #16456
A=M
// #16457
M=D
// #16458
@SP
// #16459
M=M+1
//vv push_d_to_stack
//push THAT
// #16460
@SP
// #16461
D=M
// #16462
@ARG
// #16463
M=D
// #16464
@17
// #16465
D=A
// #16466
@ARG
// #16467
M=M-D // ARG = SP - args - 5
// #16468
@SP
// #16469
D=M
// #16470
@LCL
// #16471
M=D // LCL = SP
// #16472
@Output.create
// #16473
0;JMP
(RET_ADDR_137)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #16474
@SP
// #16475
M=M-1
// #16476
A=M
// #16477
D=M
//vv pop_stack_to_d
// #16478
@5
// #16479
M=D
//vv pop_to_loc{5)
//
//// push constant 94
//^^ push_constant(94)
// #16480
@94
// #16481
D=A
//^^ push_d_to_stack
// #16482
@SP
// #16483
A=M
// #16484
M=D
// #16485
@SP
// #16486
M=M+1
//vv push_d_to_stack
//vv push_constant(94)
//
//// push constant 8
//^^ push_constant(8)
// #16487
@8
// #16488
D=A
//^^ push_d_to_stack
// #16489
@SP
// #16490
A=M
// #16491
M=D
// #16492
@SP
// #16493
M=M+1
//vv push_d_to_stack
//vv push_constant(8)
//
//// push constant 28
//^^ push_constant(28)
// #16494
@28
// #16495
D=A
//^^ push_d_to_stack
// #16496
@SP
// #16497
A=M
// #16498
M=D
// #16499
@SP
// #16500
M=M+1
//vv push_d_to_stack
//vv push_constant(28)
//
//// push constant 54
//^^ push_constant(54)
// #16501
@54
// #16502
D=A
//^^ push_d_to_stack
// #16503
@SP
// #16504
A=M
// #16505
M=D
// #16506
@SP
// #16507
M=M+1
//vv push_d_to_stack
//vv push_constant(54)
//
//// push constant 0
//^^ push_constant(0)
// #16508
@0
// #16509
D=A
//^^ push_d_to_stack
// #16510
@SP
// #16511
A=M
// #16512
M=D
// #16513
@SP
// #16514
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16515
@0
// #16516
D=A
//^^ push_d_to_stack
// #16517
@SP
// #16518
A=M
// #16519
M=D
// #16520
@SP
// #16521
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16522
@0
// #16523
D=A
//^^ push_d_to_stack
// #16524
@SP
// #16525
A=M
// #16526
M=D
// #16527
@SP
// #16528
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16529
@0
// #16530
D=A
//^^ push_d_to_stack
// #16531
@SP
// #16532
A=M
// #16533
M=D
// #16534
@SP
// #16535
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16536
@0
// #16537
D=A
//^^ push_d_to_stack
// #16538
@SP
// #16539
A=M
// #16540
M=D
// #16541
@SP
// #16542
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16543
@0
// #16544
D=A
//^^ push_d_to_stack
// #16545
@SP
// #16546
A=M
// #16547
M=D
// #16548
@SP
// #16549
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16550
@0
// #16551
D=A
//^^ push_d_to_stack
// #16552
@SP
// #16553
A=M
// #16554
M=D
// #16555
@SP
// #16556
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16557
@0
// #16558
D=A
//^^ push_d_to_stack
// #16559
@SP
// #16560
A=M
// #16561
M=D
// #16562
@SP
// #16563
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_138)
// #16564
@RET_ADDR_138
// #16565
D=A
//^^ push_d_to_stack
// #16566
@SP
// #16567
A=M
// #16568
M=D
// #16569
@SP
// #16570
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_138)
//push return-address
// #16571
@LCL
// #16572
D=M
//^^ push_d_to_stack
// #16573
@SP
// #16574
A=M
// #16575
M=D
// #16576
@SP
// #16577
M=M+1
//vv push_d_to_stack
//push LCL
// #16578
@ARG
// #16579
D=M
//^^ push_d_to_stack
// #16580
@SP
// #16581
A=M
// #16582
M=D
// #16583
@SP
// #16584
M=M+1
//vv push_d_to_stack
//push ARG
// #16585
@THIS
// #16586
D=M
//^^ push_d_to_stack
// #16587
@SP
// #16588
A=M
// #16589
M=D
// #16590
@SP
// #16591
M=M+1
//vv push_d_to_stack
//push THIS
// #16592
@THAT
// #16593
D=M
//^^ push_d_to_stack
// #16594
@SP
// #16595
A=M
// #16596
M=D
// #16597
@SP
// #16598
M=M+1
//vv push_d_to_stack
//push THAT
// #16599
@SP
// #16600
D=M
// #16601
@ARG
// #16602
M=D
// #16603
@17
// #16604
D=A
// #16605
@ARG
// #16606
M=M-D // ARG = SP - args - 5
// #16607
@SP
// #16608
D=M
// #16609
@LCL
// #16610
M=D // LCL = SP
// #16611
@Output.create
// #16612
0;JMP
(RET_ADDR_138)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #16613
@SP
// #16614
M=M-1
// #16615
A=M
// #16616
D=M
//vv pop_stack_to_d
// #16617
@5
// #16618
M=D
//vv pop_to_loc{5)
//
//// push constant 95
//^^ push_constant(95)
// #16619
@95
// #16620
D=A
//^^ push_d_to_stack
// #16621
@SP
// #16622
A=M
// #16623
M=D
// #16624
@SP
// #16625
M=M+1
//vv push_d_to_stack
//vv push_constant(95)
//
//// push constant 0
//^^ push_constant(0)
// #16626
@0
// #16627
D=A
//^^ push_d_to_stack
// #16628
@SP
// #16629
A=M
// #16630
M=D
// #16631
@SP
// #16632
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16633
@0
// #16634
D=A
//^^ push_d_to_stack
// #16635
@SP
// #16636
A=M
// #16637
M=D
// #16638
@SP
// #16639
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16640
@0
// #16641
D=A
//^^ push_d_to_stack
// #16642
@SP
// #16643
A=M
// #16644
M=D
// #16645
@SP
// #16646
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16647
@0
// #16648
D=A
//^^ push_d_to_stack
// #16649
@SP
// #16650
A=M
// #16651
M=D
// #16652
@SP
// #16653
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16654
@0
// #16655
D=A
//^^ push_d_to_stack
// #16656
@SP
// #16657
A=M
// #16658
M=D
// #16659
@SP
// #16660
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16661
@0
// #16662
D=A
//^^ push_d_to_stack
// #16663
@SP
// #16664
A=M
// #16665
M=D
// #16666
@SP
// #16667
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16668
@0
// #16669
D=A
//^^ push_d_to_stack
// #16670
@SP
// #16671
A=M
// #16672
M=D
// #16673
@SP
// #16674
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16675
@0
// #16676
D=A
//^^ push_d_to_stack
// #16677
@SP
// #16678
A=M
// #16679
M=D
// #16680
@SP
// #16681
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16682
@0
// #16683
D=A
//^^ push_d_to_stack
// #16684
@SP
// #16685
A=M
// #16686
M=D
// #16687
@SP
// #16688
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 63
//^^ push_constant(63)
// #16689
@63
// #16690
D=A
//^^ push_d_to_stack
// #16691
@SP
// #16692
A=M
// #16693
M=D
// #16694
@SP
// #16695
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 0
//^^ push_constant(0)
// #16696
@0
// #16697
D=A
//^^ push_d_to_stack
// #16698
@SP
// #16699
A=M
// #16700
M=D
// #16701
@SP
// #16702
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_139)
// #16703
@RET_ADDR_139
// #16704
D=A
//^^ push_d_to_stack
// #16705
@SP
// #16706
A=M
// #16707
M=D
// #16708
@SP
// #16709
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_139)
//push return-address
// #16710
@LCL
// #16711
D=M
//^^ push_d_to_stack
// #16712
@SP
// #16713
A=M
// #16714
M=D
// #16715
@SP
// #16716
M=M+1
//vv push_d_to_stack
//push LCL
// #16717
@ARG
// #16718
D=M
//^^ push_d_to_stack
// #16719
@SP
// #16720
A=M
// #16721
M=D
// #16722
@SP
// #16723
M=M+1
//vv push_d_to_stack
//push ARG
// #16724
@THIS
// #16725
D=M
//^^ push_d_to_stack
// #16726
@SP
// #16727
A=M
// #16728
M=D
// #16729
@SP
// #16730
M=M+1
//vv push_d_to_stack
//push THIS
// #16731
@THAT
// #16732
D=M
//^^ push_d_to_stack
// #16733
@SP
// #16734
A=M
// #16735
M=D
// #16736
@SP
// #16737
M=M+1
//vv push_d_to_stack
//push THAT
// #16738
@SP
// #16739
D=M
// #16740
@ARG
// #16741
M=D
// #16742
@17
// #16743
D=A
// #16744
@ARG
// #16745
M=M-D // ARG = SP - args - 5
// #16746
@SP
// #16747
D=M
// #16748
@LCL
// #16749
M=D // LCL = SP
// #16750
@Output.create
// #16751
0;JMP
(RET_ADDR_139)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #16752
@SP
// #16753
M=M-1
// #16754
A=M
// #16755
D=M
//vv pop_stack_to_d
// #16756
@5
// #16757
M=D
//vv pop_to_loc{5)
//
//// push constant 96
//^^ push_constant(96)
// #16758
@96
// #16759
D=A
//^^ push_d_to_stack
// #16760
@SP
// #16761
A=M
// #16762
M=D
// #16763
@SP
// #16764
M=M+1
//vv push_d_to_stack
//vv push_constant(96)
//
//// push constant 6
//^^ push_constant(6)
// #16765
@6
// #16766
D=A
//^^ push_d_to_stack
// #16767
@SP
// #16768
A=M
// #16769
M=D
// #16770
@SP
// #16771
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 12
//^^ push_constant(12)
// #16772
@12
// #16773
D=A
//^^ push_d_to_stack
// #16774
@SP
// #16775
A=M
// #16776
M=D
// #16777
@SP
// #16778
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 24
//^^ push_constant(24)
// #16779
@24
// #16780
D=A
//^^ push_d_to_stack
// #16781
@SP
// #16782
A=M
// #16783
M=D
// #16784
@SP
// #16785
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 0
//^^ push_constant(0)
// #16786
@0
// #16787
D=A
//^^ push_d_to_stack
// #16788
@SP
// #16789
A=M
// #16790
M=D
// #16791
@SP
// #16792
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16793
@0
// #16794
D=A
//^^ push_d_to_stack
// #16795
@SP
// #16796
A=M
// #16797
M=D
// #16798
@SP
// #16799
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16800
@0
// #16801
D=A
//^^ push_d_to_stack
// #16802
@SP
// #16803
A=M
// #16804
M=D
// #16805
@SP
// #16806
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16807
@0
// #16808
D=A
//^^ push_d_to_stack
// #16809
@SP
// #16810
A=M
// #16811
M=D
// #16812
@SP
// #16813
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16814
@0
// #16815
D=A
//^^ push_d_to_stack
// #16816
@SP
// #16817
A=M
// #16818
M=D
// #16819
@SP
// #16820
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16821
@0
// #16822
D=A
//^^ push_d_to_stack
// #16823
@SP
// #16824
A=M
// #16825
M=D
// #16826
@SP
// #16827
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16828
@0
// #16829
D=A
//^^ push_d_to_stack
// #16830
@SP
// #16831
A=M
// #16832
M=D
// #16833
@SP
// #16834
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16835
@0
// #16836
D=A
//^^ push_d_to_stack
// #16837
@SP
// #16838
A=M
// #16839
M=D
// #16840
@SP
// #16841
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_140)
// #16842
@RET_ADDR_140
// #16843
D=A
//^^ push_d_to_stack
// #16844
@SP
// #16845
A=M
// #16846
M=D
// #16847
@SP
// #16848
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_140)
//push return-address
// #16849
@LCL
// #16850
D=M
//^^ push_d_to_stack
// #16851
@SP
// #16852
A=M
// #16853
M=D
// #16854
@SP
// #16855
M=M+1
//vv push_d_to_stack
//push LCL
// #16856
@ARG
// #16857
D=M
//^^ push_d_to_stack
// #16858
@SP
// #16859
A=M
// #16860
M=D
// #16861
@SP
// #16862
M=M+1
//vv push_d_to_stack
//push ARG
// #16863
@THIS
// #16864
D=M
//^^ push_d_to_stack
// #16865
@SP
// #16866
A=M
// #16867
M=D
// #16868
@SP
// #16869
M=M+1
//vv push_d_to_stack
//push THIS
// #16870
@THAT
// #16871
D=M
//^^ push_d_to_stack
// #16872
@SP
// #16873
A=M
// #16874
M=D
// #16875
@SP
// #16876
M=M+1
//vv push_d_to_stack
//push THAT
// #16877
@SP
// #16878
D=M
// #16879
@ARG
// #16880
M=D
// #16881
@17
// #16882
D=A
// #16883
@ARG
// #16884
M=M-D // ARG = SP - args - 5
// #16885
@SP
// #16886
D=M
// #16887
@LCL
// #16888
M=D // LCL = SP
// #16889
@Output.create
// #16890
0;JMP
(RET_ADDR_140)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #16891
@SP
// #16892
M=M-1
// #16893
A=M
// #16894
D=M
//vv pop_stack_to_d
// #16895
@5
// #16896
M=D
//vv pop_to_loc{5)
//
//// push constant 97
//^^ push_constant(97)
// #16897
@97
// #16898
D=A
//^^ push_d_to_stack
// #16899
@SP
// #16900
A=M
// #16901
M=D
// #16902
@SP
// #16903
M=M+1
//vv push_d_to_stack
//vv push_constant(97)
//
//// push constant 0
//^^ push_constant(0)
// #16904
@0
// #16905
D=A
//^^ push_d_to_stack
// #16906
@SP
// #16907
A=M
// #16908
M=D
// #16909
@SP
// #16910
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16911
@0
// #16912
D=A
//^^ push_d_to_stack
// #16913
@SP
// #16914
A=M
// #16915
M=D
// #16916
@SP
// #16917
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16918
@0
// #16919
D=A
//^^ push_d_to_stack
// #16920
@SP
// #16921
A=M
// #16922
M=D
// #16923
@SP
// #16924
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 14
//^^ push_constant(14)
// #16925
@14
// #16926
D=A
//^^ push_d_to_stack
// #16927
@SP
// #16928
A=M
// #16929
M=D
// #16930
@SP
// #16931
M=M+1
//vv push_d_to_stack
//vv push_constant(14)
//
//// push constant 24
//^^ push_constant(24)
// #16932
@24
// #16933
D=A
//^^ push_d_to_stack
// #16934
@SP
// #16935
A=M
// #16936
M=D
// #16937
@SP
// #16938
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 30
//^^ push_constant(30)
// #16939
@30
// #16940
D=A
//^^ push_d_to_stack
// #16941
@SP
// #16942
A=M
// #16943
M=D
// #16944
@SP
// #16945
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 27
//^^ push_constant(27)
// #16946
@27
// #16947
D=A
//^^ push_d_to_stack
// #16948
@SP
// #16949
A=M
// #16950
M=D
// #16951
@SP
// #16952
M=M+1
//vv push_d_to_stack
//vv push_constant(27)
//
//// push constant 27
//^^ push_constant(27)
// #16953
@27
// #16954
D=A
//^^ push_d_to_stack
// #16955
@SP
// #16956
A=M
// #16957
M=D
// #16958
@SP
// #16959
M=M+1
//vv push_d_to_stack
//vv push_constant(27)
//
//// push constant 54
//^^ push_constant(54)
// #16960
@54
// #16961
D=A
//^^ push_d_to_stack
// #16962
@SP
// #16963
A=M
// #16964
M=D
// #16965
@SP
// #16966
M=M+1
//vv push_d_to_stack
//vv push_constant(54)
//
//// push constant 0
//^^ push_constant(0)
// #16967
@0
// #16968
D=A
//^^ push_d_to_stack
// #16969
@SP
// #16970
A=M
// #16971
M=D
// #16972
@SP
// #16973
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #16974
@0
// #16975
D=A
//^^ push_d_to_stack
// #16976
@SP
// #16977
A=M
// #16978
M=D
// #16979
@SP
// #16980
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_141)
// #16981
@RET_ADDR_141
// #16982
D=A
//^^ push_d_to_stack
// #16983
@SP
// #16984
A=M
// #16985
M=D
// #16986
@SP
// #16987
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_141)
//push return-address
// #16988
@LCL
// #16989
D=M
//^^ push_d_to_stack
// #16990
@SP
// #16991
A=M
// #16992
M=D
// #16993
@SP
// #16994
M=M+1
//vv push_d_to_stack
//push LCL
// #16995
@ARG
// #16996
D=M
//^^ push_d_to_stack
// #16997
@SP
// #16998
A=M
// #16999
M=D
// #17000
@SP
// #17001
M=M+1
//vv push_d_to_stack
//push ARG
// #17002
@THIS
// #17003
D=M
//^^ push_d_to_stack
// #17004
@SP
// #17005
A=M
// #17006
M=D
// #17007
@SP
// #17008
M=M+1
//vv push_d_to_stack
//push THIS
// #17009
@THAT
// #17010
D=M
//^^ push_d_to_stack
// #17011
@SP
// #17012
A=M
// #17013
M=D
// #17014
@SP
// #17015
M=M+1
//vv push_d_to_stack
//push THAT
// #17016
@SP
// #17017
D=M
// #17018
@ARG
// #17019
M=D
// #17020
@17
// #17021
D=A
// #17022
@ARG
// #17023
M=M-D // ARG = SP - args - 5
// #17024
@SP
// #17025
D=M
// #17026
@LCL
// #17027
M=D // LCL = SP
// #17028
@Output.create
// #17029
0;JMP
(RET_ADDR_141)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #17030
@SP
// #17031
M=M-1
// #17032
A=M
// #17033
D=M
//vv pop_stack_to_d
// #17034
@5
// #17035
M=D
//vv pop_to_loc{5)
//
//// push constant 98
//^^ push_constant(98)
// #17036
@98
// #17037
D=A
//^^ push_d_to_stack
// #17038
@SP
// #17039
A=M
// #17040
M=D
// #17041
@SP
// #17042
M=M+1
//vv push_d_to_stack
//vv push_constant(98)
//
//// push constant 3
//^^ push_constant(3)
// #17043
@3
// #17044
D=A
//^^ push_d_to_stack
// #17045
@SP
// #17046
A=M
// #17047
M=D
// #17048
@SP
// #17049
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 3
//^^ push_constant(3)
// #17050
@3
// #17051
D=A
//^^ push_d_to_stack
// #17052
@SP
// #17053
A=M
// #17054
M=D
// #17055
@SP
// #17056
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 3
//^^ push_constant(3)
// #17057
@3
// #17058
D=A
//^^ push_d_to_stack
// #17059
@SP
// #17060
A=M
// #17061
M=D
// #17062
@SP
// #17063
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 15
//^^ push_constant(15)
// #17064
@15
// #17065
D=A
//^^ push_d_to_stack
// #17066
@SP
// #17067
A=M
// #17068
M=D
// #17069
@SP
// #17070
M=M+1
//vv push_d_to_stack
//vv push_constant(15)
//
//// push constant 27
//^^ push_constant(27)
// #17071
@27
// #17072
D=A
//^^ push_d_to_stack
// #17073
@SP
// #17074
A=M
// #17075
M=D
// #17076
@SP
// #17077
M=M+1
//vv push_d_to_stack
//vv push_constant(27)
//
//// push constant 51
//^^ push_constant(51)
// #17078
@51
// #17079
D=A
//^^ push_d_to_stack
// #17080
@SP
// #17081
A=M
// #17082
M=D
// #17083
@SP
// #17084
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #17085
@51
// #17086
D=A
//^^ push_d_to_stack
// #17087
@SP
// #17088
A=M
// #17089
M=D
// #17090
@SP
// #17091
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #17092
@51
// #17093
D=A
//^^ push_d_to_stack
// #17094
@SP
// #17095
A=M
// #17096
M=D
// #17097
@SP
// #17098
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #17099
@30
// #17100
D=A
//^^ push_d_to_stack
// #17101
@SP
// #17102
A=M
// #17103
M=D
// #17104
@SP
// #17105
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 0
//^^ push_constant(0)
// #17106
@0
// #17107
D=A
//^^ push_d_to_stack
// #17108
@SP
// #17109
A=M
// #17110
M=D
// #17111
@SP
// #17112
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #17113
@0
// #17114
D=A
//^^ push_d_to_stack
// #17115
@SP
// #17116
A=M
// #17117
M=D
// #17118
@SP
// #17119
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_142)
// #17120
@RET_ADDR_142
// #17121
D=A
//^^ push_d_to_stack
// #17122
@SP
// #17123
A=M
// #17124
M=D
// #17125
@SP
// #17126
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_142)
//push return-address
// #17127
@LCL
// #17128
D=M
//^^ push_d_to_stack
// #17129
@SP
// #17130
A=M
// #17131
M=D
// #17132
@SP
// #17133
M=M+1
//vv push_d_to_stack
//push LCL
// #17134
@ARG
// #17135
D=M
//^^ push_d_to_stack
// #17136
@SP
// #17137
A=M
// #17138
M=D
// #17139
@SP
// #17140
M=M+1
//vv push_d_to_stack
//push ARG
// #17141
@THIS
// #17142
D=M
//^^ push_d_to_stack
// #17143
@SP
// #17144
A=M
// #17145
M=D
// #17146
@SP
// #17147
M=M+1
//vv push_d_to_stack
//push THIS
// #17148
@THAT
// #17149
D=M
//^^ push_d_to_stack
// #17150
@SP
// #17151
A=M
// #17152
M=D
// #17153
@SP
// #17154
M=M+1
//vv push_d_to_stack
//push THAT
// #17155
@SP
// #17156
D=M
// #17157
@ARG
// #17158
M=D
// #17159
@17
// #17160
D=A
// #17161
@ARG
// #17162
M=M-D // ARG = SP - args - 5
// #17163
@SP
// #17164
D=M
// #17165
@LCL
// #17166
M=D // LCL = SP
// #17167
@Output.create
// #17168
0;JMP
(RET_ADDR_142)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #17169
@SP
// #17170
M=M-1
// #17171
A=M
// #17172
D=M
//vv pop_stack_to_d
// #17173
@5
// #17174
M=D
//vv pop_to_loc{5)
//
//// push constant 99
//^^ push_constant(99)
// #17175
@99
// #17176
D=A
//^^ push_d_to_stack
// #17177
@SP
// #17178
A=M
// #17179
M=D
// #17180
@SP
// #17181
M=M+1
//vv push_d_to_stack
//vv push_constant(99)
//
//// push constant 0
//^^ push_constant(0)
// #17182
@0
// #17183
D=A
//^^ push_d_to_stack
// #17184
@SP
// #17185
A=M
// #17186
M=D
// #17187
@SP
// #17188
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #17189
@0
// #17190
D=A
//^^ push_d_to_stack
// #17191
@SP
// #17192
A=M
// #17193
M=D
// #17194
@SP
// #17195
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #17196
@0
// #17197
D=A
//^^ push_d_to_stack
// #17198
@SP
// #17199
A=M
// #17200
M=D
// #17201
@SP
// #17202
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 30
//^^ push_constant(30)
// #17203
@30
// #17204
D=A
//^^ push_d_to_stack
// #17205
@SP
// #17206
A=M
// #17207
M=D
// #17208
@SP
// #17209
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 51
//^^ push_constant(51)
// #17210
@51
// #17211
D=A
//^^ push_d_to_stack
// #17212
@SP
// #17213
A=M
// #17214
M=D
// #17215
@SP
// #17216
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 3
//^^ push_constant(3)
// #17217
@3
// #17218
D=A
//^^ push_d_to_stack
// #17219
@SP
// #17220
A=M
// #17221
M=D
// #17222
@SP
// #17223
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 3
//^^ push_constant(3)
// #17224
@3
// #17225
D=A
//^^ push_d_to_stack
// #17226
@SP
// #17227
A=M
// #17228
M=D
// #17229
@SP
// #17230
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 51
//^^ push_constant(51)
// #17231
@51
// #17232
D=A
//^^ push_d_to_stack
// #17233
@SP
// #17234
A=M
// #17235
M=D
// #17236
@SP
// #17237
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #17238
@30
// #17239
D=A
//^^ push_d_to_stack
// #17240
@SP
// #17241
A=M
// #17242
M=D
// #17243
@SP
// #17244
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 0
//^^ push_constant(0)
// #17245
@0
// #17246
D=A
//^^ push_d_to_stack
// #17247
@SP
// #17248
A=M
// #17249
M=D
// #17250
@SP
// #17251
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #17252
@0
// #17253
D=A
//^^ push_d_to_stack
// #17254
@SP
// #17255
A=M
// #17256
M=D
// #17257
@SP
// #17258
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_143)
// #17259
@RET_ADDR_143
// #17260
D=A
//^^ push_d_to_stack
// #17261
@SP
// #17262
A=M
// #17263
M=D
// #17264
@SP
// #17265
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_143)
//push return-address
// #17266
@LCL
// #17267
D=M
//^^ push_d_to_stack
// #17268
@SP
// #17269
A=M
// #17270
M=D
// #17271
@SP
// #17272
M=M+1
//vv push_d_to_stack
//push LCL
// #17273
@ARG
// #17274
D=M
//^^ push_d_to_stack
// #17275
@SP
// #17276
A=M
// #17277
M=D
// #17278
@SP
// #17279
M=M+1
//vv push_d_to_stack
//push ARG
// #17280
@THIS
// #17281
D=M
//^^ push_d_to_stack
// #17282
@SP
// #17283
A=M
// #17284
M=D
// #17285
@SP
// #17286
M=M+1
//vv push_d_to_stack
//push THIS
// #17287
@THAT
// #17288
D=M
//^^ push_d_to_stack
// #17289
@SP
// #17290
A=M
// #17291
M=D
// #17292
@SP
// #17293
M=M+1
//vv push_d_to_stack
//push THAT
// #17294
@SP
// #17295
D=M
// #17296
@ARG
// #17297
M=D
// #17298
@17
// #17299
D=A
// #17300
@ARG
// #17301
M=M-D // ARG = SP - args - 5
// #17302
@SP
// #17303
D=M
// #17304
@LCL
// #17305
M=D // LCL = SP
// #17306
@Output.create
// #17307
0;JMP
(RET_ADDR_143)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #17308
@SP
// #17309
M=M-1
// #17310
A=M
// #17311
D=M
//vv pop_stack_to_d
// #17312
@5
// #17313
M=D
//vv pop_to_loc{5)
//
//// push constant 100
//^^ push_constant(100)
// #17314
@100
// #17315
D=A
//^^ push_d_to_stack
// #17316
@SP
// #17317
A=M
// #17318
M=D
// #17319
@SP
// #17320
M=M+1
//vv push_d_to_stack
//vv push_constant(100)
//
//// push constant 48
//^^ push_constant(48)
// #17321
@48
// #17322
D=A
//^^ push_d_to_stack
// #17323
@SP
// #17324
A=M
// #17325
M=D
// #17326
@SP
// #17327
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 48
//^^ push_constant(48)
// #17328
@48
// #17329
D=A
//^^ push_d_to_stack
// #17330
@SP
// #17331
A=M
// #17332
M=D
// #17333
@SP
// #17334
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 48
//^^ push_constant(48)
// #17335
@48
// #17336
D=A
//^^ push_d_to_stack
// #17337
@SP
// #17338
A=M
// #17339
M=D
// #17340
@SP
// #17341
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 60
//^^ push_constant(60)
// #17342
@60
// #17343
D=A
//^^ push_d_to_stack
// #17344
@SP
// #17345
A=M
// #17346
M=D
// #17347
@SP
// #17348
M=M+1
//vv push_d_to_stack
//vv push_constant(60)
//
//// push constant 54
//^^ push_constant(54)
// #17349
@54
// #17350
D=A
//^^ push_d_to_stack
// #17351
@SP
// #17352
A=M
// #17353
M=D
// #17354
@SP
// #17355
M=M+1
//vv push_d_to_stack
//vv push_constant(54)
//
//// push constant 51
//^^ push_constant(51)
// #17356
@51
// #17357
D=A
//^^ push_d_to_stack
// #17358
@SP
// #17359
A=M
// #17360
M=D
// #17361
@SP
// #17362
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #17363
@51
// #17364
D=A
//^^ push_d_to_stack
// #17365
@SP
// #17366
A=M
// #17367
M=D
// #17368
@SP
// #17369
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #17370
@51
// #17371
D=A
//^^ push_d_to_stack
// #17372
@SP
// #17373
A=M
// #17374
M=D
// #17375
@SP
// #17376
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #17377
@30
// #17378
D=A
//^^ push_d_to_stack
// #17379
@SP
// #17380
A=M
// #17381
M=D
// #17382
@SP
// #17383
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 0
//^^ push_constant(0)
// #17384
@0
// #17385
D=A
//^^ push_d_to_stack
// #17386
@SP
// #17387
A=M
// #17388
M=D
// #17389
@SP
// #17390
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #17391
@0
// #17392
D=A
//^^ push_d_to_stack
// #17393
@SP
// #17394
A=M
// #17395
M=D
// #17396
@SP
// #17397
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_144)
// #17398
@RET_ADDR_144
// #17399
D=A
//^^ push_d_to_stack
// #17400
@SP
// #17401
A=M
// #17402
M=D
// #17403
@SP
// #17404
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_144)
//push return-address
// #17405
@LCL
// #17406
D=M
//^^ push_d_to_stack
// #17407
@SP
// #17408
A=M
// #17409
M=D
// #17410
@SP
// #17411
M=M+1
//vv push_d_to_stack
//push LCL
// #17412
@ARG
// #17413
D=M
//^^ push_d_to_stack
// #17414
@SP
// #17415
A=M
// #17416
M=D
// #17417
@SP
// #17418
M=M+1
//vv push_d_to_stack
//push ARG
// #17419
@THIS
// #17420
D=M
//^^ push_d_to_stack
// #17421
@SP
// #17422
A=M
// #17423
M=D
// #17424
@SP
// #17425
M=M+1
//vv push_d_to_stack
//push THIS
// #17426
@THAT
// #17427
D=M
//^^ push_d_to_stack
// #17428
@SP
// #17429
A=M
// #17430
M=D
// #17431
@SP
// #17432
M=M+1
//vv push_d_to_stack
//push THAT
// #17433
@SP
// #17434
D=M
// #17435
@ARG
// #17436
M=D
// #17437
@17
// #17438
D=A
// #17439
@ARG
// #17440
M=M-D // ARG = SP - args - 5
// #17441
@SP
// #17442
D=M
// #17443
@LCL
// #17444
M=D // LCL = SP
// #17445
@Output.create
// #17446
0;JMP
(RET_ADDR_144)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #17447
@SP
// #17448
M=M-1
// #17449
A=M
// #17450
D=M
//vv pop_stack_to_d
// #17451
@5
// #17452
M=D
//vv pop_to_loc{5)
//
//// push constant 101
//^^ push_constant(101)
// #17453
@101
// #17454
D=A
//^^ push_d_to_stack
// #17455
@SP
// #17456
A=M
// #17457
M=D
// #17458
@SP
// #17459
M=M+1
//vv push_d_to_stack
//vv push_constant(101)
//
//// push constant 0
//^^ push_constant(0)
// #17460
@0
// #17461
D=A
//^^ push_d_to_stack
// #17462
@SP
// #17463
A=M
// #17464
M=D
// #17465
@SP
// #17466
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #17467
@0
// #17468
D=A
//^^ push_d_to_stack
// #17469
@SP
// #17470
A=M
// #17471
M=D
// #17472
@SP
// #17473
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #17474
@0
// #17475
D=A
//^^ push_d_to_stack
// #17476
@SP
// #17477
A=M
// #17478
M=D
// #17479
@SP
// #17480
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 30
//^^ push_constant(30)
// #17481
@30
// #17482
D=A
//^^ push_d_to_stack
// #17483
@SP
// #17484
A=M
// #17485
M=D
// #17486
@SP
// #17487
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 51
//^^ push_constant(51)
// #17488
@51
// #17489
D=A
//^^ push_d_to_stack
// #17490
@SP
// #17491
A=M
// #17492
M=D
// #17493
@SP
// #17494
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 63
//^^ push_constant(63)
// #17495
@63
// #17496
D=A
//^^ push_d_to_stack
// #17497
@SP
// #17498
A=M
// #17499
M=D
// #17500
@SP
// #17501
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 3
//^^ push_constant(3)
// #17502
@3
// #17503
D=A
//^^ push_d_to_stack
// #17504
@SP
// #17505
A=M
// #17506
M=D
// #17507
@SP
// #17508
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 51
//^^ push_constant(51)
// #17509
@51
// #17510
D=A
//^^ push_d_to_stack
// #17511
@SP
// #17512
A=M
// #17513
M=D
// #17514
@SP
// #17515
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #17516
@30
// #17517
D=A
//^^ push_d_to_stack
// #17518
@SP
// #17519
A=M
// #17520
M=D
// #17521
@SP
// #17522
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 0
//^^ push_constant(0)
// #17523
@0
// #17524
D=A
//^^ push_d_to_stack
// #17525
@SP
// #17526
A=M
// #17527
M=D
// #17528
@SP
// #17529
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #17530
@0
// #17531
D=A
//^^ push_d_to_stack
// #17532
@SP
// #17533
A=M
// #17534
M=D
// #17535
@SP
// #17536
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_145)
// #17537
@RET_ADDR_145
// #17538
D=A
//^^ push_d_to_stack
// #17539
@SP
// #17540
A=M
// #17541
M=D
// #17542
@SP
// #17543
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_145)
//push return-address
// #17544
@LCL
// #17545
D=M
//^^ push_d_to_stack
// #17546
@SP
// #17547
A=M
// #17548
M=D
// #17549
@SP
// #17550
M=M+1
//vv push_d_to_stack
//push LCL
// #17551
@ARG
// #17552
D=M
//^^ push_d_to_stack
// #17553
@SP
// #17554
A=M
// #17555
M=D
// #17556
@SP
// #17557
M=M+1
//vv push_d_to_stack
//push ARG
// #17558
@THIS
// #17559
D=M
//^^ push_d_to_stack
// #17560
@SP
// #17561
A=M
// #17562
M=D
// #17563
@SP
// #17564
M=M+1
//vv push_d_to_stack
//push THIS
// #17565
@THAT
// #17566
D=M
//^^ push_d_to_stack
// #17567
@SP
// #17568
A=M
// #17569
M=D
// #17570
@SP
// #17571
M=M+1
//vv push_d_to_stack
//push THAT
// #17572
@SP
// #17573
D=M
// #17574
@ARG
// #17575
M=D
// #17576
@17
// #17577
D=A
// #17578
@ARG
// #17579
M=M-D // ARG = SP - args - 5
// #17580
@SP
// #17581
D=M
// #17582
@LCL
// #17583
M=D // LCL = SP
// #17584
@Output.create
// #17585
0;JMP
(RET_ADDR_145)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #17586
@SP
// #17587
M=M-1
// #17588
A=M
// #17589
D=M
//vv pop_stack_to_d
// #17590
@5
// #17591
M=D
//vv pop_to_loc{5)
//
//// push constant 102
//^^ push_constant(102)
// #17592
@102
// #17593
D=A
//^^ push_d_to_stack
// #17594
@SP
// #17595
A=M
// #17596
M=D
// #17597
@SP
// #17598
M=M+1
//vv push_d_to_stack
//vv push_constant(102)
//
//// push constant 28
//^^ push_constant(28)
// #17599
@28
// #17600
D=A
//^^ push_d_to_stack
// #17601
@SP
// #17602
A=M
// #17603
M=D
// #17604
@SP
// #17605
M=M+1
//vv push_d_to_stack
//vv push_constant(28)
//
//// push constant 54
//^^ push_constant(54)
// #17606
@54
// #17607
D=A
//^^ push_d_to_stack
// #17608
@SP
// #17609
A=M
// #17610
M=D
// #17611
@SP
// #17612
M=M+1
//vv push_d_to_stack
//vv push_constant(54)
//
//// push constant 38
//^^ push_constant(38)
// #17613
@38
// #17614
D=A
//^^ push_d_to_stack
// #17615
@SP
// #17616
A=M
// #17617
M=D
// #17618
@SP
// #17619
M=M+1
//vv push_d_to_stack
//vv push_constant(38)
//
//// push constant 6
//^^ push_constant(6)
// #17620
@6
// #17621
D=A
//^^ push_d_to_stack
// #17622
@SP
// #17623
A=M
// #17624
M=D
// #17625
@SP
// #17626
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 15
//^^ push_constant(15)
// #17627
@15
// #17628
D=A
//^^ push_d_to_stack
// #17629
@SP
// #17630
A=M
// #17631
M=D
// #17632
@SP
// #17633
M=M+1
//vv push_d_to_stack
//vv push_constant(15)
//
//// push constant 6
//^^ push_constant(6)
// #17634
@6
// #17635
D=A
//^^ push_d_to_stack
// #17636
@SP
// #17637
A=M
// #17638
M=D
// #17639
@SP
// #17640
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 6
//^^ push_constant(6)
// #17641
@6
// #17642
D=A
//^^ push_d_to_stack
// #17643
@SP
// #17644
A=M
// #17645
M=D
// #17646
@SP
// #17647
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 6
//^^ push_constant(6)
// #17648
@6
// #17649
D=A
//^^ push_d_to_stack
// #17650
@SP
// #17651
A=M
// #17652
M=D
// #17653
@SP
// #17654
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 15
//^^ push_constant(15)
// #17655
@15
// #17656
D=A
//^^ push_d_to_stack
// #17657
@SP
// #17658
A=M
// #17659
M=D
// #17660
@SP
// #17661
M=M+1
//vv push_d_to_stack
//vv push_constant(15)
//
//// push constant 0
//^^ push_constant(0)
// #17662
@0
// #17663
D=A
//^^ push_d_to_stack
// #17664
@SP
// #17665
A=M
// #17666
M=D
// #17667
@SP
// #17668
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #17669
@0
// #17670
D=A
//^^ push_d_to_stack
// #17671
@SP
// #17672
A=M
// #17673
M=D
// #17674
@SP
// #17675
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_146)
// #17676
@RET_ADDR_146
// #17677
D=A
//^^ push_d_to_stack
// #17678
@SP
// #17679
A=M
// #17680
M=D
// #17681
@SP
// #17682
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_146)
//push return-address
// #17683
@LCL
// #17684
D=M
//^^ push_d_to_stack
// #17685
@SP
// #17686
A=M
// #17687
M=D
// #17688
@SP
// #17689
M=M+1
//vv push_d_to_stack
//push LCL
// #17690
@ARG
// #17691
D=M
//^^ push_d_to_stack
// #17692
@SP
// #17693
A=M
// #17694
M=D
// #17695
@SP
// #17696
M=M+1
//vv push_d_to_stack
//push ARG
// #17697
@THIS
// #17698
D=M
//^^ push_d_to_stack
// #17699
@SP
// #17700
A=M
// #17701
M=D
// #17702
@SP
// #17703
M=M+1
//vv push_d_to_stack
//push THIS
// #17704
@THAT
// #17705
D=M
//^^ push_d_to_stack
// #17706
@SP
// #17707
A=M
// #17708
M=D
// #17709
@SP
// #17710
M=M+1
//vv push_d_to_stack
//push THAT
// #17711
@SP
// #17712
D=M
// #17713
@ARG
// #17714
M=D
// #17715
@17
// #17716
D=A
// #17717
@ARG
// #17718
M=M-D // ARG = SP - args - 5
// #17719
@SP
// #17720
D=M
// #17721
@LCL
// #17722
M=D // LCL = SP
// #17723
@Output.create
// #17724
0;JMP
(RET_ADDR_146)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #17725
@SP
// #17726
M=M-1
// #17727
A=M
// #17728
D=M
//vv pop_stack_to_d
// #17729
@5
// #17730
M=D
//vv pop_to_loc{5)
//
//// push constant 103
//^^ push_constant(103)
// #17731
@103
// #17732
D=A
//^^ push_d_to_stack
// #17733
@SP
// #17734
A=M
// #17735
M=D
// #17736
@SP
// #17737
M=M+1
//vv push_d_to_stack
//vv push_constant(103)
//
//// push constant 0
//^^ push_constant(0)
// #17738
@0
// #17739
D=A
//^^ push_d_to_stack
// #17740
@SP
// #17741
A=M
// #17742
M=D
// #17743
@SP
// #17744
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #17745
@0
// #17746
D=A
//^^ push_d_to_stack
// #17747
@SP
// #17748
A=M
// #17749
M=D
// #17750
@SP
// #17751
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 30
//^^ push_constant(30)
// #17752
@30
// #17753
D=A
//^^ push_d_to_stack
// #17754
@SP
// #17755
A=M
// #17756
M=D
// #17757
@SP
// #17758
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 51
//^^ push_constant(51)
// #17759
@51
// #17760
D=A
//^^ push_d_to_stack
// #17761
@SP
// #17762
A=M
// #17763
M=D
// #17764
@SP
// #17765
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #17766
@51
// #17767
D=A
//^^ push_d_to_stack
// #17768
@SP
// #17769
A=M
// #17770
M=D
// #17771
@SP
// #17772
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #17773
@51
// #17774
D=A
//^^ push_d_to_stack
// #17775
@SP
// #17776
A=M
// #17777
M=D
// #17778
@SP
// #17779
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 62
//^^ push_constant(62)
// #17780
@62
// #17781
D=A
//^^ push_d_to_stack
// #17782
@SP
// #17783
A=M
// #17784
M=D
// #17785
@SP
// #17786
M=M+1
//vv push_d_to_stack
//vv push_constant(62)
//
//// push constant 48
//^^ push_constant(48)
// #17787
@48
// #17788
D=A
//^^ push_d_to_stack
// #17789
@SP
// #17790
A=M
// #17791
M=D
// #17792
@SP
// #17793
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 51
//^^ push_constant(51)
// #17794
@51
// #17795
D=A
//^^ push_d_to_stack
// #17796
@SP
// #17797
A=M
// #17798
M=D
// #17799
@SP
// #17800
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #17801
@30
// #17802
D=A
//^^ push_d_to_stack
// #17803
@SP
// #17804
A=M
// #17805
M=D
// #17806
@SP
// #17807
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 0
//^^ push_constant(0)
// #17808
@0
// #17809
D=A
//^^ push_d_to_stack
// #17810
@SP
// #17811
A=M
// #17812
M=D
// #17813
@SP
// #17814
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_147)
// #17815
@RET_ADDR_147
// #17816
D=A
//^^ push_d_to_stack
// #17817
@SP
// #17818
A=M
// #17819
M=D
// #17820
@SP
// #17821
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_147)
//push return-address
// #17822
@LCL
// #17823
D=M
//^^ push_d_to_stack
// #17824
@SP
// #17825
A=M
// #17826
M=D
// #17827
@SP
// #17828
M=M+1
//vv push_d_to_stack
//push LCL
// #17829
@ARG
// #17830
D=M
//^^ push_d_to_stack
// #17831
@SP
// #17832
A=M
// #17833
M=D
// #17834
@SP
// #17835
M=M+1
//vv push_d_to_stack
//push ARG
// #17836
@THIS
// #17837
D=M
//^^ push_d_to_stack
// #17838
@SP
// #17839
A=M
// #17840
M=D
// #17841
@SP
// #17842
M=M+1
//vv push_d_to_stack
//push THIS
// #17843
@THAT
// #17844
D=M
//^^ push_d_to_stack
// #17845
@SP
// #17846
A=M
// #17847
M=D
// #17848
@SP
// #17849
M=M+1
//vv push_d_to_stack
//push THAT
// #17850
@SP
// #17851
D=M
// #17852
@ARG
// #17853
M=D
// #17854
@17
// #17855
D=A
// #17856
@ARG
// #17857
M=M-D // ARG = SP - args - 5
// #17858
@SP
// #17859
D=M
// #17860
@LCL
// #17861
M=D // LCL = SP
// #17862
@Output.create
// #17863
0;JMP
(RET_ADDR_147)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #17864
@SP
// #17865
M=M-1
// #17866
A=M
// #17867
D=M
//vv pop_stack_to_d
// #17868
@5
// #17869
M=D
//vv pop_to_loc{5)
//
//// push constant 104
//^^ push_constant(104)
// #17870
@104
// #17871
D=A
//^^ push_d_to_stack
// #17872
@SP
// #17873
A=M
// #17874
M=D
// #17875
@SP
// #17876
M=M+1
//vv push_d_to_stack
//vv push_constant(104)
//
//// push constant 3
//^^ push_constant(3)
// #17877
@3
// #17878
D=A
//^^ push_d_to_stack
// #17879
@SP
// #17880
A=M
// #17881
M=D
// #17882
@SP
// #17883
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 3
//^^ push_constant(3)
// #17884
@3
// #17885
D=A
//^^ push_d_to_stack
// #17886
@SP
// #17887
A=M
// #17888
M=D
// #17889
@SP
// #17890
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 3
//^^ push_constant(3)
// #17891
@3
// #17892
D=A
//^^ push_d_to_stack
// #17893
@SP
// #17894
A=M
// #17895
M=D
// #17896
@SP
// #17897
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 27
//^^ push_constant(27)
// #17898
@27
// #17899
D=A
//^^ push_d_to_stack
// #17900
@SP
// #17901
A=M
// #17902
M=D
// #17903
@SP
// #17904
M=M+1
//vv push_d_to_stack
//vv push_constant(27)
//
//// push constant 55
//^^ push_constant(55)
// #17905
@55
// #17906
D=A
//^^ push_d_to_stack
// #17907
@SP
// #17908
A=M
// #17909
M=D
// #17910
@SP
// #17911
M=M+1
//vv push_d_to_stack
//vv push_constant(55)
//
//// push constant 51
//^^ push_constant(51)
// #17912
@51
// #17913
D=A
//^^ push_d_to_stack
// #17914
@SP
// #17915
A=M
// #17916
M=D
// #17917
@SP
// #17918
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #17919
@51
// #17920
D=A
//^^ push_d_to_stack
// #17921
@SP
// #17922
A=M
// #17923
M=D
// #17924
@SP
// #17925
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #17926
@51
// #17927
D=A
//^^ push_d_to_stack
// #17928
@SP
// #17929
A=M
// #17930
M=D
// #17931
@SP
// #17932
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #17933
@51
// #17934
D=A
//^^ push_d_to_stack
// #17935
@SP
// #17936
A=M
// #17937
M=D
// #17938
@SP
// #17939
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 0
//^^ push_constant(0)
// #17940
@0
// #17941
D=A
//^^ push_d_to_stack
// #17942
@SP
// #17943
A=M
// #17944
M=D
// #17945
@SP
// #17946
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #17947
@0
// #17948
D=A
//^^ push_d_to_stack
// #17949
@SP
// #17950
A=M
// #17951
M=D
// #17952
@SP
// #17953
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_148)
// #17954
@RET_ADDR_148
// #17955
D=A
//^^ push_d_to_stack
// #17956
@SP
// #17957
A=M
// #17958
M=D
// #17959
@SP
// #17960
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_148)
//push return-address
// #17961
@LCL
// #17962
D=M
//^^ push_d_to_stack
// #17963
@SP
// #17964
A=M
// #17965
M=D
// #17966
@SP
// #17967
M=M+1
//vv push_d_to_stack
//push LCL
// #17968
@ARG
// #17969
D=M
//^^ push_d_to_stack
// #17970
@SP
// #17971
A=M
// #17972
M=D
// #17973
@SP
// #17974
M=M+1
//vv push_d_to_stack
//push ARG
// #17975
@THIS
// #17976
D=M
//^^ push_d_to_stack
// #17977
@SP
// #17978
A=M
// #17979
M=D
// #17980
@SP
// #17981
M=M+1
//vv push_d_to_stack
//push THIS
// #17982
@THAT
// #17983
D=M
//^^ push_d_to_stack
// #17984
@SP
// #17985
A=M
// #17986
M=D
// #17987
@SP
// #17988
M=M+1
//vv push_d_to_stack
//push THAT
// #17989
@SP
// #17990
D=M
// #17991
@ARG
// #17992
M=D
// #17993
@17
// #17994
D=A
// #17995
@ARG
// #17996
M=M-D // ARG = SP - args - 5
// #17997
@SP
// #17998
D=M
// #17999
@LCL
// #18000
M=D // LCL = SP
// #18001
@Output.create
// #18002
0;JMP
(RET_ADDR_148)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #18003
@SP
// #18004
M=M-1
// #18005
A=M
// #18006
D=M
//vv pop_stack_to_d
// #18007
@5
// #18008
M=D
//vv pop_to_loc{5)
//
//// push constant 105
//^^ push_constant(105)
// #18009
@105
// #18010
D=A
//^^ push_d_to_stack
// #18011
@SP
// #18012
A=M
// #18013
M=D
// #18014
@SP
// #18015
M=M+1
//vv push_d_to_stack
//vv push_constant(105)
//
//// push constant 12
//^^ push_constant(12)
// #18016
@12
// #18017
D=A
//^^ push_d_to_stack
// #18018
@SP
// #18019
A=M
// #18020
M=D
// #18021
@SP
// #18022
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #18023
@12
// #18024
D=A
//^^ push_d_to_stack
// #18025
@SP
// #18026
A=M
// #18027
M=D
// #18028
@SP
// #18029
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 0
//^^ push_constant(0)
// #18030
@0
// #18031
D=A
//^^ push_d_to_stack
// #18032
@SP
// #18033
A=M
// #18034
M=D
// #18035
@SP
// #18036
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 14
//^^ push_constant(14)
// #18037
@14
// #18038
D=A
//^^ push_d_to_stack
// #18039
@SP
// #18040
A=M
// #18041
M=D
// #18042
@SP
// #18043
M=M+1
//vv push_d_to_stack
//vv push_constant(14)
//
//// push constant 12
//^^ push_constant(12)
// #18044
@12
// #18045
D=A
//^^ push_d_to_stack
// #18046
@SP
// #18047
A=M
// #18048
M=D
// #18049
@SP
// #18050
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #18051
@12
// #18052
D=A
//^^ push_d_to_stack
// #18053
@SP
// #18054
A=M
// #18055
M=D
// #18056
@SP
// #18057
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #18058
@12
// #18059
D=A
//^^ push_d_to_stack
// #18060
@SP
// #18061
A=M
// #18062
M=D
// #18063
@SP
// #18064
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #18065
@12
// #18066
D=A
//^^ push_d_to_stack
// #18067
@SP
// #18068
A=M
// #18069
M=D
// #18070
@SP
// #18071
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 30
//^^ push_constant(30)
// #18072
@30
// #18073
D=A
//^^ push_d_to_stack
// #18074
@SP
// #18075
A=M
// #18076
M=D
// #18077
@SP
// #18078
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 0
//^^ push_constant(0)
// #18079
@0
// #18080
D=A
//^^ push_d_to_stack
// #18081
@SP
// #18082
A=M
// #18083
M=D
// #18084
@SP
// #18085
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #18086
@0
// #18087
D=A
//^^ push_d_to_stack
// #18088
@SP
// #18089
A=M
// #18090
M=D
// #18091
@SP
// #18092
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_149)
// #18093
@RET_ADDR_149
// #18094
D=A
//^^ push_d_to_stack
// #18095
@SP
// #18096
A=M
// #18097
M=D
// #18098
@SP
// #18099
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_149)
//push return-address
// #18100
@LCL
// #18101
D=M
//^^ push_d_to_stack
// #18102
@SP
// #18103
A=M
// #18104
M=D
// #18105
@SP
// #18106
M=M+1
//vv push_d_to_stack
//push LCL
// #18107
@ARG
// #18108
D=M
//^^ push_d_to_stack
// #18109
@SP
// #18110
A=M
// #18111
M=D
// #18112
@SP
// #18113
M=M+1
//vv push_d_to_stack
//push ARG
// #18114
@THIS
// #18115
D=M
//^^ push_d_to_stack
// #18116
@SP
// #18117
A=M
// #18118
M=D
// #18119
@SP
// #18120
M=M+1
//vv push_d_to_stack
//push THIS
// #18121
@THAT
// #18122
D=M
//^^ push_d_to_stack
// #18123
@SP
// #18124
A=M
// #18125
M=D
// #18126
@SP
// #18127
M=M+1
//vv push_d_to_stack
//push THAT
// #18128
@SP
// #18129
D=M
// #18130
@ARG
// #18131
M=D
// #18132
@17
// #18133
D=A
// #18134
@ARG
// #18135
M=M-D // ARG = SP - args - 5
// #18136
@SP
// #18137
D=M
// #18138
@LCL
// #18139
M=D // LCL = SP
// #18140
@Output.create
// #18141
0;JMP
(RET_ADDR_149)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #18142
@SP
// #18143
M=M-1
// #18144
A=M
// #18145
D=M
//vv pop_stack_to_d
// #18146
@5
// #18147
M=D
//vv pop_to_loc{5)
//
//// push constant 106
//^^ push_constant(106)
// #18148
@106
// #18149
D=A
//^^ push_d_to_stack
// #18150
@SP
// #18151
A=M
// #18152
M=D
// #18153
@SP
// #18154
M=M+1
//vv push_d_to_stack
//vv push_constant(106)
//
//// push constant 48
//^^ push_constant(48)
// #18155
@48
// #18156
D=A
//^^ push_d_to_stack
// #18157
@SP
// #18158
A=M
// #18159
M=D
// #18160
@SP
// #18161
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 48
//^^ push_constant(48)
// #18162
@48
// #18163
D=A
//^^ push_d_to_stack
// #18164
@SP
// #18165
A=M
// #18166
M=D
// #18167
@SP
// #18168
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 0
//^^ push_constant(0)
// #18169
@0
// #18170
D=A
//^^ push_d_to_stack
// #18171
@SP
// #18172
A=M
// #18173
M=D
// #18174
@SP
// #18175
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 56
//^^ push_constant(56)
// #18176
@56
// #18177
D=A
//^^ push_d_to_stack
// #18178
@SP
// #18179
A=M
// #18180
M=D
// #18181
@SP
// #18182
M=M+1
//vv push_d_to_stack
//vv push_constant(56)
//
//// push constant 48
//^^ push_constant(48)
// #18183
@48
// #18184
D=A
//^^ push_d_to_stack
// #18185
@SP
// #18186
A=M
// #18187
M=D
// #18188
@SP
// #18189
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 48
//^^ push_constant(48)
// #18190
@48
// #18191
D=A
//^^ push_d_to_stack
// #18192
@SP
// #18193
A=M
// #18194
M=D
// #18195
@SP
// #18196
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 48
//^^ push_constant(48)
// #18197
@48
// #18198
D=A
//^^ push_d_to_stack
// #18199
@SP
// #18200
A=M
// #18201
M=D
// #18202
@SP
// #18203
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 48
//^^ push_constant(48)
// #18204
@48
// #18205
D=A
//^^ push_d_to_stack
// #18206
@SP
// #18207
A=M
// #18208
M=D
// #18209
@SP
// #18210
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 51
//^^ push_constant(51)
// #18211
@51
// #18212
D=A
//^^ push_d_to_stack
// #18213
@SP
// #18214
A=M
// #18215
M=D
// #18216
@SP
// #18217
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #18218
@30
// #18219
D=A
//^^ push_d_to_stack
// #18220
@SP
// #18221
A=M
// #18222
M=D
// #18223
@SP
// #18224
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 0
//^^ push_constant(0)
// #18225
@0
// #18226
D=A
//^^ push_d_to_stack
// #18227
@SP
// #18228
A=M
// #18229
M=D
// #18230
@SP
// #18231
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_150)
// #18232
@RET_ADDR_150
// #18233
D=A
//^^ push_d_to_stack
// #18234
@SP
// #18235
A=M
// #18236
M=D
// #18237
@SP
// #18238
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_150)
//push return-address
// #18239
@LCL
// #18240
D=M
//^^ push_d_to_stack
// #18241
@SP
// #18242
A=M
// #18243
M=D
// #18244
@SP
// #18245
M=M+1
//vv push_d_to_stack
//push LCL
// #18246
@ARG
// #18247
D=M
//^^ push_d_to_stack
// #18248
@SP
// #18249
A=M
// #18250
M=D
// #18251
@SP
// #18252
M=M+1
//vv push_d_to_stack
//push ARG
// #18253
@THIS
// #18254
D=M
//^^ push_d_to_stack
// #18255
@SP
// #18256
A=M
// #18257
M=D
// #18258
@SP
// #18259
M=M+1
//vv push_d_to_stack
//push THIS
// #18260
@THAT
// #18261
D=M
//^^ push_d_to_stack
// #18262
@SP
// #18263
A=M
// #18264
M=D
// #18265
@SP
// #18266
M=M+1
//vv push_d_to_stack
//push THAT
// #18267
@SP
// #18268
D=M
// #18269
@ARG
// #18270
M=D
// #18271
@17
// #18272
D=A
// #18273
@ARG
// #18274
M=M-D // ARG = SP - args - 5
// #18275
@SP
// #18276
D=M
// #18277
@LCL
// #18278
M=D // LCL = SP
// #18279
@Output.create
// #18280
0;JMP
(RET_ADDR_150)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #18281
@SP
// #18282
M=M-1
// #18283
A=M
// #18284
D=M
//vv pop_stack_to_d
// #18285
@5
// #18286
M=D
//vv pop_to_loc{5)
//
//// push constant 107
//^^ push_constant(107)
// #18287
@107
// #18288
D=A
//^^ push_d_to_stack
// #18289
@SP
// #18290
A=M
// #18291
M=D
// #18292
@SP
// #18293
M=M+1
//vv push_d_to_stack
//vv push_constant(107)
//
//// push constant 3
//^^ push_constant(3)
// #18294
@3
// #18295
D=A
//^^ push_d_to_stack
// #18296
@SP
// #18297
A=M
// #18298
M=D
// #18299
@SP
// #18300
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 3
//^^ push_constant(3)
// #18301
@3
// #18302
D=A
//^^ push_d_to_stack
// #18303
@SP
// #18304
A=M
// #18305
M=D
// #18306
@SP
// #18307
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 3
//^^ push_constant(3)
// #18308
@3
// #18309
D=A
//^^ push_d_to_stack
// #18310
@SP
// #18311
A=M
// #18312
M=D
// #18313
@SP
// #18314
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 51
//^^ push_constant(51)
// #18315
@51
// #18316
D=A
//^^ push_d_to_stack
// #18317
@SP
// #18318
A=M
// #18319
M=D
// #18320
@SP
// #18321
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 27
//^^ push_constant(27)
// #18322
@27
// #18323
D=A
//^^ push_d_to_stack
// #18324
@SP
// #18325
A=M
// #18326
M=D
// #18327
@SP
// #18328
M=M+1
//vv push_d_to_stack
//vv push_constant(27)
//
//// push constant 15
//^^ push_constant(15)
// #18329
@15
// #18330
D=A
//^^ push_d_to_stack
// #18331
@SP
// #18332
A=M
// #18333
M=D
// #18334
@SP
// #18335
M=M+1
//vv push_d_to_stack
//vv push_constant(15)
//
//// push constant 15
//^^ push_constant(15)
// #18336
@15
// #18337
D=A
//^^ push_d_to_stack
// #18338
@SP
// #18339
A=M
// #18340
M=D
// #18341
@SP
// #18342
M=M+1
//vv push_d_to_stack
//vv push_constant(15)
//
//// push constant 27
//^^ push_constant(27)
// #18343
@27
// #18344
D=A
//^^ push_d_to_stack
// #18345
@SP
// #18346
A=M
// #18347
M=D
// #18348
@SP
// #18349
M=M+1
//vv push_d_to_stack
//vv push_constant(27)
//
//// push constant 51
//^^ push_constant(51)
// #18350
@51
// #18351
D=A
//^^ push_d_to_stack
// #18352
@SP
// #18353
A=M
// #18354
M=D
// #18355
@SP
// #18356
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 0
//^^ push_constant(0)
// #18357
@0
// #18358
D=A
//^^ push_d_to_stack
// #18359
@SP
// #18360
A=M
// #18361
M=D
// #18362
@SP
// #18363
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #18364
@0
// #18365
D=A
//^^ push_d_to_stack
// #18366
@SP
// #18367
A=M
// #18368
M=D
// #18369
@SP
// #18370
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_151)
// #18371
@RET_ADDR_151
// #18372
D=A
//^^ push_d_to_stack
// #18373
@SP
// #18374
A=M
// #18375
M=D
// #18376
@SP
// #18377
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_151)
//push return-address
// #18378
@LCL
// #18379
D=M
//^^ push_d_to_stack
// #18380
@SP
// #18381
A=M
// #18382
M=D
// #18383
@SP
// #18384
M=M+1
//vv push_d_to_stack
//push LCL
// #18385
@ARG
// #18386
D=M
//^^ push_d_to_stack
// #18387
@SP
// #18388
A=M
// #18389
M=D
// #18390
@SP
// #18391
M=M+1
//vv push_d_to_stack
//push ARG
// #18392
@THIS
// #18393
D=M
//^^ push_d_to_stack
// #18394
@SP
// #18395
A=M
// #18396
M=D
// #18397
@SP
// #18398
M=M+1
//vv push_d_to_stack
//push THIS
// #18399
@THAT
// #18400
D=M
//^^ push_d_to_stack
// #18401
@SP
// #18402
A=M
// #18403
M=D
// #18404
@SP
// #18405
M=M+1
//vv push_d_to_stack
//push THAT
// #18406
@SP
// #18407
D=M
// #18408
@ARG
// #18409
M=D
// #18410
@17
// #18411
D=A
// #18412
@ARG
// #18413
M=M-D // ARG = SP - args - 5
// #18414
@SP
// #18415
D=M
// #18416
@LCL
// #18417
M=D // LCL = SP
// #18418
@Output.create
// #18419
0;JMP
(RET_ADDR_151)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #18420
@SP
// #18421
M=M-1
// #18422
A=M
// #18423
D=M
//vv pop_stack_to_d
// #18424
@5
// #18425
M=D
//vv pop_to_loc{5)
//
//// push constant 108
//^^ push_constant(108)
// #18426
@108
// #18427
D=A
//^^ push_d_to_stack
// #18428
@SP
// #18429
A=M
// #18430
M=D
// #18431
@SP
// #18432
M=M+1
//vv push_d_to_stack
//vv push_constant(108)
//
//// push constant 14
//^^ push_constant(14)
// #18433
@14
// #18434
D=A
//^^ push_d_to_stack
// #18435
@SP
// #18436
A=M
// #18437
M=D
// #18438
@SP
// #18439
M=M+1
//vv push_d_to_stack
//vv push_constant(14)
//
//// push constant 12
//^^ push_constant(12)
// #18440
@12
// #18441
D=A
//^^ push_d_to_stack
// #18442
@SP
// #18443
A=M
// #18444
M=D
// #18445
@SP
// #18446
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #18447
@12
// #18448
D=A
//^^ push_d_to_stack
// #18449
@SP
// #18450
A=M
// #18451
M=D
// #18452
@SP
// #18453
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #18454
@12
// #18455
D=A
//^^ push_d_to_stack
// #18456
@SP
// #18457
A=M
// #18458
M=D
// #18459
@SP
// #18460
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #18461
@12
// #18462
D=A
//^^ push_d_to_stack
// #18463
@SP
// #18464
A=M
// #18465
M=D
// #18466
@SP
// #18467
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #18468
@12
// #18469
D=A
//^^ push_d_to_stack
// #18470
@SP
// #18471
A=M
// #18472
M=D
// #18473
@SP
// #18474
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #18475
@12
// #18476
D=A
//^^ push_d_to_stack
// #18477
@SP
// #18478
A=M
// #18479
M=D
// #18480
@SP
// #18481
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #18482
@12
// #18483
D=A
//^^ push_d_to_stack
// #18484
@SP
// #18485
A=M
// #18486
M=D
// #18487
@SP
// #18488
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 30
//^^ push_constant(30)
// #18489
@30
// #18490
D=A
//^^ push_d_to_stack
// #18491
@SP
// #18492
A=M
// #18493
M=D
// #18494
@SP
// #18495
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 0
//^^ push_constant(0)
// #18496
@0
// #18497
D=A
//^^ push_d_to_stack
// #18498
@SP
// #18499
A=M
// #18500
M=D
// #18501
@SP
// #18502
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #18503
@0
// #18504
D=A
//^^ push_d_to_stack
// #18505
@SP
// #18506
A=M
// #18507
M=D
// #18508
@SP
// #18509
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_152)
// #18510
@RET_ADDR_152
// #18511
D=A
//^^ push_d_to_stack
// #18512
@SP
// #18513
A=M
// #18514
M=D
// #18515
@SP
// #18516
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_152)
//push return-address
// #18517
@LCL
// #18518
D=M
//^^ push_d_to_stack
// #18519
@SP
// #18520
A=M
// #18521
M=D
// #18522
@SP
// #18523
M=M+1
//vv push_d_to_stack
//push LCL
// #18524
@ARG
// #18525
D=M
//^^ push_d_to_stack
// #18526
@SP
// #18527
A=M
// #18528
M=D
// #18529
@SP
// #18530
M=M+1
//vv push_d_to_stack
//push ARG
// #18531
@THIS
// #18532
D=M
//^^ push_d_to_stack
// #18533
@SP
// #18534
A=M
// #18535
M=D
// #18536
@SP
// #18537
M=M+1
//vv push_d_to_stack
//push THIS
// #18538
@THAT
// #18539
D=M
//^^ push_d_to_stack
// #18540
@SP
// #18541
A=M
// #18542
M=D
// #18543
@SP
// #18544
M=M+1
//vv push_d_to_stack
//push THAT
// #18545
@SP
// #18546
D=M
// #18547
@ARG
// #18548
M=D
// #18549
@17
// #18550
D=A
// #18551
@ARG
// #18552
M=M-D // ARG = SP - args - 5
// #18553
@SP
// #18554
D=M
// #18555
@LCL
// #18556
M=D // LCL = SP
// #18557
@Output.create
// #18558
0;JMP
(RET_ADDR_152)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #18559
@SP
// #18560
M=M-1
// #18561
A=M
// #18562
D=M
//vv pop_stack_to_d
// #18563
@5
// #18564
M=D
//vv pop_to_loc{5)
//
//// push constant 109
//^^ push_constant(109)
// #18565
@109
// #18566
D=A
//^^ push_d_to_stack
// #18567
@SP
// #18568
A=M
// #18569
M=D
// #18570
@SP
// #18571
M=M+1
//vv push_d_to_stack
//vv push_constant(109)
//
//// push constant 0
//^^ push_constant(0)
// #18572
@0
// #18573
D=A
//^^ push_d_to_stack
// #18574
@SP
// #18575
A=M
// #18576
M=D
// #18577
@SP
// #18578
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #18579
@0
// #18580
D=A
//^^ push_d_to_stack
// #18581
@SP
// #18582
A=M
// #18583
M=D
// #18584
@SP
// #18585
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #18586
@0
// #18587
D=A
//^^ push_d_to_stack
// #18588
@SP
// #18589
A=M
// #18590
M=D
// #18591
@SP
// #18592
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 29
//^^ push_constant(29)
// #18593
@29
// #18594
D=A
//^^ push_d_to_stack
// #18595
@SP
// #18596
A=M
// #18597
M=D
// #18598
@SP
// #18599
M=M+1
//vv push_d_to_stack
//vv push_constant(29)
//
//// push constant 63
//^^ push_constant(63)
// #18600
@63
// #18601
D=A
//^^ push_d_to_stack
// #18602
@SP
// #18603
A=M
// #18604
M=D
// #18605
@SP
// #18606
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 43
//^^ push_constant(43)
// #18607
@43
// #18608
D=A
//^^ push_d_to_stack
// #18609
@SP
// #18610
A=M
// #18611
M=D
// #18612
@SP
// #18613
M=M+1
//vv push_d_to_stack
//vv push_constant(43)
//
//// push constant 43
//^^ push_constant(43)
// #18614
@43
// #18615
D=A
//^^ push_d_to_stack
// #18616
@SP
// #18617
A=M
// #18618
M=D
// #18619
@SP
// #18620
M=M+1
//vv push_d_to_stack
//vv push_constant(43)
//
//// push constant 43
//^^ push_constant(43)
// #18621
@43
// #18622
D=A
//^^ push_d_to_stack
// #18623
@SP
// #18624
A=M
// #18625
M=D
// #18626
@SP
// #18627
M=M+1
//vv push_d_to_stack
//vv push_constant(43)
//
//// push constant 43
//^^ push_constant(43)
// #18628
@43
// #18629
D=A
//^^ push_d_to_stack
// #18630
@SP
// #18631
A=M
// #18632
M=D
// #18633
@SP
// #18634
M=M+1
//vv push_d_to_stack
//vv push_constant(43)
//
//// push constant 0
//^^ push_constant(0)
// #18635
@0
// #18636
D=A
//^^ push_d_to_stack
// #18637
@SP
// #18638
A=M
// #18639
M=D
// #18640
@SP
// #18641
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #18642
@0
// #18643
D=A
//^^ push_d_to_stack
// #18644
@SP
// #18645
A=M
// #18646
M=D
// #18647
@SP
// #18648
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_153)
// #18649
@RET_ADDR_153
// #18650
D=A
//^^ push_d_to_stack
// #18651
@SP
// #18652
A=M
// #18653
M=D
// #18654
@SP
// #18655
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_153)
//push return-address
// #18656
@LCL
// #18657
D=M
//^^ push_d_to_stack
// #18658
@SP
// #18659
A=M
// #18660
M=D
// #18661
@SP
// #18662
M=M+1
//vv push_d_to_stack
//push LCL
// #18663
@ARG
// #18664
D=M
//^^ push_d_to_stack
// #18665
@SP
// #18666
A=M
// #18667
M=D
// #18668
@SP
// #18669
M=M+1
//vv push_d_to_stack
//push ARG
// #18670
@THIS
// #18671
D=M
//^^ push_d_to_stack
// #18672
@SP
// #18673
A=M
// #18674
M=D
// #18675
@SP
// #18676
M=M+1
//vv push_d_to_stack
//push THIS
// #18677
@THAT
// #18678
D=M
//^^ push_d_to_stack
// #18679
@SP
// #18680
A=M
// #18681
M=D
// #18682
@SP
// #18683
M=M+1
//vv push_d_to_stack
//push THAT
// #18684
@SP
// #18685
D=M
// #18686
@ARG
// #18687
M=D
// #18688
@17
// #18689
D=A
// #18690
@ARG
// #18691
M=M-D // ARG = SP - args - 5
// #18692
@SP
// #18693
D=M
// #18694
@LCL
// #18695
M=D // LCL = SP
// #18696
@Output.create
// #18697
0;JMP
(RET_ADDR_153)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #18698
@SP
// #18699
M=M-1
// #18700
A=M
// #18701
D=M
//vv pop_stack_to_d
// #18702
@5
// #18703
M=D
//vv pop_to_loc{5)
//
//// push constant 110
//^^ push_constant(110)
// #18704
@110
// #18705
D=A
//^^ push_d_to_stack
// #18706
@SP
// #18707
A=M
// #18708
M=D
// #18709
@SP
// #18710
M=M+1
//vv push_d_to_stack
//vv push_constant(110)
//
//// push constant 0
//^^ push_constant(0)
// #18711
@0
// #18712
D=A
//^^ push_d_to_stack
// #18713
@SP
// #18714
A=M
// #18715
M=D
// #18716
@SP
// #18717
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #18718
@0
// #18719
D=A
//^^ push_d_to_stack
// #18720
@SP
// #18721
A=M
// #18722
M=D
// #18723
@SP
// #18724
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #18725
@0
// #18726
D=A
//^^ push_d_to_stack
// #18727
@SP
// #18728
A=M
// #18729
M=D
// #18730
@SP
// #18731
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 29
//^^ push_constant(29)
// #18732
@29
// #18733
D=A
//^^ push_d_to_stack
// #18734
@SP
// #18735
A=M
// #18736
M=D
// #18737
@SP
// #18738
M=M+1
//vv push_d_to_stack
//vv push_constant(29)
//
//// push constant 51
//^^ push_constant(51)
// #18739
@51
// #18740
D=A
//^^ push_d_to_stack
// #18741
@SP
// #18742
A=M
// #18743
M=D
// #18744
@SP
// #18745
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #18746
@51
// #18747
D=A
//^^ push_d_to_stack
// #18748
@SP
// #18749
A=M
// #18750
M=D
// #18751
@SP
// #18752
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #18753
@51
// #18754
D=A
//^^ push_d_to_stack
// #18755
@SP
// #18756
A=M
// #18757
M=D
// #18758
@SP
// #18759
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #18760
@51
// #18761
D=A
//^^ push_d_to_stack
// #18762
@SP
// #18763
A=M
// #18764
M=D
// #18765
@SP
// #18766
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #18767
@51
// #18768
D=A
//^^ push_d_to_stack
// #18769
@SP
// #18770
A=M
// #18771
M=D
// #18772
@SP
// #18773
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 0
//^^ push_constant(0)
// #18774
@0
// #18775
D=A
//^^ push_d_to_stack
// #18776
@SP
// #18777
A=M
// #18778
M=D
// #18779
@SP
// #18780
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #18781
@0
// #18782
D=A
//^^ push_d_to_stack
// #18783
@SP
// #18784
A=M
// #18785
M=D
// #18786
@SP
// #18787
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_154)
// #18788
@RET_ADDR_154
// #18789
D=A
//^^ push_d_to_stack
// #18790
@SP
// #18791
A=M
// #18792
M=D
// #18793
@SP
// #18794
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_154)
//push return-address
// #18795
@LCL
// #18796
D=M
//^^ push_d_to_stack
// #18797
@SP
// #18798
A=M
// #18799
M=D
// #18800
@SP
// #18801
M=M+1
//vv push_d_to_stack
//push LCL
// #18802
@ARG
// #18803
D=M
//^^ push_d_to_stack
// #18804
@SP
// #18805
A=M
// #18806
M=D
// #18807
@SP
// #18808
M=M+1
//vv push_d_to_stack
//push ARG
// #18809
@THIS
// #18810
D=M
//^^ push_d_to_stack
// #18811
@SP
// #18812
A=M
// #18813
M=D
// #18814
@SP
// #18815
M=M+1
//vv push_d_to_stack
//push THIS
// #18816
@THAT
// #18817
D=M
//^^ push_d_to_stack
// #18818
@SP
// #18819
A=M
// #18820
M=D
// #18821
@SP
// #18822
M=M+1
//vv push_d_to_stack
//push THAT
// #18823
@SP
// #18824
D=M
// #18825
@ARG
// #18826
M=D
// #18827
@17
// #18828
D=A
// #18829
@ARG
// #18830
M=M-D // ARG = SP - args - 5
// #18831
@SP
// #18832
D=M
// #18833
@LCL
// #18834
M=D // LCL = SP
// #18835
@Output.create
// #18836
0;JMP
(RET_ADDR_154)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #18837
@SP
// #18838
M=M-1
// #18839
A=M
// #18840
D=M
//vv pop_stack_to_d
// #18841
@5
// #18842
M=D
//vv pop_to_loc{5)
//
//// push constant 111
//^^ push_constant(111)
// #18843
@111
// #18844
D=A
//^^ push_d_to_stack
// #18845
@SP
// #18846
A=M
// #18847
M=D
// #18848
@SP
// #18849
M=M+1
//vv push_d_to_stack
//vv push_constant(111)
//
//// push constant 0
//^^ push_constant(0)
// #18850
@0
// #18851
D=A
//^^ push_d_to_stack
// #18852
@SP
// #18853
A=M
// #18854
M=D
// #18855
@SP
// #18856
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #18857
@0
// #18858
D=A
//^^ push_d_to_stack
// #18859
@SP
// #18860
A=M
// #18861
M=D
// #18862
@SP
// #18863
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #18864
@0
// #18865
D=A
//^^ push_d_to_stack
// #18866
@SP
// #18867
A=M
// #18868
M=D
// #18869
@SP
// #18870
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 30
//^^ push_constant(30)
// #18871
@30
// #18872
D=A
//^^ push_d_to_stack
// #18873
@SP
// #18874
A=M
// #18875
M=D
// #18876
@SP
// #18877
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 51
//^^ push_constant(51)
// #18878
@51
// #18879
D=A
//^^ push_d_to_stack
// #18880
@SP
// #18881
A=M
// #18882
M=D
// #18883
@SP
// #18884
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #18885
@51
// #18886
D=A
//^^ push_d_to_stack
// #18887
@SP
// #18888
A=M
// #18889
M=D
// #18890
@SP
// #18891
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #18892
@51
// #18893
D=A
//^^ push_d_to_stack
// #18894
@SP
// #18895
A=M
// #18896
M=D
// #18897
@SP
// #18898
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #18899
@51
// #18900
D=A
//^^ push_d_to_stack
// #18901
@SP
// #18902
A=M
// #18903
M=D
// #18904
@SP
// #18905
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #18906
@30
// #18907
D=A
//^^ push_d_to_stack
// #18908
@SP
// #18909
A=M
// #18910
M=D
// #18911
@SP
// #18912
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 0
//^^ push_constant(0)
// #18913
@0
// #18914
D=A
//^^ push_d_to_stack
// #18915
@SP
// #18916
A=M
// #18917
M=D
// #18918
@SP
// #18919
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #18920
@0
// #18921
D=A
//^^ push_d_to_stack
// #18922
@SP
// #18923
A=M
// #18924
M=D
// #18925
@SP
// #18926
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_155)
// #18927
@RET_ADDR_155
// #18928
D=A
//^^ push_d_to_stack
// #18929
@SP
// #18930
A=M
// #18931
M=D
// #18932
@SP
// #18933
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_155)
//push return-address
// #18934
@LCL
// #18935
D=M
//^^ push_d_to_stack
// #18936
@SP
// #18937
A=M
// #18938
M=D
// #18939
@SP
// #18940
M=M+1
//vv push_d_to_stack
//push LCL
// #18941
@ARG
// #18942
D=M
//^^ push_d_to_stack
// #18943
@SP
// #18944
A=M
// #18945
M=D
// #18946
@SP
// #18947
M=M+1
//vv push_d_to_stack
//push ARG
// #18948
@THIS
// #18949
D=M
//^^ push_d_to_stack
// #18950
@SP
// #18951
A=M
// #18952
M=D
// #18953
@SP
// #18954
M=M+1
//vv push_d_to_stack
//push THIS
// #18955
@THAT
// #18956
D=M
//^^ push_d_to_stack
// #18957
@SP
// #18958
A=M
// #18959
M=D
// #18960
@SP
// #18961
M=M+1
//vv push_d_to_stack
//push THAT
// #18962
@SP
// #18963
D=M
// #18964
@ARG
// #18965
M=D
// #18966
@17
// #18967
D=A
// #18968
@ARG
// #18969
M=M-D // ARG = SP - args - 5
// #18970
@SP
// #18971
D=M
// #18972
@LCL
// #18973
M=D // LCL = SP
// #18974
@Output.create
// #18975
0;JMP
(RET_ADDR_155)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #18976
@SP
// #18977
M=M-1
// #18978
A=M
// #18979
D=M
//vv pop_stack_to_d
// #18980
@5
// #18981
M=D
//vv pop_to_loc{5)
//
//// push constant 112
//^^ push_constant(112)
// #18982
@112
// #18983
D=A
//^^ push_d_to_stack
// #18984
@SP
// #18985
A=M
// #18986
M=D
// #18987
@SP
// #18988
M=M+1
//vv push_d_to_stack
//vv push_constant(112)
//
//// push constant 0
//^^ push_constant(0)
// #18989
@0
// #18990
D=A
//^^ push_d_to_stack
// #18991
@SP
// #18992
A=M
// #18993
M=D
// #18994
@SP
// #18995
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #18996
@0
// #18997
D=A
//^^ push_d_to_stack
// #18998
@SP
// #18999
A=M
// #19000
M=D
// #19001
@SP
// #19002
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #19003
@0
// #19004
D=A
//^^ push_d_to_stack
// #19005
@SP
// #19006
A=M
// #19007
M=D
// #19008
@SP
// #19009
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 30
//^^ push_constant(30)
// #19010
@30
// #19011
D=A
//^^ push_d_to_stack
// #19012
@SP
// #19013
A=M
// #19014
M=D
// #19015
@SP
// #19016
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 51
//^^ push_constant(51)
// #19017
@51
// #19018
D=A
//^^ push_d_to_stack
// #19019
@SP
// #19020
A=M
// #19021
M=D
// #19022
@SP
// #19023
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #19024
@51
// #19025
D=A
//^^ push_d_to_stack
// #19026
@SP
// #19027
A=M
// #19028
M=D
// #19029
@SP
// #19030
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #19031
@51
// #19032
D=A
//^^ push_d_to_stack
// #19033
@SP
// #19034
A=M
// #19035
M=D
// #19036
@SP
// #19037
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 31
//^^ push_constant(31)
// #19038
@31
// #19039
D=A
//^^ push_d_to_stack
// #19040
@SP
// #19041
A=M
// #19042
M=D
// #19043
@SP
// #19044
M=M+1
//vv push_d_to_stack
//vv push_constant(31)
//
//// push constant 3
//^^ push_constant(3)
// #19045
@3
// #19046
D=A
//^^ push_d_to_stack
// #19047
@SP
// #19048
A=M
// #19049
M=D
// #19050
@SP
// #19051
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 3
//^^ push_constant(3)
// #19052
@3
// #19053
D=A
//^^ push_d_to_stack
// #19054
@SP
// #19055
A=M
// #19056
M=D
// #19057
@SP
// #19058
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 0
//^^ push_constant(0)
// #19059
@0
// #19060
D=A
//^^ push_d_to_stack
// #19061
@SP
// #19062
A=M
// #19063
M=D
// #19064
@SP
// #19065
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_156)
// #19066
@RET_ADDR_156
// #19067
D=A
//^^ push_d_to_stack
// #19068
@SP
// #19069
A=M
// #19070
M=D
// #19071
@SP
// #19072
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_156)
//push return-address
// #19073
@LCL
// #19074
D=M
//^^ push_d_to_stack
// #19075
@SP
// #19076
A=M
// #19077
M=D
// #19078
@SP
// #19079
M=M+1
//vv push_d_to_stack
//push LCL
// #19080
@ARG
// #19081
D=M
//^^ push_d_to_stack
// #19082
@SP
// #19083
A=M
// #19084
M=D
// #19085
@SP
// #19086
M=M+1
//vv push_d_to_stack
//push ARG
// #19087
@THIS
// #19088
D=M
//^^ push_d_to_stack
// #19089
@SP
// #19090
A=M
// #19091
M=D
// #19092
@SP
// #19093
M=M+1
//vv push_d_to_stack
//push THIS
// #19094
@THAT
// #19095
D=M
//^^ push_d_to_stack
// #19096
@SP
// #19097
A=M
// #19098
M=D
// #19099
@SP
// #19100
M=M+1
//vv push_d_to_stack
//push THAT
// #19101
@SP
// #19102
D=M
// #19103
@ARG
// #19104
M=D
// #19105
@17
// #19106
D=A
// #19107
@ARG
// #19108
M=M-D // ARG = SP - args - 5
// #19109
@SP
// #19110
D=M
// #19111
@LCL
// #19112
M=D // LCL = SP
// #19113
@Output.create
// #19114
0;JMP
(RET_ADDR_156)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #19115
@SP
// #19116
M=M-1
// #19117
A=M
// #19118
D=M
//vv pop_stack_to_d
// #19119
@5
// #19120
M=D
//vv pop_to_loc{5)
//
//// push constant 113
//^^ push_constant(113)
// #19121
@113
// #19122
D=A
//^^ push_d_to_stack
// #19123
@SP
// #19124
A=M
// #19125
M=D
// #19126
@SP
// #19127
M=M+1
//vv push_d_to_stack
//vv push_constant(113)
//
//// push constant 0
//^^ push_constant(0)
// #19128
@0
// #19129
D=A
//^^ push_d_to_stack
// #19130
@SP
// #19131
A=M
// #19132
M=D
// #19133
@SP
// #19134
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #19135
@0
// #19136
D=A
//^^ push_d_to_stack
// #19137
@SP
// #19138
A=M
// #19139
M=D
// #19140
@SP
// #19141
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #19142
@0
// #19143
D=A
//^^ push_d_to_stack
// #19144
@SP
// #19145
A=M
// #19146
M=D
// #19147
@SP
// #19148
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 30
//^^ push_constant(30)
// #19149
@30
// #19150
D=A
//^^ push_d_to_stack
// #19151
@SP
// #19152
A=M
// #19153
M=D
// #19154
@SP
// #19155
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 51
//^^ push_constant(51)
// #19156
@51
// #19157
D=A
//^^ push_d_to_stack
// #19158
@SP
// #19159
A=M
// #19160
M=D
// #19161
@SP
// #19162
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #19163
@51
// #19164
D=A
//^^ push_d_to_stack
// #19165
@SP
// #19166
A=M
// #19167
M=D
// #19168
@SP
// #19169
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #19170
@51
// #19171
D=A
//^^ push_d_to_stack
// #19172
@SP
// #19173
A=M
// #19174
M=D
// #19175
@SP
// #19176
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 62
//^^ push_constant(62)
// #19177
@62
// #19178
D=A
//^^ push_d_to_stack
// #19179
@SP
// #19180
A=M
// #19181
M=D
// #19182
@SP
// #19183
M=M+1
//vv push_d_to_stack
//vv push_constant(62)
//
//// push constant 48
//^^ push_constant(48)
// #19184
@48
// #19185
D=A
//^^ push_d_to_stack
// #19186
@SP
// #19187
A=M
// #19188
M=D
// #19189
@SP
// #19190
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 48
//^^ push_constant(48)
// #19191
@48
// #19192
D=A
//^^ push_d_to_stack
// #19193
@SP
// #19194
A=M
// #19195
M=D
// #19196
@SP
// #19197
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 0
//^^ push_constant(0)
// #19198
@0
// #19199
D=A
//^^ push_d_to_stack
// #19200
@SP
// #19201
A=M
// #19202
M=D
// #19203
@SP
// #19204
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_157)
// #19205
@RET_ADDR_157
// #19206
D=A
//^^ push_d_to_stack
// #19207
@SP
// #19208
A=M
// #19209
M=D
// #19210
@SP
// #19211
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_157)
//push return-address
// #19212
@LCL
// #19213
D=M
//^^ push_d_to_stack
// #19214
@SP
// #19215
A=M
// #19216
M=D
// #19217
@SP
// #19218
M=M+1
//vv push_d_to_stack
//push LCL
// #19219
@ARG
// #19220
D=M
//^^ push_d_to_stack
// #19221
@SP
// #19222
A=M
// #19223
M=D
// #19224
@SP
// #19225
M=M+1
//vv push_d_to_stack
//push ARG
// #19226
@THIS
// #19227
D=M
//^^ push_d_to_stack
// #19228
@SP
// #19229
A=M
// #19230
M=D
// #19231
@SP
// #19232
M=M+1
//vv push_d_to_stack
//push THIS
// #19233
@THAT
// #19234
D=M
//^^ push_d_to_stack
// #19235
@SP
// #19236
A=M
// #19237
M=D
// #19238
@SP
// #19239
M=M+1
//vv push_d_to_stack
//push THAT
// #19240
@SP
// #19241
D=M
// #19242
@ARG
// #19243
M=D
// #19244
@17
// #19245
D=A
// #19246
@ARG
// #19247
M=M-D // ARG = SP - args - 5
// #19248
@SP
// #19249
D=M
// #19250
@LCL
// #19251
M=D // LCL = SP
// #19252
@Output.create
// #19253
0;JMP
(RET_ADDR_157)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #19254
@SP
// #19255
M=M-1
// #19256
A=M
// #19257
D=M
//vv pop_stack_to_d
// #19258
@5
// #19259
M=D
//vv pop_to_loc{5)
//
//// push constant 114
//^^ push_constant(114)
// #19260
@114
// #19261
D=A
//^^ push_d_to_stack
// #19262
@SP
// #19263
A=M
// #19264
M=D
// #19265
@SP
// #19266
M=M+1
//vv push_d_to_stack
//vv push_constant(114)
//
//// push constant 0
//^^ push_constant(0)
// #19267
@0
// #19268
D=A
//^^ push_d_to_stack
// #19269
@SP
// #19270
A=M
// #19271
M=D
// #19272
@SP
// #19273
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #19274
@0
// #19275
D=A
//^^ push_d_to_stack
// #19276
@SP
// #19277
A=M
// #19278
M=D
// #19279
@SP
// #19280
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #19281
@0
// #19282
D=A
//^^ push_d_to_stack
// #19283
@SP
// #19284
A=M
// #19285
M=D
// #19286
@SP
// #19287
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 29
//^^ push_constant(29)
// #19288
@29
// #19289
D=A
//^^ push_d_to_stack
// #19290
@SP
// #19291
A=M
// #19292
M=D
// #19293
@SP
// #19294
M=M+1
//vv push_d_to_stack
//vv push_constant(29)
//
//// push constant 55
//^^ push_constant(55)
// #19295
@55
// #19296
D=A
//^^ push_d_to_stack
// #19297
@SP
// #19298
A=M
// #19299
M=D
// #19300
@SP
// #19301
M=M+1
//vv push_d_to_stack
//vv push_constant(55)
//
//// push constant 51
//^^ push_constant(51)
// #19302
@51
// #19303
D=A
//^^ push_d_to_stack
// #19304
@SP
// #19305
A=M
// #19306
M=D
// #19307
@SP
// #19308
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 3
//^^ push_constant(3)
// #19309
@3
// #19310
D=A
//^^ push_d_to_stack
// #19311
@SP
// #19312
A=M
// #19313
M=D
// #19314
@SP
// #19315
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 3
//^^ push_constant(3)
// #19316
@3
// #19317
D=A
//^^ push_d_to_stack
// #19318
@SP
// #19319
A=M
// #19320
M=D
// #19321
@SP
// #19322
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push constant 7
//^^ push_constant(7)
// #19323
@7
// #19324
D=A
//^^ push_d_to_stack
// #19325
@SP
// #19326
A=M
// #19327
M=D
// #19328
@SP
// #19329
M=M+1
//vv push_d_to_stack
//vv push_constant(7)
//
//// push constant 0
//^^ push_constant(0)
// #19330
@0
// #19331
D=A
//^^ push_d_to_stack
// #19332
@SP
// #19333
A=M
// #19334
M=D
// #19335
@SP
// #19336
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #19337
@0
// #19338
D=A
//^^ push_d_to_stack
// #19339
@SP
// #19340
A=M
// #19341
M=D
// #19342
@SP
// #19343
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_158)
// #19344
@RET_ADDR_158
// #19345
D=A
//^^ push_d_to_stack
// #19346
@SP
// #19347
A=M
// #19348
M=D
// #19349
@SP
// #19350
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_158)
//push return-address
// #19351
@LCL
// #19352
D=M
//^^ push_d_to_stack
// #19353
@SP
// #19354
A=M
// #19355
M=D
// #19356
@SP
// #19357
M=M+1
//vv push_d_to_stack
//push LCL
// #19358
@ARG
// #19359
D=M
//^^ push_d_to_stack
// #19360
@SP
// #19361
A=M
// #19362
M=D
// #19363
@SP
// #19364
M=M+1
//vv push_d_to_stack
//push ARG
// #19365
@THIS
// #19366
D=M
//^^ push_d_to_stack
// #19367
@SP
// #19368
A=M
// #19369
M=D
// #19370
@SP
// #19371
M=M+1
//vv push_d_to_stack
//push THIS
// #19372
@THAT
// #19373
D=M
//^^ push_d_to_stack
// #19374
@SP
// #19375
A=M
// #19376
M=D
// #19377
@SP
// #19378
M=M+1
//vv push_d_to_stack
//push THAT
// #19379
@SP
// #19380
D=M
// #19381
@ARG
// #19382
M=D
// #19383
@17
// #19384
D=A
// #19385
@ARG
// #19386
M=M-D // ARG = SP - args - 5
// #19387
@SP
// #19388
D=M
// #19389
@LCL
// #19390
M=D // LCL = SP
// #19391
@Output.create
// #19392
0;JMP
(RET_ADDR_158)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #19393
@SP
// #19394
M=M-1
// #19395
A=M
// #19396
D=M
//vv pop_stack_to_d
// #19397
@5
// #19398
M=D
//vv pop_to_loc{5)
//
//// push constant 115
//^^ push_constant(115)
// #19399
@115
// #19400
D=A
//^^ push_d_to_stack
// #19401
@SP
// #19402
A=M
// #19403
M=D
// #19404
@SP
// #19405
M=M+1
//vv push_d_to_stack
//vv push_constant(115)
//
//// push constant 0
//^^ push_constant(0)
// #19406
@0
// #19407
D=A
//^^ push_d_to_stack
// #19408
@SP
// #19409
A=M
// #19410
M=D
// #19411
@SP
// #19412
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #19413
@0
// #19414
D=A
//^^ push_d_to_stack
// #19415
@SP
// #19416
A=M
// #19417
M=D
// #19418
@SP
// #19419
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #19420
@0
// #19421
D=A
//^^ push_d_to_stack
// #19422
@SP
// #19423
A=M
// #19424
M=D
// #19425
@SP
// #19426
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 30
//^^ push_constant(30)
// #19427
@30
// #19428
D=A
//^^ push_d_to_stack
// #19429
@SP
// #19430
A=M
// #19431
M=D
// #19432
@SP
// #19433
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 51
//^^ push_constant(51)
// #19434
@51
// #19435
D=A
//^^ push_d_to_stack
// #19436
@SP
// #19437
A=M
// #19438
M=D
// #19439
@SP
// #19440
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 6
//^^ push_constant(6)
// #19441
@6
// #19442
D=A
//^^ push_d_to_stack
// #19443
@SP
// #19444
A=M
// #19445
M=D
// #19446
@SP
// #19447
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 24
//^^ push_constant(24)
// #19448
@24
// #19449
D=A
//^^ push_d_to_stack
// #19450
@SP
// #19451
A=M
// #19452
M=D
// #19453
@SP
// #19454
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 51
//^^ push_constant(51)
// #19455
@51
// #19456
D=A
//^^ push_d_to_stack
// #19457
@SP
// #19458
A=M
// #19459
M=D
// #19460
@SP
// #19461
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #19462
@30
// #19463
D=A
//^^ push_d_to_stack
// #19464
@SP
// #19465
A=M
// #19466
M=D
// #19467
@SP
// #19468
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 0
//^^ push_constant(0)
// #19469
@0
// #19470
D=A
//^^ push_d_to_stack
// #19471
@SP
// #19472
A=M
// #19473
M=D
// #19474
@SP
// #19475
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #19476
@0
// #19477
D=A
//^^ push_d_to_stack
// #19478
@SP
// #19479
A=M
// #19480
M=D
// #19481
@SP
// #19482
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_159)
// #19483
@RET_ADDR_159
// #19484
D=A
//^^ push_d_to_stack
// #19485
@SP
// #19486
A=M
// #19487
M=D
// #19488
@SP
// #19489
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_159)
//push return-address
// #19490
@LCL
// #19491
D=M
//^^ push_d_to_stack
// #19492
@SP
// #19493
A=M
// #19494
M=D
// #19495
@SP
// #19496
M=M+1
//vv push_d_to_stack
//push LCL
// #19497
@ARG
// #19498
D=M
//^^ push_d_to_stack
// #19499
@SP
// #19500
A=M
// #19501
M=D
// #19502
@SP
// #19503
M=M+1
//vv push_d_to_stack
//push ARG
// #19504
@THIS
// #19505
D=M
//^^ push_d_to_stack
// #19506
@SP
// #19507
A=M
// #19508
M=D
// #19509
@SP
// #19510
M=M+1
//vv push_d_to_stack
//push THIS
// #19511
@THAT
// #19512
D=M
//^^ push_d_to_stack
// #19513
@SP
// #19514
A=M
// #19515
M=D
// #19516
@SP
// #19517
M=M+1
//vv push_d_to_stack
//push THAT
// #19518
@SP
// #19519
D=M
// #19520
@ARG
// #19521
M=D
// #19522
@17
// #19523
D=A
// #19524
@ARG
// #19525
M=M-D // ARG = SP - args - 5
// #19526
@SP
// #19527
D=M
// #19528
@LCL
// #19529
M=D // LCL = SP
// #19530
@Output.create
// #19531
0;JMP
(RET_ADDR_159)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #19532
@SP
// #19533
M=M-1
// #19534
A=M
// #19535
D=M
//vv pop_stack_to_d
// #19536
@5
// #19537
M=D
//vv pop_to_loc{5)
//
//// push constant 116
//^^ push_constant(116)
// #19538
@116
// #19539
D=A
//^^ push_d_to_stack
// #19540
@SP
// #19541
A=M
// #19542
M=D
// #19543
@SP
// #19544
M=M+1
//vv push_d_to_stack
//vv push_constant(116)
//
//// push constant 4
//^^ push_constant(4)
// #19545
@4
// #19546
D=A
//^^ push_d_to_stack
// #19547
@SP
// #19548
A=M
// #19549
M=D
// #19550
@SP
// #19551
M=M+1
//vv push_d_to_stack
//vv push_constant(4)
//
//// push constant 6
//^^ push_constant(6)
// #19552
@6
// #19553
D=A
//^^ push_d_to_stack
// #19554
@SP
// #19555
A=M
// #19556
M=D
// #19557
@SP
// #19558
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 6
//^^ push_constant(6)
// #19559
@6
// #19560
D=A
//^^ push_d_to_stack
// #19561
@SP
// #19562
A=M
// #19563
M=D
// #19564
@SP
// #19565
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 15
//^^ push_constant(15)
// #19566
@15
// #19567
D=A
//^^ push_d_to_stack
// #19568
@SP
// #19569
A=M
// #19570
M=D
// #19571
@SP
// #19572
M=M+1
//vv push_d_to_stack
//vv push_constant(15)
//
//// push constant 6
//^^ push_constant(6)
// #19573
@6
// #19574
D=A
//^^ push_d_to_stack
// #19575
@SP
// #19576
A=M
// #19577
M=D
// #19578
@SP
// #19579
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 6
//^^ push_constant(6)
// #19580
@6
// #19581
D=A
//^^ push_d_to_stack
// #19582
@SP
// #19583
A=M
// #19584
M=D
// #19585
@SP
// #19586
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 6
//^^ push_constant(6)
// #19587
@6
// #19588
D=A
//^^ push_d_to_stack
// #19589
@SP
// #19590
A=M
// #19591
M=D
// #19592
@SP
// #19593
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 54
//^^ push_constant(54)
// #19594
@54
// #19595
D=A
//^^ push_d_to_stack
// #19596
@SP
// #19597
A=M
// #19598
M=D
// #19599
@SP
// #19600
M=M+1
//vv push_d_to_stack
//vv push_constant(54)
//
//// push constant 28
//^^ push_constant(28)
// #19601
@28
// #19602
D=A
//^^ push_d_to_stack
// #19603
@SP
// #19604
A=M
// #19605
M=D
// #19606
@SP
// #19607
M=M+1
//vv push_d_to_stack
//vv push_constant(28)
//
//// push constant 0
//^^ push_constant(0)
// #19608
@0
// #19609
D=A
//^^ push_d_to_stack
// #19610
@SP
// #19611
A=M
// #19612
M=D
// #19613
@SP
// #19614
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #19615
@0
// #19616
D=A
//^^ push_d_to_stack
// #19617
@SP
// #19618
A=M
// #19619
M=D
// #19620
@SP
// #19621
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_160)
// #19622
@RET_ADDR_160
// #19623
D=A
//^^ push_d_to_stack
// #19624
@SP
// #19625
A=M
// #19626
M=D
// #19627
@SP
// #19628
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_160)
//push return-address
// #19629
@LCL
// #19630
D=M
//^^ push_d_to_stack
// #19631
@SP
// #19632
A=M
// #19633
M=D
// #19634
@SP
// #19635
M=M+1
//vv push_d_to_stack
//push LCL
// #19636
@ARG
// #19637
D=M
//^^ push_d_to_stack
// #19638
@SP
// #19639
A=M
// #19640
M=D
// #19641
@SP
// #19642
M=M+1
//vv push_d_to_stack
//push ARG
// #19643
@THIS
// #19644
D=M
//^^ push_d_to_stack
// #19645
@SP
// #19646
A=M
// #19647
M=D
// #19648
@SP
// #19649
M=M+1
//vv push_d_to_stack
//push THIS
// #19650
@THAT
// #19651
D=M
//^^ push_d_to_stack
// #19652
@SP
// #19653
A=M
// #19654
M=D
// #19655
@SP
// #19656
M=M+1
//vv push_d_to_stack
//push THAT
// #19657
@SP
// #19658
D=M
// #19659
@ARG
// #19660
M=D
// #19661
@17
// #19662
D=A
// #19663
@ARG
// #19664
M=M-D // ARG = SP - args - 5
// #19665
@SP
// #19666
D=M
// #19667
@LCL
// #19668
M=D // LCL = SP
// #19669
@Output.create
// #19670
0;JMP
(RET_ADDR_160)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #19671
@SP
// #19672
M=M-1
// #19673
A=M
// #19674
D=M
//vv pop_stack_to_d
// #19675
@5
// #19676
M=D
//vv pop_to_loc{5)
//
//// push constant 117
//^^ push_constant(117)
// #19677
@117
// #19678
D=A
//^^ push_d_to_stack
// #19679
@SP
// #19680
A=M
// #19681
M=D
// #19682
@SP
// #19683
M=M+1
//vv push_d_to_stack
//vv push_constant(117)
//
//// push constant 0
//^^ push_constant(0)
// #19684
@0
// #19685
D=A
//^^ push_d_to_stack
// #19686
@SP
// #19687
A=M
// #19688
M=D
// #19689
@SP
// #19690
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #19691
@0
// #19692
D=A
//^^ push_d_to_stack
// #19693
@SP
// #19694
A=M
// #19695
M=D
// #19696
@SP
// #19697
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #19698
@0
// #19699
D=A
//^^ push_d_to_stack
// #19700
@SP
// #19701
A=M
// #19702
M=D
// #19703
@SP
// #19704
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 27
//^^ push_constant(27)
// #19705
@27
// #19706
D=A
//^^ push_d_to_stack
// #19707
@SP
// #19708
A=M
// #19709
M=D
// #19710
@SP
// #19711
M=M+1
//vv push_d_to_stack
//vv push_constant(27)
//
//// push constant 27
//^^ push_constant(27)
// #19712
@27
// #19713
D=A
//^^ push_d_to_stack
// #19714
@SP
// #19715
A=M
// #19716
M=D
// #19717
@SP
// #19718
M=M+1
//vv push_d_to_stack
//vv push_constant(27)
//
//// push constant 27
//^^ push_constant(27)
// #19719
@27
// #19720
D=A
//^^ push_d_to_stack
// #19721
@SP
// #19722
A=M
// #19723
M=D
// #19724
@SP
// #19725
M=M+1
//vv push_d_to_stack
//vv push_constant(27)
//
//// push constant 27
//^^ push_constant(27)
// #19726
@27
// #19727
D=A
//^^ push_d_to_stack
// #19728
@SP
// #19729
A=M
// #19730
M=D
// #19731
@SP
// #19732
M=M+1
//vv push_d_to_stack
//vv push_constant(27)
//
//// push constant 27
//^^ push_constant(27)
// #19733
@27
// #19734
D=A
//^^ push_d_to_stack
// #19735
@SP
// #19736
A=M
// #19737
M=D
// #19738
@SP
// #19739
M=M+1
//vv push_d_to_stack
//vv push_constant(27)
//
//// push constant 54
//^^ push_constant(54)
// #19740
@54
// #19741
D=A
//^^ push_d_to_stack
// #19742
@SP
// #19743
A=M
// #19744
M=D
// #19745
@SP
// #19746
M=M+1
//vv push_d_to_stack
//vv push_constant(54)
//
//// push constant 0
//^^ push_constant(0)
// #19747
@0
// #19748
D=A
//^^ push_d_to_stack
// #19749
@SP
// #19750
A=M
// #19751
M=D
// #19752
@SP
// #19753
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #19754
@0
// #19755
D=A
//^^ push_d_to_stack
// #19756
@SP
// #19757
A=M
// #19758
M=D
// #19759
@SP
// #19760
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_161)
// #19761
@RET_ADDR_161
// #19762
D=A
//^^ push_d_to_stack
// #19763
@SP
// #19764
A=M
// #19765
M=D
// #19766
@SP
// #19767
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_161)
//push return-address
// #19768
@LCL
// #19769
D=M
//^^ push_d_to_stack
// #19770
@SP
// #19771
A=M
// #19772
M=D
// #19773
@SP
// #19774
M=M+1
//vv push_d_to_stack
//push LCL
// #19775
@ARG
// #19776
D=M
//^^ push_d_to_stack
// #19777
@SP
// #19778
A=M
// #19779
M=D
// #19780
@SP
// #19781
M=M+1
//vv push_d_to_stack
//push ARG
// #19782
@THIS
// #19783
D=M
//^^ push_d_to_stack
// #19784
@SP
// #19785
A=M
// #19786
M=D
// #19787
@SP
// #19788
M=M+1
//vv push_d_to_stack
//push THIS
// #19789
@THAT
// #19790
D=M
//^^ push_d_to_stack
// #19791
@SP
// #19792
A=M
// #19793
M=D
// #19794
@SP
// #19795
M=M+1
//vv push_d_to_stack
//push THAT
// #19796
@SP
// #19797
D=M
// #19798
@ARG
// #19799
M=D
// #19800
@17
// #19801
D=A
// #19802
@ARG
// #19803
M=M-D // ARG = SP - args - 5
// #19804
@SP
// #19805
D=M
// #19806
@LCL
// #19807
M=D // LCL = SP
// #19808
@Output.create
// #19809
0;JMP
(RET_ADDR_161)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #19810
@SP
// #19811
M=M-1
// #19812
A=M
// #19813
D=M
//vv pop_stack_to_d
// #19814
@5
// #19815
M=D
//vv pop_to_loc{5)
//
//// push constant 118
//^^ push_constant(118)
// #19816
@118
// #19817
D=A
//^^ push_d_to_stack
// #19818
@SP
// #19819
A=M
// #19820
M=D
// #19821
@SP
// #19822
M=M+1
//vv push_d_to_stack
//vv push_constant(118)
//
//// push constant 0
//^^ push_constant(0)
// #19823
@0
// #19824
D=A
//^^ push_d_to_stack
// #19825
@SP
// #19826
A=M
// #19827
M=D
// #19828
@SP
// #19829
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #19830
@0
// #19831
D=A
//^^ push_d_to_stack
// #19832
@SP
// #19833
A=M
// #19834
M=D
// #19835
@SP
// #19836
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #19837
@0
// #19838
D=A
//^^ push_d_to_stack
// #19839
@SP
// #19840
A=M
// #19841
M=D
// #19842
@SP
// #19843
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 51
//^^ push_constant(51)
// #19844
@51
// #19845
D=A
//^^ push_d_to_stack
// #19846
@SP
// #19847
A=M
// #19848
M=D
// #19849
@SP
// #19850
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #19851
@51
// #19852
D=A
//^^ push_d_to_stack
// #19853
@SP
// #19854
A=M
// #19855
M=D
// #19856
@SP
// #19857
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #19858
@51
// #19859
D=A
//^^ push_d_to_stack
// #19860
@SP
// #19861
A=M
// #19862
M=D
// #19863
@SP
// #19864
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #19865
@51
// #19866
D=A
//^^ push_d_to_stack
// #19867
@SP
// #19868
A=M
// #19869
M=D
// #19870
@SP
// #19871
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #19872
@30
// #19873
D=A
//^^ push_d_to_stack
// #19874
@SP
// #19875
A=M
// #19876
M=D
// #19877
@SP
// #19878
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 12
//^^ push_constant(12)
// #19879
@12
// #19880
D=A
//^^ push_d_to_stack
// #19881
@SP
// #19882
A=M
// #19883
M=D
// #19884
@SP
// #19885
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 0
//^^ push_constant(0)
// #19886
@0
// #19887
D=A
//^^ push_d_to_stack
// #19888
@SP
// #19889
A=M
// #19890
M=D
// #19891
@SP
// #19892
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #19893
@0
// #19894
D=A
//^^ push_d_to_stack
// #19895
@SP
// #19896
A=M
// #19897
M=D
// #19898
@SP
// #19899
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_162)
// #19900
@RET_ADDR_162
// #19901
D=A
//^^ push_d_to_stack
// #19902
@SP
// #19903
A=M
// #19904
M=D
// #19905
@SP
// #19906
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_162)
//push return-address
// #19907
@LCL
// #19908
D=M
//^^ push_d_to_stack
// #19909
@SP
// #19910
A=M
// #19911
M=D
// #19912
@SP
// #19913
M=M+1
//vv push_d_to_stack
//push LCL
// #19914
@ARG
// #19915
D=M
//^^ push_d_to_stack
// #19916
@SP
// #19917
A=M
// #19918
M=D
// #19919
@SP
// #19920
M=M+1
//vv push_d_to_stack
//push ARG
// #19921
@THIS
// #19922
D=M
//^^ push_d_to_stack
// #19923
@SP
// #19924
A=M
// #19925
M=D
// #19926
@SP
// #19927
M=M+1
//vv push_d_to_stack
//push THIS
// #19928
@THAT
// #19929
D=M
//^^ push_d_to_stack
// #19930
@SP
// #19931
A=M
// #19932
M=D
// #19933
@SP
// #19934
M=M+1
//vv push_d_to_stack
//push THAT
// #19935
@SP
// #19936
D=M
// #19937
@ARG
// #19938
M=D
// #19939
@17
// #19940
D=A
// #19941
@ARG
// #19942
M=M-D // ARG = SP - args - 5
// #19943
@SP
// #19944
D=M
// #19945
@LCL
// #19946
M=D // LCL = SP
// #19947
@Output.create
// #19948
0;JMP
(RET_ADDR_162)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #19949
@SP
// #19950
M=M-1
// #19951
A=M
// #19952
D=M
//vv pop_stack_to_d
// #19953
@5
// #19954
M=D
//vv pop_to_loc{5)
//
//// push constant 119
//^^ push_constant(119)
// #19955
@119
// #19956
D=A
//^^ push_d_to_stack
// #19957
@SP
// #19958
A=M
// #19959
M=D
// #19960
@SP
// #19961
M=M+1
//vv push_d_to_stack
//vv push_constant(119)
//
//// push constant 0
//^^ push_constant(0)
// #19962
@0
// #19963
D=A
//^^ push_d_to_stack
// #19964
@SP
// #19965
A=M
// #19966
M=D
// #19967
@SP
// #19968
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #19969
@0
// #19970
D=A
//^^ push_d_to_stack
// #19971
@SP
// #19972
A=M
// #19973
M=D
// #19974
@SP
// #19975
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #19976
@0
// #19977
D=A
//^^ push_d_to_stack
// #19978
@SP
// #19979
A=M
// #19980
M=D
// #19981
@SP
// #19982
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 51
//^^ push_constant(51)
// #19983
@51
// #19984
D=A
//^^ push_d_to_stack
// #19985
@SP
// #19986
A=M
// #19987
M=D
// #19988
@SP
// #19989
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #19990
@51
// #19991
D=A
//^^ push_d_to_stack
// #19992
@SP
// #19993
A=M
// #19994
M=D
// #19995
@SP
// #19996
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #19997
@51
// #19998
D=A
//^^ push_d_to_stack
// #19999
@SP
// #20000
A=M
// #20001
M=D
// #20002
@SP
// #20003
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 63
//^^ push_constant(63)
// #20004
@63
// #20005
D=A
//^^ push_d_to_stack
// #20006
@SP
// #20007
A=M
// #20008
M=D
// #20009
@SP
// #20010
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 63
//^^ push_constant(63)
// #20011
@63
// #20012
D=A
//^^ push_d_to_stack
// #20013
@SP
// #20014
A=M
// #20015
M=D
// #20016
@SP
// #20017
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 18
//^^ push_constant(18)
// #20018
@18
// #20019
D=A
//^^ push_d_to_stack
// #20020
@SP
// #20021
A=M
// #20022
M=D
// #20023
@SP
// #20024
M=M+1
//vv push_d_to_stack
//vv push_constant(18)
//
//// push constant 0
//^^ push_constant(0)
// #20025
@0
// #20026
D=A
//^^ push_d_to_stack
// #20027
@SP
// #20028
A=M
// #20029
M=D
// #20030
@SP
// #20031
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #20032
@0
// #20033
D=A
//^^ push_d_to_stack
// #20034
@SP
// #20035
A=M
// #20036
M=D
// #20037
@SP
// #20038
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_163)
// #20039
@RET_ADDR_163
// #20040
D=A
//^^ push_d_to_stack
// #20041
@SP
// #20042
A=M
// #20043
M=D
// #20044
@SP
// #20045
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_163)
//push return-address
// #20046
@LCL
// #20047
D=M
//^^ push_d_to_stack
// #20048
@SP
// #20049
A=M
// #20050
M=D
// #20051
@SP
// #20052
M=M+1
//vv push_d_to_stack
//push LCL
// #20053
@ARG
// #20054
D=M
//^^ push_d_to_stack
// #20055
@SP
// #20056
A=M
// #20057
M=D
// #20058
@SP
// #20059
M=M+1
//vv push_d_to_stack
//push ARG
// #20060
@THIS
// #20061
D=M
//^^ push_d_to_stack
// #20062
@SP
// #20063
A=M
// #20064
M=D
// #20065
@SP
// #20066
M=M+1
//vv push_d_to_stack
//push THIS
// #20067
@THAT
// #20068
D=M
//^^ push_d_to_stack
// #20069
@SP
// #20070
A=M
// #20071
M=D
// #20072
@SP
// #20073
M=M+1
//vv push_d_to_stack
//push THAT
// #20074
@SP
// #20075
D=M
// #20076
@ARG
// #20077
M=D
// #20078
@17
// #20079
D=A
// #20080
@ARG
// #20081
M=M-D // ARG = SP - args - 5
// #20082
@SP
// #20083
D=M
// #20084
@LCL
// #20085
M=D // LCL = SP
// #20086
@Output.create
// #20087
0;JMP
(RET_ADDR_163)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #20088
@SP
// #20089
M=M-1
// #20090
A=M
// #20091
D=M
//vv pop_stack_to_d
// #20092
@5
// #20093
M=D
//vv pop_to_loc{5)
//
//// push constant 120
//^^ push_constant(120)
// #20094
@120
// #20095
D=A
//^^ push_d_to_stack
// #20096
@SP
// #20097
A=M
// #20098
M=D
// #20099
@SP
// #20100
M=M+1
//vv push_d_to_stack
//vv push_constant(120)
//
//// push constant 0
//^^ push_constant(0)
// #20101
@0
// #20102
D=A
//^^ push_d_to_stack
// #20103
@SP
// #20104
A=M
// #20105
M=D
// #20106
@SP
// #20107
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #20108
@0
// #20109
D=A
//^^ push_d_to_stack
// #20110
@SP
// #20111
A=M
// #20112
M=D
// #20113
@SP
// #20114
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #20115
@0
// #20116
D=A
//^^ push_d_to_stack
// #20117
@SP
// #20118
A=M
// #20119
M=D
// #20120
@SP
// #20121
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 51
//^^ push_constant(51)
// #20122
@51
// #20123
D=A
//^^ push_d_to_stack
// #20124
@SP
// #20125
A=M
// #20126
M=D
// #20127
@SP
// #20128
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 30
//^^ push_constant(30)
// #20129
@30
// #20130
D=A
//^^ push_d_to_stack
// #20131
@SP
// #20132
A=M
// #20133
M=D
// #20134
@SP
// #20135
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 12
//^^ push_constant(12)
// #20136
@12
// #20137
D=A
//^^ push_d_to_stack
// #20138
@SP
// #20139
A=M
// #20140
M=D
// #20141
@SP
// #20142
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #20143
@12
// #20144
D=A
//^^ push_d_to_stack
// #20145
@SP
// #20146
A=M
// #20147
M=D
// #20148
@SP
// #20149
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 30
//^^ push_constant(30)
// #20150
@30
// #20151
D=A
//^^ push_d_to_stack
// #20152
@SP
// #20153
A=M
// #20154
M=D
// #20155
@SP
// #20156
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// push constant 51
//^^ push_constant(51)
// #20157
@51
// #20158
D=A
//^^ push_d_to_stack
// #20159
@SP
// #20160
A=M
// #20161
M=D
// #20162
@SP
// #20163
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 0
//^^ push_constant(0)
// #20164
@0
// #20165
D=A
//^^ push_d_to_stack
// #20166
@SP
// #20167
A=M
// #20168
M=D
// #20169
@SP
// #20170
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #20171
@0
// #20172
D=A
//^^ push_d_to_stack
// #20173
@SP
// #20174
A=M
// #20175
M=D
// #20176
@SP
// #20177
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_164)
// #20178
@RET_ADDR_164
// #20179
D=A
//^^ push_d_to_stack
// #20180
@SP
// #20181
A=M
// #20182
M=D
// #20183
@SP
// #20184
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_164)
//push return-address
// #20185
@LCL
// #20186
D=M
//^^ push_d_to_stack
// #20187
@SP
// #20188
A=M
// #20189
M=D
// #20190
@SP
// #20191
M=M+1
//vv push_d_to_stack
//push LCL
// #20192
@ARG
// #20193
D=M
//^^ push_d_to_stack
// #20194
@SP
// #20195
A=M
// #20196
M=D
// #20197
@SP
// #20198
M=M+1
//vv push_d_to_stack
//push ARG
// #20199
@THIS
// #20200
D=M
//^^ push_d_to_stack
// #20201
@SP
// #20202
A=M
// #20203
M=D
// #20204
@SP
// #20205
M=M+1
//vv push_d_to_stack
//push THIS
// #20206
@THAT
// #20207
D=M
//^^ push_d_to_stack
// #20208
@SP
// #20209
A=M
// #20210
M=D
// #20211
@SP
// #20212
M=M+1
//vv push_d_to_stack
//push THAT
// #20213
@SP
// #20214
D=M
// #20215
@ARG
// #20216
M=D
// #20217
@17
// #20218
D=A
// #20219
@ARG
// #20220
M=M-D // ARG = SP - args - 5
// #20221
@SP
// #20222
D=M
// #20223
@LCL
// #20224
M=D // LCL = SP
// #20225
@Output.create
// #20226
0;JMP
(RET_ADDR_164)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #20227
@SP
// #20228
M=M-1
// #20229
A=M
// #20230
D=M
//vv pop_stack_to_d
// #20231
@5
// #20232
M=D
//vv pop_to_loc{5)
//
//// push constant 121
//^^ push_constant(121)
// #20233
@121
// #20234
D=A
//^^ push_d_to_stack
// #20235
@SP
// #20236
A=M
// #20237
M=D
// #20238
@SP
// #20239
M=M+1
//vv push_d_to_stack
//vv push_constant(121)
//
//// push constant 0
//^^ push_constant(0)
// #20240
@0
// #20241
D=A
//^^ push_d_to_stack
// #20242
@SP
// #20243
A=M
// #20244
M=D
// #20245
@SP
// #20246
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #20247
@0
// #20248
D=A
//^^ push_d_to_stack
// #20249
@SP
// #20250
A=M
// #20251
M=D
// #20252
@SP
// #20253
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #20254
@0
// #20255
D=A
//^^ push_d_to_stack
// #20256
@SP
// #20257
A=M
// #20258
M=D
// #20259
@SP
// #20260
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 51
//^^ push_constant(51)
// #20261
@51
// #20262
D=A
//^^ push_d_to_stack
// #20263
@SP
// #20264
A=M
// #20265
M=D
// #20266
@SP
// #20267
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #20268
@51
// #20269
D=A
//^^ push_d_to_stack
// #20270
@SP
// #20271
A=M
// #20272
M=D
// #20273
@SP
// #20274
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 51
//^^ push_constant(51)
// #20275
@51
// #20276
D=A
//^^ push_d_to_stack
// #20277
@SP
// #20278
A=M
// #20279
M=D
// #20280
@SP
// #20281
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 62
//^^ push_constant(62)
// #20282
@62
// #20283
D=A
//^^ push_d_to_stack
// #20284
@SP
// #20285
A=M
// #20286
M=D
// #20287
@SP
// #20288
M=M+1
//vv push_d_to_stack
//vv push_constant(62)
//
//// push constant 48
//^^ push_constant(48)
// #20289
@48
// #20290
D=A
//^^ push_d_to_stack
// #20291
@SP
// #20292
A=M
// #20293
M=D
// #20294
@SP
// #20295
M=M+1
//vv push_d_to_stack
//vv push_constant(48)
//
//// push constant 24
//^^ push_constant(24)
// #20296
@24
// #20297
D=A
//^^ push_d_to_stack
// #20298
@SP
// #20299
A=M
// #20300
M=D
// #20301
@SP
// #20302
M=M+1
//vv push_d_to_stack
//vv push_constant(24)
//
//// push constant 15
//^^ push_constant(15)
// #20303
@15
// #20304
D=A
//^^ push_d_to_stack
// #20305
@SP
// #20306
A=M
// #20307
M=D
// #20308
@SP
// #20309
M=M+1
//vv push_d_to_stack
//vv push_constant(15)
//
//// push constant 0
//^^ push_constant(0)
// #20310
@0
// #20311
D=A
//^^ push_d_to_stack
// #20312
@SP
// #20313
A=M
// #20314
M=D
// #20315
@SP
// #20316
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_165)
// #20317
@RET_ADDR_165
// #20318
D=A
//^^ push_d_to_stack
// #20319
@SP
// #20320
A=M
// #20321
M=D
// #20322
@SP
// #20323
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_165)
//push return-address
// #20324
@LCL
// #20325
D=M
//^^ push_d_to_stack
// #20326
@SP
// #20327
A=M
// #20328
M=D
// #20329
@SP
// #20330
M=M+1
//vv push_d_to_stack
//push LCL
// #20331
@ARG
// #20332
D=M
//^^ push_d_to_stack
// #20333
@SP
// #20334
A=M
// #20335
M=D
// #20336
@SP
// #20337
M=M+1
//vv push_d_to_stack
//push ARG
// #20338
@THIS
// #20339
D=M
//^^ push_d_to_stack
// #20340
@SP
// #20341
A=M
// #20342
M=D
// #20343
@SP
// #20344
M=M+1
//vv push_d_to_stack
//push THIS
// #20345
@THAT
// #20346
D=M
//^^ push_d_to_stack
// #20347
@SP
// #20348
A=M
// #20349
M=D
// #20350
@SP
// #20351
M=M+1
//vv push_d_to_stack
//push THAT
// #20352
@SP
// #20353
D=M
// #20354
@ARG
// #20355
M=D
// #20356
@17
// #20357
D=A
// #20358
@ARG
// #20359
M=M-D // ARG = SP - args - 5
// #20360
@SP
// #20361
D=M
// #20362
@LCL
// #20363
M=D // LCL = SP
// #20364
@Output.create
// #20365
0;JMP
(RET_ADDR_165)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #20366
@SP
// #20367
M=M-1
// #20368
A=M
// #20369
D=M
//vv pop_stack_to_d
// #20370
@5
// #20371
M=D
//vv pop_to_loc{5)
//
//// push constant 122
//^^ push_constant(122)
// #20372
@122
// #20373
D=A
//^^ push_d_to_stack
// #20374
@SP
// #20375
A=M
// #20376
M=D
// #20377
@SP
// #20378
M=M+1
//vv push_d_to_stack
//vv push_constant(122)
//
//// push constant 0
//^^ push_constant(0)
// #20379
@0
// #20380
D=A
//^^ push_d_to_stack
// #20381
@SP
// #20382
A=M
// #20383
M=D
// #20384
@SP
// #20385
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #20386
@0
// #20387
D=A
//^^ push_d_to_stack
// #20388
@SP
// #20389
A=M
// #20390
M=D
// #20391
@SP
// #20392
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #20393
@0
// #20394
D=A
//^^ push_d_to_stack
// #20395
@SP
// #20396
A=M
// #20397
M=D
// #20398
@SP
// #20399
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 63
//^^ push_constant(63)
// #20400
@63
// #20401
D=A
//^^ push_d_to_stack
// #20402
@SP
// #20403
A=M
// #20404
M=D
// #20405
@SP
// #20406
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 27
//^^ push_constant(27)
// #20407
@27
// #20408
D=A
//^^ push_d_to_stack
// #20409
@SP
// #20410
A=M
// #20411
M=D
// #20412
@SP
// #20413
M=M+1
//vv push_d_to_stack
//vv push_constant(27)
//
//// push constant 12
//^^ push_constant(12)
// #20414
@12
// #20415
D=A
//^^ push_d_to_stack
// #20416
@SP
// #20417
A=M
// #20418
M=D
// #20419
@SP
// #20420
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 6
//^^ push_constant(6)
// #20421
@6
// #20422
D=A
//^^ push_d_to_stack
// #20423
@SP
// #20424
A=M
// #20425
M=D
// #20426
@SP
// #20427
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 51
//^^ push_constant(51)
// #20428
@51
// #20429
D=A
//^^ push_d_to_stack
// #20430
@SP
// #20431
A=M
// #20432
M=D
// #20433
@SP
// #20434
M=M+1
//vv push_d_to_stack
//vv push_constant(51)
//
//// push constant 63
//^^ push_constant(63)
// #20435
@63
// #20436
D=A
//^^ push_d_to_stack
// #20437
@SP
// #20438
A=M
// #20439
M=D
// #20440
@SP
// #20441
M=M+1
//vv push_d_to_stack
//vv push_constant(63)
//
//// push constant 0
//^^ push_constant(0)
// #20442
@0
// #20443
D=A
//^^ push_d_to_stack
// #20444
@SP
// #20445
A=M
// #20446
M=D
// #20447
@SP
// #20448
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #20449
@0
// #20450
D=A
//^^ push_d_to_stack
// #20451
@SP
// #20452
A=M
// #20453
M=D
// #20454
@SP
// #20455
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_166)
// #20456
@RET_ADDR_166
// #20457
D=A
//^^ push_d_to_stack
// #20458
@SP
// #20459
A=M
// #20460
M=D
// #20461
@SP
// #20462
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_166)
//push return-address
// #20463
@LCL
// #20464
D=M
//^^ push_d_to_stack
// #20465
@SP
// #20466
A=M
// #20467
M=D
// #20468
@SP
// #20469
M=M+1
//vv push_d_to_stack
//push LCL
// #20470
@ARG
// #20471
D=M
//^^ push_d_to_stack
// #20472
@SP
// #20473
A=M
// #20474
M=D
// #20475
@SP
// #20476
M=M+1
//vv push_d_to_stack
//push ARG
// #20477
@THIS
// #20478
D=M
//^^ push_d_to_stack
// #20479
@SP
// #20480
A=M
// #20481
M=D
// #20482
@SP
// #20483
M=M+1
//vv push_d_to_stack
//push THIS
// #20484
@THAT
// #20485
D=M
//^^ push_d_to_stack
// #20486
@SP
// #20487
A=M
// #20488
M=D
// #20489
@SP
// #20490
M=M+1
//vv push_d_to_stack
//push THAT
// #20491
@SP
// #20492
D=M
// #20493
@ARG
// #20494
M=D
// #20495
@17
// #20496
D=A
// #20497
@ARG
// #20498
M=M-D // ARG = SP - args - 5
// #20499
@SP
// #20500
D=M
// #20501
@LCL
// #20502
M=D // LCL = SP
// #20503
@Output.create
// #20504
0;JMP
(RET_ADDR_166)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #20505
@SP
// #20506
M=M-1
// #20507
A=M
// #20508
D=M
//vv pop_stack_to_d
// #20509
@5
// #20510
M=D
//vv pop_to_loc{5)
//
//// push constant 123
//^^ push_constant(123)
// #20511
@123
// #20512
D=A
//^^ push_d_to_stack
// #20513
@SP
// #20514
A=M
// #20515
M=D
// #20516
@SP
// #20517
M=M+1
//vv push_d_to_stack
//vv push_constant(123)
//
//// push constant 56
//^^ push_constant(56)
// #20518
@56
// #20519
D=A
//^^ push_d_to_stack
// #20520
@SP
// #20521
A=M
// #20522
M=D
// #20523
@SP
// #20524
M=M+1
//vv push_d_to_stack
//vv push_constant(56)
//
//// push constant 12
//^^ push_constant(12)
// #20525
@12
// #20526
D=A
//^^ push_d_to_stack
// #20527
@SP
// #20528
A=M
// #20529
M=D
// #20530
@SP
// #20531
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #20532
@12
// #20533
D=A
//^^ push_d_to_stack
// #20534
@SP
// #20535
A=M
// #20536
M=D
// #20537
@SP
// #20538
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #20539
@12
// #20540
D=A
//^^ push_d_to_stack
// #20541
@SP
// #20542
A=M
// #20543
M=D
// #20544
@SP
// #20545
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 7
//^^ push_constant(7)
// #20546
@7
// #20547
D=A
//^^ push_d_to_stack
// #20548
@SP
// #20549
A=M
// #20550
M=D
// #20551
@SP
// #20552
M=M+1
//vv push_d_to_stack
//vv push_constant(7)
//
//// push constant 12
//^^ push_constant(12)
// #20553
@12
// #20554
D=A
//^^ push_d_to_stack
// #20555
@SP
// #20556
A=M
// #20557
M=D
// #20558
@SP
// #20559
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #20560
@12
// #20561
D=A
//^^ push_d_to_stack
// #20562
@SP
// #20563
A=M
// #20564
M=D
// #20565
@SP
// #20566
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #20567
@12
// #20568
D=A
//^^ push_d_to_stack
// #20569
@SP
// #20570
A=M
// #20571
M=D
// #20572
@SP
// #20573
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 56
//^^ push_constant(56)
// #20574
@56
// #20575
D=A
//^^ push_d_to_stack
// #20576
@SP
// #20577
A=M
// #20578
M=D
// #20579
@SP
// #20580
M=M+1
//vv push_d_to_stack
//vv push_constant(56)
//
//// push constant 0
//^^ push_constant(0)
// #20581
@0
// #20582
D=A
//^^ push_d_to_stack
// #20583
@SP
// #20584
A=M
// #20585
M=D
// #20586
@SP
// #20587
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #20588
@0
// #20589
D=A
//^^ push_d_to_stack
// #20590
@SP
// #20591
A=M
// #20592
M=D
// #20593
@SP
// #20594
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_167)
// #20595
@RET_ADDR_167
// #20596
D=A
//^^ push_d_to_stack
// #20597
@SP
// #20598
A=M
// #20599
M=D
// #20600
@SP
// #20601
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_167)
//push return-address
// #20602
@LCL
// #20603
D=M
//^^ push_d_to_stack
// #20604
@SP
// #20605
A=M
// #20606
M=D
// #20607
@SP
// #20608
M=M+1
//vv push_d_to_stack
//push LCL
// #20609
@ARG
// #20610
D=M
//^^ push_d_to_stack
// #20611
@SP
// #20612
A=M
// #20613
M=D
// #20614
@SP
// #20615
M=M+1
//vv push_d_to_stack
//push ARG
// #20616
@THIS
// #20617
D=M
//^^ push_d_to_stack
// #20618
@SP
// #20619
A=M
// #20620
M=D
// #20621
@SP
// #20622
M=M+1
//vv push_d_to_stack
//push THIS
// #20623
@THAT
// #20624
D=M
//^^ push_d_to_stack
// #20625
@SP
// #20626
A=M
// #20627
M=D
// #20628
@SP
// #20629
M=M+1
//vv push_d_to_stack
//push THAT
// #20630
@SP
// #20631
D=M
// #20632
@ARG
// #20633
M=D
// #20634
@17
// #20635
D=A
// #20636
@ARG
// #20637
M=M-D // ARG = SP - args - 5
// #20638
@SP
// #20639
D=M
// #20640
@LCL
// #20641
M=D // LCL = SP
// #20642
@Output.create
// #20643
0;JMP
(RET_ADDR_167)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #20644
@SP
// #20645
M=M-1
// #20646
A=M
// #20647
D=M
//vv pop_stack_to_d
// #20648
@5
// #20649
M=D
//vv pop_to_loc{5)
//
//// push constant 124
//^^ push_constant(124)
// #20650
@124
// #20651
D=A
//^^ push_d_to_stack
// #20652
@SP
// #20653
A=M
// #20654
M=D
// #20655
@SP
// #20656
M=M+1
//vv push_d_to_stack
//vv push_constant(124)
//
//// push constant 12
//^^ push_constant(12)
// #20657
@12
// #20658
D=A
//^^ push_d_to_stack
// #20659
@SP
// #20660
A=M
// #20661
M=D
// #20662
@SP
// #20663
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #20664
@12
// #20665
D=A
//^^ push_d_to_stack
// #20666
@SP
// #20667
A=M
// #20668
M=D
// #20669
@SP
// #20670
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #20671
@12
// #20672
D=A
//^^ push_d_to_stack
// #20673
@SP
// #20674
A=M
// #20675
M=D
// #20676
@SP
// #20677
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #20678
@12
// #20679
D=A
//^^ push_d_to_stack
// #20680
@SP
// #20681
A=M
// #20682
M=D
// #20683
@SP
// #20684
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #20685
@12
// #20686
D=A
//^^ push_d_to_stack
// #20687
@SP
// #20688
A=M
// #20689
M=D
// #20690
@SP
// #20691
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #20692
@12
// #20693
D=A
//^^ push_d_to_stack
// #20694
@SP
// #20695
A=M
// #20696
M=D
// #20697
@SP
// #20698
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #20699
@12
// #20700
D=A
//^^ push_d_to_stack
// #20701
@SP
// #20702
A=M
// #20703
M=D
// #20704
@SP
// #20705
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #20706
@12
// #20707
D=A
//^^ push_d_to_stack
// #20708
@SP
// #20709
A=M
// #20710
M=D
// #20711
@SP
// #20712
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #20713
@12
// #20714
D=A
//^^ push_d_to_stack
// #20715
@SP
// #20716
A=M
// #20717
M=D
// #20718
@SP
// #20719
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 0
//^^ push_constant(0)
// #20720
@0
// #20721
D=A
//^^ push_d_to_stack
// #20722
@SP
// #20723
A=M
// #20724
M=D
// #20725
@SP
// #20726
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #20727
@0
// #20728
D=A
//^^ push_d_to_stack
// #20729
@SP
// #20730
A=M
// #20731
M=D
// #20732
@SP
// #20733
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_168)
// #20734
@RET_ADDR_168
// #20735
D=A
//^^ push_d_to_stack
// #20736
@SP
// #20737
A=M
// #20738
M=D
// #20739
@SP
// #20740
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_168)
//push return-address
// #20741
@LCL
// #20742
D=M
//^^ push_d_to_stack
// #20743
@SP
// #20744
A=M
// #20745
M=D
// #20746
@SP
// #20747
M=M+1
//vv push_d_to_stack
//push LCL
// #20748
@ARG
// #20749
D=M
//^^ push_d_to_stack
// #20750
@SP
// #20751
A=M
// #20752
M=D
// #20753
@SP
// #20754
M=M+1
//vv push_d_to_stack
//push ARG
// #20755
@THIS
// #20756
D=M
//^^ push_d_to_stack
// #20757
@SP
// #20758
A=M
// #20759
M=D
// #20760
@SP
// #20761
M=M+1
//vv push_d_to_stack
//push THIS
// #20762
@THAT
// #20763
D=M
//^^ push_d_to_stack
// #20764
@SP
// #20765
A=M
// #20766
M=D
// #20767
@SP
// #20768
M=M+1
//vv push_d_to_stack
//push THAT
// #20769
@SP
// #20770
D=M
// #20771
@ARG
// #20772
M=D
// #20773
@17
// #20774
D=A
// #20775
@ARG
// #20776
M=M-D // ARG = SP - args - 5
// #20777
@SP
// #20778
D=M
// #20779
@LCL
// #20780
M=D // LCL = SP
// #20781
@Output.create
// #20782
0;JMP
(RET_ADDR_168)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #20783
@SP
// #20784
M=M-1
// #20785
A=M
// #20786
D=M
//vv pop_stack_to_d
// #20787
@5
// #20788
M=D
//vv pop_to_loc{5)
//
//// push constant 125
//^^ push_constant(125)
// #20789
@125
// #20790
D=A
//^^ push_d_to_stack
// #20791
@SP
// #20792
A=M
// #20793
M=D
// #20794
@SP
// #20795
M=M+1
//vv push_d_to_stack
//vv push_constant(125)
//
//// push constant 7
//^^ push_constant(7)
// #20796
@7
// #20797
D=A
//^^ push_d_to_stack
// #20798
@SP
// #20799
A=M
// #20800
M=D
// #20801
@SP
// #20802
M=M+1
//vv push_d_to_stack
//vv push_constant(7)
//
//// push constant 12
//^^ push_constant(12)
// #20803
@12
// #20804
D=A
//^^ push_d_to_stack
// #20805
@SP
// #20806
A=M
// #20807
M=D
// #20808
@SP
// #20809
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #20810
@12
// #20811
D=A
//^^ push_d_to_stack
// #20812
@SP
// #20813
A=M
// #20814
M=D
// #20815
@SP
// #20816
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #20817
@12
// #20818
D=A
//^^ push_d_to_stack
// #20819
@SP
// #20820
A=M
// #20821
M=D
// #20822
@SP
// #20823
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 56
//^^ push_constant(56)
// #20824
@56
// #20825
D=A
//^^ push_d_to_stack
// #20826
@SP
// #20827
A=M
// #20828
M=D
// #20829
@SP
// #20830
M=M+1
//vv push_d_to_stack
//vv push_constant(56)
//
//// push constant 12
//^^ push_constant(12)
// #20831
@12
// #20832
D=A
//^^ push_d_to_stack
// #20833
@SP
// #20834
A=M
// #20835
M=D
// #20836
@SP
// #20837
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #20838
@12
// #20839
D=A
//^^ push_d_to_stack
// #20840
@SP
// #20841
A=M
// #20842
M=D
// #20843
@SP
// #20844
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 12
//^^ push_constant(12)
// #20845
@12
// #20846
D=A
//^^ push_d_to_stack
// #20847
@SP
// #20848
A=M
// #20849
M=D
// #20850
@SP
// #20851
M=M+1
//vv push_d_to_stack
//vv push_constant(12)
//
//// push constant 7
//^^ push_constant(7)
// #20852
@7
// #20853
D=A
//^^ push_d_to_stack
// #20854
@SP
// #20855
A=M
// #20856
M=D
// #20857
@SP
// #20858
M=M+1
//vv push_d_to_stack
//vv push_constant(7)
//
//// push constant 0
//^^ push_constant(0)
// #20859
@0
// #20860
D=A
//^^ push_d_to_stack
// #20861
@SP
// #20862
A=M
// #20863
M=D
// #20864
@SP
// #20865
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #20866
@0
// #20867
D=A
//^^ push_d_to_stack
// #20868
@SP
// #20869
A=M
// #20870
M=D
// #20871
@SP
// #20872
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_169)
// #20873
@RET_ADDR_169
// #20874
D=A
//^^ push_d_to_stack
// #20875
@SP
// #20876
A=M
// #20877
M=D
// #20878
@SP
// #20879
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_169)
//push return-address
// #20880
@LCL
// #20881
D=M
//^^ push_d_to_stack
// #20882
@SP
// #20883
A=M
// #20884
M=D
// #20885
@SP
// #20886
M=M+1
//vv push_d_to_stack
//push LCL
// #20887
@ARG
// #20888
D=M
//^^ push_d_to_stack
// #20889
@SP
// #20890
A=M
// #20891
M=D
// #20892
@SP
// #20893
M=M+1
//vv push_d_to_stack
//push ARG
// #20894
@THIS
// #20895
D=M
//^^ push_d_to_stack
// #20896
@SP
// #20897
A=M
// #20898
M=D
// #20899
@SP
// #20900
M=M+1
//vv push_d_to_stack
//push THIS
// #20901
@THAT
// #20902
D=M
//^^ push_d_to_stack
// #20903
@SP
// #20904
A=M
// #20905
M=D
// #20906
@SP
// #20907
M=M+1
//vv push_d_to_stack
//push THAT
// #20908
@SP
// #20909
D=M
// #20910
@ARG
// #20911
M=D
// #20912
@17
// #20913
D=A
// #20914
@ARG
// #20915
M=M-D // ARG = SP - args - 5
// #20916
@SP
// #20917
D=M
// #20918
@LCL
// #20919
M=D // LCL = SP
// #20920
@Output.create
// #20921
0;JMP
(RET_ADDR_169)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #20922
@SP
// #20923
M=M-1
// #20924
A=M
// #20925
D=M
//vv pop_stack_to_d
// #20926
@5
// #20927
M=D
//vv pop_to_loc{5)
//
//// push constant 126
//^^ push_constant(126)
// #20928
@126
// #20929
D=A
//^^ push_d_to_stack
// #20930
@SP
// #20931
A=M
// #20932
M=D
// #20933
@SP
// #20934
M=M+1
//vv push_d_to_stack
//vv push_constant(126)
//
//// push constant 38
//^^ push_constant(38)
// #20935
@38
// #20936
D=A
//^^ push_d_to_stack
// #20937
@SP
// #20938
A=M
// #20939
M=D
// #20940
@SP
// #20941
M=M+1
//vv push_d_to_stack
//vv push_constant(38)
//
//// push constant 45
//^^ push_constant(45)
// #20942
@45
// #20943
D=A
//^^ push_d_to_stack
// #20944
@SP
// #20945
A=M
// #20946
M=D
// #20947
@SP
// #20948
M=M+1
//vv push_d_to_stack
//vv push_constant(45)
//
//// push constant 25
//^^ push_constant(25)
// #20949
@25
// #20950
D=A
//^^ push_d_to_stack
// #20951
@SP
// #20952
A=M
// #20953
M=D
// #20954
@SP
// #20955
M=M+1
//vv push_d_to_stack
//vv push_constant(25)
//
//// push constant 0
//^^ push_constant(0)
// #20956
@0
// #20957
D=A
//^^ push_d_to_stack
// #20958
@SP
// #20959
A=M
// #20960
M=D
// #20961
@SP
// #20962
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #20963
@0
// #20964
D=A
//^^ push_d_to_stack
// #20965
@SP
// #20966
A=M
// #20967
M=D
// #20968
@SP
// #20969
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #20970
@0
// #20971
D=A
//^^ push_d_to_stack
// #20972
@SP
// #20973
A=M
// #20974
M=D
// #20975
@SP
// #20976
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #20977
@0
// #20978
D=A
//^^ push_d_to_stack
// #20979
@SP
// #20980
A=M
// #20981
M=D
// #20982
@SP
// #20983
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #20984
@0
// #20985
D=A
//^^ push_d_to_stack
// #20986
@SP
// #20987
A=M
// #20988
M=D
// #20989
@SP
// #20990
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #20991
@0
// #20992
D=A
//^^ push_d_to_stack
// #20993
@SP
// #20994
A=M
// #20995
M=D
// #20996
@SP
// #20997
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #20998
@0
// #20999
D=A
//^^ push_d_to_stack
// #21000
@SP
// #21001
A=M
// #21002
M=D
// #21003
@SP
// #21004
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #21005
@0
// #21006
D=A
//^^ push_d_to_stack
// #21007
@SP
// #21008
A=M
// #21009
M=D
// #21010
@SP
// #21011
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Output.create 12
//^^ push_constant(RET_ADDR_170)
// #21012
@RET_ADDR_170
// #21013
D=A
//^^ push_d_to_stack
// #21014
@SP
// #21015
A=M
// #21016
M=D
// #21017
@SP
// #21018
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_170)
//push return-address
// #21019
@LCL
// #21020
D=M
//^^ push_d_to_stack
// #21021
@SP
// #21022
A=M
// #21023
M=D
// #21024
@SP
// #21025
M=M+1
//vv push_d_to_stack
//push LCL
// #21026
@ARG
// #21027
D=M
//^^ push_d_to_stack
// #21028
@SP
// #21029
A=M
// #21030
M=D
// #21031
@SP
// #21032
M=M+1
//vv push_d_to_stack
//push ARG
// #21033
@THIS
// #21034
D=M
//^^ push_d_to_stack
// #21035
@SP
// #21036
A=M
// #21037
M=D
// #21038
@SP
// #21039
M=M+1
//vv push_d_to_stack
//push THIS
// #21040
@THAT
// #21041
D=M
//^^ push_d_to_stack
// #21042
@SP
// #21043
A=M
// #21044
M=D
// #21045
@SP
// #21046
M=M+1
//vv push_d_to_stack
//push THAT
// #21047
@SP
// #21048
D=M
// #21049
@ARG
// #21050
M=D
// #21051
@17
// #21052
D=A
// #21053
@ARG
// #21054
M=M-D // ARG = SP - args - 5
// #21055
@SP
// #21056
D=M
// #21057
@LCL
// #21058
M=D // LCL = SP
// #21059
@Output.create
// #21060
0;JMP
(RET_ADDR_170)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #21061
@SP
// #21062
M=M-1
// #21063
A=M
// #21064
D=M
//vv pop_stack_to_d
// #21065
@5
// #21066
M=D
//vv pop_to_loc{5)
//
//// push constant 0
//^^ push_constant(0)
// #21067
@0
// #21068
D=A
//^^ push_d_to_stack
// #21069
@SP
// #21070
A=M
// #21071
M=D
// #21072
@SP
// #21073
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #21074
@LCL
// #21075
D=M
// #21076
@R14
// #21077
M=D //R14=LCL
// #21078
@5
// #21079
A=D-A
// #21080
D=M
// #21081
@R15
// #21082
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #21083
@SP
// #21084
M=M-1
// #21085
A=M
// #21086
D=M
//vv pop_stack_to_d
// #21087
@ARG
// #21088
A=M
// #21089
M=D //*ARG = pop()
// #21090
@ARG
// #21091
D=M
// #21092
@SP
// #21093
M=D+1 //SP=ARG+1
// #21094
@R14
// #21095
AM=M-1
// #21096
D=M
// #21097
@THAT
// #21098
M=D //THAT = *(--R14)
// #21099
@R14
// #21100
AM=M-1
// #21101
D=M
// #21102
@THIS
// #21103
M=D //THIS = *(--R14)
// #21104
@R14
// #21105
AM=M-1
// #21106
D=M
// #21107
@ARG
// #21108
M=D //ARG = *(--R14)
// #21109
@R14
// #21110
AM=M-1
// #21111
D=M
// #21112
@LCL
// #21113
M=D //LCL = *(--R14)
// #21114
@R15
// #21115
A=M
// #21116
0;JMP //goto *R15
//
//// function Output.create 1
(Output.create)
// #21117
D=0
//^^ push_d_to_stack
// #21118
@SP
// #21119
A=M
// #21120
M=D
// #21121
@SP
// #21122
M=M+1
//vv push_d_to_stack
//
//// push constant 11
//^^ push_constant(11)
// #21123
@11
// #21124
D=A
//^^ push_d_to_stack
// #21125
@SP
// #21126
A=M
// #21127
M=D
// #21128
@SP
// #21129
M=M+1
//vv push_d_to_stack
//vv push_constant(11)
//
//// call Array.new 1
//^^ push_constant(RET_ADDR_171)
// #21130
@RET_ADDR_171
// #21131
D=A
//^^ push_d_to_stack
// #21132
@SP
// #21133
A=M
// #21134
M=D
// #21135
@SP
// #21136
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_171)
//push return-address
// #21137
@LCL
// #21138
D=M
//^^ push_d_to_stack
// #21139
@SP
// #21140
A=M
// #21141
M=D
// #21142
@SP
// #21143
M=M+1
//vv push_d_to_stack
//push LCL
// #21144
@ARG
// #21145
D=M
//^^ push_d_to_stack
// #21146
@SP
// #21147
A=M
// #21148
M=D
// #21149
@SP
// #21150
M=M+1
//vv push_d_to_stack
//push ARG
// #21151
@THIS
// #21152
D=M
//^^ push_d_to_stack
// #21153
@SP
// #21154
A=M
// #21155
M=D
// #21156
@SP
// #21157
M=M+1
//vv push_d_to_stack
//push THIS
// #21158
@THAT
// #21159
D=M
//^^ push_d_to_stack
// #21160
@SP
// #21161
A=M
// #21162
M=D
// #21163
@SP
// #21164
M=M+1
//vv push_d_to_stack
//push THAT
// #21165
@SP
// #21166
D=M
// #21167
@ARG
// #21168
M=D
// #21169
@6
// #21170
D=A
// #21171
@ARG
// #21172
M=M-D // ARG = SP - args - 5
// #21173
@SP
// #21174
D=M
// #21175
@LCL
// #21176
M=D // LCL = SP
// #21177
@Array.new
// #21178
0;JMP
(RET_ADDR_171)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
// #21179
@LCL
// #21180
D=M
// #21181
@0
// #21182
D=D+A
// #21183
@R13
// #21184
M=D
//^^ pop_stack_to_d
// #21185
@SP
// #21186
M=M-1
// #21187
A=M
// #21188
D=M
//vv pop_stack_to_d
// #21189
@R13
// #21190
A=M
// #21191
M=D
// #21192
@R13
// #21193
M=0
//vv pop_to_ram(LCL, 0)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #21194
@ARG
// #21195
D=M
// #21196
@0
// #21197
A=D+A
// #21198
D=M
//^^ push_d_to_stack
// #21199
@SP
// #21200
A=M
// #21201
M=D
// #21202
@SP
// #21203
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push static 5
//^^ push_from_loc(Output.vm.5)
// #21204
@Output.vm.5
// #21205
D=M
//^^ push_d_to_stack
// #21206
@SP
// #21207
A=M
// #21208
M=D
// #21209
@SP
// #21210
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.5)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #21211
@SP
// #21212
M=M-1
// #21213
A=M
// #21214
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #21215
@R13
// #21216
M=D
//^^ pop_stack_to_d
// #21217
@SP
// #21218
M=M-1
// #21219
A=M
// #21220
D=M
//vv pop_stack_to_d
// #21221
@R13
// #21222
D=D+M
// #21223
@R13
// #21224
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #21225
@SP
// #21226
A=M
// #21227
M=D
// #21228
@SP
// #21229
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #21230
@LCL
// #21231
D=M
// #21232
@0
// #21233
A=D+A
// #21234
D=M
//^^ push_d_to_stack
// #21235
@SP
// #21236
A=M
// #21237
M=D
// #21238
@SP
// #21239
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #21240
@SP
// #21241
M=M-1
// #21242
A=M
// #21243
D=M
//vv pop_stack_to_d
// #21244
@5
// #21245
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #21246
@SP
// #21247
M=M-1
// #21248
A=M
// #21249
D=M
//vv pop_stack_to_d
// #21250
@4
// #21251
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #21252
@5
// #21253
D=M
//^^ push_d_to_stack
// #21254
@SP
// #21255
A=M
// #21256
M=D
// #21257
@SP
// #21258
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #21259
@THAT
// #21260
D=M
// #21261
@0
// #21262
D=D+A
// #21263
@R13
// #21264
M=D
//^^ pop_stack_to_d
// #21265
@SP
// #21266
M=M-1
// #21267
A=M
// #21268
D=M
//vv pop_stack_to_d
// #21269
@R13
// #21270
A=M
// #21271
M=D
// #21272
@R13
// #21273
M=0
//vv pop_to_ram(THAT, 0)
//
//// push constant 0
//^^ push_constant(0)
// #21274
@0
// #21275
D=A
//^^ push_d_to_stack
// #21276
@SP
// #21277
A=M
// #21278
M=D
// #21279
@SP
// #21280
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #21281
@LCL
// #21282
D=M
// #21283
@0
// #21284
A=D+A
// #21285
D=M
//^^ push_d_to_stack
// #21286
@SP
// #21287
A=M
// #21288
M=D
// #21289
@SP
// #21290
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #21291
@SP
// #21292
M=M-1
// #21293
A=M
// #21294
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #21295
@R13
// #21296
M=D
//^^ pop_stack_to_d
// #21297
@SP
// #21298
M=M-1
// #21299
A=M
// #21300
D=M
//vv pop_stack_to_d
// #21301
@R13
// #21302
D=D+M
// #21303
@R13
// #21304
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #21305
@SP
// #21306
A=M
// #21307
M=D
// #21308
@SP
// #21309
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push argument 1
//^^ push_from_ram(ARG, 1)
// #21310
@ARG
// #21311
D=M
// #21312
@1
// #21313
A=D+A
// #21314
D=M
//^^ push_d_to_stack
// #21315
@SP
// #21316
A=M
// #21317
M=D
// #21318
@SP
// #21319
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 1)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #21320
@SP
// #21321
M=M-1
// #21322
A=M
// #21323
D=M
//vv pop_stack_to_d
// #21324
@5
// #21325
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #21326
@SP
// #21327
M=M-1
// #21328
A=M
// #21329
D=M
//vv pop_stack_to_d
// #21330
@4
// #21331
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #21332
@5
// #21333
D=M
//^^ push_d_to_stack
// #21334
@SP
// #21335
A=M
// #21336
M=D
// #21337
@SP
// #21338
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #21339
@THAT
// #21340
D=M
// #21341
@0
// #21342
D=D+A
// #21343
@R13
// #21344
M=D
//^^ pop_stack_to_d
// #21345
@SP
// #21346
M=M-1
// #21347
A=M
// #21348
D=M
//vv pop_stack_to_d
// #21349
@R13
// #21350
A=M
// #21351
M=D
// #21352
@R13
// #21353
M=0
//vv pop_to_ram(THAT, 0)
//
//// push constant 1
//^^ push_constant(1)
// #21354
@1
// #21355
D=A
//^^ push_d_to_stack
// #21356
@SP
// #21357
A=M
// #21358
M=D
// #21359
@SP
// #21360
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #21361
@LCL
// #21362
D=M
// #21363
@0
// #21364
A=D+A
// #21365
D=M
//^^ push_d_to_stack
// #21366
@SP
// #21367
A=M
// #21368
M=D
// #21369
@SP
// #21370
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #21371
@SP
// #21372
M=M-1
// #21373
A=M
// #21374
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #21375
@R13
// #21376
M=D
//^^ pop_stack_to_d
// #21377
@SP
// #21378
M=M-1
// #21379
A=M
// #21380
D=M
//vv pop_stack_to_d
// #21381
@R13
// #21382
D=D+M
// #21383
@R13
// #21384
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #21385
@SP
// #21386
A=M
// #21387
M=D
// #21388
@SP
// #21389
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push argument 2
//^^ push_from_ram(ARG, 2)
// #21390
@ARG
// #21391
D=M
// #21392
@2
// #21393
A=D+A
// #21394
D=M
//^^ push_d_to_stack
// #21395
@SP
// #21396
A=M
// #21397
M=D
// #21398
@SP
// #21399
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 2)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #21400
@SP
// #21401
M=M-1
// #21402
A=M
// #21403
D=M
//vv pop_stack_to_d
// #21404
@5
// #21405
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #21406
@SP
// #21407
M=M-1
// #21408
A=M
// #21409
D=M
//vv pop_stack_to_d
// #21410
@4
// #21411
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #21412
@5
// #21413
D=M
//^^ push_d_to_stack
// #21414
@SP
// #21415
A=M
// #21416
M=D
// #21417
@SP
// #21418
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #21419
@THAT
// #21420
D=M
// #21421
@0
// #21422
D=D+A
// #21423
@R13
// #21424
M=D
//^^ pop_stack_to_d
// #21425
@SP
// #21426
M=M-1
// #21427
A=M
// #21428
D=M
//vv pop_stack_to_d
// #21429
@R13
// #21430
A=M
// #21431
M=D
// #21432
@R13
// #21433
M=0
//vv pop_to_ram(THAT, 0)
//
//// push constant 2
//^^ push_constant(2)
// #21434
@2
// #21435
D=A
//^^ push_d_to_stack
// #21436
@SP
// #21437
A=M
// #21438
M=D
// #21439
@SP
// #21440
M=M+1
//vv push_d_to_stack
//vv push_constant(2)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #21441
@LCL
// #21442
D=M
// #21443
@0
// #21444
A=D+A
// #21445
D=M
//^^ push_d_to_stack
// #21446
@SP
// #21447
A=M
// #21448
M=D
// #21449
@SP
// #21450
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #21451
@SP
// #21452
M=M-1
// #21453
A=M
// #21454
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #21455
@R13
// #21456
M=D
//^^ pop_stack_to_d
// #21457
@SP
// #21458
M=M-1
// #21459
A=M
// #21460
D=M
//vv pop_stack_to_d
// #21461
@R13
// #21462
D=D+M
// #21463
@R13
// #21464
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #21465
@SP
// #21466
A=M
// #21467
M=D
// #21468
@SP
// #21469
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push argument 3
//^^ push_from_ram(ARG, 3)
// #21470
@ARG
// #21471
D=M
// #21472
@3
// #21473
A=D+A
// #21474
D=M
//^^ push_d_to_stack
// #21475
@SP
// #21476
A=M
// #21477
M=D
// #21478
@SP
// #21479
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 3)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #21480
@SP
// #21481
M=M-1
// #21482
A=M
// #21483
D=M
//vv pop_stack_to_d
// #21484
@5
// #21485
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #21486
@SP
// #21487
M=M-1
// #21488
A=M
// #21489
D=M
//vv pop_stack_to_d
// #21490
@4
// #21491
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #21492
@5
// #21493
D=M
//^^ push_d_to_stack
// #21494
@SP
// #21495
A=M
// #21496
M=D
// #21497
@SP
// #21498
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #21499
@THAT
// #21500
D=M
// #21501
@0
// #21502
D=D+A
// #21503
@R13
// #21504
M=D
//^^ pop_stack_to_d
// #21505
@SP
// #21506
M=M-1
// #21507
A=M
// #21508
D=M
//vv pop_stack_to_d
// #21509
@R13
// #21510
A=M
// #21511
M=D
// #21512
@R13
// #21513
M=0
//vv pop_to_ram(THAT, 0)
//
//// push constant 3
//^^ push_constant(3)
// #21514
@3
// #21515
D=A
//^^ push_d_to_stack
// #21516
@SP
// #21517
A=M
// #21518
M=D
// #21519
@SP
// #21520
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #21521
@LCL
// #21522
D=M
// #21523
@0
// #21524
A=D+A
// #21525
D=M
//^^ push_d_to_stack
// #21526
@SP
// #21527
A=M
// #21528
M=D
// #21529
@SP
// #21530
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #21531
@SP
// #21532
M=M-1
// #21533
A=M
// #21534
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #21535
@R13
// #21536
M=D
//^^ pop_stack_to_d
// #21537
@SP
// #21538
M=M-1
// #21539
A=M
// #21540
D=M
//vv pop_stack_to_d
// #21541
@R13
// #21542
D=D+M
// #21543
@R13
// #21544
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #21545
@SP
// #21546
A=M
// #21547
M=D
// #21548
@SP
// #21549
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push argument 4
//^^ push_from_ram(ARG, 4)
// #21550
@ARG
// #21551
D=M
// #21552
@4
// #21553
A=D+A
// #21554
D=M
//^^ push_d_to_stack
// #21555
@SP
// #21556
A=M
// #21557
M=D
// #21558
@SP
// #21559
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 4)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #21560
@SP
// #21561
M=M-1
// #21562
A=M
// #21563
D=M
//vv pop_stack_to_d
// #21564
@5
// #21565
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #21566
@SP
// #21567
M=M-1
// #21568
A=M
// #21569
D=M
//vv pop_stack_to_d
// #21570
@4
// #21571
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #21572
@5
// #21573
D=M
//^^ push_d_to_stack
// #21574
@SP
// #21575
A=M
// #21576
M=D
// #21577
@SP
// #21578
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #21579
@THAT
// #21580
D=M
// #21581
@0
// #21582
D=D+A
// #21583
@R13
// #21584
M=D
//^^ pop_stack_to_d
// #21585
@SP
// #21586
M=M-1
// #21587
A=M
// #21588
D=M
//vv pop_stack_to_d
// #21589
@R13
// #21590
A=M
// #21591
M=D
// #21592
@R13
// #21593
M=0
//vv pop_to_ram(THAT, 0)
//
//// push constant 4
//^^ push_constant(4)
// #21594
@4
// #21595
D=A
//^^ push_d_to_stack
// #21596
@SP
// #21597
A=M
// #21598
M=D
// #21599
@SP
// #21600
M=M+1
//vv push_d_to_stack
//vv push_constant(4)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #21601
@LCL
// #21602
D=M
// #21603
@0
// #21604
A=D+A
// #21605
D=M
//^^ push_d_to_stack
// #21606
@SP
// #21607
A=M
// #21608
M=D
// #21609
@SP
// #21610
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #21611
@SP
// #21612
M=M-1
// #21613
A=M
// #21614
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #21615
@R13
// #21616
M=D
//^^ pop_stack_to_d
// #21617
@SP
// #21618
M=M-1
// #21619
A=M
// #21620
D=M
//vv pop_stack_to_d
// #21621
@R13
// #21622
D=D+M
// #21623
@R13
// #21624
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #21625
@SP
// #21626
A=M
// #21627
M=D
// #21628
@SP
// #21629
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push argument 5
//^^ push_from_ram(ARG, 5)
// #21630
@ARG
// #21631
D=M
// #21632
@5
// #21633
A=D+A
// #21634
D=M
//^^ push_d_to_stack
// #21635
@SP
// #21636
A=M
// #21637
M=D
// #21638
@SP
// #21639
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 5)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #21640
@SP
// #21641
M=M-1
// #21642
A=M
// #21643
D=M
//vv pop_stack_to_d
// #21644
@5
// #21645
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #21646
@SP
// #21647
M=M-1
// #21648
A=M
// #21649
D=M
//vv pop_stack_to_d
// #21650
@4
// #21651
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #21652
@5
// #21653
D=M
//^^ push_d_to_stack
// #21654
@SP
// #21655
A=M
// #21656
M=D
// #21657
@SP
// #21658
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #21659
@THAT
// #21660
D=M
// #21661
@0
// #21662
D=D+A
// #21663
@R13
// #21664
M=D
//^^ pop_stack_to_d
// #21665
@SP
// #21666
M=M-1
// #21667
A=M
// #21668
D=M
//vv pop_stack_to_d
// #21669
@R13
// #21670
A=M
// #21671
M=D
// #21672
@R13
// #21673
M=0
//vv pop_to_ram(THAT, 0)
//
//// push constant 5
//^^ push_constant(5)
// #21674
@5
// #21675
D=A
//^^ push_d_to_stack
// #21676
@SP
// #21677
A=M
// #21678
M=D
// #21679
@SP
// #21680
M=M+1
//vv push_d_to_stack
//vv push_constant(5)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #21681
@LCL
// #21682
D=M
// #21683
@0
// #21684
A=D+A
// #21685
D=M
//^^ push_d_to_stack
// #21686
@SP
// #21687
A=M
// #21688
M=D
// #21689
@SP
// #21690
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #21691
@SP
// #21692
M=M-1
// #21693
A=M
// #21694
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #21695
@R13
// #21696
M=D
//^^ pop_stack_to_d
// #21697
@SP
// #21698
M=M-1
// #21699
A=M
// #21700
D=M
//vv pop_stack_to_d
// #21701
@R13
// #21702
D=D+M
// #21703
@R13
// #21704
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #21705
@SP
// #21706
A=M
// #21707
M=D
// #21708
@SP
// #21709
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push argument 6
//^^ push_from_ram(ARG, 6)
// #21710
@ARG
// #21711
D=M
// #21712
@6
// #21713
A=D+A
// #21714
D=M
//^^ push_d_to_stack
// #21715
@SP
// #21716
A=M
// #21717
M=D
// #21718
@SP
// #21719
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 6)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #21720
@SP
// #21721
M=M-1
// #21722
A=M
// #21723
D=M
//vv pop_stack_to_d
// #21724
@5
// #21725
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #21726
@SP
// #21727
M=M-1
// #21728
A=M
// #21729
D=M
//vv pop_stack_to_d
// #21730
@4
// #21731
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #21732
@5
// #21733
D=M
//^^ push_d_to_stack
// #21734
@SP
// #21735
A=M
// #21736
M=D
// #21737
@SP
// #21738
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #21739
@THAT
// #21740
D=M
// #21741
@0
// #21742
D=D+A
// #21743
@R13
// #21744
M=D
//^^ pop_stack_to_d
// #21745
@SP
// #21746
M=M-1
// #21747
A=M
// #21748
D=M
//vv pop_stack_to_d
// #21749
@R13
// #21750
A=M
// #21751
M=D
// #21752
@R13
// #21753
M=0
//vv pop_to_ram(THAT, 0)
//
//// push constant 6
//^^ push_constant(6)
// #21754
@6
// #21755
D=A
//^^ push_d_to_stack
// #21756
@SP
// #21757
A=M
// #21758
M=D
// #21759
@SP
// #21760
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #21761
@LCL
// #21762
D=M
// #21763
@0
// #21764
A=D+A
// #21765
D=M
//^^ push_d_to_stack
// #21766
@SP
// #21767
A=M
// #21768
M=D
// #21769
@SP
// #21770
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #21771
@SP
// #21772
M=M-1
// #21773
A=M
// #21774
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #21775
@R13
// #21776
M=D
//^^ pop_stack_to_d
// #21777
@SP
// #21778
M=M-1
// #21779
A=M
// #21780
D=M
//vv pop_stack_to_d
// #21781
@R13
// #21782
D=D+M
// #21783
@R13
// #21784
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #21785
@SP
// #21786
A=M
// #21787
M=D
// #21788
@SP
// #21789
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push argument 7
//^^ push_from_ram(ARG, 7)
// #21790
@ARG
// #21791
D=M
// #21792
@7
// #21793
A=D+A
// #21794
D=M
//^^ push_d_to_stack
// #21795
@SP
// #21796
A=M
// #21797
M=D
// #21798
@SP
// #21799
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 7)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #21800
@SP
// #21801
M=M-1
// #21802
A=M
// #21803
D=M
//vv pop_stack_to_d
// #21804
@5
// #21805
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #21806
@SP
// #21807
M=M-1
// #21808
A=M
// #21809
D=M
//vv pop_stack_to_d
// #21810
@4
// #21811
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #21812
@5
// #21813
D=M
//^^ push_d_to_stack
// #21814
@SP
// #21815
A=M
// #21816
M=D
// #21817
@SP
// #21818
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #21819
@THAT
// #21820
D=M
// #21821
@0
// #21822
D=D+A
// #21823
@R13
// #21824
M=D
//^^ pop_stack_to_d
// #21825
@SP
// #21826
M=M-1
// #21827
A=M
// #21828
D=M
//vv pop_stack_to_d
// #21829
@R13
// #21830
A=M
// #21831
M=D
// #21832
@R13
// #21833
M=0
//vv pop_to_ram(THAT, 0)
//
//// push constant 7
//^^ push_constant(7)
// #21834
@7
// #21835
D=A
//^^ push_d_to_stack
// #21836
@SP
// #21837
A=M
// #21838
M=D
// #21839
@SP
// #21840
M=M+1
//vv push_d_to_stack
//vv push_constant(7)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #21841
@LCL
// #21842
D=M
// #21843
@0
// #21844
A=D+A
// #21845
D=M
//^^ push_d_to_stack
// #21846
@SP
// #21847
A=M
// #21848
M=D
// #21849
@SP
// #21850
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #21851
@SP
// #21852
M=M-1
// #21853
A=M
// #21854
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #21855
@R13
// #21856
M=D
//^^ pop_stack_to_d
// #21857
@SP
// #21858
M=M-1
// #21859
A=M
// #21860
D=M
//vv pop_stack_to_d
// #21861
@R13
// #21862
D=D+M
// #21863
@R13
// #21864
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #21865
@SP
// #21866
A=M
// #21867
M=D
// #21868
@SP
// #21869
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push argument 8
//^^ push_from_ram(ARG, 8)
// #21870
@ARG
// #21871
D=M
// #21872
@8
// #21873
A=D+A
// #21874
D=M
//^^ push_d_to_stack
// #21875
@SP
// #21876
A=M
// #21877
M=D
// #21878
@SP
// #21879
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 8)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #21880
@SP
// #21881
M=M-1
// #21882
A=M
// #21883
D=M
//vv pop_stack_to_d
// #21884
@5
// #21885
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #21886
@SP
// #21887
M=M-1
// #21888
A=M
// #21889
D=M
//vv pop_stack_to_d
// #21890
@4
// #21891
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #21892
@5
// #21893
D=M
//^^ push_d_to_stack
// #21894
@SP
// #21895
A=M
// #21896
M=D
// #21897
@SP
// #21898
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #21899
@THAT
// #21900
D=M
// #21901
@0
// #21902
D=D+A
// #21903
@R13
// #21904
M=D
//^^ pop_stack_to_d
// #21905
@SP
// #21906
M=M-1
// #21907
A=M
// #21908
D=M
//vv pop_stack_to_d
// #21909
@R13
// #21910
A=M
// #21911
M=D
// #21912
@R13
// #21913
M=0
//vv pop_to_ram(THAT, 0)
//
//// push constant 8
//^^ push_constant(8)
// #21914
@8
// #21915
D=A
//^^ push_d_to_stack
// #21916
@SP
// #21917
A=M
// #21918
M=D
// #21919
@SP
// #21920
M=M+1
//vv push_d_to_stack
//vv push_constant(8)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #21921
@LCL
// #21922
D=M
// #21923
@0
// #21924
A=D+A
// #21925
D=M
//^^ push_d_to_stack
// #21926
@SP
// #21927
A=M
// #21928
M=D
// #21929
@SP
// #21930
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #21931
@SP
// #21932
M=M-1
// #21933
A=M
// #21934
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #21935
@R13
// #21936
M=D
//^^ pop_stack_to_d
// #21937
@SP
// #21938
M=M-1
// #21939
A=M
// #21940
D=M
//vv pop_stack_to_d
// #21941
@R13
// #21942
D=D+M
// #21943
@R13
// #21944
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #21945
@SP
// #21946
A=M
// #21947
M=D
// #21948
@SP
// #21949
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push argument 9
//^^ push_from_ram(ARG, 9)
// #21950
@ARG
// #21951
D=M
// #21952
@9
// #21953
A=D+A
// #21954
D=M
//^^ push_d_to_stack
// #21955
@SP
// #21956
A=M
// #21957
M=D
// #21958
@SP
// #21959
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 9)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #21960
@SP
// #21961
M=M-1
// #21962
A=M
// #21963
D=M
//vv pop_stack_to_d
// #21964
@5
// #21965
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #21966
@SP
// #21967
M=M-1
// #21968
A=M
// #21969
D=M
//vv pop_stack_to_d
// #21970
@4
// #21971
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #21972
@5
// #21973
D=M
//^^ push_d_to_stack
// #21974
@SP
// #21975
A=M
// #21976
M=D
// #21977
@SP
// #21978
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #21979
@THAT
// #21980
D=M
// #21981
@0
// #21982
D=D+A
// #21983
@R13
// #21984
M=D
//^^ pop_stack_to_d
// #21985
@SP
// #21986
M=M-1
// #21987
A=M
// #21988
D=M
//vv pop_stack_to_d
// #21989
@R13
// #21990
A=M
// #21991
M=D
// #21992
@R13
// #21993
M=0
//vv pop_to_ram(THAT, 0)
//
//// push constant 9
//^^ push_constant(9)
// #21994
@9
// #21995
D=A
//^^ push_d_to_stack
// #21996
@SP
// #21997
A=M
// #21998
M=D
// #21999
@SP
// #22000
M=M+1
//vv push_d_to_stack
//vv push_constant(9)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #22001
@LCL
// #22002
D=M
// #22003
@0
// #22004
A=D+A
// #22005
D=M
//^^ push_d_to_stack
// #22006
@SP
// #22007
A=M
// #22008
M=D
// #22009
@SP
// #22010
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #22011
@SP
// #22012
M=M-1
// #22013
A=M
// #22014
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #22015
@R13
// #22016
M=D
//^^ pop_stack_to_d
// #22017
@SP
// #22018
M=M-1
// #22019
A=M
// #22020
D=M
//vv pop_stack_to_d
// #22021
@R13
// #22022
D=D+M
// #22023
@R13
// #22024
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #22025
@SP
// #22026
A=M
// #22027
M=D
// #22028
@SP
// #22029
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push argument 10
//^^ push_from_ram(ARG, 10)
// #22030
@ARG
// #22031
D=M
// #22032
@10
// #22033
A=D+A
// #22034
D=M
//^^ push_d_to_stack
// #22035
@SP
// #22036
A=M
// #22037
M=D
// #22038
@SP
// #22039
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 10)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #22040
@SP
// #22041
M=M-1
// #22042
A=M
// #22043
D=M
//vv pop_stack_to_d
// #22044
@5
// #22045
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #22046
@SP
// #22047
M=M-1
// #22048
A=M
// #22049
D=M
//vv pop_stack_to_d
// #22050
@4
// #22051
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #22052
@5
// #22053
D=M
//^^ push_d_to_stack
// #22054
@SP
// #22055
A=M
// #22056
M=D
// #22057
@SP
// #22058
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #22059
@THAT
// #22060
D=M
// #22061
@0
// #22062
D=D+A
// #22063
@R13
// #22064
M=D
//^^ pop_stack_to_d
// #22065
@SP
// #22066
M=M-1
// #22067
A=M
// #22068
D=M
//vv pop_stack_to_d
// #22069
@R13
// #22070
A=M
// #22071
M=D
// #22072
@R13
// #22073
M=0
//vv pop_to_ram(THAT, 0)
//
//// push constant 10
//^^ push_constant(10)
// #22074
@10
// #22075
D=A
//^^ push_d_to_stack
// #22076
@SP
// #22077
A=M
// #22078
M=D
// #22079
@SP
// #22080
M=M+1
//vv push_d_to_stack
//vv push_constant(10)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #22081
@LCL
// #22082
D=M
// #22083
@0
// #22084
A=D+A
// #22085
D=M
//^^ push_d_to_stack
// #22086
@SP
// #22087
A=M
// #22088
M=D
// #22089
@SP
// #22090
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #22091
@SP
// #22092
M=M-1
// #22093
A=M
// #22094
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #22095
@R13
// #22096
M=D
//^^ pop_stack_to_d
// #22097
@SP
// #22098
M=M-1
// #22099
A=M
// #22100
D=M
//vv pop_stack_to_d
// #22101
@R13
// #22102
D=D+M
// #22103
@R13
// #22104
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #22105
@SP
// #22106
A=M
// #22107
M=D
// #22108
@SP
// #22109
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push argument 11
//^^ push_from_ram(ARG, 11)
// #22110
@ARG
// #22111
D=M
// #22112
@11
// #22113
A=D+A
// #22114
D=M
//^^ push_d_to_stack
// #22115
@SP
// #22116
A=M
// #22117
M=D
// #22118
@SP
// #22119
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 11)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #22120
@SP
// #22121
M=M-1
// #22122
A=M
// #22123
D=M
//vv pop_stack_to_d
// #22124
@5
// #22125
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #22126
@SP
// #22127
M=M-1
// #22128
A=M
// #22129
D=M
//vv pop_stack_to_d
// #22130
@4
// #22131
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #22132
@5
// #22133
D=M
//^^ push_d_to_stack
// #22134
@SP
// #22135
A=M
// #22136
M=D
// #22137
@SP
// #22138
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #22139
@THAT
// #22140
D=M
// #22141
@0
// #22142
D=D+A
// #22143
@R13
// #22144
M=D
//^^ pop_stack_to_d
// #22145
@SP
// #22146
M=M-1
// #22147
A=M
// #22148
D=M
//vv pop_stack_to_d
// #22149
@R13
// #22150
A=M
// #22151
M=D
// #22152
@R13
// #22153
M=0
//vv pop_to_ram(THAT, 0)
//
//// push constant 0
//^^ push_constant(0)
// #22154
@0
// #22155
D=A
//^^ push_d_to_stack
// #22156
@SP
// #22157
A=M
// #22158
M=D
// #22159
@SP
// #22160
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #22161
@LCL
// #22162
D=M
// #22163
@R14
// #22164
M=D //R14=LCL
// #22165
@5
// #22166
A=D-A
// #22167
D=M
// #22168
@R15
// #22169
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #22170
@SP
// #22171
M=M-1
// #22172
A=M
// #22173
D=M
//vv pop_stack_to_d
// #22174
@ARG
// #22175
A=M
// #22176
M=D //*ARG = pop()
// #22177
@ARG
// #22178
D=M
// #22179
@SP
// #22180
M=D+1 //SP=ARG+1
// #22181
@R14
// #22182
AM=M-1
// #22183
D=M
// #22184
@THAT
// #22185
M=D //THAT = *(--R14)
// #22186
@R14
// #22187
AM=M-1
// #22188
D=M
// #22189
@THIS
// #22190
M=D //THIS = *(--R14)
// #22191
@R14
// #22192
AM=M-1
// #22193
D=M
// #22194
@ARG
// #22195
M=D //ARG = *(--R14)
// #22196
@R14
// #22197
AM=M-1
// #22198
D=M
// #22199
@LCL
// #22200
M=D //LCL = *(--R14)
// #22201
@R15
// #22202
A=M
// #22203
0;JMP //goto *R15
//
//// function Output.createShiftedMap 4
(Output.createShiftedMap)
// #22204
D=0
//^^ push_d_to_stack
// #22205
@SP
// #22206
A=M
// #22207
M=D
// #22208
@SP
// #22209
M=M+1
//vv push_d_to_stack
// #22210
D=0
//^^ push_d_to_stack
// #22211
@SP
// #22212
A=M
// #22213
M=D
// #22214
@SP
// #22215
M=M+1
//vv push_d_to_stack
// #22216
D=0
//^^ push_d_to_stack
// #22217
@SP
// #22218
A=M
// #22219
M=D
// #22220
@SP
// #22221
M=M+1
//vv push_d_to_stack
// #22222
D=0
//^^ push_d_to_stack
// #22223
@SP
// #22224
A=M
// #22225
M=D
// #22226
@SP
// #22227
M=M+1
//vv push_d_to_stack
//
//// push constant 127
//^^ push_constant(127)
// #22228
@127
// #22229
D=A
//^^ push_d_to_stack
// #22230
@SP
// #22231
A=M
// #22232
M=D
// #22233
@SP
// #22234
M=M+1
//vv push_d_to_stack
//vv push_constant(127)
//
//// call Array.new 1
//^^ push_constant(RET_ADDR_172)
// #22235
@RET_ADDR_172
// #22236
D=A
//^^ push_d_to_stack
// #22237
@SP
// #22238
A=M
// #22239
M=D
// #22240
@SP
// #22241
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_172)
//push return-address
// #22242
@LCL
// #22243
D=M
//^^ push_d_to_stack
// #22244
@SP
// #22245
A=M
// #22246
M=D
// #22247
@SP
// #22248
M=M+1
//vv push_d_to_stack
//push LCL
// #22249
@ARG
// #22250
D=M
//^^ push_d_to_stack
// #22251
@SP
// #22252
A=M
// #22253
M=D
// #22254
@SP
// #22255
M=M+1
//vv push_d_to_stack
//push ARG
// #22256
@THIS
// #22257
D=M
//^^ push_d_to_stack
// #22258
@SP
// #22259
A=M
// #22260
M=D
// #22261
@SP
// #22262
M=M+1
//vv push_d_to_stack
//push THIS
// #22263
@THAT
// #22264
D=M
//^^ push_d_to_stack
// #22265
@SP
// #22266
A=M
// #22267
M=D
// #22268
@SP
// #22269
M=M+1
//vv push_d_to_stack
//push THAT
// #22270
@SP
// #22271
D=M
// #22272
@ARG
// #22273
M=D
// #22274
@6
// #22275
D=A
// #22276
@ARG
// #22277
M=M-D // ARG = SP - args - 5
// #22278
@SP
// #22279
D=M
// #22280
@LCL
// #22281
M=D // LCL = SP
// #22282
@Array.new
// #22283
0;JMP
(RET_ADDR_172)
//
//// pop static 6
//^^ pop_to_loc{Output.vm.6)
//^^ pop_stack_to_d
// #22284
@SP
// #22285
M=M-1
// #22286
A=M
// #22287
D=M
//vv pop_stack_to_d
// #22288
@Output.vm.6
// #22289
M=D
//vv pop_to_loc{Output.vm.6)
//
//// push constant 0
//^^ push_constant(0)
// #22290
@0
// #22291
D=A
//^^ push_d_to_stack
// #22292
@SP
// #22293
A=M
// #22294
M=D
// #22295
@SP
// #22296
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// pop local 2
//^^ pop_to_ram(LCL, 2)
// #22297
@LCL
// #22298
D=M
// #22299
@2
// #22300
D=D+A
// #22301
@R13
// #22302
M=D
//^^ pop_stack_to_d
// #22303
@SP
// #22304
M=M-1
// #22305
A=M
// #22306
D=M
//vv pop_stack_to_d
// #22307
@R13
// #22308
A=M
// #22309
M=D
// #22310
@R13
// #22311
M=0
//vv pop_to_ram(LCL, 2)
//
//// label WHILE_EXP0
(Output.createShiftedMap$WHILE_EXP0)
//
//// push local 2
//^^ push_from_ram(LCL, 2)
// #22312
@LCL
// #22313
D=M
// #22314
@2
// #22315
A=D+A
// #22316
D=M
//^^ push_d_to_stack
// #22317
@SP
// #22318
A=M
// #22319
M=D
// #22320
@SP
// #22321
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 2)
//
//// push constant 127
//^^ push_constant(127)
// #22322
@127
// #22323
D=A
//^^ push_d_to_stack
// #22324
@SP
// #22325
A=M
// #22326
M=D
// #22327
@SP
// #22328
M=M+1
//vv push_d_to_stack
//vv push_constant(127)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #22329
@SP
// #22330
M=M-1
// #22331
A=M
// #22332
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #22333
@R13
// #22334
M=D
//^^ pop_stack_to_d
// #22335
@SP
// #22336
M=M-1
// #22337
A=M
// #22338
D=M
//vv pop_stack_to_d
// #22339
@R13
// #22340
D=D-M
// #22341
@R13
// #22342
M=0
//vv arith_d_with_stack_top(D-M)
// #22343
@PUT_TRUE_173
// #22344
D;JLT
// #22345
@R13
// #22346
M=0
// #22347
@CONT_173
// #22348
0;JMP
(PUT_TRUE_173)
// #22349
@R13
// #22350
M=-1
(CONT_173)
// #22351
@R13
// #22352
D=M
// #22353
@R13
// #22354
M=0
//^^ push_d_to_stack
// #22355
@SP
// #22356
A=M
// #22357
M=D
// #22358
@SP
// #22359
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #22360
@SP
// #22361
M=M-1
// #22362
A=M
// #22363
D=M
//vv pop_stack_to_d
// #22364
D=!D
//^^ push_d_to_stack
// #22365
@SP
// #22366
A=M
// #22367
M=D
// #22368
@SP
// #22369
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// if-goto WHILE_END0
//^^ pop_stack_to_d
// #22370
@SP
// #22371
M=M-1
// #22372
A=M
// #22373
D=M
//vv pop_stack_to_d
// #22374
@Output.createShiftedMap$WHILE_END0
// #22375
D;JNE
//
//// push local 2
//^^ push_from_ram(LCL, 2)
// #22376
@LCL
// #22377
D=M
// #22378
@2
// #22379
A=D+A
// #22380
D=M
//^^ push_d_to_stack
// #22381
@SP
// #22382
A=M
// #22383
M=D
// #22384
@SP
// #22385
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 2)
//
//// push static 5
//^^ push_from_loc(Output.vm.5)
// #22386
@Output.vm.5
// #22387
D=M
//^^ push_d_to_stack
// #22388
@SP
// #22389
A=M
// #22390
M=D
// #22391
@SP
// #22392
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.5)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #22393
@SP
// #22394
M=M-1
// #22395
A=M
// #22396
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #22397
@R13
// #22398
M=D
//^^ pop_stack_to_d
// #22399
@SP
// #22400
M=M-1
// #22401
A=M
// #22402
D=M
//vv pop_stack_to_d
// #22403
@R13
// #22404
D=D+M
// #22405
@R13
// #22406
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #22407
@SP
// #22408
A=M
// #22409
M=D
// #22410
@SP
// #22411
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #22412
@SP
// #22413
M=M-1
// #22414
A=M
// #22415
D=M
//vv pop_stack_to_d
// #22416
@4
// #22417
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #22418
@THAT
// #22419
D=M
// #22420
@0
// #22421
A=D+A
// #22422
D=M
//^^ push_d_to_stack
// #22423
@SP
// #22424
A=M
// #22425
M=D
// #22426
@SP
// #22427
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
// #22428
@LCL
// #22429
D=M
// #22430
@0
// #22431
D=D+A
// #22432
@R13
// #22433
M=D
//^^ pop_stack_to_d
// #22434
@SP
// #22435
M=M-1
// #22436
A=M
// #22437
D=M
//vv pop_stack_to_d
// #22438
@R13
// #22439
A=M
// #22440
M=D
// #22441
@R13
// #22442
M=0
//vv pop_to_ram(LCL, 0)
//
//// push constant 11
//^^ push_constant(11)
// #22443
@11
// #22444
D=A
//^^ push_d_to_stack
// #22445
@SP
// #22446
A=M
// #22447
M=D
// #22448
@SP
// #22449
M=M+1
//vv push_d_to_stack
//vv push_constant(11)
//
//// call Array.new 1
//^^ push_constant(RET_ADDR_174)
// #22450
@RET_ADDR_174
// #22451
D=A
//^^ push_d_to_stack
// #22452
@SP
// #22453
A=M
// #22454
M=D
// #22455
@SP
// #22456
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_174)
//push return-address
// #22457
@LCL
// #22458
D=M
//^^ push_d_to_stack
// #22459
@SP
// #22460
A=M
// #22461
M=D
// #22462
@SP
// #22463
M=M+1
//vv push_d_to_stack
//push LCL
// #22464
@ARG
// #22465
D=M
//^^ push_d_to_stack
// #22466
@SP
// #22467
A=M
// #22468
M=D
// #22469
@SP
// #22470
M=M+1
//vv push_d_to_stack
//push ARG
// #22471
@THIS
// #22472
D=M
//^^ push_d_to_stack
// #22473
@SP
// #22474
A=M
// #22475
M=D
// #22476
@SP
// #22477
M=M+1
//vv push_d_to_stack
//push THIS
// #22478
@THAT
// #22479
D=M
//^^ push_d_to_stack
// #22480
@SP
// #22481
A=M
// #22482
M=D
// #22483
@SP
// #22484
M=M+1
//vv push_d_to_stack
//push THAT
// #22485
@SP
// #22486
D=M
// #22487
@ARG
// #22488
M=D
// #22489
@6
// #22490
D=A
// #22491
@ARG
// #22492
M=M-D // ARG = SP - args - 5
// #22493
@SP
// #22494
D=M
// #22495
@LCL
// #22496
M=D // LCL = SP
// #22497
@Array.new
// #22498
0;JMP
(RET_ADDR_174)
//
//// pop local 1
//^^ pop_to_ram(LCL, 1)
// #22499
@LCL
// #22500
D=M
// #22501
@1
// #22502
D=D+A
// #22503
@R13
// #22504
M=D
//^^ pop_stack_to_d
// #22505
@SP
// #22506
M=M-1
// #22507
A=M
// #22508
D=M
//vv pop_stack_to_d
// #22509
@R13
// #22510
A=M
// #22511
M=D
// #22512
@R13
// #22513
M=0
//vv pop_to_ram(LCL, 1)
//
//// push local 2
//^^ push_from_ram(LCL, 2)
// #22514
@LCL
// #22515
D=M
// #22516
@2
// #22517
A=D+A
// #22518
D=M
//^^ push_d_to_stack
// #22519
@SP
// #22520
A=M
// #22521
M=D
// #22522
@SP
// #22523
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 2)
//
//// push static 6
//^^ push_from_loc(Output.vm.6)
// #22524
@Output.vm.6
// #22525
D=M
//^^ push_d_to_stack
// #22526
@SP
// #22527
A=M
// #22528
M=D
// #22529
@SP
// #22530
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.6)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #22531
@SP
// #22532
M=M-1
// #22533
A=M
// #22534
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #22535
@R13
// #22536
M=D
//^^ pop_stack_to_d
// #22537
@SP
// #22538
M=M-1
// #22539
A=M
// #22540
D=M
//vv pop_stack_to_d
// #22541
@R13
// #22542
D=D+M
// #22543
@R13
// #22544
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #22545
@SP
// #22546
A=M
// #22547
M=D
// #22548
@SP
// #22549
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push local 1
//^^ push_from_ram(LCL, 1)
// #22550
@LCL
// #22551
D=M
// #22552
@1
// #22553
A=D+A
// #22554
D=M
//^^ push_d_to_stack
// #22555
@SP
// #22556
A=M
// #22557
M=D
// #22558
@SP
// #22559
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 1)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #22560
@SP
// #22561
M=M-1
// #22562
A=M
// #22563
D=M
//vv pop_stack_to_d
// #22564
@5
// #22565
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #22566
@SP
// #22567
M=M-1
// #22568
A=M
// #22569
D=M
//vv pop_stack_to_d
// #22570
@4
// #22571
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #22572
@5
// #22573
D=M
//^^ push_d_to_stack
// #22574
@SP
// #22575
A=M
// #22576
M=D
// #22577
@SP
// #22578
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #22579
@THAT
// #22580
D=M
// #22581
@0
// #22582
D=D+A
// #22583
@R13
// #22584
M=D
//^^ pop_stack_to_d
// #22585
@SP
// #22586
M=M-1
// #22587
A=M
// #22588
D=M
//vv pop_stack_to_d
// #22589
@R13
// #22590
A=M
// #22591
M=D
// #22592
@R13
// #22593
M=0
//vv pop_to_ram(THAT, 0)
//
//// push constant 0
//^^ push_constant(0)
// #22594
@0
// #22595
D=A
//^^ push_d_to_stack
// #22596
@SP
// #22597
A=M
// #22598
M=D
// #22599
@SP
// #22600
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// pop local 3
//^^ pop_to_ram(LCL, 3)
// #22601
@LCL
// #22602
D=M
// #22603
@3
// #22604
D=D+A
// #22605
@R13
// #22606
M=D
//^^ pop_stack_to_d
// #22607
@SP
// #22608
M=M-1
// #22609
A=M
// #22610
D=M
//vv pop_stack_to_d
// #22611
@R13
// #22612
A=M
// #22613
M=D
// #22614
@R13
// #22615
M=0
//vv pop_to_ram(LCL, 3)
//
//// label WHILE_EXP1
(Output.createShiftedMap$WHILE_EXP1)
//
//// push local 3
//^^ push_from_ram(LCL, 3)
// #22616
@LCL
// #22617
D=M
// #22618
@3
// #22619
A=D+A
// #22620
D=M
//^^ push_d_to_stack
// #22621
@SP
// #22622
A=M
// #22623
M=D
// #22624
@SP
// #22625
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 3)
//
//// push constant 11
//^^ push_constant(11)
// #22626
@11
// #22627
D=A
//^^ push_d_to_stack
// #22628
@SP
// #22629
A=M
// #22630
M=D
// #22631
@SP
// #22632
M=M+1
//vv push_d_to_stack
//vv push_constant(11)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #22633
@SP
// #22634
M=M-1
// #22635
A=M
// #22636
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #22637
@R13
// #22638
M=D
//^^ pop_stack_to_d
// #22639
@SP
// #22640
M=M-1
// #22641
A=M
// #22642
D=M
//vv pop_stack_to_d
// #22643
@R13
// #22644
D=D-M
// #22645
@R13
// #22646
M=0
//vv arith_d_with_stack_top(D-M)
// #22647
@PUT_TRUE_175
// #22648
D;JLT
// #22649
@R13
// #22650
M=0
// #22651
@CONT_175
// #22652
0;JMP
(PUT_TRUE_175)
// #22653
@R13
// #22654
M=-1
(CONT_175)
// #22655
@R13
// #22656
D=M
// #22657
@R13
// #22658
M=0
//^^ push_d_to_stack
// #22659
@SP
// #22660
A=M
// #22661
M=D
// #22662
@SP
// #22663
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #22664
@SP
// #22665
M=M-1
// #22666
A=M
// #22667
D=M
//vv pop_stack_to_d
// #22668
D=!D
//^^ push_d_to_stack
// #22669
@SP
// #22670
A=M
// #22671
M=D
// #22672
@SP
// #22673
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// if-goto WHILE_END1
//^^ pop_stack_to_d
// #22674
@SP
// #22675
M=M-1
// #22676
A=M
// #22677
D=M
//vv pop_stack_to_d
// #22678
@Output.createShiftedMap$WHILE_END1
// #22679
D;JNE
//
//// push local 3
//^^ push_from_ram(LCL, 3)
// #22680
@LCL
// #22681
D=M
// #22682
@3
// #22683
A=D+A
// #22684
D=M
//^^ push_d_to_stack
// #22685
@SP
// #22686
A=M
// #22687
M=D
// #22688
@SP
// #22689
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 3)
//
//// push local 1
//^^ push_from_ram(LCL, 1)
// #22690
@LCL
// #22691
D=M
// #22692
@1
// #22693
A=D+A
// #22694
D=M
//^^ push_d_to_stack
// #22695
@SP
// #22696
A=M
// #22697
M=D
// #22698
@SP
// #22699
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #22700
@SP
// #22701
M=M-1
// #22702
A=M
// #22703
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #22704
@R13
// #22705
M=D
//^^ pop_stack_to_d
// #22706
@SP
// #22707
M=M-1
// #22708
A=M
// #22709
D=M
//vv pop_stack_to_d
// #22710
@R13
// #22711
D=D+M
// #22712
@R13
// #22713
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #22714
@SP
// #22715
A=M
// #22716
M=D
// #22717
@SP
// #22718
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push local 3
//^^ push_from_ram(LCL, 3)
// #22719
@LCL
// #22720
D=M
// #22721
@3
// #22722
A=D+A
// #22723
D=M
//^^ push_d_to_stack
// #22724
@SP
// #22725
A=M
// #22726
M=D
// #22727
@SP
// #22728
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 3)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #22729
@LCL
// #22730
D=M
// #22731
@0
// #22732
A=D+A
// #22733
D=M
//^^ push_d_to_stack
// #22734
@SP
// #22735
A=M
// #22736
M=D
// #22737
@SP
// #22738
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #22739
@SP
// #22740
M=M-1
// #22741
A=M
// #22742
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #22743
@R13
// #22744
M=D
//^^ pop_stack_to_d
// #22745
@SP
// #22746
M=M-1
// #22747
A=M
// #22748
D=M
//vv pop_stack_to_d
// #22749
@R13
// #22750
D=D+M
// #22751
@R13
// #22752
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #22753
@SP
// #22754
A=M
// #22755
M=D
// #22756
@SP
// #22757
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #22758
@SP
// #22759
M=M-1
// #22760
A=M
// #22761
D=M
//vv pop_stack_to_d
// #22762
@4
// #22763
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #22764
@THAT
// #22765
D=M
// #22766
@0
// #22767
A=D+A
// #22768
D=M
//^^ push_d_to_stack
// #22769
@SP
// #22770
A=M
// #22771
M=D
// #22772
@SP
// #22773
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// push constant 256
//^^ push_constant(256)
// #22774
@256
// #22775
D=A
//^^ push_d_to_stack
// #22776
@SP
// #22777
A=M
// #22778
M=D
// #22779
@SP
// #22780
M=M+1
//vv push_d_to_stack
//vv push_constant(256)
//
//// call Math.multiply 2
//^^ push_constant(RET_ADDR_176)
// #22781
@RET_ADDR_176
// #22782
D=A
//^^ push_d_to_stack
// #22783
@SP
// #22784
A=M
// #22785
M=D
// #22786
@SP
// #22787
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_176)
//push return-address
// #22788
@LCL
// #22789
D=M
//^^ push_d_to_stack
// #22790
@SP
// #22791
A=M
// #22792
M=D
// #22793
@SP
// #22794
M=M+1
//vv push_d_to_stack
//push LCL
// #22795
@ARG
// #22796
D=M
//^^ push_d_to_stack
// #22797
@SP
// #22798
A=M
// #22799
M=D
// #22800
@SP
// #22801
M=M+1
//vv push_d_to_stack
//push ARG
// #22802
@THIS
// #22803
D=M
//^^ push_d_to_stack
// #22804
@SP
// #22805
A=M
// #22806
M=D
// #22807
@SP
// #22808
M=M+1
//vv push_d_to_stack
//push THIS
// #22809
@THAT
// #22810
D=M
//^^ push_d_to_stack
// #22811
@SP
// #22812
A=M
// #22813
M=D
// #22814
@SP
// #22815
M=M+1
//vv push_d_to_stack
//push THAT
// #22816
@SP
// #22817
D=M
// #22818
@ARG
// #22819
M=D
// #22820
@7
// #22821
D=A
// #22822
@ARG
// #22823
M=M-D // ARG = SP - args - 5
// #22824
@SP
// #22825
D=M
// #22826
@LCL
// #22827
M=D // LCL = SP
// #22828
@Math.multiply
// #22829
0;JMP
(RET_ADDR_176)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #22830
@SP
// #22831
M=M-1
// #22832
A=M
// #22833
D=M
//vv pop_stack_to_d
// #22834
@5
// #22835
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #22836
@SP
// #22837
M=M-1
// #22838
A=M
// #22839
D=M
//vv pop_stack_to_d
// #22840
@4
// #22841
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #22842
@5
// #22843
D=M
//^^ push_d_to_stack
// #22844
@SP
// #22845
A=M
// #22846
M=D
// #22847
@SP
// #22848
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #22849
@THAT
// #22850
D=M
// #22851
@0
// #22852
D=D+A
// #22853
@R13
// #22854
M=D
//^^ pop_stack_to_d
// #22855
@SP
// #22856
M=M-1
// #22857
A=M
// #22858
D=M
//vv pop_stack_to_d
// #22859
@R13
// #22860
A=M
// #22861
M=D
// #22862
@R13
// #22863
M=0
//vv pop_to_ram(THAT, 0)
//
//// push local 3
//^^ push_from_ram(LCL, 3)
// #22864
@LCL
// #22865
D=M
// #22866
@3
// #22867
A=D+A
// #22868
D=M
//^^ push_d_to_stack
// #22869
@SP
// #22870
A=M
// #22871
M=D
// #22872
@SP
// #22873
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 3)
//
//// push constant 1
//^^ push_constant(1)
// #22874
@1
// #22875
D=A
//^^ push_d_to_stack
// #22876
@SP
// #22877
A=M
// #22878
M=D
// #22879
@SP
// #22880
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #22881
@SP
// #22882
M=M-1
// #22883
A=M
// #22884
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #22885
@R13
// #22886
M=D
//^^ pop_stack_to_d
// #22887
@SP
// #22888
M=M-1
// #22889
A=M
// #22890
D=M
//vv pop_stack_to_d
// #22891
@R13
// #22892
D=D+M
// #22893
@R13
// #22894
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #22895
@SP
// #22896
A=M
// #22897
M=D
// #22898
@SP
// #22899
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop local 3
//^^ pop_to_ram(LCL, 3)
// #22900
@LCL
// #22901
D=M
// #22902
@3
// #22903
D=D+A
// #22904
@R13
// #22905
M=D
//^^ pop_stack_to_d
// #22906
@SP
// #22907
M=M-1
// #22908
A=M
// #22909
D=M
//vv pop_stack_to_d
// #22910
@R13
// #22911
A=M
// #22912
M=D
// #22913
@R13
// #22914
M=0
//vv pop_to_ram(LCL, 3)
//
//// goto WHILE_EXP1
// #22915
@Output.createShiftedMap$WHILE_EXP1
// #22916
0;JMP
//
//// label WHILE_END1
(Output.createShiftedMap$WHILE_END1)
//
//// push local 2
//^^ push_from_ram(LCL, 2)
// #22917
@LCL
// #22918
D=M
// #22919
@2
// #22920
A=D+A
// #22921
D=M
//^^ push_d_to_stack
// #22922
@SP
// #22923
A=M
// #22924
M=D
// #22925
@SP
// #22926
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 2)
//
//// push constant 0
//^^ push_constant(0)
// #22927
@0
// #22928
D=A
//^^ push_d_to_stack
// #22929
@SP
// #22930
A=M
// #22931
M=D
// #22932
@SP
// #22933
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #22934
@SP
// #22935
M=M-1
// #22936
A=M
// #22937
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #22938
@R13
// #22939
M=D
//^^ pop_stack_to_d
// #22940
@SP
// #22941
M=M-1
// #22942
A=M
// #22943
D=M
//vv pop_stack_to_d
// #22944
@R13
// #22945
D=D-M
// #22946
@R13
// #22947
M=0
//vv arith_d_with_stack_top(D-M)
// #22948
@PUT_TRUE_177
// #22949
D;JEQ
// #22950
@R13
// #22951
M=0
// #22952
@CONT_177
// #22953
0;JMP
(PUT_TRUE_177)
// #22954
@R13
// #22955
M=-1
(CONT_177)
// #22956
@R13
// #22957
D=M
// #22958
@R13
// #22959
M=0
//^^ push_d_to_stack
// #22960
@SP
// #22961
A=M
// #22962
M=D
// #22963
@SP
// #22964
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// if-goto IF_TRUE0
//^^ pop_stack_to_d
// #22965
@SP
// #22966
M=M-1
// #22967
A=M
// #22968
D=M
//vv pop_stack_to_d
// #22969
@Output.createShiftedMap$IF_TRUE0
// #22970
D;JNE
//
//// goto IF_FALSE0
// #22971
@Output.createShiftedMap$IF_FALSE0
// #22972
0;JMP
//
//// label IF_TRUE0
(Output.createShiftedMap$IF_TRUE0)
//
//// push constant 32
//^^ push_constant(32)
// #22973
@32
// #22974
D=A
//^^ push_d_to_stack
// #22975
@SP
// #22976
A=M
// #22977
M=D
// #22978
@SP
// #22979
M=M+1
//vv push_d_to_stack
//vv push_constant(32)
//
//// pop local 2
//^^ pop_to_ram(LCL, 2)
// #22980
@LCL
// #22981
D=M
// #22982
@2
// #22983
D=D+A
// #22984
@R13
// #22985
M=D
//^^ pop_stack_to_d
// #22986
@SP
// #22987
M=M-1
// #22988
A=M
// #22989
D=M
//vv pop_stack_to_d
// #22990
@R13
// #22991
A=M
// #22992
M=D
// #22993
@R13
// #22994
M=0
//vv pop_to_ram(LCL, 2)
//
//// goto IF_END0
// #22995
@Output.createShiftedMap$IF_END0
// #22996
0;JMP
//
//// label IF_FALSE0
(Output.createShiftedMap$IF_FALSE0)
//
//// push local 2
//^^ push_from_ram(LCL, 2)
// #22997
@LCL
// #22998
D=M
// #22999
@2
// #23000
A=D+A
// #23001
D=M
//^^ push_d_to_stack
// #23002
@SP
// #23003
A=M
// #23004
M=D
// #23005
@SP
// #23006
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 2)
//
//// push constant 1
//^^ push_constant(1)
// #23007
@1
// #23008
D=A
//^^ push_d_to_stack
// #23009
@SP
// #23010
A=M
// #23011
M=D
// #23012
@SP
// #23013
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #23014
@SP
// #23015
M=M-1
// #23016
A=M
// #23017
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #23018
@R13
// #23019
M=D
//^^ pop_stack_to_d
// #23020
@SP
// #23021
M=M-1
// #23022
A=M
// #23023
D=M
//vv pop_stack_to_d
// #23024
@R13
// #23025
D=D+M
// #23026
@R13
// #23027
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #23028
@SP
// #23029
A=M
// #23030
M=D
// #23031
@SP
// #23032
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop local 2
//^^ pop_to_ram(LCL, 2)
// #23033
@LCL
// #23034
D=M
// #23035
@2
// #23036
D=D+A
// #23037
@R13
// #23038
M=D
//^^ pop_stack_to_d
// #23039
@SP
// #23040
M=M-1
// #23041
A=M
// #23042
D=M
//vv pop_stack_to_d
// #23043
@R13
// #23044
A=M
// #23045
M=D
// #23046
@R13
// #23047
M=0
//vv pop_to_ram(LCL, 2)
//
//// label IF_END0
(Output.createShiftedMap$IF_END0)
//
//// goto WHILE_EXP0
// #23048
@Output.createShiftedMap$WHILE_EXP0
// #23049
0;JMP
//
//// label WHILE_END0
(Output.createShiftedMap$WHILE_END0)
//
//// push constant 0
//^^ push_constant(0)
// #23050
@0
// #23051
D=A
//^^ push_d_to_stack
// #23052
@SP
// #23053
A=M
// #23054
M=D
// #23055
@SP
// #23056
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #23057
@LCL
// #23058
D=M
// #23059
@R14
// #23060
M=D //R14=LCL
// #23061
@5
// #23062
A=D-A
// #23063
D=M
// #23064
@R15
// #23065
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #23066
@SP
// #23067
M=M-1
// #23068
A=M
// #23069
D=M
//vv pop_stack_to_d
// #23070
@ARG
// #23071
A=M
// #23072
M=D //*ARG = pop()
// #23073
@ARG
// #23074
D=M
// #23075
@SP
// #23076
M=D+1 //SP=ARG+1
// #23077
@R14
// #23078
AM=M-1
// #23079
D=M
// #23080
@THAT
// #23081
M=D //THAT = *(--R14)
// #23082
@R14
// #23083
AM=M-1
// #23084
D=M
// #23085
@THIS
// #23086
M=D //THIS = *(--R14)
// #23087
@R14
// #23088
AM=M-1
// #23089
D=M
// #23090
@ARG
// #23091
M=D //ARG = *(--R14)
// #23092
@R14
// #23093
AM=M-1
// #23094
D=M
// #23095
@LCL
// #23096
M=D //LCL = *(--R14)
// #23097
@R15
// #23098
A=M
// #23099
0;JMP //goto *R15
//
//// function Output.getMap 1
(Output.getMap)
// #23100
D=0
//^^ push_d_to_stack
// #23101
@SP
// #23102
A=M
// #23103
M=D
// #23104
@SP
// #23105
M=M+1
//vv push_d_to_stack
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #23106
@ARG
// #23107
D=M
// #23108
@0
// #23109
A=D+A
// #23110
D=M
//^^ push_d_to_stack
// #23111
@SP
// #23112
A=M
// #23113
M=D
// #23114
@SP
// #23115
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push constant 32
//^^ push_constant(32)
// #23116
@32
// #23117
D=A
//^^ push_d_to_stack
// #23118
@SP
// #23119
A=M
// #23120
M=D
// #23121
@SP
// #23122
M=M+1
//vv push_d_to_stack
//vv push_constant(32)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #23123
@SP
// #23124
M=M-1
// #23125
A=M
// #23126
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #23127
@R13
// #23128
M=D
//^^ pop_stack_to_d
// #23129
@SP
// #23130
M=M-1
// #23131
A=M
// #23132
D=M
//vv pop_stack_to_d
// #23133
@R13
// #23134
D=D-M
// #23135
@R13
// #23136
M=0
//vv arith_d_with_stack_top(D-M)
// #23137
@PUT_TRUE_178
// #23138
D;JLT
// #23139
@R13
// #23140
M=0
// #23141
@CONT_178
// #23142
0;JMP
(PUT_TRUE_178)
// #23143
@R13
// #23144
M=-1
(CONT_178)
// #23145
@R13
// #23146
D=M
// #23147
@R13
// #23148
M=0
//^^ push_d_to_stack
// #23149
@SP
// #23150
A=M
// #23151
M=D
// #23152
@SP
// #23153
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #23154
@ARG
// #23155
D=M
// #23156
@0
// #23157
A=D+A
// #23158
D=M
//^^ push_d_to_stack
// #23159
@SP
// #23160
A=M
// #23161
M=D
// #23162
@SP
// #23163
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push constant 126
//^^ push_constant(126)
// #23164
@126
// #23165
D=A
//^^ push_d_to_stack
// #23166
@SP
// #23167
A=M
// #23168
M=D
// #23169
@SP
// #23170
M=M+1
//vv push_d_to_stack
//vv push_constant(126)
//
//// gt
//^^ arith_cmp_op(JGT)
//^^ pop_stack_to_d
// #23171
@SP
// #23172
M=M-1
// #23173
A=M
// #23174
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #23175
@R13
// #23176
M=D
//^^ pop_stack_to_d
// #23177
@SP
// #23178
M=M-1
// #23179
A=M
// #23180
D=M
//vv pop_stack_to_d
// #23181
@R13
// #23182
D=D-M
// #23183
@R13
// #23184
M=0
//vv arith_d_with_stack_top(D-M)
// #23185
@PUT_TRUE_179
// #23186
D;JGT
// #23187
@R13
// #23188
M=0
// #23189
@CONT_179
// #23190
0;JMP
(PUT_TRUE_179)
// #23191
@R13
// #23192
M=-1
(CONT_179)
// #23193
@R13
// #23194
D=M
// #23195
@R13
// #23196
M=0
//^^ push_d_to_stack
// #23197
@SP
// #23198
A=M
// #23199
M=D
// #23200
@SP
// #23201
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JGT)
//
//// or
//^^ arith_binary_op(|)
//^^ pop_stack_to_d
// #23202
@SP
// #23203
M=M-1
// #23204
A=M
// #23205
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D|M)
// #23206
@R13
// #23207
M=D
//^^ pop_stack_to_d
// #23208
@SP
// #23209
M=M-1
// #23210
A=M
// #23211
D=M
//vv pop_stack_to_d
// #23212
@R13
// #23213
D=D|M
// #23214
@R13
// #23215
M=0
//vv arith_d_with_stack_top(D|M)
//^^ push_d_to_stack
// #23216
@SP
// #23217
A=M
// #23218
M=D
// #23219
@SP
// #23220
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(|)
//
//// if-goto IF_TRUE0
//^^ pop_stack_to_d
// #23221
@SP
// #23222
M=M-1
// #23223
A=M
// #23224
D=M
//vv pop_stack_to_d
// #23225
@Output.getMap$IF_TRUE0
// #23226
D;JNE
//
//// goto IF_FALSE0
// #23227
@Output.getMap$IF_FALSE0
// #23228
0;JMP
//
//// label IF_TRUE0
(Output.getMap$IF_TRUE0)
//
//// push constant 0
//^^ push_constant(0)
// #23229
@0
// #23230
D=A
//^^ push_d_to_stack
// #23231
@SP
// #23232
A=M
// #23233
M=D
// #23234
@SP
// #23235
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// pop argument 0
//^^ pop_to_ram(ARG, 0)
// #23236
@ARG
// #23237
D=M
// #23238
@0
// #23239
D=D+A
// #23240
@R13
// #23241
M=D
//^^ pop_stack_to_d
// #23242
@SP
// #23243
M=M-1
// #23244
A=M
// #23245
D=M
//vv pop_stack_to_d
// #23246
@R13
// #23247
A=M
// #23248
M=D
// #23249
@R13
// #23250
M=0
//vv pop_to_ram(ARG, 0)
//
//// label IF_FALSE0
(Output.getMap$IF_FALSE0)
//
//// push static 2
//^^ push_from_loc(Output.vm.2)
// #23251
@Output.vm.2
// #23252
D=M
//^^ push_d_to_stack
// #23253
@SP
// #23254
A=M
// #23255
M=D
// #23256
@SP
// #23257
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.2)
//
//// if-goto IF_TRUE1
//^^ pop_stack_to_d
// #23258
@SP
// #23259
M=M-1
// #23260
A=M
// #23261
D=M
//vv pop_stack_to_d
// #23262
@Output.getMap$IF_TRUE1
// #23263
D;JNE
//
//// goto IF_FALSE1
// #23264
@Output.getMap$IF_FALSE1
// #23265
0;JMP
//
//// label IF_TRUE1
(Output.getMap$IF_TRUE1)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #23266
@ARG
// #23267
D=M
// #23268
@0
// #23269
A=D+A
// #23270
D=M
//^^ push_d_to_stack
// #23271
@SP
// #23272
A=M
// #23273
M=D
// #23274
@SP
// #23275
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push static 5
//^^ push_from_loc(Output.vm.5)
// #23276
@Output.vm.5
// #23277
D=M
//^^ push_d_to_stack
// #23278
@SP
// #23279
A=M
// #23280
M=D
// #23281
@SP
// #23282
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.5)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #23283
@SP
// #23284
M=M-1
// #23285
A=M
// #23286
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #23287
@R13
// #23288
M=D
//^^ pop_stack_to_d
// #23289
@SP
// #23290
M=M-1
// #23291
A=M
// #23292
D=M
//vv pop_stack_to_d
// #23293
@R13
// #23294
D=D+M
// #23295
@R13
// #23296
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #23297
@SP
// #23298
A=M
// #23299
M=D
// #23300
@SP
// #23301
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #23302
@SP
// #23303
M=M-1
// #23304
A=M
// #23305
D=M
//vv pop_stack_to_d
// #23306
@4
// #23307
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #23308
@THAT
// #23309
D=M
// #23310
@0
// #23311
A=D+A
// #23312
D=M
//^^ push_d_to_stack
// #23313
@SP
// #23314
A=M
// #23315
M=D
// #23316
@SP
// #23317
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
// #23318
@LCL
// #23319
D=M
// #23320
@0
// #23321
D=D+A
// #23322
@R13
// #23323
M=D
//^^ pop_stack_to_d
// #23324
@SP
// #23325
M=M-1
// #23326
A=M
// #23327
D=M
//vv pop_stack_to_d
// #23328
@R13
// #23329
A=M
// #23330
M=D
// #23331
@R13
// #23332
M=0
//vv pop_to_ram(LCL, 0)
//
//// goto IF_END1
// #23333
@Output.getMap$IF_END1
// #23334
0;JMP
//
//// label IF_FALSE1
(Output.getMap$IF_FALSE1)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #23335
@ARG
// #23336
D=M
// #23337
@0
// #23338
A=D+A
// #23339
D=M
//^^ push_d_to_stack
// #23340
@SP
// #23341
A=M
// #23342
M=D
// #23343
@SP
// #23344
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push static 6
//^^ push_from_loc(Output.vm.6)
// #23345
@Output.vm.6
// #23346
D=M
//^^ push_d_to_stack
// #23347
@SP
// #23348
A=M
// #23349
M=D
// #23350
@SP
// #23351
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.6)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #23352
@SP
// #23353
M=M-1
// #23354
A=M
// #23355
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #23356
@R13
// #23357
M=D
//^^ pop_stack_to_d
// #23358
@SP
// #23359
M=M-1
// #23360
A=M
// #23361
D=M
//vv pop_stack_to_d
// #23362
@R13
// #23363
D=D+M
// #23364
@R13
// #23365
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #23366
@SP
// #23367
A=M
// #23368
M=D
// #23369
@SP
// #23370
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #23371
@SP
// #23372
M=M-1
// #23373
A=M
// #23374
D=M
//vv pop_stack_to_d
// #23375
@4
// #23376
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #23377
@THAT
// #23378
D=M
// #23379
@0
// #23380
A=D+A
// #23381
D=M
//^^ push_d_to_stack
// #23382
@SP
// #23383
A=M
// #23384
M=D
// #23385
@SP
// #23386
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
// #23387
@LCL
// #23388
D=M
// #23389
@0
// #23390
D=D+A
// #23391
@R13
// #23392
M=D
//^^ pop_stack_to_d
// #23393
@SP
// #23394
M=M-1
// #23395
A=M
// #23396
D=M
//vv pop_stack_to_d
// #23397
@R13
// #23398
A=M
// #23399
M=D
// #23400
@R13
// #23401
M=0
//vv pop_to_ram(LCL, 0)
//
//// label IF_END1
(Output.getMap$IF_END1)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #23402
@LCL
// #23403
D=M
// #23404
@0
// #23405
A=D+A
// #23406
D=M
//^^ push_d_to_stack
// #23407
@SP
// #23408
A=M
// #23409
M=D
// #23410
@SP
// #23411
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// return
// #23412
@LCL
// #23413
D=M
// #23414
@R14
// #23415
M=D //R14=LCL
// #23416
@5
// #23417
A=D-A
// #23418
D=M
// #23419
@R15
// #23420
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #23421
@SP
// #23422
M=M-1
// #23423
A=M
// #23424
D=M
//vv pop_stack_to_d
// #23425
@ARG
// #23426
A=M
// #23427
M=D //*ARG = pop()
// #23428
@ARG
// #23429
D=M
// #23430
@SP
// #23431
M=D+1 //SP=ARG+1
// #23432
@R14
// #23433
AM=M-1
// #23434
D=M
// #23435
@THAT
// #23436
M=D //THAT = *(--R14)
// #23437
@R14
// #23438
AM=M-1
// #23439
D=M
// #23440
@THIS
// #23441
M=D //THIS = *(--R14)
// #23442
@R14
// #23443
AM=M-1
// #23444
D=M
// #23445
@ARG
// #23446
M=D //ARG = *(--R14)
// #23447
@R14
// #23448
AM=M-1
// #23449
D=M
// #23450
@LCL
// #23451
M=D //LCL = *(--R14)
// #23452
@R15
// #23453
A=M
// #23454
0;JMP //goto *R15
//
//// function Output.drawChar 4
(Output.drawChar)
// #23455
D=0
//^^ push_d_to_stack
// #23456
@SP
// #23457
A=M
// #23458
M=D
// #23459
@SP
// #23460
M=M+1
//vv push_d_to_stack
// #23461
D=0
//^^ push_d_to_stack
// #23462
@SP
// #23463
A=M
// #23464
M=D
// #23465
@SP
// #23466
M=M+1
//vv push_d_to_stack
// #23467
D=0
//^^ push_d_to_stack
// #23468
@SP
// #23469
A=M
// #23470
M=D
// #23471
@SP
// #23472
M=M+1
//vv push_d_to_stack
// #23473
D=0
//^^ push_d_to_stack
// #23474
@SP
// #23475
A=M
// #23476
M=D
// #23477
@SP
// #23478
M=M+1
//vv push_d_to_stack
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #23479
@ARG
// #23480
D=M
// #23481
@0
// #23482
A=D+A
// #23483
D=M
//^^ push_d_to_stack
// #23484
@SP
// #23485
A=M
// #23486
M=D
// #23487
@SP
// #23488
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// call Output.getMap 1
//^^ push_constant(RET_ADDR_180)
// #23489
@RET_ADDR_180
// #23490
D=A
//^^ push_d_to_stack
// #23491
@SP
// #23492
A=M
// #23493
M=D
// #23494
@SP
// #23495
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_180)
//push return-address
// #23496
@LCL
// #23497
D=M
//^^ push_d_to_stack
// #23498
@SP
// #23499
A=M
// #23500
M=D
// #23501
@SP
// #23502
M=M+1
//vv push_d_to_stack
//push LCL
// #23503
@ARG
// #23504
D=M
//^^ push_d_to_stack
// #23505
@SP
// #23506
A=M
// #23507
M=D
// #23508
@SP
// #23509
M=M+1
//vv push_d_to_stack
//push ARG
// #23510
@THIS
// #23511
D=M
//^^ push_d_to_stack
// #23512
@SP
// #23513
A=M
// #23514
M=D
// #23515
@SP
// #23516
M=M+1
//vv push_d_to_stack
//push THIS
// #23517
@THAT
// #23518
D=M
//^^ push_d_to_stack
// #23519
@SP
// #23520
A=M
// #23521
M=D
// #23522
@SP
// #23523
M=M+1
//vv push_d_to_stack
//push THAT
// #23524
@SP
// #23525
D=M
// #23526
@ARG
// #23527
M=D
// #23528
@6
// #23529
D=A
// #23530
@ARG
// #23531
M=M-D // ARG = SP - args - 5
// #23532
@SP
// #23533
D=M
// #23534
@LCL
// #23535
M=D // LCL = SP
// #23536
@Output.getMap
// #23537
0;JMP
(RET_ADDR_180)
//
//// pop local 2
//^^ pop_to_ram(LCL, 2)
// #23538
@LCL
// #23539
D=M
// #23540
@2
// #23541
D=D+A
// #23542
@R13
// #23543
M=D
//^^ pop_stack_to_d
// #23544
@SP
// #23545
M=M-1
// #23546
A=M
// #23547
D=M
//vv pop_stack_to_d
// #23548
@R13
// #23549
A=M
// #23550
M=D
// #23551
@R13
// #23552
M=0
//vv pop_to_ram(LCL, 2)
//
//// push static 1
//^^ push_from_loc(Output.vm.1)
// #23553
@Output.vm.1
// #23554
D=M
//^^ push_d_to_stack
// #23555
@SP
// #23556
A=M
// #23557
M=D
// #23558
@SP
// #23559
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.1)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
// #23560
@LCL
// #23561
D=M
// #23562
@0
// #23563
D=D+A
// #23564
@R13
// #23565
M=D
//^^ pop_stack_to_d
// #23566
@SP
// #23567
M=M-1
// #23568
A=M
// #23569
D=M
//vv pop_stack_to_d
// #23570
@R13
// #23571
A=M
// #23572
M=D
// #23573
@R13
// #23574
M=0
//vv pop_to_ram(LCL, 0)
//
//// label WHILE_EXP0
(Output.drawChar$WHILE_EXP0)
//
//// push local 1
//^^ push_from_ram(LCL, 1)
// #23575
@LCL
// #23576
D=M
// #23577
@1
// #23578
A=D+A
// #23579
D=M
//^^ push_d_to_stack
// #23580
@SP
// #23581
A=M
// #23582
M=D
// #23583
@SP
// #23584
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 1)
//
//// push constant 11
//^^ push_constant(11)
// #23585
@11
// #23586
D=A
//^^ push_d_to_stack
// #23587
@SP
// #23588
A=M
// #23589
M=D
// #23590
@SP
// #23591
M=M+1
//vv push_d_to_stack
//vv push_constant(11)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #23592
@SP
// #23593
M=M-1
// #23594
A=M
// #23595
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #23596
@R13
// #23597
M=D
//^^ pop_stack_to_d
// #23598
@SP
// #23599
M=M-1
// #23600
A=M
// #23601
D=M
//vv pop_stack_to_d
// #23602
@R13
// #23603
D=D-M
// #23604
@R13
// #23605
M=0
//vv arith_d_with_stack_top(D-M)
// #23606
@PUT_TRUE_181
// #23607
D;JLT
// #23608
@R13
// #23609
M=0
// #23610
@CONT_181
// #23611
0;JMP
(PUT_TRUE_181)
// #23612
@R13
// #23613
M=-1
(CONT_181)
// #23614
@R13
// #23615
D=M
// #23616
@R13
// #23617
M=0
//^^ push_d_to_stack
// #23618
@SP
// #23619
A=M
// #23620
M=D
// #23621
@SP
// #23622
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #23623
@SP
// #23624
M=M-1
// #23625
A=M
// #23626
D=M
//vv pop_stack_to_d
// #23627
D=!D
//^^ push_d_to_stack
// #23628
@SP
// #23629
A=M
// #23630
M=D
// #23631
@SP
// #23632
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// if-goto WHILE_END0
//^^ pop_stack_to_d
// #23633
@SP
// #23634
M=M-1
// #23635
A=M
// #23636
D=M
//vv pop_stack_to_d
// #23637
@Output.drawChar$WHILE_END0
// #23638
D;JNE
//
//// push static 2
//^^ push_from_loc(Output.vm.2)
// #23639
@Output.vm.2
// #23640
D=M
//^^ push_d_to_stack
// #23641
@SP
// #23642
A=M
// #23643
M=D
// #23644
@SP
// #23645
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.2)
//
//// if-goto IF_TRUE0
//^^ pop_stack_to_d
// #23646
@SP
// #23647
M=M-1
// #23648
A=M
// #23649
D=M
//vv pop_stack_to_d
// #23650
@Output.drawChar$IF_TRUE0
// #23651
D;JNE
//
//// goto IF_FALSE0
// #23652
@Output.drawChar$IF_FALSE0
// #23653
0;JMP
//
//// label IF_TRUE0
(Output.drawChar$IF_TRUE0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #23654
@LCL
// #23655
D=M
// #23656
@0
// #23657
A=D+A
// #23658
D=M
//^^ push_d_to_stack
// #23659
@SP
// #23660
A=M
// #23661
M=D
// #23662
@SP
// #23663
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push static 4
//^^ push_from_loc(Output.vm.4)
// #23664
@Output.vm.4
// #23665
D=M
//^^ push_d_to_stack
// #23666
@SP
// #23667
A=M
// #23668
M=D
// #23669
@SP
// #23670
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.4)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #23671
@SP
// #23672
M=M-1
// #23673
A=M
// #23674
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #23675
@R13
// #23676
M=D
//^^ pop_stack_to_d
// #23677
@SP
// #23678
M=M-1
// #23679
A=M
// #23680
D=M
//vv pop_stack_to_d
// #23681
@R13
// #23682
D=D+M
// #23683
@R13
// #23684
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #23685
@SP
// #23686
A=M
// #23687
M=D
// #23688
@SP
// #23689
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #23690
@SP
// #23691
M=M-1
// #23692
A=M
// #23693
D=M
//vv pop_stack_to_d
// #23694
@4
// #23695
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #23696
@THAT
// #23697
D=M
// #23698
@0
// #23699
A=D+A
// #23700
D=M
//^^ push_d_to_stack
// #23701
@SP
// #23702
A=M
// #23703
M=D
// #23704
@SP
// #23705
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// push constant 256
//^^ push_constant(256)
// #23706
@256
// #23707
D=A
//^^ push_d_to_stack
// #23708
@SP
// #23709
A=M
// #23710
M=D
// #23711
@SP
// #23712
M=M+1
//vv push_d_to_stack
//vv push_constant(256)
//
//// neg
//^^ arith_unary_op(-)
//^^ pop_stack_to_d
// #23713
@SP
// #23714
M=M-1
// #23715
A=M
// #23716
D=M
//vv pop_stack_to_d
// #23717
D=-D
//^^ push_d_to_stack
// #23718
@SP
// #23719
A=M
// #23720
M=D
// #23721
@SP
// #23722
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(-)
//
//// and
//^^ arith_binary_op(&)
//^^ pop_stack_to_d
// #23723
@SP
// #23724
M=M-1
// #23725
A=M
// #23726
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D&M)
// #23727
@R13
// #23728
M=D
//^^ pop_stack_to_d
// #23729
@SP
// #23730
M=M-1
// #23731
A=M
// #23732
D=M
//vv pop_stack_to_d
// #23733
@R13
// #23734
D=D&M
// #23735
@R13
// #23736
M=0
//vv arith_d_with_stack_top(D&M)
//^^ push_d_to_stack
// #23737
@SP
// #23738
A=M
// #23739
M=D
// #23740
@SP
// #23741
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(&)
//
//// pop local 3
//^^ pop_to_ram(LCL, 3)
// #23742
@LCL
// #23743
D=M
// #23744
@3
// #23745
D=D+A
// #23746
@R13
// #23747
M=D
//^^ pop_stack_to_d
// #23748
@SP
// #23749
M=M-1
// #23750
A=M
// #23751
D=M
//vv pop_stack_to_d
// #23752
@R13
// #23753
A=M
// #23754
M=D
// #23755
@R13
// #23756
M=0
//vv pop_to_ram(LCL, 3)
//
//// goto IF_END0
// #23757
@Output.drawChar$IF_END0
// #23758
0;JMP
//
//// label IF_FALSE0
(Output.drawChar$IF_FALSE0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #23759
@LCL
// #23760
D=M
// #23761
@0
// #23762
A=D+A
// #23763
D=M
//^^ push_d_to_stack
// #23764
@SP
// #23765
A=M
// #23766
M=D
// #23767
@SP
// #23768
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push static 4
//^^ push_from_loc(Output.vm.4)
// #23769
@Output.vm.4
// #23770
D=M
//^^ push_d_to_stack
// #23771
@SP
// #23772
A=M
// #23773
M=D
// #23774
@SP
// #23775
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.4)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #23776
@SP
// #23777
M=M-1
// #23778
A=M
// #23779
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #23780
@R13
// #23781
M=D
//^^ pop_stack_to_d
// #23782
@SP
// #23783
M=M-1
// #23784
A=M
// #23785
D=M
//vv pop_stack_to_d
// #23786
@R13
// #23787
D=D+M
// #23788
@R13
// #23789
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #23790
@SP
// #23791
A=M
// #23792
M=D
// #23793
@SP
// #23794
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #23795
@SP
// #23796
M=M-1
// #23797
A=M
// #23798
D=M
//vv pop_stack_to_d
// #23799
@4
// #23800
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #23801
@THAT
// #23802
D=M
// #23803
@0
// #23804
A=D+A
// #23805
D=M
//^^ push_d_to_stack
// #23806
@SP
// #23807
A=M
// #23808
M=D
// #23809
@SP
// #23810
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// push constant 255
//^^ push_constant(255)
// #23811
@255
// #23812
D=A
//^^ push_d_to_stack
// #23813
@SP
// #23814
A=M
// #23815
M=D
// #23816
@SP
// #23817
M=M+1
//vv push_d_to_stack
//vv push_constant(255)
//
//// and
//^^ arith_binary_op(&)
//^^ pop_stack_to_d
// #23818
@SP
// #23819
M=M-1
// #23820
A=M
// #23821
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D&M)
// #23822
@R13
// #23823
M=D
//^^ pop_stack_to_d
// #23824
@SP
// #23825
M=M-1
// #23826
A=M
// #23827
D=M
//vv pop_stack_to_d
// #23828
@R13
// #23829
D=D&M
// #23830
@R13
// #23831
M=0
//vv arith_d_with_stack_top(D&M)
//^^ push_d_to_stack
// #23832
@SP
// #23833
A=M
// #23834
M=D
// #23835
@SP
// #23836
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(&)
//
//// pop local 3
//^^ pop_to_ram(LCL, 3)
// #23837
@LCL
// #23838
D=M
// #23839
@3
// #23840
D=D+A
// #23841
@R13
// #23842
M=D
//^^ pop_stack_to_d
// #23843
@SP
// #23844
M=M-1
// #23845
A=M
// #23846
D=M
//vv pop_stack_to_d
// #23847
@R13
// #23848
A=M
// #23849
M=D
// #23850
@R13
// #23851
M=0
//vv pop_to_ram(LCL, 3)
//
//// label IF_END0
(Output.drawChar$IF_END0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #23852
@LCL
// #23853
D=M
// #23854
@0
// #23855
A=D+A
// #23856
D=M
//^^ push_d_to_stack
// #23857
@SP
// #23858
A=M
// #23859
M=D
// #23860
@SP
// #23861
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push static 4
//^^ push_from_loc(Output.vm.4)
// #23862
@Output.vm.4
// #23863
D=M
//^^ push_d_to_stack
// #23864
@SP
// #23865
A=M
// #23866
M=D
// #23867
@SP
// #23868
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.4)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #23869
@SP
// #23870
M=M-1
// #23871
A=M
// #23872
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #23873
@R13
// #23874
M=D
//^^ pop_stack_to_d
// #23875
@SP
// #23876
M=M-1
// #23877
A=M
// #23878
D=M
//vv pop_stack_to_d
// #23879
@R13
// #23880
D=D+M
// #23881
@R13
// #23882
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #23883
@SP
// #23884
A=M
// #23885
M=D
// #23886
@SP
// #23887
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push local 1
//^^ push_from_ram(LCL, 1)
// #23888
@LCL
// #23889
D=M
// #23890
@1
// #23891
A=D+A
// #23892
D=M
//^^ push_d_to_stack
// #23893
@SP
// #23894
A=M
// #23895
M=D
// #23896
@SP
// #23897
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 1)
//
//// push local 2
//^^ push_from_ram(LCL, 2)
// #23898
@LCL
// #23899
D=M
// #23900
@2
// #23901
A=D+A
// #23902
D=M
//^^ push_d_to_stack
// #23903
@SP
// #23904
A=M
// #23905
M=D
// #23906
@SP
// #23907
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #23908
@SP
// #23909
M=M-1
// #23910
A=M
// #23911
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #23912
@R13
// #23913
M=D
//^^ pop_stack_to_d
// #23914
@SP
// #23915
M=M-1
// #23916
A=M
// #23917
D=M
//vv pop_stack_to_d
// #23918
@R13
// #23919
D=D+M
// #23920
@R13
// #23921
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #23922
@SP
// #23923
A=M
// #23924
M=D
// #23925
@SP
// #23926
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #23927
@SP
// #23928
M=M-1
// #23929
A=M
// #23930
D=M
//vv pop_stack_to_d
// #23931
@4
// #23932
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #23933
@THAT
// #23934
D=M
// #23935
@0
// #23936
A=D+A
// #23937
D=M
//^^ push_d_to_stack
// #23938
@SP
// #23939
A=M
// #23940
M=D
// #23941
@SP
// #23942
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// push local 3
//^^ push_from_ram(LCL, 3)
// #23943
@LCL
// #23944
D=M
// #23945
@3
// #23946
A=D+A
// #23947
D=M
//^^ push_d_to_stack
// #23948
@SP
// #23949
A=M
// #23950
M=D
// #23951
@SP
// #23952
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 3)
//
//// or
//^^ arith_binary_op(|)
//^^ pop_stack_to_d
// #23953
@SP
// #23954
M=M-1
// #23955
A=M
// #23956
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D|M)
// #23957
@R13
// #23958
M=D
//^^ pop_stack_to_d
// #23959
@SP
// #23960
M=M-1
// #23961
A=M
// #23962
D=M
//vv pop_stack_to_d
// #23963
@R13
// #23964
D=D|M
// #23965
@R13
// #23966
M=0
//vv arith_d_with_stack_top(D|M)
//^^ push_d_to_stack
// #23967
@SP
// #23968
A=M
// #23969
M=D
// #23970
@SP
// #23971
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(|)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #23972
@SP
// #23973
M=M-1
// #23974
A=M
// #23975
D=M
//vv pop_stack_to_d
// #23976
@5
// #23977
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #23978
@SP
// #23979
M=M-1
// #23980
A=M
// #23981
D=M
//vv pop_stack_to_d
// #23982
@4
// #23983
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #23984
@5
// #23985
D=M
//^^ push_d_to_stack
// #23986
@SP
// #23987
A=M
// #23988
M=D
// #23989
@SP
// #23990
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #23991
@THAT
// #23992
D=M
// #23993
@0
// #23994
D=D+A
// #23995
@R13
// #23996
M=D
//^^ pop_stack_to_d
// #23997
@SP
// #23998
M=M-1
// #23999
A=M
// #24000
D=M
//vv pop_stack_to_d
// #24001
@R13
// #24002
A=M
// #24003
M=D
// #24004
@R13
// #24005
M=0
//vv pop_to_ram(THAT, 0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #24006
@LCL
// #24007
D=M
// #24008
@0
// #24009
A=D+A
// #24010
D=M
//^^ push_d_to_stack
// #24011
@SP
// #24012
A=M
// #24013
M=D
// #24014
@SP
// #24015
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 32
//^^ push_constant(32)
// #24016
@32
// #24017
D=A
//^^ push_d_to_stack
// #24018
@SP
// #24019
A=M
// #24020
M=D
// #24021
@SP
// #24022
M=M+1
//vv push_d_to_stack
//vv push_constant(32)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #24023
@SP
// #24024
M=M-1
// #24025
A=M
// #24026
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #24027
@R13
// #24028
M=D
//^^ pop_stack_to_d
// #24029
@SP
// #24030
M=M-1
// #24031
A=M
// #24032
D=M
//vv pop_stack_to_d
// #24033
@R13
// #24034
D=D+M
// #24035
@R13
// #24036
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #24037
@SP
// #24038
A=M
// #24039
M=D
// #24040
@SP
// #24041
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
// #24042
@LCL
// #24043
D=M
// #24044
@0
// #24045
D=D+A
// #24046
@R13
// #24047
M=D
//^^ pop_stack_to_d
// #24048
@SP
// #24049
M=M-1
// #24050
A=M
// #24051
D=M
//vv pop_stack_to_d
// #24052
@R13
// #24053
A=M
// #24054
M=D
// #24055
@R13
// #24056
M=0
//vv pop_to_ram(LCL, 0)
//
//// push local 1
//^^ push_from_ram(LCL, 1)
// #24057
@LCL
// #24058
D=M
// #24059
@1
// #24060
A=D+A
// #24061
D=M
//^^ push_d_to_stack
// #24062
@SP
// #24063
A=M
// #24064
M=D
// #24065
@SP
// #24066
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 1)
//
//// push constant 1
//^^ push_constant(1)
// #24067
@1
// #24068
D=A
//^^ push_d_to_stack
// #24069
@SP
// #24070
A=M
// #24071
M=D
// #24072
@SP
// #24073
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #24074
@SP
// #24075
M=M-1
// #24076
A=M
// #24077
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #24078
@R13
// #24079
M=D
//^^ pop_stack_to_d
// #24080
@SP
// #24081
M=M-1
// #24082
A=M
// #24083
D=M
//vv pop_stack_to_d
// #24084
@R13
// #24085
D=D+M
// #24086
@R13
// #24087
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #24088
@SP
// #24089
A=M
// #24090
M=D
// #24091
@SP
// #24092
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop local 1
//^^ pop_to_ram(LCL, 1)
// #24093
@LCL
// #24094
D=M
// #24095
@1
// #24096
D=D+A
// #24097
@R13
// #24098
M=D
//^^ pop_stack_to_d
// #24099
@SP
// #24100
M=M-1
// #24101
A=M
// #24102
D=M
//vv pop_stack_to_d
// #24103
@R13
// #24104
A=M
// #24105
M=D
// #24106
@R13
// #24107
M=0
//vv pop_to_ram(LCL, 1)
//
//// goto WHILE_EXP0
// #24108
@Output.drawChar$WHILE_EXP0
// #24109
0;JMP
//
//// label WHILE_END0
(Output.drawChar$WHILE_END0)
//
//// push constant 0
//^^ push_constant(0)
// #24110
@0
// #24111
D=A
//^^ push_d_to_stack
// #24112
@SP
// #24113
A=M
// #24114
M=D
// #24115
@SP
// #24116
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #24117
@LCL
// #24118
D=M
// #24119
@R14
// #24120
M=D //R14=LCL
// #24121
@5
// #24122
A=D-A
// #24123
D=M
// #24124
@R15
// #24125
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #24126
@SP
// #24127
M=M-1
// #24128
A=M
// #24129
D=M
//vv pop_stack_to_d
// #24130
@ARG
// #24131
A=M
// #24132
M=D //*ARG = pop()
// #24133
@ARG
// #24134
D=M
// #24135
@SP
// #24136
M=D+1 //SP=ARG+1
// #24137
@R14
// #24138
AM=M-1
// #24139
D=M
// #24140
@THAT
// #24141
M=D //THAT = *(--R14)
// #24142
@R14
// #24143
AM=M-1
// #24144
D=M
// #24145
@THIS
// #24146
M=D //THIS = *(--R14)
// #24147
@R14
// #24148
AM=M-1
// #24149
D=M
// #24150
@ARG
// #24151
M=D //ARG = *(--R14)
// #24152
@R14
// #24153
AM=M-1
// #24154
D=M
// #24155
@LCL
// #24156
M=D //LCL = *(--R14)
// #24157
@R15
// #24158
A=M
// #24159
0;JMP //goto *R15
//
//// function Output.moveCursor 0
(Output.moveCursor)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #24160
@ARG
// #24161
D=M
// #24162
@0
// #24163
A=D+A
// #24164
D=M
//^^ push_d_to_stack
// #24165
@SP
// #24166
A=M
// #24167
M=D
// #24168
@SP
// #24169
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// call String.newLine 0
//^^ push_constant(RET_ADDR_192)
// #24170
@RET_ADDR_192
// #24171
D=A
//^^ push_d_to_stack
// #24172
@SP
// #24173
A=M
// #24174
M=D
// #24175
@SP
// #24176
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_192)
//push return-address
// #24177
@LCL
// #24178
D=M
//^^ push_d_to_stack
// #24179
@SP
// #24180
A=M
// #24181
M=D
// #24182
@SP
// #24183
M=M+1
//vv push_d_to_stack
//push LCL
// #24184
@ARG
// #24185
D=M
//^^ push_d_to_stack
// #24186
@SP
// #24187
A=M
// #24188
M=D
// #24189
@SP
// #24190
M=M+1
//vv push_d_to_stack
//push ARG
// #24191
@THIS
// #24192
D=M
//^^ push_d_to_stack
// #24193
@SP
// #24194
A=M
// #24195
M=D
// #24196
@SP
// #24197
M=M+1
//vv push_d_to_stack
//push THIS
// #24198
@THAT
// #24199
D=M
//^^ push_d_to_stack
// #24200
@SP
// #24201
A=M
// #24202
M=D
// #24203
@SP
// #24204
M=M+1
//vv push_d_to_stack
//push THAT
// #24205
@SP
// #24206
D=M
// #24207
@ARG
// #24208
M=D
// #24209
@5
// #24210
D=A
// #24211
@ARG
// #24212
M=M-D // ARG = SP - args - 5
// #24213
@SP
// #24214
D=M
// #24215
@LCL
// #24216
M=D // LCL = SP
// #24217
@String.newLine
// #24218
0;JMP
(RET_ADDR_192)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #24219
@SP
// #24220
M=M-1
// #24221
A=M
// #24222
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #24223
@R13
// #24224
M=D
//^^ pop_stack_to_d
// #24225
@SP
// #24226
M=M-1
// #24227
A=M
// #24228
D=M
//vv pop_stack_to_d
// #24229
@R13
// #24230
D=D-M
// #24231
@R13
// #24232
M=0
//vv arith_d_with_stack_top(D-M)
// #24233
@PUT_TRUE_193
// #24234
D;JEQ
// #24235
@R13
// #24236
M=0
// #24237
@CONT_193
// #24238
0;JMP
(PUT_TRUE_193)
// #24239
@R13
// #24240
M=-1
(CONT_193)
// #24241
@R13
// #24242
D=M
// #24243
@R13
// #24244
M=0
//^^ push_d_to_stack
// #24245
@SP
// #24246
A=M
// #24247
M=D
// #24248
@SP
// #24249
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// if-goto IF_TRUE0
//^^ pop_stack_to_d
// #24250
@SP
// #24251
M=M-1
// #24252
A=M
// #24253
D=M
//vv pop_stack_to_d
// #24254
@Output.printChar$IF_TRUE0
// #24255
D;JNE
//
//// goto IF_FALSE0
// #24256
@Output.printChar$IF_FALSE0
// #24257
0;JMP
//
//// label IF_TRUE0
(Output.printChar$IF_TRUE0)
//
//// call Output.println 0
//^^ push_constant(RET_ADDR_194)
// #24258
@RET_ADDR_194
// #24259
D=A
//^^ push_d_to_stack
// #24260
@SP
// #24261
A=M
// #24262
M=D
// #24263
@SP
// #24264
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_194)
//push return-address
// #24265
@LCL
// #24266
D=M
//^^ push_d_to_stack
// #24267
@SP
// #24268
A=M
// #24269
M=D
// #24270
@SP
// #24271
M=M+1
//vv push_d_to_stack
//push LCL
// #24272
@ARG
// #24273
D=M
//^^ push_d_to_stack
// #24274
@SP
// #24275
A=M
// #24276
M=D
// #24277
@SP
// #24278
M=M+1
//vv push_d_to_stack
//push ARG
// #24279
@THIS
// #24280
D=M
//^^ push_d_to_stack
// #24281
@SP
// #24282
A=M
// #24283
M=D
// #24284
@SP
// #24285
M=M+1
//vv push_d_to_stack
//push THIS
// #24286
@THAT
// #24287
D=M
//^^ push_d_to_stack
// #24288
@SP
// #24289
A=M
// #24290
M=D
// #24291
@SP
// #24292
M=M+1
//vv push_d_to_stack
//push THAT
// #24293
@SP
// #24294
D=M
// #24295
@ARG
// #24296
M=D
// #24297
@5
// #24298
D=A
// #24299
@ARG
// #24300
M=M-D // ARG = SP - args - 5
// #24301
@SP
// #24302
D=M
// #24303
@LCL
// #24304
M=D // LCL = SP
// #24305
@Output.println
// #24306
0;JMP
(RET_ADDR_194)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #24307
@SP
// #24308
M=M-1
// #24309
A=M
// #24310
D=M
//vv pop_stack_to_d
// #24311
@5
// #24312
M=D
//vv pop_to_loc{5)
//
//// goto IF_END0
// #24313
@Output.printChar$IF_END0
// #24314
0;JMP
//
//// label IF_FALSE0
(Output.printChar$IF_FALSE0)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #24315
@ARG
// #24316
D=M
// #24317
@0
// #24318
A=D+A
// #24319
D=M
//^^ push_d_to_stack
// #24320
@SP
// #24321
A=M
// #24322
M=D
// #24323
@SP
// #24324
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// call String.backSpace 0
//^^ push_constant(RET_ADDR_195)
// #24325
@RET_ADDR_195
// #24326
D=A
//^^ push_d_to_stack
// #24327
@SP
// #24328
A=M
// #24329
M=D
// #24330
@SP
// #24331
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_195)
//push return-address
// #24332
@LCL
// #24333
D=M
//^^ push_d_to_stack
// #24334
@SP
// #24335
A=M
// #24336
M=D
// #24337
@SP
// #24338
M=M+1
//vv push_d_to_stack
//push LCL
// #24339
@ARG
// #24340
D=M
//^^ push_d_to_stack
// #24341
@SP
// #24342
A=M
// #24343
M=D
// #24344
@SP
// #24345
M=M+1
//vv push_d_to_stack
//push ARG
// #24346
@THIS
// #24347
D=M
//^^ push_d_to_stack
// #24348
@SP
// #24349
A=M
// #24350
M=D
// #24351
@SP
// #24352
M=M+1
//vv push_d_to_stack
//push THIS
// #24353
@THAT
// #24354
D=M
//^^ push_d_to_stack
// #24355
@SP
// #24356
A=M
// #24357
M=D
// #24358
@SP
// #24359
M=M+1
//vv push_d_to_stack
//push THAT
// #24360
@SP
// #24361
D=M
// #24362
@ARG
// #24363
M=D
// #24364
@5
// #24365
D=A
// #24366
@ARG
// #24367
M=M-D // ARG = SP - args - 5
// #24368
@SP
// #24369
D=M
// #24370
@LCL
// #24371
M=D // LCL = SP
// #24372
@String.backSpace
// #24373
0;JMP
(RET_ADDR_195)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #24374
@SP
// #24375
M=M-1
// #24376
A=M
// #24377
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #24378
@R13
// #24379
M=D
//^^ pop_stack_to_d
// #24380
@SP
// #24381
M=M-1
// #24382
A=M
// #24383
D=M
//vv pop_stack_to_d
// #24384
@R13
// #24385
D=D-M
// #24386
@R13
// #24387
M=0
//vv arith_d_with_stack_top(D-M)
// #24388
@PUT_TRUE_196
// #24389
D;JEQ
// #24390
@R13
// #24391
M=0
// #24392
@CONT_196
// #24393
0;JMP
(PUT_TRUE_196)
// #24394
@R13
// #24395
M=-1
(CONT_196)
// #24396
@R13
// #24397
D=M
// #24398
@R13
// #24399
M=0
//^^ push_d_to_stack
// #24400
@SP
// #24401
A=M
// #24402
M=D
// #24403
@SP
// #24404
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// if-goto IF_TRUE1
//^^ pop_stack_to_d
// #24405
@SP
// #24406
M=M-1
// #24407
A=M
// #24408
D=M
//vv pop_stack_to_d
// #24409
@Output.printChar$IF_TRUE1
// #24410
D;JNE
//
//// goto IF_FALSE1
// #24411
@Output.printChar$IF_FALSE1
// #24412
0;JMP
//
//// label IF_TRUE1
(Output.printChar$IF_TRUE1)
//
//// call Output.backSpace 0
//^^ push_constant(RET_ADDR_197)
// #24413
@RET_ADDR_197
// #24414
D=A
//^^ push_d_to_stack
// #24415
@SP
// #24416
A=M
// #24417
M=D
// #24418
@SP
// #24419
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_197)
//push return-address
// #24420
@LCL
// #24421
D=M
//^^ push_d_to_stack
// #24422
@SP
// #24423
A=M
// #24424
M=D
// #24425
@SP
// #24426
M=M+1
//vv push_d_to_stack
//push LCL
// #24427
@ARG
// #24428
D=M
//^^ push_d_to_stack
// #24429
@SP
// #24430
A=M
// #24431
M=D
// #24432
@SP
// #24433
M=M+1
//vv push_d_to_stack
//push ARG
// #24434
@THIS
// #24435
D=M
//^^ push_d_to_stack
// #24436
@SP
// #24437
A=M
// #24438
M=D
// #24439
@SP
// #24440
M=M+1
//vv push_d_to_stack
//push THIS
// #24441
@THAT
// #24442
D=M
//^^ push_d_to_stack
// #24443
@SP
// #24444
A=M
// #24445
M=D
// #24446
@SP
// #24447
M=M+1
//vv push_d_to_stack
//push THAT
// #24448
@SP
// #24449
D=M
// #24450
@ARG
// #24451
M=D
// #24452
@5
// #24453
D=A
// #24454
@ARG
// #24455
M=M-D // ARG = SP - args - 5
// #24456
@SP
// #24457
D=M
// #24458
@LCL
// #24459
M=D // LCL = SP
// #24460
@Output.backSpace
// #24461
0;JMP
(RET_ADDR_197)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #24462
@SP
// #24463
M=M-1
// #24464
A=M
// #24465
D=M
//vv pop_stack_to_d
// #24466
@5
// #24467
M=D
//vv pop_to_loc{5)
//
//// goto IF_END1
// #24468
@Output.printChar$IF_END1
// #24469
0;JMP
//
//// label IF_FALSE1
(Output.printChar$IF_FALSE1)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #24470
@ARG
// #24471
D=M
// #24472
@0
// #24473
A=D+A
// #24474
D=M
//^^ push_d_to_stack
// #24475
@SP
// #24476
A=M
// #24477
M=D
// #24478
@SP
// #24479
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// call Output.drawChar 1
//^^ push_constant(RET_ADDR_198)
// #24480
@RET_ADDR_198
// #24481
D=A
//^^ push_d_to_stack
// #24482
@SP
// #24483
A=M
// #24484
M=D
// #24485
@SP
// #24486
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_198)
//push return-address
// #24487
@LCL
// #24488
D=M
//^^ push_d_to_stack
// #24489
@SP
// #24490
A=M
// #24491
M=D
// #24492
@SP
// #24493
M=M+1
//vv push_d_to_stack
//push LCL
// #24494
@ARG
// #24495
D=M
//^^ push_d_to_stack
// #24496
@SP
// #24497
A=M
// #24498
M=D
// #24499
@SP
// #24500
M=M+1
//vv push_d_to_stack
//push ARG
// #24501
@THIS
// #24502
D=M
//^^ push_d_to_stack
// #24503
@SP
// #24504
A=M
// #24505
M=D
// #24506
@SP
// #24507
M=M+1
//vv push_d_to_stack
//push THIS
// #24508
@THAT
// #24509
D=M
//^^ push_d_to_stack
// #24510
@SP
// #24511
A=M
// #24512
M=D
// #24513
@SP
// #24514
M=M+1
//vv push_d_to_stack
//push THAT
// #24515
@SP
// #24516
D=M
// #24517
@ARG
// #24518
M=D
// #24519
@6
// #24520
D=A
// #24521
@ARG
// #24522
M=M-D // ARG = SP - args - 5
// #24523
@SP
// #24524
D=M
// #24525
@LCL
// #24526
M=D // LCL = SP
// #24527
@Output.drawChar
// #24528
0;JMP
(RET_ADDR_198)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #24529
@SP
// #24530
M=M-1
// #24531
A=M
// #24532
D=M
//vv pop_stack_to_d
// #24533
@5
// #24534
M=D
//vv pop_to_loc{5)
//
//// push static 2
//^^ push_from_loc(Output.vm.2)
// #24535
@Output.vm.2
// #24536
D=M
//^^ push_d_to_stack
// #24537
@SP
// #24538
A=M
// #24539
M=D
// #24540
@SP
// #24541
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.2)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #24542
@SP
// #24543
M=M-1
// #24544
A=M
// #24545
D=M
//vv pop_stack_to_d
// #24546
D=!D
//^^ push_d_to_stack
// #24547
@SP
// #24548
A=M
// #24549
M=D
// #24550
@SP
// #24551
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// if-goto IF_TRUE2
//^^ pop_stack_to_d
// #24552
@SP
// #24553
M=M-1
// #24554
A=M
// #24555
D=M
//vv pop_stack_to_d
// #24556
@Output.printChar$IF_TRUE2
// #24557
D;JNE
//
//// goto IF_FALSE2
// #24558
@Output.printChar$IF_FALSE2
// #24559
0;JMP
//
//// label IF_TRUE2
(Output.printChar$IF_TRUE2)
//
//// push static 0
//^^ push_from_loc(Output.vm.0)
// #24560
@Output.vm.0
// #24561
D=M
//^^ push_d_to_stack
// #24562
@SP
// #24563
A=M
// #24564
M=D
// #24565
@SP
// #24566
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.0)
//
//// push constant 1
//^^ push_constant(1)
// #24567
@1
// #24568
D=A
//^^ push_d_to_stack
// #24569
@SP
// #24570
A=M
// #24571
M=D
// #24572
@SP
// #24573
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #24574
@SP
// #24575
M=M-1
// #24576
A=M
// #24577
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #24578
@R13
// #24579
M=D
//^^ pop_stack_to_d
// #24580
@SP
// #24581
M=M-1
// #24582
A=M
// #24583
D=M
//vv pop_stack_to_d
// #24584
@R13
// #24585
D=D+M
// #24586
@R13
// #24587
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #24588
@SP
// #24589
A=M
// #24590
M=D
// #24591
@SP
// #24592
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop static 0
//^^ pop_to_loc{Output.vm.0)
//^^ pop_stack_to_d
// #24593
@SP
// #24594
M=M-1
// #24595
A=M
// #24596
D=M
//vv pop_stack_to_d
// #24597
@Output.vm.0
// #24598
M=D
//vv pop_to_loc{Output.vm.0)
//
//// push static 1
//^^ push_from_loc(Output.vm.1)
// #24599
@Output.vm.1
// #24600
D=M
//^^ push_d_to_stack
// #24601
@SP
// #24602
A=M
// #24603
M=D
// #24604
@SP
// #24605
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.1)
//
//// push constant 1
//^^ push_constant(1)
// #24606
@1
// #24607
D=A
//^^ push_d_to_stack
// #24608
@SP
// #24609
A=M
// #24610
M=D
// #24611
@SP
// #24612
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #24613
@SP
// #24614
M=M-1
// #24615
A=M
// #24616
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #24617
@R13
// #24618
M=D
//^^ pop_stack_to_d
// #24619
@SP
// #24620
M=M-1
// #24621
A=M
// #24622
D=M
//vv pop_stack_to_d
// #24623
@R13
// #24624
D=D+M
// #24625
@R13
// #24626
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #24627
@SP
// #24628
A=M
// #24629
M=D
// #24630
@SP
// #24631
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop static 1
//^^ pop_to_loc{Output.vm.1)
//^^ pop_stack_to_d
// #24632
@SP
// #24633
M=M-1
// #24634
A=M
// #24635
D=M
//vv pop_stack_to_d
// #24636
@Output.vm.1
// #24637
M=D
//vv pop_to_loc{Output.vm.1)
//
//// label IF_FALSE2
(Output.printChar$IF_FALSE2)
//
//// push static 0
//^^ push_from_loc(Output.vm.0)
// #24638
@Output.vm.0
// #24639
D=M
//^^ push_d_to_stack
// #24640
@SP
// #24641
A=M
// #24642
M=D
// #24643
@SP
// #24644
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.0)
//
//// push constant 32
//^^ push_constant(32)
// #24645
@32
// #24646
D=A
//^^ push_d_to_stack
// #24647
@SP
// #24648
A=M
// #24649
M=D
// #24650
@SP
// #24651
M=M+1
//vv push_d_to_stack
//vv push_constant(32)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #24652
@SP
// #24653
M=M-1
// #24654
A=M
// #24655
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #24656
@R13
// #24657
M=D
//^^ pop_stack_to_d
// #24658
@SP
// #24659
M=M-1
// #24660
A=M
// #24661
D=M
//vv pop_stack_to_d
// #24662
@R13
// #24663
D=D-M
// #24664
@R13
// #24665
M=0
//vv arith_d_with_stack_top(D-M)
// #24666
@PUT_TRUE_199
// #24667
D;JEQ
// #24668
@R13
// #24669
M=0
// #24670
@CONT_199
// #24671
0;JMP
(PUT_TRUE_199)
// #24672
@R13
// #24673
M=-1
(CONT_199)
// #24674
@R13
// #24675
D=M
// #24676
@R13
// #24677
M=0
//^^ push_d_to_stack
// #24678
@SP
// #24679
A=M
// #24680
M=D
// #24681
@SP
// #24682
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// if-goto IF_TRUE3
//^^ pop_stack_to_d
// #24683
@SP
// #24684
M=M-1
// #24685
A=M
// #24686
D=M
//vv pop_stack_to_d
// #24687
@Output.printChar$IF_TRUE3
// #24688
D;JNE
//
//// goto IF_FALSE3
// #24689
@Output.printChar$IF_FALSE3
// #24690
0;JMP
//
//// label IF_TRUE3
(Output.printChar$IF_TRUE3)
//
//// call Output.println 0
//^^ push_constant(RET_ADDR_200)
// #24691
@RET_ADDR_200
// #24692
D=A
//^^ push_d_to_stack
// #24693
@SP
// #24694
A=M
// #24695
M=D
// #24696
@SP
// #24697
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_200)
//push return-address
// #24698
@LCL
// #24699
D=M
//^^ push_d_to_stack
// #24700
@SP
// #24701
A=M
// #24702
M=D
// #24703
@SP
// #24704
M=M+1
//vv push_d_to_stack
//push LCL
// #24705
@ARG
// #24706
D=M
//^^ push_d_to_stack
// #24707
@SP
// #24708
A=M
// #24709
M=D
// #24710
@SP
// #24711
M=M+1
//vv push_d_to_stack
//push ARG
// #24712
@THIS
// #24713
D=M
//^^ push_d_to_stack
// #24714
@SP
// #24715
A=M
// #24716
M=D
// #24717
@SP
// #24718
M=M+1
//vv push_d_to_stack
//push THIS
// #24719
@THAT
// #24720
D=M
//^^ push_d_to_stack
// #24721
@SP
// #24722
A=M
// #24723
M=D
// #24724
@SP
// #24725
M=M+1
//vv push_d_to_stack
//push THAT
// #24726
@SP
// #24727
D=M
// #24728
@ARG
// #24729
M=D
// #24730
@5
// #24731
D=A
// #24732
@ARG
// #24733
M=M-D // ARG = SP - args - 5
// #24734
@SP
// #24735
D=M
// #24736
@LCL
// #24737
M=D // LCL = SP
// #24738
@Output.println
// #24739
0;JMP
(RET_ADDR_200)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #24740
@SP
// #24741
M=M-1
// #24742
A=M
// #24743
D=M
//vv pop_stack_to_d
// #24744
@5
// #24745
M=D
//vv pop_to_loc{5)
//
//// goto IF_END3
// #24746
@Output.printChar$IF_END3
// #24747
0;JMP
//
//// label IF_FALSE3
(Output.printChar$IF_FALSE3)
//
//// push static 2
//^^ push_from_loc(Output.vm.2)
// #24748
@Output.vm.2
// #24749
D=M
//^^ push_d_to_stack
// #24750
@SP
// #24751
A=M
// #24752
M=D
// #24753
@SP
// #24754
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.2)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #24755
@SP
// #24756
M=M-1
// #24757
A=M
// #24758
D=M
//vv pop_stack_to_d
// #24759
D=!D
//^^ push_d_to_stack
// #24760
@SP
// #24761
A=M
// #24762
M=D
// #24763
@SP
// #24764
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// pop static 2
//^^ pop_to_loc{Output.vm.2)
//^^ pop_stack_to_d
// #24765
@SP
// #24766
M=M-1
// #24767
A=M
// #24768
D=M
//vv pop_stack_to_d
// #24769
@Output.vm.2
// #24770
M=D
//vv pop_to_loc{Output.vm.2)
//
//// label IF_END3
(Output.printChar$IF_END3)
//
//// label IF_END1
(Output.printChar$IF_END1)
//
//// label IF_END0
(Output.printChar$IF_END0)
//
//// push constant 0
//^^ push_constant(0)
// #24771
@0
// #24772
D=A
//^^ push_d_to_stack
// #24773
@SP
// #24774
A=M
// #24775
M=D
// #24776
@SP
// #24777
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #24778
@LCL
// #24779
D=M
// #24780
@R14
// #24781
M=D //R14=LCL
// #24782
@5
// #24783
A=D-A
// #24784
D=M
// #24785
@R15
// #24786
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #24787
@SP
// #24788
M=M-1
// #24789
A=M
// #24790
D=M
//vv pop_stack_to_d
// #24791
@ARG
// #24792
A=M
// #24793
M=D //*ARG = pop()
// #24794
@ARG
// #24795
D=M
// #24796
@SP
// #24797
M=D+1 //SP=ARG+1
// #24798
@R14
// #24799
AM=M-1
// #24800
D=M
// #24801
@THAT
// #24802
M=D //THAT = *(--R14)
// #24803
@R14
// #24804
AM=M-1
// #24805
D=M
// #24806
@THIS
// #24807
M=D //THIS = *(--R14)
// #24808
@R14
// #24809
AM=M-1
// #24810
D=M
// #24811
@ARG
// #24812
M=D //ARG = *(--R14)
// #24813
@R14
// #24814
AM=M-1
// #24815
D=M
// #24816
@LCL
// #24817
M=D //LCL = *(--R14)
// #24818
@R15
// #24819
A=M
// #24820
0;JMP //goto *R15
//
//// function Output.printString 2
(Output.printString)
// #24821
D=0
//^^ push_d_to_stack
// #24822
@SP
// #24823
A=M
// #24824
M=D
// #24825
@SP
// #24826
M=M+1
//vv push_d_to_stack
// #24827
D=0
//^^ push_d_to_stack
// #24828
@SP
// #24829
A=M
// #24830
M=D
// #24831
@SP
// #24832
M=M+1
//vv push_d_to_stack
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #24833
@ARG
// #24834
D=M
// #24835
@0
// #24836
A=D+A
// #24837
D=M
//^^ push_d_to_stack
// #24838
@SP
// #24839
A=M
// #24840
M=D
// #24841
@SP
// #24842
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// call String.length 1
//^^ push_constant(RET_ADDR_201)
// #24843
@RET_ADDR_201
// #24844
D=A
//^^ push_d_to_stack
// #24845
@SP
// #24846
A=M
// #24847
M=D
// #24848
@SP
// #24849
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_201)
//push return-address
// #24850
@LCL
// #24851
D=M
//^^ push_d_to_stack
// #24852
@SP
// #24853
A=M
// #24854
M=D
// #24855
@SP
// #24856
M=M+1
//vv push_d_to_stack
//push LCL
// #24857
@ARG
// #24858
D=M
//^^ push_d_to_stack
// #24859
@SP
// #24860
A=M
// #24861
M=D
// #24862
@SP
// #24863
M=M+1
//vv push_d_to_stack
//push ARG
// #24864
@THIS
// #24865
D=M
//^^ push_d_to_stack
// #24866
@SP
// #24867
A=M
// #24868
M=D
// #24869
@SP
// #24870
M=M+1
//vv push_d_to_stack
//push THIS
// #24871
@THAT
// #24872
D=M
//^^ push_d_to_stack
// #24873
@SP
// #24874
A=M
// #24875
M=D
// #24876
@SP
// #24877
M=M+1
//vv push_d_to_stack
//push THAT
// #24878
@SP
// #24879
D=M
// #24880
@ARG
// #24881
M=D
// #24882
@6
// #24883
D=A
// #24884
@ARG
// #24885
M=M-D // ARG = SP - args - 5
// #24886
@SP
// #24887
D=M
// #24888
@LCL
// #24889
M=D // LCL = SP
// #24890
@String.length
// #24891
0;JMP
(RET_ADDR_201)
//
//// pop local 1
//^^ pop_to_ram(LCL, 1)
// #24892
@LCL
// #24893
D=M
// #24894
@1
// #24895
D=D+A
// #24896
@R13
// #24897
M=D
//^^ pop_stack_to_d
// #24898
@SP
// #24899
M=M-1
// #24900
A=M
// #24901
D=M
//vv pop_stack_to_d
// #24902
@R13
// #24903
A=M
// #24904
M=D
// #24905
@R13
// #24906
M=0
//vv pop_to_ram(LCL, 1)
//
//// label WHILE_EXP0
(Output.printString$WHILE_EXP0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #24907
@LCL
// #24908
D=M
// #24909
@0
// #24910
A=D+A
// #24911
D=M
//^^ push_d_to_stack
// #24912
@SP
// #24913
A=M
// #24914
M=D
// #24915
@SP
// #24916
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push local 1
//^^ push_from_ram(LCL, 1)
// #24917
@LCL
// #24918
D=M
// #24919
@1
// #24920
A=D+A
// #24921
D=M
//^^ push_d_to_stack
// #24922
@SP
// #24923
A=M
// #24924
M=D
// #24925
@SP
// #24926
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 1)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #24927
@SP
// #24928
M=M-1
// #24929
A=M
// #24930
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #24931
@R13
// #24932
M=D
//^^ pop_stack_to_d
// #24933
@SP
// #24934
M=M-1
// #24935
A=M
// #24936
D=M
//vv pop_stack_to_d
// #24937
@R13
// #24938
D=D-M
// #24939
@R13
// #24940
M=0
//vv arith_d_with_stack_top(D-M)
// #24941
@PUT_TRUE_202
// #24942
D;JLT
// #24943
@R13
// #24944
M=0
// #24945
@CONT_202
// #24946
0;JMP
(PUT_TRUE_202)
// #24947
@R13
// #24948
M=-1
(CONT_202)
// #24949
@R13
// #24950
D=M
// #24951
@R13
// #24952
M=0
//^^ push_d_to_stack
// #24953
@SP
// #24954
A=M
// #24955
M=D
// #24956
@SP
// #24957
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #24958
@SP
// #24959
M=M-1
// #24960
A=M
// #24961
D=M
//vv pop_stack_to_d
// #24962
D=!D
//^^ push_d_to_stack
// #24963
@SP
// #24964
A=M
// #24965
M=D
// #24966
@SP
// #24967
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// if-goto WHILE_END0
//^^ pop_stack_to_d
// #24968
@SP
// #24969
M=M-1
// #24970
A=M
// #24971
D=M
//vv pop_stack_to_d
// #24972
@Output.printString$WHILE_END0
// #24973
D;JNE
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #24974
@ARG
// #24975
D=M
// #24976
@0
// #24977
A=D+A
// #24978
D=M
//^^ push_d_to_stack
// #24979
@SP
// #24980
A=M
// #24981
M=D
// #24982
@SP
// #24983
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #24984
@LCL
// #24985
D=M
// #24986
@0
// #24987
A=D+A
// #24988
D=M
//^^ push_d_to_stack
// #24989
@SP
// #24990
A=M
// #24991
M=D
// #24992
@SP
// #24993
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// call String.charAt 2
//^^ push_constant(RET_ADDR_203)
// #24994
@RET_ADDR_203
// #24995
D=A
//^^ push_d_to_stack
// #24996
@SP
// #24997
A=M
// #24998
M=D
// #24999
@SP
// #25000
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_203)
//push return-address
// #25001
@LCL
// #25002
D=M
//^^ push_d_to_stack
// #25003
@SP
// #25004
A=M
// #25005
M=D
// #25006
@SP
// #25007
M=M+1
//vv push_d_to_stack
//push LCL
// #25008
@ARG
// #25009
D=M
//^^ push_d_to_stack
// #25010
@SP
// #25011
A=M
// #25012
M=D
// #25013
@SP
// #25014
M=M+1
//vv push_d_to_stack
//push ARG
// #25015
@THIS
// #25016
D=M
//^^ push_d_to_stack
// #25017
@SP
// #25018
A=M
// #25019
M=D
// #25020
@SP
// #25021
M=M+1
//vv push_d_to_stack
//push THIS
// #25022
@THAT
// #25023
D=M
//^^ push_d_to_stack
// #25024
@SP
// #25025
A=M
// #25026
M=D
// #25027
@SP
// #25028
M=M+1
//vv push_d_to_stack
//push THAT
// #25029
@SP
// #25030
D=M
// #25031
@ARG
// #25032
M=D
// #25033
@7
// #25034
D=A
// #25035
@ARG
// #25036
M=M-D // ARG = SP - args - 5
// #25037
@SP
// #25038
D=M
// #25039
@LCL
// #25040
M=D // LCL = SP
// #25041
@String.charAt
// #25042
0;JMP
(RET_ADDR_203)
//
//// call Output.printChar 1
//^^ push_constant(RET_ADDR_204)
// #25043
@RET_ADDR_204
// #25044
D=A
//^^ push_d_to_stack
// #25045
@SP
// #25046
A=M
// #25047
M=D
// #25048
@SP
// #25049
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_204)
//push return-address
// #25050
@LCL
// #25051
D=M
//^^ push_d_to_stack
// #25052
@SP
// #25053
A=M
// #25054
M=D
// #25055
@SP
// #25056
M=M+1
//vv push_d_to_stack
//push LCL
// #25057
@ARG
// #25058
D=M
//^^ push_d_to_stack
// #25059
@SP
// #25060
A=M
// #25061
M=D
// #25062
@SP
// #25063
M=M+1
//vv push_d_to_stack
//push ARG
// #25064
@THIS
// #25065
D=M
//^^ push_d_to_stack
// #25066
@SP
// #25067
A=M
// #25068
M=D
// #25069
@SP
// #25070
M=M+1
//vv push_d_to_stack
//push THIS
// #25071
@THAT
// #25072
D=M
//^^ push_d_to_stack
// #25073
@SP
// #25074
A=M
// #25075
M=D
// #25076
@SP
// #25077
M=M+1
//vv push_d_to_stack
//push THAT
// #25078
@SP
// #25079
D=M
// #25080
@ARG
// #25081
M=D
// #25082
@6
// #25083
D=A
// #25084
@ARG
// #25085
M=M-D // ARG = SP - args - 5
// #25086
@SP
// #25087
D=M
// #25088
@LCL
// #25089
M=D // LCL = SP
// #25090
@Output.printChar
// #25091
0;JMP
(RET_ADDR_204)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #25092
@SP
// #25093
M=M-1
// #25094
A=M
// #25095
D=M
//vv pop_stack_to_d
// #25096
@5
// #25097
M=D
//vv pop_to_loc{5)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #25098
@LCL
// #25099
D=M
// #25100
@0
// #25101
A=D+A
// #25102
D=M
//^^ push_d_to_stack
// #25103
@SP
// #25104
A=M
// #25105
M=D
// #25106
@SP
// #25107
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 1
//^^ push_constant(1)
// #25108
@1
// #25109
D=A
//^^ push_d_to_stack
// #25110
@SP
// #25111
A=M
// #25112
M=D
// #25113
@SP
// #25114
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #25115
@SP
// #25116
M=M-1
// #25117
A=M
// #25118
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #25119
@R13
// #25120
M=D
//^^ pop_stack_to_d
// #25121
@SP
// #25122
M=M-1
// #25123
A=M
// #25124
D=M
//vv pop_stack_to_d
// #25125
@R13
// #25126
D=D+M
// #25127
@R13
// #25128
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #25129
@SP
// #25130
A=M
// #25131
M=D
// #25132
@SP
// #25133
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
// #25134
@LCL
// #25135
D=M
// #25136
@0
// #25137
D=D+A
// #25138
@R13
// #25139
M=D
//^^ pop_stack_to_d
// #25140
@SP
// #25141
M=M-1
// #25142
A=M
// #25143
D=M
//vv pop_stack_to_d
// #25144
@R13
// #25145
A=M
// #25146
M=D
// #25147
@R13
// #25148
M=0
//vv pop_to_ram(LCL, 0)
//
//// goto WHILE_EXP0
// #25149
@Output.printString$WHILE_EXP0
// #25150
0;JMP
//
//// label WHILE_END0
(Output.printString$WHILE_END0)
//
//// push constant 0
//^^ push_constant(0)
// #25151
@0
// #25152
D=A
//^^ push_d_to_stack
// #25153
@SP
// #25154
A=M
// #25155
M=D
// #25156
@SP
// #25157
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #25158
@LCL
// #25159
D=M
// #25160
@R14
// #25161
M=D //R14=LCL
// #25162
@5
// #25163
A=D-A
// #25164
D=M
// #25165
@R15
// #25166
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #25167
@SP
// #25168
M=M-1
// #25169
A=M
// #25170
D=M
//vv pop_stack_to_d
// #25171
@ARG
// #25172
A=M
// #25173
M=D //*ARG = pop()
// #25174
@ARG
// #25175
D=M
// #25176
@SP
// #25177
M=D+1 //SP=ARG+1
// #25178
@R14
// #25179
AM=M-1
// #25180
D=M
// #25181
@THAT
// #25182
M=D //THAT = *(--R14)
// #25183
@R14
// #25184
AM=M-1
// #25185
D=M
// #25186
@THIS
// #25187
M=D //THIS = *(--R14)
// #25188
@R14
// #25189
AM=M-1
// #25190
D=M
// #25191
@ARG
// #25192
M=D //ARG = *(--R14)
// #25193
@R14
// #25194
AM=M-1
// #25195
D=M
// #25196
@LCL
// #25197
M=D //LCL = *(--R14)
// #25198
@R15
// #25199
A=M
// #25200
0;JMP //goto *R15
//
//// function Output.printInt 0
(Output.printInt)
//
//// push static 3
//^^ push_from_loc(Output.vm.3)
// #25201
@Output.vm.3
// #25202
D=M
//^^ push_d_to_stack
// #25203
@SP
// #25204
A=M
// #25205
M=D
// #25206
@SP
// #25207
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.3)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #25208
@ARG
// #25209
D=M
// #25210
@0
// #25211
A=D+A
// #25212
D=M
//^^ push_d_to_stack
// #25213
@SP
// #25214
A=M
// #25215
M=D
// #25216
@SP
// #25217
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// call String.setInt 2
//^^ push_constant(RET_ADDR_205)
// #25218
@RET_ADDR_205
// #25219
D=A
//^^ push_d_to_stack
// #25220
@SP
// #25221
A=M
// #25222
M=D
// #25223
@SP
// #25224
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_205)
//push return-address
// #25225
@LCL
// #25226
D=M
//^^ push_d_to_stack
// #25227
@SP
// #25228
A=M
// #25229
M=D
// #25230
@SP
// #25231
M=M+1
//vv push_d_to_stack
//push LCL
// #25232
@ARG
// #25233
D=M
//^^ push_d_to_stack
// #25234
@SP
// #25235
A=M
// #25236
M=D
// #25237
@SP
// #25238
M=M+1
//vv push_d_to_stack
//push ARG
// #25239
@THIS
// #25240
D=M
//^^ push_d_to_stack
// #25241
@SP
// #25242
A=M
// #25243
M=D
// #25244
@SP
// #25245
M=M+1
//vv push_d_to_stack
//push THIS
// #25246
@THAT
// #25247
D=M
//^^ push_d_to_stack
// #25248
@SP
// #25249
A=M
// #25250
M=D
// #25251
@SP
// #25252
M=M+1
//vv push_d_to_stack
//push THAT
// #25253
@SP
// #25254
D=M
// #25255
@ARG
// #25256
M=D
// #25257
@7
// #25258
D=A
// #25259
@ARG
// #25260
M=M-D // ARG = SP - args - 5
// #25261
@SP
// #25262
D=M
// #25263
@LCL
// #25264
M=D // LCL = SP
// #25265
@String.setInt
// #25266
0;JMP
(RET_ADDR_205)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #25267
@SP
// #25268
M=M-1
// #25269
A=M
// #25270
D=M
//vv pop_stack_to_d
// #25271
@5
// #25272
M=D
//vv pop_to_loc{5)
//
//// push static 3
//^^ push_from_loc(Output.vm.3)
// #25273
@Output.vm.3
// #25274
D=M
//^^ push_d_to_stack
// #25275
@SP
// #25276
A=M
// #25277
M=D
// #25278
@SP
// #25279
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.3)
//
//// call Output.printString 1
//^^ push_constant(RET_ADDR_206)
// #25280
@RET_ADDR_206
// #25281
D=A
//^^ push_d_to_stack
// #25282
@SP
// #25283
A=M
// #25284
M=D
// #25285
@SP
// #25286
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_206)
//push return-address
// #25287
@LCL
// #25288
D=M
//^^ push_d_to_stack
// #25289
@SP
// #25290
A=M
// #25291
M=D
// #25292
@SP
// #25293
M=M+1
//vv push_d_to_stack
//push LCL
// #25294
@ARG
// #25295
D=M
//^^ push_d_to_stack
// #25296
@SP
// #25297
A=M
// #25298
M=D
// #25299
@SP
// #25300
M=M+1
//vv push_d_to_stack
//push ARG
// #25301
@THIS
// #25302
D=M
//^^ push_d_to_stack
// #25303
@SP
// #25304
A=M
// #25305
M=D
// #25306
@SP
// #25307
M=M+1
//vv push_d_to_stack
//push THIS
// #25308
@THAT
// #25309
D=M
//^^ push_d_to_stack
// #25310
@SP
// #25311
A=M
// #25312
M=D
// #25313
@SP
// #25314
M=M+1
//vv push_d_to_stack
//push THAT
// #25315
@SP
// #25316
D=M
// #25317
@ARG
// #25318
M=D
// #25319
@6
// #25320
D=A
// #25321
@ARG
// #25322
M=M-D // ARG = SP - args - 5
// #25323
@SP
// #25324
D=M
// #25325
@LCL
// #25326
M=D // LCL = SP
// #25327
@Output.printString
// #25328
0;JMP
(RET_ADDR_206)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #25329
@SP
// #25330
M=M-1
// #25331
A=M
// #25332
D=M
//vv pop_stack_to_d
// #25333
@5
// #25334
M=D
//vv pop_to_loc{5)
//
//// push constant 0
//^^ push_constant(0)
// #25335
@0
// #25336
D=A
//^^ push_d_to_stack
// #25337
@SP
// #25338
A=M
// #25339
M=D
// #25340
@SP
// #25341
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #25342
@LCL
// #25343
D=M
// #25344
@R14
// #25345
M=D //R14=LCL
// #25346
@5
// #25347
A=D-A
// #25348
D=M
// #25349
@R15
// #25350
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #25351
@SP
// #25352
M=M-1
// #25353
A=M
// #25354
D=M
//vv pop_stack_to_d
// #25355
@ARG
// #25356
A=M
// #25357
M=D //*ARG = pop()
// #25358
@ARG
// #25359
D=M
// #25360
@SP
// #25361
M=D+1 //SP=ARG+1
// #25362
@R14
// #25363
AM=M-1
// #25364
D=M
// #25365
@THAT
// #25366
M=D //THAT = *(--R14)
// #25367
@R14
// #25368
AM=M-1
// #25369
D=M
// #25370
@THIS
// #25371
M=D //THIS = *(--R14)
// #25372
@R14
// #25373
AM=M-1
// #25374
D=M
// #25375
@ARG
// #25376
M=D //ARG = *(--R14)
// #25377
@R14
// #25378
AM=M-1
// #25379
D=M
// #25380
@LCL
// #25381
M=D //LCL = *(--R14)
// #25382
@R15
// #25383
A=M
// #25384
0;JMP //goto *R15
//
//// function Output.println 0
(Output.println)
//
//// push static 1
//^^ push_from_loc(Output.vm.1)
// #25385
@Output.vm.1
// #25386
D=M
//^^ push_d_to_stack
// #25387
@SP
// #25388
A=M
// #25389
M=D
// #25390
@SP
// #25391
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.1)
//
//// push constant 352
//^^ push_constant(352)
// #25392
@352
// #25393
D=A
//^^ push_d_to_stack
// #25394
@SP
// #25395
A=M
// #25396
M=D
// #25397
@SP
// #25398
M=M+1
//vv push_d_to_stack
//vv push_constant(352)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #25399
@SP
// #25400
M=M-1
// #25401
A=M
// #25402
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #25403
@R13
// #25404
M=D
//^^ pop_stack_to_d
// #25405
@SP
// #25406
M=M-1
// #25407
A=M
// #25408
D=M
//vv pop_stack_to_d
// #25409
@R13
// #25410
D=D+M
// #25411
@R13
// #25412
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #25413
@SP
// #25414
A=M
// #25415
M=D
// #25416
@SP
// #25417
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push static 0
//^^ push_from_loc(Output.vm.0)
// #25418
@Output.vm.0
// #25419
D=M
//^^ push_d_to_stack
// #25420
@SP
// #25421
A=M
// #25422
M=D
// #25423
@SP
// #25424
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.0)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #25425
@SP
// #25426
M=M-1
// #25427
A=M
// #25428
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #25429
@R13
// #25430
M=D
//^^ pop_stack_to_d
// #25431
@SP
// #25432
M=M-1
// #25433
A=M
// #25434
D=M
//vv pop_stack_to_d
// #25435
@R13
// #25436
D=D-M
// #25437
@R13
// #25438
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #25439
@SP
// #25440
A=M
// #25441
M=D
// #25442
@SP
// #25443
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// pop static 1
//^^ pop_to_loc{Output.vm.1)
//^^ pop_stack_to_d
// #25444
@SP
// #25445
M=M-1
// #25446
A=M
// #25447
D=M
//vv pop_stack_to_d
// #25448
@Output.vm.1
// #25449
M=D
//vv pop_to_loc{Output.vm.1)
//
//// push constant 0
//^^ push_constant(0)
// #25450
@0
// #25451
D=A
//^^ push_d_to_stack
// #25452
@SP
// #25453
A=M
// #25454
M=D
// #25455
@SP
// #25456
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// pop static 0
//^^ pop_to_loc{Output.vm.0)
//^^ pop_stack_to_d
// #25457
@SP
// #25458
M=M-1
// #25459
A=M
// #25460
D=M
//vv pop_stack_to_d
// #25461
@Output.vm.0
// #25462
M=D
//vv pop_to_loc{Output.vm.0)
//
//// push constant 0
//^^ push_constant(0)
// #25463
@0
// #25464
D=A
//^^ push_d_to_stack
// #25465
@SP
// #25466
A=M
// #25467
M=D
// #25468
@SP
// #25469
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #25470
@SP
// #25471
M=M-1
// #25472
A=M
// #25473
D=M
//vv pop_stack_to_d
// #25474
D=!D
//^^ push_d_to_stack
// #25475
@SP
// #25476
A=M
// #25477
M=D
// #25478
@SP
// #25479
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// pop static 2
//^^ pop_to_loc{Output.vm.2)
//^^ pop_stack_to_d
// #25480
@SP
// #25481
M=M-1
// #25482
A=M
// #25483
D=M
//vv pop_stack_to_d
// #25484
@Output.vm.2
// #25485
M=D
//vv pop_to_loc{Output.vm.2)
//
//// push static 1
//^^ push_from_loc(Output.vm.1)
// #25486
@Output.vm.1
// #25487
D=M
//^^ push_d_to_stack
// #25488
@SP
// #25489
A=M
// #25490
M=D
// #25491
@SP
// #25492
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.1)
//
//// push constant 8128
//^^ push_constant(8128)
// #25493
@8128
// #25494
D=A
//^^ push_d_to_stack
// #25495
@SP
// #25496
A=M
// #25497
M=D
// #25498
@SP
// #25499
M=M+1
//vv push_d_to_stack
//vv push_constant(8128)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #25500
@SP
// #25501
M=M-1
// #25502
A=M
// #25503
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #25504
@R13
// #25505
M=D
//^^ pop_stack_to_d
// #25506
@SP
// #25507
M=M-1
// #25508
A=M
// #25509
D=M
//vv pop_stack_to_d
// #25510
@R13
// #25511
D=D-M
// #25512
@R13
// #25513
M=0
//vv arith_d_with_stack_top(D-M)
// #25514
@PUT_TRUE_207
// #25515
D;JEQ
// #25516
@R13
// #25517
M=0
// #25518
@CONT_207
// #25519
0;JMP
(PUT_TRUE_207)
// #25520
@R13
// #25521
M=-1
(CONT_207)
// #25522
@R13
// #25523
D=M
// #25524
@R13
// #25525
M=0
//^^ push_d_to_stack
// #25526
@SP
// #25527
A=M
// #25528
M=D
// #25529
@SP
// #25530
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// if-goto IF_TRUE0
//^^ pop_stack_to_d
// #25531
@SP
// #25532
M=M-1
// #25533
A=M
// #25534
D=M
//vv pop_stack_to_d
// #25535
@Output.println$IF_TRUE0
// #25536
D;JNE
//
//// goto IF_FALSE0
// #25537
@Output.println$IF_FALSE0
// #25538
0;JMP
//
//// label IF_TRUE0
(Output.println$IF_TRUE0)
//
//// push constant 32
//^^ push_constant(32)
// #25539
@32
// #25540
D=A
//^^ push_d_to_stack
// #25541
@SP
// #25542
A=M
// #25543
M=D
// #25544
@SP
// #25545
M=M+1
//vv push_d_to_stack
//vv push_constant(32)
//
//// pop static 1
//^^ pop_to_loc{Output.vm.1)
//^^ pop_stack_to_d
// #25546
@SP
// #25547
M=M-1
// #25548
A=M
// #25549
D=M
//vv pop_stack_to_d
// #25550
@Output.vm.1
// #25551
M=D
//vv pop_to_loc{Output.vm.1)
//
//// label IF_FALSE0
(Output.println$IF_FALSE0)
//
//// push constant 0
//^^ push_constant(0)
// #25552
@0
// #25553
D=A
//^^ push_d_to_stack
// #25554
@SP
// #25555
A=M
// #25556
M=D
// #25557
@SP
// #25558
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #25559
@LCL
// #25560
D=M
// #25561
@R14
// #25562
M=D //R14=LCL
// #25563
@5
// #25564
A=D-A
// #25565
D=M
// #25566
@R15
// #25567
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #25568
@SP
// #25569
M=M-1
// #25570
A=M
// #25571
D=M
//vv pop_stack_to_d
// #25572
@ARG
// #25573
A=M
// #25574
M=D //*ARG = pop()
// #25575
@ARG
// #25576
D=M
// #25577
@SP
// #25578
M=D+1 //SP=ARG+1
// #25579
@R14
// #25580
AM=M-1
// #25581
D=M
// #25582
@THAT
// #25583
M=D //THAT = *(--R14)
// #25584
@R14
// #25585
AM=M-1
// #25586
D=M
// #25587
@THIS
// #25588
M=D //THIS = *(--R14)
// #25589
@R14
// #25590
AM=M-1
// #25591
D=M
// #25592
@ARG
// #25593
M=D //ARG = *(--R14)
// #25594
@R14
// #25595
AM=M-1
// #25596
D=M
// #25597
@LCL
// #25598
M=D //LCL = *(--R14)
// #25599
@R15
// #25600
A=M
// #25601
0;JMP //goto *R15
//
//// function Output.backSpace 0
(Output.backSpace)
//
//// push static 2
//^^ push_from_loc(Output.vm.2)
// #25602
@Output.vm.2
// #25603
D=M
//^^ push_d_to_stack
// #25604
@SP
// #25605
A=M
// #25606
M=D
// #25607
@SP
// #25608
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.2)
//
//// if-goto IF_TRUE0
//^^ pop_stack_to_d
// #25609
@SP
// #25610
M=M-1
// #25611
A=M
// #25612
D=M
//vv pop_stack_to_d
// #25613
@Output.backSpace$IF_TRUE0
// #25614
D;JNE
//
//// goto IF_FALSE0
// #25615
@Output.backSpace$IF_FALSE0
// #25616
0;JMP
//
//// label IF_TRUE0
(Output.backSpace$IF_TRUE0)
//
//// push static 0
//^^ push_from_loc(Output.vm.0)
// #25617
@Output.vm.0
// #25618
D=M
//^^ push_d_to_stack
// #25619
@SP
// #25620
A=M
// #25621
M=D
// #25622
@SP
// #25623
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.0)
//
//// push constant 0
//^^ push_constant(0)
// #25624
@0
// #25625
D=A
//^^ push_d_to_stack
// #25626
@SP
// #25627
A=M
// #25628
M=D
// #25629
@SP
// #25630
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// gt
//^^ arith_cmp_op(JGT)
//^^ pop_stack_to_d
// #25631
@SP
// #25632
M=M-1
// #25633
A=M
// #25634
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #25635
@R13
// #25636
M=D
//^^ pop_stack_to_d
// #25637
@SP
// #25638
M=M-1
// #25639
A=M
// #25640
D=M
//vv pop_stack_to_d
// #25641
@R13
// #25642
D=D-M
// #25643
@R13
// #25644
M=0
//vv arith_d_with_stack_top(D-M)
// #25645
@PUT_TRUE_208
// #25646
D;JGT
// #25647
@R13
// #25648
M=0
// #25649
@CONT_208
// #25650
0;JMP
(PUT_TRUE_208)
// #25651
@R13
// #25652
M=-1
(CONT_208)
// #25653
@R13
// #25654
D=M
// #25655
@R13
// #25656
M=0
//^^ push_d_to_stack
// #25657
@SP
// #25658
A=M
// #25659
M=D
// #25660
@SP
// #25661
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JGT)
//
//// if-goto IF_TRUE1
//^^ pop_stack_to_d
// #25662
@SP
// #25663
M=M-1
// #25664
A=M
// #25665
D=M
//vv pop_stack_to_d
// #25666
@Output.backSpace$IF_TRUE1
// #25667
D;JNE
//
//// goto IF_FALSE1
// #25668
@Output.backSpace$IF_FALSE1
// #25669
0;JMP
//
//// label IF_TRUE1
(Output.backSpace$IF_TRUE1)
//
//// push static 0
//^^ push_from_loc(Output.vm.0)
// #25670
@Output.vm.0
// #25671
D=M
//^^ push_d_to_stack
// #25672
@SP
// #25673
A=M
// #25674
M=D
// #25675
@SP
// #25676
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.0)
//
//// push constant 1
//^^ push_constant(1)
// #25677
@1
// #25678
D=A
//^^ push_d_to_stack
// #25679
@SP
// #25680
A=M
// #25681
M=D
// #25682
@SP
// #25683
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #25684
@SP
// #25685
M=M-1
// #25686
A=M
// #25687
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #25688
@R13
// #25689
M=D
//^^ pop_stack_to_d
// #25690
@SP
// #25691
M=M-1
// #25692
A=M
// #25693
D=M
//vv pop_stack_to_d
// #25694
@R13
// #25695
D=D-M
// #25696
@R13
// #25697
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #25698
@SP
// #25699
A=M
// #25700
M=D
// #25701
@SP
// #25702
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// pop static 0
//^^ pop_to_loc{Output.vm.0)
//^^ pop_stack_to_d
// #25703
@SP
// #25704
M=M-1
// #25705
A=M
// #25706
D=M
//vv pop_stack_to_d
// #25707
@Output.vm.0
// #25708
M=D
//vv pop_to_loc{Output.vm.0)
//
//// push static 1
//^^ push_from_loc(Output.vm.1)
// #25709
@Output.vm.1
// #25710
D=M
//^^ push_d_to_stack
// #25711
@SP
// #25712
A=M
// #25713
M=D
// #25714
@SP
// #25715
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.1)
//
//// push constant 1
//^^ push_constant(1)
// #25716
@1
// #25717
D=A
//^^ push_d_to_stack
// #25718
@SP
// #25719
A=M
// #25720
M=D
// #25721
@SP
// #25722
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #25723
@SP
// #25724
M=M-1
// #25725
A=M
// #25726
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #25727
@R13
// #25728
M=D
//^^ pop_stack_to_d
// #25729
@SP
// #25730
M=M-1
// #25731
A=M
// #25732
D=M
//vv pop_stack_to_d
// #25733
@R13
// #25734
D=D-M
// #25735
@R13
// #25736
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #25737
@SP
// #25738
A=M
// #25739
M=D
// #25740
@SP
// #25741
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// pop static 1
//^^ pop_to_loc{Output.vm.1)
//^^ pop_stack_to_d
// #25742
@SP
// #25743
M=M-1
// #25744
A=M
// #25745
D=M
//vv pop_stack_to_d
// #25746
@Output.vm.1
// #25747
M=D
//vv pop_to_loc{Output.vm.1)
//
//// goto IF_END1
// #25748
@Output.backSpace$IF_END1
// #25749
0;JMP
//
//// label IF_FALSE1
(Output.backSpace$IF_FALSE1)
//
//// push constant 31
//^^ push_constant(31)
// #25750
@31
// #25751
D=A
//^^ push_d_to_stack
// #25752
@SP
// #25753
A=M
// #25754
M=D
// #25755
@SP
// #25756
M=M+1
//vv push_d_to_stack
//vv push_constant(31)
//
//// pop static 0
//^^ pop_to_loc{Output.vm.0)
//^^ pop_stack_to_d
// #25757
@SP
// #25758
M=M-1
// #25759
A=M
// #25760
D=M
//vv pop_stack_to_d
// #25761
@Output.vm.0
// #25762
M=D
//vv pop_to_loc{Output.vm.0)
//
//// push static 1
//^^ push_from_loc(Output.vm.1)
// #25763
@Output.vm.1
// #25764
D=M
//^^ push_d_to_stack
// #25765
@SP
// #25766
A=M
// #25767
M=D
// #25768
@SP
// #25769
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.1)
//
//// push constant 32
//^^ push_constant(32)
// #25770
@32
// #25771
D=A
//^^ push_d_to_stack
// #25772
@SP
// #25773
A=M
// #25774
M=D
// #25775
@SP
// #25776
M=M+1
//vv push_d_to_stack
//vv push_constant(32)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #25777
@SP
// #25778
M=M-1
// #25779
A=M
// #25780
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #25781
@R13
// #25782
M=D
//^^ pop_stack_to_d
// #25783
@SP
// #25784
M=M-1
// #25785
A=M
// #25786
D=M
//vv pop_stack_to_d
// #25787
@R13
// #25788
D=D-M
// #25789
@R13
// #25790
M=0
//vv arith_d_with_stack_top(D-M)
// #25791
@PUT_TRUE_209
// #25792
D;JEQ
// #25793
@R13
// #25794
M=0
// #25795
@CONT_209
// #25796
0;JMP
(PUT_TRUE_209)
// #25797
@R13
// #25798
M=-1
(CONT_209)
// #25799
@R13
// #25800
D=M
// #25801
@R13
// #25802
M=0
//^^ push_d_to_stack
// #25803
@SP
// #25804
A=M
// #25805
M=D
// #25806
@SP
// #25807
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// if-goto IF_TRUE2
//^^ pop_stack_to_d
// #25808
@SP
// #25809
M=M-1
// #25810
A=M
// #25811
D=M
//vv pop_stack_to_d
// #25812
@Output.backSpace$IF_TRUE2
// #25813
D;JNE
//
//// goto IF_FALSE2
// #25814
@Output.backSpace$IF_FALSE2
// #25815
0;JMP
//
//// label IF_TRUE2
(Output.backSpace$IF_TRUE2)
//
//// push constant 8128
//^^ push_constant(8128)
// #25816
@8128
// #25817
D=A
//^^ push_d_to_stack
// #25818
@SP
// #25819
A=M
// #25820
M=D
// #25821
@SP
// #25822
M=M+1
//vv push_d_to_stack
//vv push_constant(8128)
//
//// pop static 1
//^^ pop_to_loc{Output.vm.1)
//^^ pop_stack_to_d
// #25823
@SP
// #25824
M=M-1
// #25825
A=M
// #25826
D=M
//vv pop_stack_to_d
// #25827
@Output.vm.1
// #25828
M=D
//vv pop_to_loc{Output.vm.1)
//
//// label IF_FALSE2
(Output.backSpace$IF_FALSE2)
//
//// push static 1
//^^ push_from_loc(Output.vm.1)
// #25829
@Output.vm.1
// #25830
D=M
//^^ push_d_to_stack
// #25831
@SP
// #25832
A=M
// #25833
M=D
// #25834
@SP
// #25835
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Output.vm.1)
//
//// push constant 321
//^^ push_constant(321)
// #25836
@321
// #25837
D=A
//^^ push_d_to_stack
// #25838
@SP
// #25839
A=M
// #25840
M=D
// #25841
@SP
// #25842
M=M+1
//vv push_d_to_stack
//vv push_constant(321)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #25843
@SP
// #25844
M=M-1
// #25845
A=M
// #25846
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #25847
@R13
// #25848
M=D
//^^ pop_stack_to_d
// #25849
@SP
// #25850
M=M-1
// #25851
A=M
// #25852
D=M
//vv pop_stack_to_d
// #25853
@R13
// #25854
D=D-M
// #25855
@R13
// #25856
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #25857
@SP
// #25858
A=M
// #25859
M=D
// #25860
@SP
// #25861
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// pop static 1
//^^ pop_to_loc{Output.vm.1)
//^^ pop_stack_to_d
// #25862
@SP
// #25863
M=M-1
// #25864
A=M
// #25865
D=M
//vv pop_stack_to_d
// #25866
@Output.vm.1
// #25867
M=D
//vv pop_to_loc{Output.vm.1)
//
//// label IF_END1
(Output.backSpace$IF_END1)
//
//// push constant 0
//^^ push_constant(0)
// #25868
@0
// #25869
D=A
//^^ push_d_to_stack
// #25870
@SP
// #25871
A=M
// #25872
M=D
// #25873
@SP
// #25874
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// pop static 2
//^^ pop_to_loc{Output.vm.2)
//^^ pop_stack_to_d
// #25875
@SP
// #25876
M=M-1
// #25877
A=M
// #25878
D=M
//vv pop_stack_to_d
// #25879
@Output.vm.2
// #25880
M=D
//vv pop_to_loc{Output.vm.2)
//
//// goto IF_END0
// #25881
@Output.backSpace$IF_END0
// #25882
0;JMP
//
//// label IF_FALSE0
(Output.backSpace$IF_FALSE0)
//
//// push constant 0
//^^ push_constant(0)
// #25883
@0
// #25884
D=A
//^^ push_d_to_stack
// #25885
@SP
// #25886
A=M
// #25887
M=D
// #25888
@SP
// #25889
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #25890
@SP
// #25891
M=M-1
// #25892
A=M
// #25893
D=M
//vv pop_stack_to_d
// #25894
D=!D
//^^ push_d_to_stack
// #25895
@SP
// #25896
A=M
// #25897
M=D
// #25898
@SP
// #25899
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// pop static 2
//^^ pop_to_loc{Output.vm.2)
//^^ pop_stack_to_d
// #25900
@SP
// #25901
M=M-1
// #25902
A=M
// #25903
D=M
//vv pop_stack_to_d
// #25904
@Output.vm.2
// #25905
M=D
//vv pop_to_loc{Output.vm.2)
//
//// label IF_END0
(Output.backSpace$IF_END0)
//
//// push constant 32
//^^ push_constant(32)
// #25906
@32
// #25907
D=A
//^^ push_d_to_stack
// #25908
@SP
// #25909
A=M
// #25910
M=D
// #25911
@SP
// #25912
M=M+1
//vv push_d_to_stack
//vv push_constant(32)
//
//// call Output.drawChar 1
//^^ push_constant(RET_ADDR_210)
// #25913
@RET_ADDR_210
// #25914
D=A
//^^ push_d_to_stack
// #25915
@SP
// #25916
A=M
// #25917
M=D
// #25918
@SP
// #25919
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_210)
//push return-address
// #25920
@LCL
// #25921
D=M
//^^ push_d_to_stack
// #25922
@SP
// #25923
A=M
// #25924
M=D
// #25925
@SP
// #25926
M=M+1
//vv push_d_to_stack
//push LCL
// #25927
@ARG
// #25928
D=M
//^^ push_d_to_stack
// #25929
@SP
// #25930
A=M
// #25931
M=D
// #25932
@SP
// #25933
M=M+1
//vv push_d_to_stack
//push ARG
// #25934
@THIS
// #25935
D=M
//^^ push_d_to_stack
// #25936
@SP
// #25937
A=M
// #25938
M=D
// #25939
@SP
// #25940
M=M+1
//vv push_d_to_stack
//push THIS
// #25941
@THAT
// #25942
D=M
//^^ push_d_to_stack
// #25943
@SP
// #25944
A=M
// #25945
M=D
// #25946
@SP
// #25947
M=M+1
//vv push_d_to_stack
//push THAT
// #25948
@SP
// #25949
D=M
// #25950
@ARG
// #25951
M=D
// #25952
@6
// #25953
D=A
// #25954
@ARG
// #25955
M=M-D // ARG = SP - args - 5
// #25956
@SP
// #25957
D=M
// #25958
@LCL
// #25959
M=D // LCL = SP
// #25960
@Output.drawChar
// #25961
0;JMP
(RET_ADDR_210)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #25962
@SP
// #25963
M=M-1
// #25964
A=M
// #25965
D=M
//vv pop_stack_to_d
// #25966
@5
// #25967
M=D
//vv pop_to_loc{5)
//
//// push constant 0
//^^ push_constant(0)
// #25968
@0
// #25969
D=A
//^^ push_d_to_stack
// #25970
@SP
// #25971
A=M
// #25972
M=D
// #25973
@SP
// #25974
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #25975
@LCL
// #25976
D=M
// #25977
@R14
// #25978
M=D //R14=LCL
// #25979
@5
// #25980
A=D-A
// #25981
D=M
// #25982
@R15
// #25983
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #25984
@SP
// #25985
M=M-1
// #25986
A=M
// #25987
D=M
//vv pop_stack_to_d
// #25988
@ARG
// #25989
A=M
// #25990
M=D //*ARG = pop()
// #25991
@ARG
// #25992
D=M
// #25993
@SP
// #25994
M=D+1 //SP=ARG+1
// #25995
@R14
// #25996
AM=M-1
// #25997
D=M
// #25998
@THAT
// #25999
M=D //THAT = *(--R14)
// #26000
@R14
// #26001
AM=M-1
// #26002
D=M
// #26003
@THIS
// #26004
M=D //THIS = *(--R14)
// #26005
@R14
// #26006
AM=M-1
// #26007
D=M
// #26008
@ARG
// #26009
M=D //ARG = *(--R14)
// #26010
@R14
// #26011
AM=M-1
// #26012
D=M
// #26013
@LCL
// #26014
M=D //LCL = *(--R14)
// #26015
@R15
// #26016
A=M
// #26017
0;JMP //goto *R15
//
//// function Screen.init 1
(Screen.init)
// #26018
D=0
//^^ push_d_to_stack
// #26019
@SP
// #26020
A=M
// #26021
M=D
// #26022
@SP
// #26023
M=M+1
//vv push_d_to_stack
//
//// push constant 16384
//^^ push_constant(16384)
// #26024
@16384
// #26025
D=A
//^^ push_d_to_stack
// #26026
@SP
// #26027
A=M
// #26028
M=D
// #26029
@SP
// #26030
M=M+1
//vv push_d_to_stack
//vv push_constant(16384)
//
//// pop static 1
//^^ pop_to_loc{Screen.vm.1)
//^^ pop_stack_to_d
// #26031
@SP
// #26032
M=M-1
// #26033
A=M
// #26034
D=M
//vv pop_stack_to_d
// #26035
@Screen.vm.1
// #26036
M=D
//vv pop_to_loc{Screen.vm.1)
//
//// push constant 0
//^^ push_constant(0)
// #26037
@0
// #26038
D=A
//^^ push_d_to_stack
// #26039
@SP
// #26040
A=M
// #26041
M=D
// #26042
@SP
// #26043
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #26044
@SP
// #26045
M=M-1
// #26046
A=M
// #26047
D=M
//vv pop_stack_to_d
// #26048
D=!D
//^^ push_d_to_stack
// #26049
@SP
// #26050
A=M
// #26051
M=D
// #26052
@SP
// #26053
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// pop static 2
//^^ pop_to_loc{Screen.vm.2)
//^^ pop_stack_to_d
// #26054
@SP
// #26055
M=M-1
// #26056
A=M
// #26057
D=M
//vv pop_stack_to_d
// #26058
@Screen.vm.2
// #26059
M=D
//vv pop_to_loc{Screen.vm.2)
//
//// push constant 17
//^^ push_constant(17)
// #26060
@17
// #26061
D=A
//^^ push_d_to_stack
// #26062
@SP
// #26063
A=M
// #26064
M=D
// #26065
@SP
// #26066
M=M+1
//vv push_d_to_stack
//vv push_constant(17)
//
//// call Array.new 1
//^^ push_constant(RET_ADDR_211)
// #26067
@RET_ADDR_211
// #26068
D=A
//^^ push_d_to_stack
// #26069
@SP
// #26070
A=M
// #26071
M=D
// #26072
@SP
// #26073
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_211)
//push return-address
// #26074
@LCL
// #26075
D=M
//^^ push_d_to_stack
// #26076
@SP
// #26077
A=M
// #26078
M=D
// #26079
@SP
// #26080
M=M+1
//vv push_d_to_stack
//push LCL
// #26081
@ARG
// #26082
D=M
//^^ push_d_to_stack
// #26083
@SP
// #26084
A=M
// #26085
M=D
// #26086
@SP
// #26087
M=M+1
//vv push_d_to_stack
//push ARG
// #26088
@THIS
// #26089
D=M
//^^ push_d_to_stack
// #26090
@SP
// #26091
A=M
// #26092
M=D
// #26093
@SP
// #26094
M=M+1
//vv push_d_to_stack
//push THIS
// #26095
@THAT
// #26096
D=M
//^^ push_d_to_stack
// #26097
@SP
// #26098
A=M
// #26099
M=D
// #26100
@SP
// #26101
M=M+1
//vv push_d_to_stack
//push THAT
// #26102
@SP
// #26103
D=M
// #26104
@ARG
// #26105
M=D
// #26106
@6
// #26107
D=A
// #26108
@ARG
// #26109
M=M-D // ARG = SP - args - 5
// #26110
@SP
// #26111
D=M
// #26112
@LCL
// #26113
M=D // LCL = SP
// #26114
@Array.new
// #26115
0;JMP
(RET_ADDR_211)
//
//// pop static 0
//^^ pop_to_loc{Screen.vm.0)
//^^ pop_stack_to_d
// #26116
@SP
// #26117
M=M-1
// #26118
A=M
// #26119
D=M
//vv pop_stack_to_d
// #26120
@Screen.vm.0
// #26121
M=D
//vv pop_to_loc{Screen.vm.0)
//
//// push constant 0
//^^ push_constant(0)
// #26122
@0
// #26123
D=A
//^^ push_d_to_stack
// #26124
@SP
// #26125
A=M
// #26126
M=D
// #26127
@SP
// #26128
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push static 0
//^^ push_from_loc(Screen.vm.0)
// #26129
@Screen.vm.0
// #26130
D=M
//^^ push_d_to_stack
// #26131
@SP
// #26132
A=M
// #26133
M=D
// #26134
@SP
// #26135
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Screen.vm.0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #26136
@SP
// #26137
M=M-1
// #26138
A=M
// #26139
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #26140
@R13
// #26141
M=D
//^^ pop_stack_to_d
// #26142
@SP
// #26143
M=M-1
// #26144
A=M
// #26145
D=M
//vv pop_stack_to_d
// #26146
@R13
// #26147
D=D+M
// #26148
@R13
// #26149
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #26150
@SP
// #26151
A=M
// #26152
M=D
// #26153
@SP
// #26154
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push constant 1
//^^ push_constant(1)
// #26155
@1
// #26156
D=A
//^^ push_d_to_stack
// #26157
@SP
// #26158
A=M
// #26159
M=D
// #26160
@SP
// #26161
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #26162
@SP
// #26163
M=M-1
// #26164
A=M
// #26165
D=M
//vv pop_stack_to_d
// #26166
@5
// #26167
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #26168
@SP
// #26169
M=M-1
// #26170
A=M
// #26171
D=M
//vv pop_stack_to_d
// #26172
@4
// #26173
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #26174
@5
// #26175
D=M
//^^ push_d_to_stack
// #26176
@SP
// #26177
A=M
// #26178
M=D
// #26179
@SP
// #26180
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #26181
@THAT
// #26182
D=M
// #26183
@0
// #26184
D=D+A
// #26185
@R13
// #26186
M=D
//^^ pop_stack_to_d
// #26187
@SP
// #26188
M=M-1
// #26189
A=M
// #26190
D=M
//vv pop_stack_to_d
// #26191
@R13
// #26192
A=M
// #26193
M=D
// #26194
@R13
// #26195
M=0
//vv pop_to_ram(THAT, 0)
//
//// label WHILE_EXP0
(Screen.init$WHILE_EXP0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #26196
@LCL
// #26197
D=M
// #26198
@0
// #26199
A=D+A
// #26200
D=M
//^^ push_d_to_stack
// #26201
@SP
// #26202
A=M
// #26203
M=D
// #26204
@SP
// #26205
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 16
//^^ push_constant(16)
// #26206
@16
// #26207
D=A
//^^ push_d_to_stack
// #26208
@SP
// #26209
A=M
// #26210
M=D
// #26211
@SP
// #26212
M=M+1
//vv push_d_to_stack
//vv push_constant(16)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #26213
@SP
// #26214
M=M-1
// #26215
A=M
// #26216
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #26217
@R13
// #26218
M=D
//^^ pop_stack_to_d
// #26219
@SP
// #26220
M=M-1
// #26221
A=M
// #26222
D=M
//vv pop_stack_to_d
// #26223
@R13
// #26224
D=D-M
// #26225
@R13
// #26226
M=0
//vv arith_d_with_stack_top(D-M)
// #26227
@PUT_TRUE_212
// #26228
D;JLT
// #26229
@R13
// #26230
M=0
// #26231
@CONT_212
// #26232
0;JMP
(PUT_TRUE_212)
// #26233
@R13
// #26234
M=-1
(CONT_212)
// #26235
@R13
// #26236
D=M
// #26237
@R13
// #26238
M=0
//^^ push_d_to_stack
// #26239
@SP
// #26240
A=M
// #26241
M=D
// #26242
@SP
// #26243
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #26244
@SP
// #26245
M=M-1
// #26246
A=M
// #26247
D=M
//vv pop_stack_to_d
// #26248
D=!D
//^^ push_d_to_stack
// #26249
@SP
// #26250
A=M
// #26251
M=D
// #26252
@SP
// #26253
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// if-goto WHILE_END0
//^^ pop_stack_to_d
// #26254
@SP
// #26255
M=M-1
// #26256
A=M
// #26257
D=M
//vv pop_stack_to_d
// #26258
@Screen.init$WHILE_END0
// #26259
D;JNE
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #26260
@LCL
// #26261
D=M
// #26262
@0
// #26263
A=D+A
// #26264
D=M
//^^ push_d_to_stack
// #26265
@SP
// #26266
A=M
// #26267
M=D
// #26268
@SP
// #26269
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 1
//^^ push_constant(1)
// #26270
@1
// #26271
D=A
//^^ push_d_to_stack
// #26272
@SP
// #26273
A=M
// #26274
M=D
// #26275
@SP
// #26276
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #26277
@SP
// #26278
M=M-1
// #26279
A=M
// #26280
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #26281
@R13
// #26282
M=D
//^^ pop_stack_to_d
// #26283
@SP
// #26284
M=M-1
// #26285
A=M
// #26286
D=M
//vv pop_stack_to_d
// #26287
@R13
// #26288
D=D+M
// #26289
@R13
// #26290
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #26291
@SP
// #26292
A=M
// #26293
M=D
// #26294
@SP
// #26295
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
// #26296
@LCL
// #26297
D=M
// #26298
@0
// #26299
D=D+A
// #26300
@R13
// #26301
M=D
//^^ pop_stack_to_d
// #26302
@SP
// #26303
M=M-1
// #26304
A=M
// #26305
D=M
//vv pop_stack_to_d
// #26306
@R13
// #26307
A=M
// #26308
M=D
// #26309
@R13
// #26310
M=0
//vv pop_to_ram(LCL, 0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #26311
@LCL
// #26312
D=M
// #26313
@0
// #26314
A=D+A
// #26315
D=M
//^^ push_d_to_stack
// #26316
@SP
// #26317
A=M
// #26318
M=D
// #26319
@SP
// #26320
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push static 0
//^^ push_from_loc(Screen.vm.0)
// #26321
@Screen.vm.0
// #26322
D=M
//^^ push_d_to_stack
// #26323
@SP
// #26324
A=M
// #26325
M=D
// #26326
@SP
// #26327
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Screen.vm.0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #26328
@SP
// #26329
M=M-1
// #26330
A=M
// #26331
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #26332
@R13
// #26333
M=D
//^^ pop_stack_to_d
// #26334
@SP
// #26335
M=M-1
// #26336
A=M
// #26337
D=M
//vv pop_stack_to_d
// #26338
@R13
// #26339
D=D+M
// #26340
@R13
// #26341
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #26342
@SP
// #26343
A=M
// #26344
M=D
// #26345
@SP
// #26346
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #26347
@LCL
// #26348
D=M
// #26349
@0
// #26350
A=D+A
// #26351
D=M
//^^ push_d_to_stack
// #26352
@SP
// #26353
A=M
// #26354
M=D
// #26355
@SP
// #26356
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 1
//^^ push_constant(1)
// #26357
@1
// #26358
D=A
//^^ push_d_to_stack
// #26359
@SP
// #26360
A=M
// #26361
M=D
// #26362
@SP
// #26363
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #26364
@SP
// #26365
M=M-1
// #26366
A=M
// #26367
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #26368
@R13
// #26369
M=D
//^^ pop_stack_to_d
// #26370
@SP
// #26371
M=M-1
// #26372
A=M
// #26373
D=M
//vv pop_stack_to_d
// #26374
@R13
// #26375
D=D-M
// #26376
@R13
// #26377
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #26378
@SP
// #26379
A=M
// #26380
M=D
// #26381
@SP
// #26382
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// push static 0
//^^ push_from_loc(Screen.vm.0)
// #26383
@Screen.vm.0
// #26384
D=M
//^^ push_d_to_stack
// #26385
@SP
// #26386
A=M
// #26387
M=D
// #26388
@SP
// #26389
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Screen.vm.0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #26390
@SP
// #26391
M=M-1
// #26392
A=M
// #26393
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #26394
@R13
// #26395
M=D
//^^ pop_stack_to_d
// #26396
@SP
// #26397
M=M-1
// #26398
A=M
// #26399
D=M
//vv pop_stack_to_d
// #26400
@R13
// #26401
D=D+M
// #26402
@R13
// #26403
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #26404
@SP
// #26405
A=M
// #26406
M=D
// #26407
@SP
// #26408
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #26409
@SP
// #26410
M=M-1
// #26411
A=M
// #26412
D=M
//vv pop_stack_to_d
// #26413
@4
// #26414
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #26415
@THAT
// #26416
D=M
// #26417
@0
// #26418
A=D+A
// #26419
D=M
//^^ push_d_to_stack
// #26420
@SP
// #26421
A=M
// #26422
M=D
// #26423
@SP
// #26424
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #26425
@LCL
// #26426
D=M
// #26427
@0
// #26428
A=D+A
// #26429
D=M
//^^ push_d_to_stack
// #26430
@SP
// #26431
A=M
// #26432
M=D
// #26433
@SP
// #26434
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 1
//^^ push_constant(1)
// #26435
@1
// #26436
D=A
//^^ push_d_to_stack
// #26437
@SP
// #26438
A=M
// #26439
M=D
// #26440
@SP
// #26441
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #26442
@SP
// #26443
M=M-1
// #26444
A=M
// #26445
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #26446
@R13
// #26447
M=D
//^^ pop_stack_to_d
// #26448
@SP
// #26449
M=M-1
// #26450
A=M
// #26451
D=M
//vv pop_stack_to_d
// #26452
@R13
// #26453
D=D-M
// #26454
@R13
// #26455
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #26456
@SP
// #26457
A=M
// #26458
M=D
// #26459
@SP
// #26460
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// push static 0
//^^ push_from_loc(Screen.vm.0)
// #26461
@Screen.vm.0
// #26462
D=M
//^^ push_d_to_stack
// #26463
@SP
// #26464
A=M
// #26465
M=D
// #26466
@SP
// #26467
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Screen.vm.0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #26468
@SP
// #26469
M=M-1
// #26470
A=M
// #26471
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #26472
@R13
// #26473
M=D
//^^ pop_stack_to_d
// #26474
@SP
// #26475
M=M-1
// #26476
A=M
// #26477
D=M
//vv pop_stack_to_d
// #26478
@R13
// #26479
D=D+M
// #26480
@R13
// #26481
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #26482
@SP
// #26483
A=M
// #26484
M=D
// #26485
@SP
// #26486
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #26487
@SP
// #26488
M=M-1
// #26489
A=M
// #26490
D=M
//vv pop_stack_to_d
// #26491
@4
// #26492
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #26493
@THAT
// #26494
D=M
// #26495
@0
// #26496
A=D+A
// #26497
D=M
//^^ push_d_to_stack
// #26498
@SP
// #26499
A=M
// #26500
M=D
// #26501
@SP
// #26502
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #26503
@SP
// #26504
M=M-1
// #26505
A=M
// #26506
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #26507
@R13
// #26508
M=D
//^^ pop_stack_to_d
// #26509
@SP
// #26510
M=M-1
// #26511
A=M
// #26512
D=M
//vv pop_stack_to_d
// #26513
@R13
// #26514
D=D+M
// #26515
@R13
// #26516
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #26517
@SP
// #26518
A=M
// #26519
M=D
// #26520
@SP
// #26521
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #26522
@SP
// #26523
M=M-1
// #26524
A=M
// #26525
D=M
//vv pop_stack_to_d
// #26526
@5
// #26527
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #26528
@SP
// #26529
M=M-1
// #26530
A=M
// #26531
D=M
//vv pop_stack_to_d
// #26532
@4
// #26533
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #26534
@5
// #26535
D=M
//^^ push_d_to_stack
// #26536
@SP
// #26537
A=M
// #26538
M=D
// #26539
@SP
// #26540
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #26541
@THAT
// #26542
D=M
// #26543
@0
// #26544
D=D+A
// #26545
@R13
// #26546
M=D
//^^ pop_stack_to_d
// #26547
@SP
// #26548
M=M-1
// #26549
A=M
// #26550
D=M
//vv pop_stack_to_d
// #26551
@R13
// #26552
A=M
// #26553
M=D
// #26554
@R13
// #26555
M=0
//vv pop_to_ram(THAT, 0)
//
//// goto WHILE_EXP0
// #26556
@Screen.init$WHILE_EXP0
// #26557
0;JMP
//
//// label WHILE_END0
(Screen.init$WHILE_END0)
//
//// push constant 0
//^^ push_constant(0)
// #26558
@0
// #26559
D=A
//^^ push_d_to_stack
// #26560
@SP
// #26561
A=M
// #26562
M=D
// #26563
@SP
// #26564
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #26565
@LCL
// #26566
D=M
// #26567
@R14
// #26568
M=D //R14=LCL
// #26569
@5
// #26570
A=D-A
// #26571
D=M
// #26572
@R15
// #26573
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #26574
@SP
// #26575
M=M-1
// #26576
A=M
// #26577
D=M
//vv pop_stack_to_d
// #26578
@ARG
// #26579
A=M
// #26580
M=D //*ARG = pop()
// #26581
@ARG
// #26582
D=M
// #26583
@SP
// #26584
M=D+1 //SP=ARG+1
// #26585
@R14
// #26586
AM=M-1
// #26587
D=M
// #26588
@THAT
// #26589
M=D //THAT = *(--R14)
// #26590
@R14
// #26591
AM=M-1
// #26592
D=M
// #26593
@THIS
// #26594
M=D //THIS = *(--R14)
// #26595
@R14
// #26596
AM=M-1
// #26597
D=M
// #26598
@ARG
// #26599
M=D //ARG = *(--R14)
// #26600
@R14
// #26601
AM=M-1
// #26602
D=M
// #26603
@LCL
// #26604
M=D //LCL = *(--R14)
// #26605
@R15
// #26606
A=M
// #26607
0;JMP //goto *R15
//
//// function Screen.clearScreen 1
(Screen.clearScreen)
// #26608
D=0
//^^ push_d_to_stack
// #26609
@SP
// #26610
A=M
// #26611
M=D
// #26612
@SP
// #26613
M=M+1
//vv push_d_to_stack
//
//// push static 2
//^^ push_from_loc(Screen.vm.2)
// #26614
@Screen.vm.2
// #26615
D=M
//^^ push_d_to_stack
// #26616
@SP
// #26617
A=M
// #26618
M=D
// #26619
@SP
// #26620
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Screen.vm.2)
//
//// if-goto IF_TRUE0
//^^ pop_stack_to_d
// #26621
@SP
// #26622
M=M-1
// #26623
A=M
// #26624
D=M
//vv pop_stack_to_d
// #26625
@Screen.updateLocation$IF_TRUE0
// #26626
D;JNE
//
//// goto IF_FALSE0
// #26627
@Screen.updateLocation$IF_FALSE0
// #26628
0;JMP
//
//// label IF_TRUE0
(Screen.updateLocation$IF_TRUE0)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #26629
@ARG
// #26630
D=M
// #26631
@0
// #26632
A=D+A
// #26633
D=M
//^^ push_d_to_stack
// #26634
@SP
// #26635
A=M
// #26636
M=D
// #26637
@SP
// #26638
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push static 1
//^^ push_from_loc(Screen.vm.1)
// #26639
@Screen.vm.1
// #26640
D=M
//^^ push_d_to_stack
// #26641
@SP
// #26642
A=M
// #26643
M=D
// #26644
@SP
// #26645
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Screen.vm.1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #26646
@SP
// #26647
M=M-1
// #26648
A=M
// #26649
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #26650
@R13
// #26651
M=D
//^^ pop_stack_to_d
// #26652
@SP
// #26653
M=M-1
// #26654
A=M
// #26655
D=M
//vv pop_stack_to_d
// #26656
@R13
// #26657
D=D+M
// #26658
@R13
// #26659
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #26660
@SP
// #26661
A=M
// #26662
M=D
// #26663
@SP
// #26664
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #26665
@ARG
// #26666
D=M
// #26667
@0
// #26668
A=D+A
// #26669
D=M
//^^ push_d_to_stack
// #26670
@SP
// #26671
A=M
// #26672
M=D
// #26673
@SP
// #26674
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push static 1
//^^ push_from_loc(Screen.vm.1)
// #26675
@Screen.vm.1
// #26676
D=M
//^^ push_d_to_stack
// #26677
@SP
// #26678
A=M
// #26679
M=D
// #26680
@SP
// #26681
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Screen.vm.1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #26682
@SP
// #26683
M=M-1
// #26684
A=M
// #26685
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #26686
@R13
// #26687
M=D
//^^ pop_stack_to_d
// #26688
@SP
// #26689
M=M-1
// #26690
A=M
// #26691
D=M
//vv pop_stack_to_d
// #26692
@R13
// #26693
D=D+M
// #26694
@R13
// #26695
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #26696
@SP
// #26697
A=M
// #26698
M=D
// #26699
@SP
// #26700
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #26701
@SP
// #26702
M=M-1
// #26703
A=M
// #26704
D=M
//vv pop_stack_to_d
// #26705
@4
// #26706
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #26707
@THAT
// #26708
D=M
// #26709
@0
// #26710
A=D+A
// #26711
D=M
//^^ push_d_to_stack
// #26712
@SP
// #26713
A=M
// #26714
M=D
// #26715
@SP
// #26716
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// push argument 1
//^^ push_from_ram(ARG, 1)
// #26717
@ARG
// #26718
D=M
// #26719
@1
// #26720
A=D+A
// #26721
D=M
//^^ push_d_to_stack
// #26722
@SP
// #26723
A=M
// #26724
M=D
// #26725
@SP
// #26726
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 1)
//
//// or
//^^ arith_binary_op(|)
//^^ pop_stack_to_d
// #26727
@SP
// #26728
M=M-1
// #26729
A=M
// #26730
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D|M)
// #26731
@R13
// #26732
M=D
//^^ pop_stack_to_d
// #26733
@SP
// #26734
M=M-1
// #26735
A=M
// #26736
D=M
//vv pop_stack_to_d
// #26737
@R13
// #26738
D=D|M
// #26739
@R13
// #26740
M=0
//vv arith_d_with_stack_top(D|M)
//^^ push_d_to_stack
// #26741
@SP
// #26742
A=M
// #26743
M=D
// #26744
@SP
// #26745
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(|)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #26746
@SP
// #26747
M=M-1
// #26748
A=M
// #26749
D=M
//vv pop_stack_to_d
// #26750
@5
// #26751
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #26752
@SP
// #26753
M=M-1
// #26754
A=M
// #26755
D=M
//vv pop_stack_to_d
// #26756
@4
// #26757
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #26758
@5
// #26759
D=M
//^^ push_d_to_stack
// #26760
@SP
// #26761
A=M
// #26762
M=D
// #26763
@SP
// #26764
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #26765
@THAT
// #26766
D=M
// #26767
@0
// #26768
D=D+A
// #26769
@R13
// #26770
M=D
//^^ pop_stack_to_d
// #26771
@SP
// #26772
M=M-1
// #26773
A=M
// #26774
D=M
//vv pop_stack_to_d
// #26775
@R13
// #26776
A=M
// #26777
M=D
// #26778
@R13
// #26779
M=0
//vv pop_to_ram(THAT, 0)
//
//// goto IF_END0
// #26780
@Screen.updateLocation$IF_END0
// #26781
0;JMP
//
//// label IF_FALSE0
(Screen.updateLocation$IF_FALSE0)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #26782
@ARG
// #26783
D=M
// #26784
@0
// #26785
A=D+A
// #26786
D=M
//^^ push_d_to_stack
// #26787
@SP
// #26788
A=M
// #26789
M=D
// #26790
@SP
// #26791
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push static 1
//^^ push_from_loc(Screen.vm.1)
// #26792
@Screen.vm.1
// #26793
D=M
//^^ push_d_to_stack
// #26794
@SP
// #26795
A=M
// #26796
M=D
// #26797
@SP
// #26798
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Screen.vm.1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #26799
@SP
// #26800
M=M-1
// #26801
A=M
// #26802
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #26803
@R13
// #26804
M=D
//^^ pop_stack_to_d
// #26805
@SP
// #26806
M=M-1
// #26807
A=M
// #26808
D=M
//vv pop_stack_to_d
// #26809
@R13
// #26810
D=D+M
// #26811
@R13
// #26812
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #26813
@SP
// #26814
A=M
// #26815
M=D
// #26816
@SP
// #26817
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #26818
@ARG
// #26819
D=M
// #26820
@0
// #26821
A=D+A
// #26822
D=M
//^^ push_d_to_stack
// #26823
@SP
// #26824
A=M
// #26825
M=D
// #26826
@SP
// #26827
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push static 1
//^^ push_from_loc(Screen.vm.1)
// #26828
@Screen.vm.1
// #26829
D=M
//^^ push_d_to_stack
// #26830
@SP
// #26831
A=M
// #26832
M=D
// #26833
@SP
// #26834
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Screen.vm.1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #26835
@SP
// #26836
M=M-1
// #26837
A=M
// #26838
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #26839
@R13
// #26840
M=D
//^^ pop_stack_to_d
// #26841
@SP
// #26842
M=M-1
// #26843
A=M
// #26844
D=M
//vv pop_stack_to_d
// #26845
@R13
// #26846
D=D+M
// #26847
@R13
// #26848
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #26849
@SP
// #26850
A=M
// #26851
M=D
// #26852
@SP
// #26853
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #26854
@SP
// #26855
M=M-1
// #26856
A=M
// #26857
D=M
//vv pop_stack_to_d
// #26858
@4
// #26859
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #26860
@THAT
// #26861
D=M
// #26862
@0
// #26863
A=D+A
// #26864
D=M
//^^ push_d_to_stack
// #26865
@SP
// #26866
A=M
// #26867
M=D
// #26868
@SP
// #26869
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// push argument 1
//^^ push_from_ram(ARG, 1)
// #26870
@ARG
// #26871
D=M
// #26872
@1
// #26873
A=D+A
// #26874
D=M
//^^ push_d_to_stack
// #26875
@SP
// #26876
A=M
// #26877
M=D
// #26878
@SP
// #26879
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 1)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #26880
@SP
// #26881
M=M-1
// #26882
A=M
// #26883
D=M
//vv pop_stack_to_d
// #26884
D=!D
//^^ push_d_to_stack
// #26885
@SP
// #26886
A=M
// #26887
M=D
// #26888
@SP
// #26889
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// and
//^^ arith_binary_op(&)
//^^ pop_stack_to_d
// #26890
@SP
// #26891
M=M-1
// #26892
A=M
// #26893
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D&M)
// #26894
@R13
// #26895
M=D
//^^ pop_stack_to_d
// #26896
@SP
// #26897
M=M-1
// #26898
A=M
// #26899
D=M
//vv pop_stack_to_d
// #26900
@R13
// #26901
D=D&M
// #26902
@R13
// #26903
M=0
//vv arith_d_with_stack_top(D&M)
//^^ push_d_to_stack
// #26904
@SP
// #26905
A=M
// #26906
M=D
// #26907
@SP
// #26908
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(&)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #26909
@SP
// #26910
M=M-1
// #26911
A=M
// #26912
D=M
//vv pop_stack_to_d
// #26913
@5
// #26914
M=D
//vv pop_to_loc{5)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #26915
@SP
// #26916
M=M-1
// #26917
A=M
// #26918
D=M
//vv pop_stack_to_d
// #26919
@4
// #26920
M=D
//vv pop_to_loc{4)
//
//// push temp 0
//^^ push_from_loc(5)
// #26921
@5
// #26922
D=M
//^^ push_d_to_stack
// #26923
@SP
// #26924
A=M
// #26925
M=D
// #26926
@SP
// #26927
M=M+1
//vv push_d_to_stack
//vv push_from_loc(5)
//
//// pop that 0
//^^ pop_to_ram(THAT, 0)
// #26928
@THAT
// #26929
D=M
// #26930
@0
// #26931
D=D+A
// #26932
@R13
// #26933
M=D
//^^ pop_stack_to_d
// #26934
@SP
// #26935
M=M-1
// #26936
A=M
// #26937
D=M
//vv pop_stack_to_d
// #26938
@R13
// #26939
A=M
// #26940
M=D
// #26941
@R13
// #26942
M=0
//vv pop_to_ram(THAT, 0)
//
//// label IF_END0
(Screen.updateLocation$IF_END0)
//
//// push constant 0
//^^ push_constant(0)
// #26943
@0
// #26944
D=A
//^^ push_d_to_stack
// #26945
@SP
// #26946
A=M
// #26947
M=D
// #26948
@SP
// #26949
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #26950
@LCL
// #26951
D=M
// #26952
@R14
// #26953
M=D //R14=LCL
// #26954
@5
// #26955
A=D-A
// #26956
D=M
// #26957
@R15
// #26958
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #26959
@SP
// #26960
M=M-1
// #26961
A=M
// #26962
D=M
//vv pop_stack_to_d
// #26963
@ARG
// #26964
A=M
// #26965
M=D //*ARG = pop()
// #26966
@ARG
// #26967
D=M
// #26968
@SP
// #26969
M=D+1 //SP=ARG+1
// #26970
@R14
// #26971
AM=M-1
// #26972
D=M
// #26973
@THAT
// #26974
M=D //THAT = *(--R14)
// #26975
@R14
// #26976
AM=M-1
// #26977
D=M
// #26978
@THIS
// #26979
M=D //THIS = *(--R14)
// #26980
@R14
// #26981
AM=M-1
// #26982
D=M
// #26983
@ARG
// #26984
M=D //ARG = *(--R14)
// #26985
@R14
// #26986
AM=M-1
// #26987
D=M
// #26988
@LCL
// #26989
M=D //LCL = *(--R14)
// #26990
@R15
// #26991
A=M
// #26992
0;JMP //goto *R15
//
//// function Screen.setColor 0
(Screen.setColor)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #26993
@ARG
// #26994
D=M
// #26995
@0
// #26996
A=D+A
// #26997
D=M
//^^ push_d_to_stack
// #26998
@SP
// #26999
A=M
// #27000
M=D
// #27001
@SP
// #27002
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// pop static 2
//^^ pop_to_loc{Screen.vm.2)
//^^ pop_stack_to_d
// #27003
@SP
// #27004
M=M-1
// #27005
A=M
// #27006
D=M
//vv pop_stack_to_d
// #27007
@Screen.vm.2
// #27008
M=D
//vv pop_to_loc{Screen.vm.2)
//
//// push constant 0
//^^ push_constant(0)
// #27009
@0
// #27010
D=A
//^^ push_d_to_stack
// #27011
@SP
// #27012
A=M
// #27013
M=D
// #27014
@SP
// #27015
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #27016
@LCL
// #27017
D=M
// #27018
@R14
// #27019
M=D //R14=LCL
// #27020
@5
// #27021
A=D-A
// #27022
D=M
// #27023
@R15
// #27024
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #27025
@SP
// #27026
M=M-1
// #27027
A=M
// #27028
D=M
//vv pop_stack_to_d
// #27029
@ARG
// #27030
A=M
// #27031
M=D //*ARG = pop()
// #27032
@ARG
// #27033
D=M
// #27034
@SP
// #27035
M=D+1 //SP=ARG+1
// #27036
@R14
// #27037
AM=M-1
// #27038
D=M
// #27039
@THAT
// #27040
M=D //THAT = *(--R14)
// #27041
@R14
// #27042
AM=M-1
// #27043
D=M
// #27044
@THIS
// #27045
M=D //THIS = *(--R14)
// #27046
@R14
// #27047
AM=M-1
// #27048
D=M
// #27049
@ARG
// #27050
M=D //ARG = *(--R14)
// #27051
@R14
// #27052
AM=M-1
// #27053
D=M
// #27054
@LCL
// #27055
M=D //LCL = *(--R14)
// #27056
@R15
// #27057
A=M
// #27058
0;JMP //goto *R15
//
//// function Screen.drawPixel 3
(Screen.drawPixel)
// #27059
D=0
//^^ push_d_to_stack
// #27060
@SP
// #27061
A=M
// #27062
M=D
// #27063
@SP
// #27064
M=M+1
//vv push_d_to_stack
// #27065
D=0
//^^ push_d_to_stack
// #27066
@SP
// #27067
A=M
// #27068
M=D
// #27069
@SP
// #27070
M=M+1
//vv push_d_to_stack
// #27071
D=0
//^^ push_d_to_stack
// #27072
@SP
// #27073
A=M
// #27074
M=D
// #27075
@SP
// #27076
M=M+1
//vv push_d_to_stack
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #27077
@ARG
// #27078
D=M
// #27079
@0
// #27080
A=D+A
// #27081
D=M
//^^ push_d_to_stack
// #27082
@SP
// #27083
A=M
// #27084
M=D
// #27085
@SP
// #27086
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push argument 2
//^^ push_from_ram(ARG, 2)
// #27087
@ARG
// #27088
D=M
// #27089
@2
// #27090
A=D+A
// #27091
D=M
//^^ push_d_to_stack
// #27092
@SP
// #27093
A=M
// #27094
M=D
// #27095
@SP
// #27096
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 2)
//
//// gt
//^^ arith_cmp_op(JGT)
//^^ pop_stack_to_d
// #27097
@SP
// #27098
M=M-1
// #27099
A=M
// #27100
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #27101
@R13
// #27102
M=D
//^^ pop_stack_to_d
// #27103
@SP
// #27104
M=M-1
// #27105
A=M
// #27106
D=M
//vv pop_stack_to_d
// #27107
@R13
// #27108
D=D-M
// #27109
@R13
// #27110
M=0
//vv arith_d_with_stack_top(D-M)
// #27111
@PUT_TRUE_244
// #27112
D;JGT
// #27113
@R13
// #27114
M=0
// #27115
@CONT_244
// #27116
0;JMP
(PUT_TRUE_244)
// #27117
@R13
// #27118
M=-1
(CONT_244)
// #27119
@R13
// #27120
D=M
// #27121
@R13
// #27122
M=0
//^^ push_d_to_stack
// #27123
@SP
// #27124
A=M
// #27125
M=D
// #27126
@SP
// #27127
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JGT)
//
//// push argument 1
//^^ push_from_ram(ARG, 1)
// #27128
@ARG
// #27129
D=M
// #27130
@1
// #27131
A=D+A
// #27132
D=M
//^^ push_d_to_stack
// #27133
@SP
// #27134
A=M
// #27135
M=D
// #27136
@SP
// #27137
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 1)
//
//// push argument 3
//^^ push_from_ram(ARG, 3)
// #27138
@ARG
// #27139
D=M
// #27140
@3
// #27141
A=D+A
// #27142
D=M
//^^ push_d_to_stack
// #27143
@SP
// #27144
A=M
// #27145
M=D
// #27146
@SP
// #27147
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 3)
//
//// gt
//^^ arith_cmp_op(JGT)
//^^ pop_stack_to_d
// #27148
@SP
// #27149
M=M-1
// #27150
A=M
// #27151
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #27152
@R13
// #27153
M=D
//^^ pop_stack_to_d
// #27154
@SP
// #27155
M=M-1
// #27156
A=M
// #27157
D=M
//vv pop_stack_to_d
// #27158
@R13
// #27159
D=D-M
// #27160
@R13
// #27161
M=0
//vv arith_d_with_stack_top(D-M)
// #27162
@PUT_TRUE_245
// #27163
D;JGT
// #27164
@R13
// #27165
M=0
// #27166
@CONT_245
// #27167
0;JMP
(PUT_TRUE_245)
// #27168
@R13
// #27169
M=-1
(CONT_245)
// #27170
@R13
// #27171
D=M
// #27172
@R13
// #27173
M=0
//^^ push_d_to_stack
// #27174
@SP
// #27175
A=M
// #27176
M=D
// #27177
@SP
// #27178
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JGT)
//
//// or
//^^ arith_binary_op(|)
//^^ pop_stack_to_d
// #27179
@SP
// #27180
M=M-1
// #27181
A=M
// #27182
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D|M)
// #27183
@R13
// #27184
M=D
//^^ pop_stack_to_d
// #27185
@SP
// #27186
M=M-1
// #27187
A=M
// #27188
D=M
//vv pop_stack_to_d
// #27189
@R13
// #27190
D=D|M
// #27191
@R13
// #27192
M=0
//vv arith_d_with_stack_top(D|M)
//^^ push_d_to_stack
// #27193
@SP
// #27194
A=M
// #27195
M=D
// #27196
@SP
// #27197
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(|)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #27198
@ARG
// #27199
D=M
// #27200
@0
// #27201
A=D+A
// #27202
D=M
//^^ push_d_to_stack
// #27203
@SP
// #27204
A=M
// #27205
M=D
// #27206
@SP
// #27207
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push constant 0
//^^ push_constant(0)
// #27208
@0
// #27209
D=A
//^^ push_d_to_stack
// #27210
@SP
// #27211
A=M
// #27212
M=D
// #27213
@SP
// #27214
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #27215
@SP
// #27216
M=M-1
// #27217
A=M
// #27218
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #27219
@R13
// #27220
M=D
//^^ pop_stack_to_d
// #27221
@SP
// #27222
M=M-1
// #27223
A=M
// #27224
D=M
//vv pop_stack_to_d
// #27225
@R13
// #27226
D=D-M
// #27227
@R13
// #27228
M=0
//vv arith_d_with_stack_top(D-M)
// #27229
@PUT_TRUE_246
// #27230
D;JLT
// #27231
@R13
// #27232
M=0
// #27233
@CONT_246
// #27234
0;JMP
(PUT_TRUE_246)
// #27235
@R13
// #27236
M=-1
(CONT_246)
// #27237
@R13
// #27238
D=M
// #27239
@R13
// #27240
M=0
//^^ push_d_to_stack
// #27241
@SP
// #27242
A=M
// #27243
M=D
// #27244
@SP
// #27245
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// or
//^^ arith_binary_op(|)
//^^ pop_stack_to_d
// #27246
@SP
// #27247
M=M-1
// #27248
A=M
// #27249
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D|M)
// #27250
@R13
// #27251
M=D
//^^ pop_stack_to_d
// #27252
@SP
// #27253
M=M-1
// #27254
A=M
// #27255
D=M
//vv pop_stack_to_d
// #27256
@R13
// #27257
D=D|M
// #27258
@R13
// #27259
M=0
//vv arith_d_with_stack_top(D|M)
//^^ push_d_to_stack
// #27260
@SP
// #27261
A=M
// #27262
M=D
// #27263
@SP
// #27264
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(|)
//
//// push argument 2
//^^ push_from_ram(ARG, 2)
// #27265
@ARG
// #27266
D=M
// #27267
@2
// #27268
A=D+A
// #27269
D=M
//^^ push_d_to_stack
// #27270
@SP
// #27271
A=M
// #27272
M=D
// #27273
@SP
// #27274
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 2)
//
//// push constant 511
//^^ push_constant(511)
// #27275
@511
// #27276
D=A
//^^ push_d_to_stack
// #27277
@SP
// #27278
A=M
// #27279
M=D
// #27280
@SP
// #27281
M=M+1
//vv push_d_to_stack
//vv push_constant(511)
//
//// gt
//^^ arith_cmp_op(JGT)
//^^ pop_stack_to_d
// #27282
@SP
// #27283
M=M-1
// #27284
A=M
// #27285
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #27286
@R13
// #27287
M=D
//^^ pop_stack_to_d
// #27288
@SP
// #27289
M=M-1
// #27290
A=M
// #27291
D=M
//vv pop_stack_to_d
// #27292
@R13
// #27293
D=D-M
// #27294
@R13
// #27295
M=0
//vv arith_d_with_stack_top(D-M)
// #27296
@PUT_TRUE_247
// #27297
D;JGT
// #27298
@R13
// #27299
M=0
// #27300
@CONT_247
// #27301
0;JMP
(PUT_TRUE_247)
// #27302
@R13
// #27303
M=-1
(CONT_247)
// #27304
@R13
// #27305
D=M
// #27306
@R13
// #27307
M=0
//^^ push_d_to_stack
// #27308
@SP
// #27309
A=M
// #27310
M=D
// #27311
@SP
// #27312
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JGT)
//
//// or
//^^ arith_binary_op(|)
//^^ pop_stack_to_d
// #27313
@SP
// #27314
M=M-1
// #27315
A=M
// #27316
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D|M)
// #27317
@R13
// #27318
M=D
//^^ pop_stack_to_d
// #27319
@SP
// #27320
M=M-1
// #27321
A=M
// #27322
D=M
//vv pop_stack_to_d
// #27323
@R13
// #27324
D=D|M
// #27325
@R13
// #27326
M=0
//vv arith_d_with_stack_top(D|M)
//^^ push_d_to_stack
// #27327
@SP
// #27328
A=M
// #27329
M=D
// #27330
@SP
// #27331
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(|)
//
//// push argument 1
//^^ push_from_ram(ARG, 1)
// #27332
@ARG
// #27333
D=M
// #27334
@1
// #27335
A=D+A
// #27336
D=M
//^^ push_d_to_stack
// #27337
@SP
// #27338
A=M
// #27339
M=D
// #27340
@SP
// #27341
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 1)
//
//// push constant 0
//^^ push_constant(0)
// #27342
@0
// #27343
D=A
//^^ push_d_to_stack
// #27344
@SP
// #27345
A=M
// #27346
M=D
// #27347
@SP
// #27348
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #27349
@SP
// #27350
M=M-1
// #27351
A=M
// #27352
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #27353
@R13
// #27354
M=D
//^^ pop_stack_to_d
// #27355
@SP
// #27356
M=M-1
// #27357
A=M
// #27358
D=M
//vv pop_stack_to_d
// #27359
@R13
// #27360
D=D-M
// #27361
@R13
// #27362
M=0
//vv arith_d_with_stack_top(D-M)
// #27363
@PUT_TRUE_248
// #27364
D;JLT
// #27365
@R13
// #27366
M=0
// #27367
@CONT_248
// #27368
0;JMP
(PUT_TRUE_248)
// #27369
@R13
// #27370
M=-1
(CONT_248)
// #27371
@R13
// #27372
D=M
// #27373
@R13
// #27374
M=0
//^^ push_d_to_stack
// #27375
@SP
// #27376
A=M
// #27377
M=D
// #27378
@SP
// #27379
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// or
//^^ arith_binary_op(|)
//^^ pop_stack_to_d
// #27380
@SP
// #27381
M=M-1
// #27382
A=M
// #27383
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D|M)
// #27384
@R13
// #27385
M=D
//^^ pop_stack_to_d
// #27386
@SP
// #27387
M=M-1
// #27388
A=M
// #27389
D=M
//vv pop_stack_to_d
// #27390
@R13
// #27391
D=D|M
// #27392
@R13
// #27393
M=0
//vv arith_d_with_stack_top(D|M)
//^^ push_d_to_stack
// #27394
@SP
// #27395
A=M
// #27396
M=D
// #27397
@SP
// #27398
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(|)
//
//// push argument 3
//^^ push_from_ram(ARG, 3)
// #27399
@ARG
// #27400
D=M
// #27401
@3
// #27402
A=D+A
// #27403
D=M
//^^ push_d_to_stack
// #27404
@SP
// #27405
A=M
// #27406
M=D
// #27407
@SP
// #27408
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 3)
//
//// push constant 255
//^^ push_constant(255)
// #27409
@255
// #27410
D=A
//^^ push_d_to_stack
// #27411
@SP
// #27412
A=M
// #27413
M=D
// #27414
@SP
// #27415
M=M+1
//vv push_d_to_stack
//vv push_constant(255)
//
//// gt
//^^ arith_cmp_op(JGT)
//^^ pop_stack_to_d
// #27416
@SP
// #27417
M=M-1
// #27418
A=M
// #27419
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #27420
@R13
// #27421
M=D
//^^ pop_stack_to_d
// #27422
@SP
// #27423
M=M-1
// #27424
A=M
// #27425
D=M
//vv pop_stack_to_d
// #27426
@R13
// #27427
D=D-M
// #27428
@R13
// #27429
M=0
//vv arith_d_with_stack_top(D-M)
// #27430
@PUT_TRUE_249
// #27431
D;JGT
// #27432
@R13
// #27433
M=0
// #27434
@CONT_249
// #27435
0;JMP
(PUT_TRUE_249)
// #27436
@R13
// #27437
M=-1
(CONT_249)
// #27438
@R13
// #27439
D=M
// #27440
@R13
// #27441
M=0
//^^ push_d_to_stack
// #27442
@SP
// #27443
A=M
// #27444
M=D
// #27445
@SP
// #27446
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JGT)
//
//// or
//^^ arith_binary_op(|)
//^^ pop_stack_to_d
// #27447
@SP
// #27448
M=M-1
// #27449
A=M
// #27450
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D|M)
// #27451
@R13
// #27452
M=D
//^^ pop_stack_to_d
// #27453
@SP
// #27454
M=M-1
// #27455
A=M
// #27456
D=M
//vv pop_stack_to_d
// #27457
@R13
// #27458
D=D|M
// #27459
@R13
// #27460
M=0
//vv arith_d_with_stack_top(D|M)
//^^ push_d_to_stack
// #27461
@SP
// #27462
A=M
// #27463
M=D
// #27464
@SP
// #27465
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(|)
//
//// if-goto IF_TRUE0
//^^ pop_stack_to_d
// #27466
@SP
// #27467
M=M-1
// #27468
A=M
// #27469
D=M
//vv pop_stack_to_d
// #27470
@Screen.drawRectangle$IF_TRUE0
// #27471
D;JNE
//
//// goto IF_FALSE0
// #27472
@Screen.drawRectangle$IF_FALSE0
// #27473
0;JMP
//
//// label IF_TRUE0
(Screen.drawRectangle$IF_TRUE0)
//
//// push constant 9
//^^ push_constant(9)
// #27474
@9
// #27475
D=A
//^^ push_d_to_stack
// #27476
@SP
// #27477
A=M
// #27478
M=D
// #27479
@SP
// #27480
M=M+1
//vv push_d_to_stack
//vv push_constant(9)
//
//// call Sys.error 1
//^^ push_constant(RET_ADDR_250)
// #27481
@RET_ADDR_250
// #27482
D=A
//^^ push_d_to_stack
// #27483
@SP
// #27484
A=M
// #27485
M=D
// #27486
@SP
// #27487
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_250)
//push return-address
// #27488
@LCL
// #27489
D=M
//^^ push_d_to_stack
// #27490
@SP
// #27491
A=M
// #27492
M=D
// #27493
@SP
// #27494
M=M+1
//vv push_d_to_stack
//push LCL
// #27495
@ARG
// #27496
D=M
//^^ push_d_to_stack
// #27497
@SP
// #27498
A=M
// #27499
M=D
// #27500
@SP
// #27501
M=M+1
//vv push_d_to_stack
//push ARG
// #27502
@THIS
// #27503
D=M
//^^ push_d_to_stack
// #27504
@SP
// #27505
A=M
// #27506
M=D
// #27507
@SP
// #27508
M=M+1
//vv push_d_to_stack
//push THIS
// #27509
@THAT
// #27510
D=M
//^^ push_d_to_stack
// #27511
@SP
// #27512
A=M
// #27513
M=D
// #27514
@SP
// #27515
M=M+1
//vv push_d_to_stack
//push THAT
// #27516
@SP
// #27517
D=M
// #27518
@ARG
// #27519
M=D
// #27520
@6
// #27521
D=A
// #27522
@ARG
// #27523
M=M-D // ARG = SP - args - 5
// #27524
@SP
// #27525
D=M
// #27526
@LCL
// #27527
M=D // LCL = SP
// #27528
@Sys.error
// #27529
0;JMP
(RET_ADDR_250)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #27530
@SP
// #27531
M=M-1
// #27532
A=M
// #27533
D=M
//vv pop_stack_to_d
// #27534
@5
// #27535
M=D
//vv pop_to_loc{5)
//
//// label IF_FALSE0
(Screen.drawRectangle$IF_FALSE0)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #27536
@ARG
// #27537
D=M
// #27538
@0
// #27539
A=D+A
// #27540
D=M
//^^ push_d_to_stack
// #27541
@SP
// #27542
A=M
// #27543
M=D
// #27544
@SP
// #27545
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push constant 16
//^^ push_constant(16)
// #27546
@16
// #27547
D=A
//^^ push_d_to_stack
// #27548
@SP
// #27549
A=M
// #27550
M=D
// #27551
@SP
// #27552
M=M+1
//vv push_d_to_stack
//vv push_constant(16)
//
//// call Math.divide 2
//^^ push_constant(RET_ADDR_251)
// #27553
@RET_ADDR_251
// #27554
D=A
//^^ push_d_to_stack
// #27555
@SP
// #27556
A=M
// #27557
M=D
// #27558
@SP
// #27559
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_251)
//push return-address
// #27560
@LCL
// #27561
D=M
//^^ push_d_to_stack
// #27562
@SP
// #27563
A=M
// #27564
M=D
// #27565
@SP
// #27566
M=M+1
//vv push_d_to_stack
//push LCL
// #27567
@ARG
// #27568
D=M
//^^ push_d_to_stack
// #27569
@SP
// #27570
A=M
// #27571
M=D
// #27572
@SP
// #27573
M=M+1
//vv push_d_to_stack
//push ARG
// #27574
@THIS
// #27575
D=M
//^^ push_d_to_stack
// #27576
@SP
// #27577
A=M
// #27578
M=D
// #27579
@SP
// #27580
M=M+1
//vv push_d_to_stack
//push THIS
// #27581
@THAT
// #27582
D=M
//^^ push_d_to_stack
// #27583
@SP
// #27584
A=M
// #27585
M=D
// #27586
@SP
// #27587
M=M+1
//vv push_d_to_stack
//push THAT
// #27588
@SP
// #27589
D=M
// #27590
@ARG
// #27591
M=D
// #27592
@7
// #27593
D=A
// #27594
@ARG
// #27595
M=M-D // ARG = SP - args - 5
// #27596
@SP
// #27597
D=M
// #27598
@LCL
// #27599
M=D // LCL = SP
// #27600
@Math.divide
// #27601
0;JMP
(RET_ADDR_251)
//
//// pop local 3
//^^ pop_to_ram(LCL, 3)
// #27602
@LCL
// #27603
D=M
// #27604
@3
// #27605
D=D+A
// #27606
@R13
// #27607
M=D
//^^ pop_stack_to_d
// #27608
@SP
// #27609
M=M-1
// #27610
A=M
// #27611
D=M
//vv pop_stack_to_d
// #27612
@R13
// #27613
A=M
// #27614
M=D
// #27615
@R13
// #27616
M=0
//vv pop_to_ram(LCL, 3)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #27617
@ARG
// #27618
D=M
// #27619
@0
// #27620
A=D+A
// #27621
D=M
//^^ push_d_to_stack
// #27622
@SP
// #27623
A=M
// #27624
M=D
// #27625
@SP
// #27626
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push local 3
//^^ push_from_ram(LCL, 3)
// #27627
@LCL
// #27628
D=M
// #27629
@3
// #27630
A=D+A
// #27631
D=M
//^^ push_d_to_stack
// #27632
@SP
// #27633
A=M
// #27634
M=D
// #27635
@SP
// #27636
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 3)
//
//// push constant 16
//^^ push_constant(16)
// #27637
@16
// #27638
D=A
//^^ push_d_to_stack
// #27639
@SP
// #27640
A=M
// #27641
M=D
// #27642
@SP
// #27643
M=M+1
//vv push_d_to_stack
//vv push_constant(16)
//
//// call Math.multiply 2
//^^ push_constant(RET_ADDR_252)
// #27644
@RET_ADDR_252
// #27645
D=A
//^^ push_d_to_stack
// #27646
@SP
// #27647
A=M
// #27648
M=D
// #27649
@SP
// #27650
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_252)
//push return-address
// #27651
@LCL
// #27652
D=M
//^^ push_d_to_stack
// #27653
@SP
// #27654
A=M
// #27655
M=D
// #27656
@SP
// #27657
M=M+1
//vv push_d_to_stack
//push LCL
// #27658
@ARG
// #27659
D=M
//^^ push_d_to_stack
// #27660
@SP
// #27661
A=M
// #27662
M=D
// #27663
@SP
// #27664
M=M+1
//vv push_d_to_stack
//push ARG
// #27665
@THIS
// #27666
D=M
//^^ push_d_to_stack
// #27667
@SP
// #27668
A=M
// #27669
M=D
// #27670
@SP
// #27671
M=M+1
//vv push_d_to_stack
//push THIS
// #27672
@THAT
// #27673
D=M
//^^ push_d_to_stack
// #27674
@SP
// #27675
A=M
// #27676
M=D
// #27677
@SP
// #27678
M=M+1
//vv push_d_to_stack
//push THAT
// #27679
@SP
// #27680
D=M
// #27681
@ARG
// #27682
M=D
// #27683
@7
// #27684
D=A
// #27685
@ARG
// #27686
M=M-D // ARG = SP - args - 5
// #27687
@SP
// #27688
D=M
// #27689
@LCL
// #27690
M=D // LCL = SP
// #27691
@Math.multiply
// #27692
0;JMP
(RET_ADDR_252)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #27693
@SP
// #27694
M=M-1
// #27695
A=M
// #27696
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #27697
@R13
// #27698
M=D
//^^ pop_stack_to_d
// #27699
@SP
// #27700
M=M-1
// #27701
A=M
// #27702
D=M
//vv pop_stack_to_d
// #27703
@R13
// #27704
D=D-M
// #27705
@R13
// #27706
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #27707
@SP
// #27708
A=M
// #27709
M=D
// #27710
@SP
// #27711
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// pop local 7
//^^ pop_to_ram(LCL, 7)
// #27712
@LCL
// #27713
D=M
// #27714
@7
// #27715
D=D+A
// #27716
@R13
// #27717
M=D
//^^ pop_stack_to_d
// #27718
@SP
// #27719
M=M-1
// #27720
A=M
// #27721
D=M
//vv pop_stack_to_d
// #27722
@R13
// #27723
A=M
// #27724
M=D
// #27725
@R13
// #27726
M=0
//vv pop_to_ram(LCL, 7)
//
//// push argument 2
//^^ push_from_ram(ARG, 2)
// #27727
@ARG
// #27728
D=M
// #27729
@2
// #27730
A=D+A
// #27731
D=M
//^^ push_d_to_stack
// #27732
@SP
// #27733
A=M
// #27734
M=D
// #27735
@SP
// #27736
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 2)
//
//// push constant 16
//^^ push_constant(16)
// #27737
@16
// #27738
D=A
//^^ push_d_to_stack
// #27739
@SP
// #27740
A=M
// #27741
M=D
// #27742
@SP
// #27743
M=M+1
//vv push_d_to_stack
//vv push_constant(16)
//
//// call Math.divide 2
//^^ push_constant(RET_ADDR_253)
// #27744
@RET_ADDR_253
// #27745
D=A
//^^ push_d_to_stack
// #27746
@SP
// #27747
A=M
// #27748
M=D
// #27749
@SP
// #27750
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_253)
//push return-address
// #27751
@LCL
// #27752
D=M
//^^ push_d_to_stack
// #27753
@SP
// #27754
A=M
// #27755
M=D
// #27756
@SP
// #27757
M=M+1
//vv push_d_to_stack
//push LCL
// #27758
@ARG
// #27759
D=M
//^^ push_d_to_stack
// #27760
@SP
// #27761
A=M
// #27762
M=D
// #27763
@SP
// #27764
M=M+1
//vv push_d_to_stack
//push ARG
// #27765
@THIS
// #27766
D=M
//^^ push_d_to_stack
// #27767
@SP
// #27768
A=M
// #27769
M=D
// #27770
@SP
// #27771
M=M+1
//vv push_d_to_stack
//push THIS
// #27772
@THAT
// #27773
D=M
//^^ push_d_to_stack
// #27774
@SP
// #27775
A=M
// #27776
M=D
// #27777
@SP
// #27778
M=M+1
//vv push_d_to_stack
//push THAT
// #27779
@SP
// #27780
D=M
// #27781
@ARG
// #27782
M=D
// #27783
@7
// #27784
D=A
// #27785
@ARG
// #27786
M=M-D // ARG = SP - args - 5
// #27787
@SP
// #27788
D=M
// #27789
@LCL
// #27790
M=D // LCL = SP
// #27791
@Math.divide
// #27792
0;JMP
(RET_ADDR_253)
//
//// pop local 4
//^^ pop_to_ram(LCL, 4)
// #27793
@LCL
// #27794
D=M
// #27795
@4
// #27796
D=D+A
// #27797
@R13
// #27798
M=D
//^^ pop_stack_to_d
// #27799
@SP
// #27800
M=M-1
// #27801
A=M
// #27802
D=M
//vv pop_stack_to_d
// #27803
@R13
// #27804
A=M
// #27805
M=D
// #27806
@R13
// #27807
M=0
//vv pop_to_ram(LCL, 4)
//
//// push argument 2
//^^ push_from_ram(ARG, 2)
// #27808
@ARG
// #27809
D=M
// #27810
@2
// #27811
A=D+A
// #27812
D=M
//^^ push_d_to_stack
// #27813
@SP
// #27814
A=M
// #27815
M=D
// #27816
@SP
// #27817
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 2)
//
//// push local 4
//^^ push_from_ram(LCL, 4)
// #27818
@LCL
// #27819
D=M
// #27820
@4
// #27821
A=D+A
// #27822
D=M
//^^ push_d_to_stack
// #27823
@SP
// #27824
A=M
// #27825
M=D
// #27826
@SP
// #27827
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 4)
//
//// push constant 16
//^^ push_constant(16)
// #27828
@16
// #27829
D=A
//^^ push_d_to_stack
// #27830
@SP
// #27831
A=M
// #27832
M=D
// #27833
@SP
// #27834
M=M+1
//vv push_d_to_stack
//vv push_constant(16)
//
//// call Math.multiply 2
//^^ push_constant(RET_ADDR_254)
// #27835
@RET_ADDR_254
// #27836
D=A
//^^ push_d_to_stack
// #27837
@SP
// #27838
A=M
// #27839
M=D
// #27840
@SP
// #27841
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_254)
//push return-address
// #27842
@LCL
// #27843
D=M
//^^ push_d_to_stack
// #27844
@SP
// #27845
A=M
// #27846
M=D
// #27847
@SP
// #27848
M=M+1
//vv push_d_to_stack
//push LCL
// #27849
@ARG
// #27850
D=M
//^^ push_d_to_stack
// #27851
@SP
// #27852
A=M
// #27853
M=D
// #27854
@SP
// #27855
M=M+1
//vv push_d_to_stack
//push ARG
// #27856
@THIS
// #27857
D=M
//^^ push_d_to_stack
// #27858
@SP
// #27859
A=M
// #27860
M=D
// #27861
@SP
// #27862
M=M+1
//vv push_d_to_stack
//push THIS
// #27863
@THAT
// #27864
D=M
//^^ push_d_to_stack
// #27865
@SP
// #27866
A=M
// #27867
M=D
// #27868
@SP
// #27869
M=M+1
//vv push_d_to_stack
//push THAT
// #27870
@SP
// #27871
D=M
// #27872
@ARG
// #27873
M=D
// #27874
@7
// #27875
D=A
// #27876
@ARG
// #27877
M=M-D // ARG = SP - args - 5
// #27878
@SP
// #27879
D=M
// #27880
@LCL
// #27881
M=D // LCL = SP
// #27882
@Math.multiply
// #27883
0;JMP
(RET_ADDR_254)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #27884
@SP
// #27885
M=M-1
// #27886
A=M
// #27887
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #27888
@R13
// #27889
M=D
//^^ pop_stack_to_d
// #27890
@SP
// #27891
M=M-1
// #27892
A=M
// #27893
D=M
//vv pop_stack_to_d
// #27894
@R13
// #27895
D=D-M
// #27896
@R13
// #27897
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #27898
@SP
// #27899
A=M
// #27900
M=D
// #27901
@SP
// #27902
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// pop local 8
//^^ pop_to_ram(LCL, 8)
// #27903
@LCL
// #27904
D=M
// #27905
@8
// #27906
D=D+A
// #27907
@R13
// #27908
M=D
//^^ pop_stack_to_d
// #27909
@SP
// #27910
M=M-1
// #27911
A=M
// #27912
D=M
//vv pop_stack_to_d
// #27913
@R13
// #27914
A=M
// #27915
M=D
// #27916
@R13
// #27917
M=0
//vv pop_to_ram(LCL, 8)
//
//// push local 7
//^^ push_from_ram(LCL, 7)
// #27918
@LCL
// #27919
D=M
// #27920
@7
// #27921
A=D+A
// #27922
D=M
//^^ push_d_to_stack
// #27923
@SP
// #27924
A=M
// #27925
M=D
// #27926
@SP
// #27927
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 7)
//
//// push static 0
//^^ push_from_loc(Screen.vm.0)
// #27928
@Screen.vm.0
// #27929
D=M
//^^ push_d_to_stack
// #27930
@SP
// #27931
A=M
// #27932
M=D
// #27933
@SP
// #27934
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Screen.vm.0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #27935
@SP
// #27936
M=M-1
// #27937
A=M
// #27938
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #27939
@R13
// #27940
M=D
//^^ pop_stack_to_d
// #27941
@SP
// #27942
M=M-1
// #27943
A=M
// #27944
D=M
//vv pop_stack_to_d
// #27945
@R13
// #27946
D=D+M
// #27947
@R13
// #27948
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #27949
@SP
// #27950
A=M
// #27951
M=D
// #27952
@SP
// #27953
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #27954
@SP
// #27955
M=M-1
// #27956
A=M
// #27957
D=M
//vv pop_stack_to_d
// #27958
@4
// #27959
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #27960
@THAT
// #27961
D=M
// #27962
@0
// #27963
A=D+A
// #27964
D=M
//^^ push_d_to_stack
// #27965
@SP
// #27966
A=M
// #27967
M=D
// #27968
@SP
// #27969
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// push constant 1
//^^ push_constant(1)
// #27970
@1
// #27971
D=A
//^^ push_d_to_stack
// #27972
@SP
// #27973
A=M
// #27974
M=D
// #27975
@SP
// #27976
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #27977
@SP
// #27978
M=M-1
// #27979
A=M
// #27980
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #27981
@R13
// #27982
M=D
//^^ pop_stack_to_d
// #27983
@SP
// #27984
M=M-1
// #27985
A=M
// #27986
D=M
//vv pop_stack_to_d
// #27987
@R13
// #27988
D=D-M
// #27989
@R13
// #27990
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #27991
@SP
// #27992
A=M
// #27993
M=D
// #27994
@SP
// #27995
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #27996
@SP
// #27997
M=M-1
// #27998
A=M
// #27999
D=M
//vv pop_stack_to_d
// #28000
D=!D
//^^ push_d_to_stack
// #28001
@SP
// #28002
A=M
// #28003
M=D
// #28004
@SP
// #28005
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// pop local 6
//^^ pop_to_ram(LCL, 6)
// #28006
@LCL
// #28007
D=M
// #28008
@6
// #28009
D=D+A
// #28010
@R13
// #28011
M=D
//^^ pop_stack_to_d
// #28012
@SP
// #28013
M=M-1
// #28014
A=M
// #28015
D=M
//vv pop_stack_to_d
// #28016
@R13
// #28017
A=M
// #28018
M=D
// #28019
@R13
// #28020
M=0
//vv pop_to_ram(LCL, 6)
//
//// push local 8
//^^ push_from_ram(LCL, 8)
// #28021
@LCL
// #28022
D=M
// #28023
@8
// #28024
A=D+A
// #28025
D=M
//^^ push_d_to_stack
// #28026
@SP
// #28027
A=M
// #28028
M=D
// #28029
@SP
// #28030
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 8)
//
//// push constant 1
//^^ push_constant(1)
// #28031
@1
// #28032
D=A
//^^ push_d_to_stack
// #28033
@SP
// #28034
A=M
// #28035
M=D
// #28036
@SP
// #28037
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #28038
@SP
// #28039
M=M-1
// #28040
A=M
// #28041
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #28042
@R13
// #28043
M=D
//^^ pop_stack_to_d
// #28044
@SP
// #28045
M=M-1
// #28046
A=M
// #28047
D=M
//vv pop_stack_to_d
// #28048
@R13
// #28049
D=D+M
// #28050
@R13
// #28051
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #28052
@SP
// #28053
A=M
// #28054
M=D
// #28055
@SP
// #28056
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push static 0
//^^ push_from_loc(Screen.vm.0)
// #28057
@Screen.vm.0
// #28058
D=M
//^^ push_d_to_stack
// #28059
@SP
// #28060
A=M
// #28061
M=D
// #28062
@SP
// #28063
M=M+1
//vv push_d_to_stack
//vv push_from_loc(Screen.vm.0)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #28064
@SP
// #28065
M=M-1
// #28066
A=M
// #28067
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #28068
@R13
// #28069
M=D
//^^ pop_stack_to_d
// #28070
@SP
// #28071
M=M-1
// #28072
A=M
// #28073
D=M
//vv pop_stack_to_d
// #28074
@R13
// #28075
D=D+M
// #28076
@R13
// #28077
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #28078
@SP
// #28079
A=M
// #28080
M=D
// #28081
@SP
// #28082
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
// #28083
@SP
// #28084
M=M-1
// #28085
A=M
// #28086
D=M
//vv pop_stack_to_d
// #28087
@4
// #28088
M=D
//vv pop_to_loc{4)
//
//// push that 0
//^^ push_from_ram(THAT, 0)
// #28089
@THAT
// #28090
D=M
// #28091
@0
// #28092
A=D+A
// #28093
D=M
//^^ push_d_to_stack
// #28094
@SP
// #28095
A=M
// #28096
M=D
// #28097
@SP
// #28098
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 0)
//
//// push constant 1
//^^ push_constant(1)
// #28099
@1
// #28100
D=A
//^^ push_d_to_stack
// #28101
@SP
// #28102
A=M
// #28103
M=D
// #28104
@SP
// #28105
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #28106
@SP
// #28107
M=M-1
// #28108
A=M
// #28109
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #28110
@R13
// #28111
M=D
//^^ pop_stack_to_d
// #28112
@SP
// #28113
M=M-1
// #28114
A=M
// #28115
D=M
//vv pop_stack_to_d
// #28116
@R13
// #28117
D=D-M
// #28118
@R13
// #28119
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #28120
@SP
// #28121
A=M
// #28122
M=D
// #28123
@SP
// #28124
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// pop local 5
//^^ pop_to_ram(LCL, 5)
// #28125
@LCL
// #28126
D=M
// #28127
@5
// #28128
D=D+A
// #28129
@R13
// #28130
M=D
//^^ pop_stack_to_d
// #28131
@SP
// #28132
M=M-1
// #28133
A=M
// #28134
D=M
//vv pop_stack_to_d
// #28135
@R13
// #28136
A=M
// #28137
M=D
// #28138
@R13
// #28139
M=0
//vv pop_to_ram(LCL, 5)
//
//// push argument 1
//^^ push_from_ram(ARG, 1)
// #28140
@ARG
// #28141
D=M
// #28142
@1
// #28143
A=D+A
// #28144
D=M
//^^ push_d_to_stack
// #28145
@SP
// #28146
A=M
// #28147
M=D
// #28148
@SP
// #28149
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 1)
//
//// push constant 32
//^^ push_constant(32)
// #28150
@32
// #28151
D=A
//^^ push_d_to_stack
// #28152
@SP
// #28153
A=M
// #28154
M=D
// #28155
@SP
// #28156
M=M+1
//vv push_d_to_stack
//vv push_constant(32)
//
//// call Math.multiply 2
//^^ push_constant(RET_ADDR_255)
// #28157
@RET_ADDR_255
// #28158
D=A
//^^ push_d_to_stack
// #28159
@SP
// #28160
A=M
// #28161
M=D
// #28162
@SP
// #28163
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_255)
//push return-address
// #28164
@LCL
// #28165
D=M
//^^ push_d_to_stack
// #28166
@SP
// #28167
A=M
// #28168
M=D
// #28169
@SP
// #28170
M=M+1
//vv push_d_to_stack
//push LCL
// #28171
@ARG
// #28172
D=M
//^^ push_d_to_stack
// #28173
@SP
// #28174
A=M
// #28175
M=D
// #28176
@SP
// #28177
M=M+1
//vv push_d_to_stack
//push ARG
// #28178
@THIS
// #28179
D=M
//^^ push_d_to_stack
// #28180
@SP
// #28181
A=M
// #28182
M=D
// #28183
@SP
// #28184
M=M+1
//vv push_d_to_stack
//push THIS
// #28185
@THAT
// #28186
D=M
//^^ push_d_to_stack
// #28187
@SP
// #28188
A=M
// #28189
M=D
// #28190
@SP
// #28191
M=M+1
//vv push_d_to_stack
//push THAT
// #28192
@SP
// #28193
D=M
// #28194
@ARG
// #28195
M=D
// #28196
@7
// #28197
D=A
// #28198
@ARG
// #28199
M=M-D // ARG = SP - args - 5
// #28200
@SP
// #28201
D=M
// #28202
@LCL
// #28203
M=D // LCL = SP
// #28204
@Math.multiply
// #28205
0;JMP
(RET_ADDR_255)
//
//// push local 3
//^^ push_from_ram(LCL, 3)
// #28206
@LCL
// #28207
D=M
// #28208
@3
// #28209
A=D+A
// #28210
D=M
//^^ push_d_to_stack
// #28211
@SP
// #28212
A=M
// #28213
M=D
// #28214
@SP
// #28215
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 3)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #28216
@SP
// #28217
M=M-1
// #28218
A=M
// #28219
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #28220
@R13
// #28221
M=D
//^^ pop_stack_to_d
// #28222
@SP
// #28223
M=M-1
// #28224
A=M
// #28225
D=M
//vv pop_stack_to_d
// #28226
@R13
// #28227
D=D+M
// #28228
@R13
// #28229
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #28230
@SP
// #28231
A=M
// #28232
M=D
// #28233
@SP
// #28234
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
// #28235
@LCL
// #28236
D=M
// #28237
@0
// #28238
D=D+A
// #28239
@R13
// #28240
M=D
//^^ pop_stack_to_d
// #28241
@SP
// #28242
M=M-1
// #28243
A=M
// #28244
D=M
//vv pop_stack_to_d
// #28245
@R13
// #28246
A=M
// #28247
M=D
// #28248
@R13
// #28249
M=0
//vv pop_to_ram(LCL, 0)
//
//// push local 4
//^^ push_from_ram(LCL, 4)
// #28250
@LCL
// #28251
D=M
// #28252
@4
// #28253
A=D+A
// #28254
D=M
//^^ push_d_to_stack
// #28255
@SP
// #28256
A=M
// #28257
M=D
// #28258
@SP
// #28259
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 4)
//
//// push local 3
//^^ push_from_ram(LCL, 3)
// #28260
@LCL
// #28261
D=M
// #28262
@3
// #28263
A=D+A
// #28264
D=M
//^^ push_d_to_stack
// #28265
@SP
// #28266
A=M
// #28267
M=D
// #28268
@SP
// #28269
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 3)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #28270
@SP
// #28271
M=M-1
// #28272
A=M
// #28273
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #28274
@R13
// #28275
M=D
//^^ pop_stack_to_d
// #28276
@SP
// #28277
M=M-1
// #28278
A=M
// #28279
D=M
//vv pop_stack_to_d
// #28280
@R13
// #28281
D=D-M
// #28282
@R13
// #28283
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #28284
@SP
// #28285
A=M
// #28286
M=D
// #28287
@SP
// #28288
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// pop local 2
//^^ pop_to_ram(LCL, 2)
// #28289
@LCL
// #28290
D=M
// #28291
@2
// #28292
D=D+A
// #28293
@R13
// #28294
M=D
//^^ pop_stack_to_d
// #28295
@SP
// #28296
M=M-1
// #28297
A=M
// #28298
D=M
//vv pop_stack_to_d
// #28299
@R13
// #28300
A=M
// #28301
M=D
// #28302
@R13
// #28303
M=0
//vv pop_to_ram(LCL, 2)
//
//// label WHILE_EXP0
(Screen.drawRectangle$WHILE_EXP0)
//
//// push argument 1
//^^ push_from_ram(ARG, 1)
// #28304
@ARG
// #28305
D=M
// #28306
@1
// #28307
A=D+A
// #28308
D=M
//^^ push_d_to_stack
// #28309
@SP
// #28310
A=M
// #28311
M=D
// #28312
@SP
// #28313
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 1)
//
//// push argument 3
//^^ push_from_ram(ARG, 3)
// #28314
@ARG
// #28315
D=M
// #28316
@3
// #28317
A=D+A
// #28318
D=M
//^^ push_d_to_stack
// #28319
@SP
// #28320
A=M
// #28321
M=D
// #28322
@SP
// #28323
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 3)
//
//// gt
//^^ arith_cmp_op(JGT)
//^^ pop_stack_to_d
// #28324
@SP
// #28325
M=M-1
// #28326
A=M
// #28327
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #28328
@R13
// #28329
M=D
//^^ pop_stack_to_d
// #28330
@SP
// #28331
M=M-1
// #28332
A=M
// #28333
D=M
//vv pop_stack_to_d
// #28334
@R13
// #28335
D=D-M
// #28336
@R13
// #28337
M=0
//vv arith_d_with_stack_top(D-M)
// #28338
@PUT_TRUE_256
// #28339
D;JGT
// #28340
@R13
// #28341
M=0
// #28342
@CONT_256
// #28343
0;JMP
(PUT_TRUE_256)
// #28344
@R13
// #28345
M=-1
(CONT_256)
// #28346
@R13
// #28347
D=M
// #28348
@R13
// #28349
M=0
//^^ push_d_to_stack
// #28350
@SP
// #28351
A=M
// #28352
M=D
// #28353
@SP
// #28354
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JGT)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #28355
@SP
// #28356
M=M-1
// #28357
A=M
// #28358
D=M
//vv pop_stack_to_d
// #28359
D=!D
//^^ push_d_to_stack
// #28360
@SP
// #28361
A=M
// #28362
M=D
// #28363
@SP
// #28364
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #28365
@SP
// #28366
M=M-1
// #28367
A=M
// #28368
D=M
//vv pop_stack_to_d
// #28369
D=!D
//^^ push_d_to_stack
// #28370
@SP
// #28371
A=M
// #28372
M=D
// #28373
@SP
// #28374
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// if-goto WHILE_END0
//^^ pop_stack_to_d
// #28375
@SP
// #28376
M=M-1
// #28377
A=M
// #28378
D=M
//vv pop_stack_to_d
// #28379
@Screen.drawRectangle$WHILE_END0
// #28380
D;JNE
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #28381
@LCL
// #28382
D=M
// #28383
@0
// #28384
A=D+A
// #28385
D=M
//^^ push_d_to_stack
// #28386
@SP
// #28387
A=M
// #28388
M=D
// #28389
@SP
// #28390
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push local 2
//^^ push_from_ram(LCL, 2)
// #28391
@LCL
// #28392
D=M
// #28393
@2
// #28394
A=D+A
// #28395
D=M
//^^ push_d_to_stack
// #28396
@SP
// #28397
A=M
// #28398
M=D
// #28399
@SP
// #28400
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #28401
@SP
// #28402
M=M-1
// #28403
A=M
// #28404
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #28405
@R13
// #28406
M=D
//^^ pop_stack_to_d
// #28407
@SP
// #28408
M=M-1
// #28409
A=M
// #28410
D=M
//vv pop_stack_to_d
// #28411
@R13
// #28412
D=D+M
// #28413
@R13
// #28414
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #28415
@SP
// #28416
A=M
// #28417
M=D
// #28418
@SP
// #28419
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop local 1
//^^ pop_to_ram(LCL, 1)
// #28420
@LCL
// #28421
D=M
// #28422
@1
// #28423
D=D+A
// #28424
@R13
// #28425
M=D
//^^ pop_stack_to_d
// #28426
@SP
// #28427
M=M-1
// #28428
A=M
// #28429
D=M
//vv pop_stack_to_d
// #28430
@R13
// #28431
A=M
// #28432
M=D
// #28433
@R13
// #28434
M=0
//vv pop_to_ram(LCL, 1)
//
//// push local 2
//^^ push_from_ram(LCL, 2)
// #28435
@LCL
// #28436
D=M
// #28437
@2
// #28438
A=D+A
// #28439
D=M
//^^ push_d_to_stack
// #28440
@SP
// #28441
A=M
// #28442
M=D
// #28443
@SP
// #28444
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 2)
//
//// push constant 0
//^^ push_constant(0)
// #28445
@0
// #28446
D=A
//^^ push_d_to_stack
// #28447
@SP
// #28448
A=M
// #28449
M=D
// #28450
@SP
// #28451
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #28452
@SP
// #28453
M=M-1
// #28454
A=M
// #28455
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #28456
@R13
// #28457
M=D
//^^ pop_stack_to_d
// #28458
@SP
// #28459
M=M-1
// #28460
A=M
// #28461
D=M
//vv pop_stack_to_d
// #28462
@R13
// #28463
D=D-M
// #28464
@R13
// #28465
M=0
//vv arith_d_with_stack_top(D-M)
// #28466
@PUT_TRUE_257
// #28467
D;JEQ
// #28468
@R13
// #28469
M=0
// #28470
@CONT_257
// #28471
0;JMP
(PUT_TRUE_257)
// #28472
@R13
// #28473
M=-1
(CONT_257)
// #28474
@R13
// #28475
D=M
// #28476
@R13
// #28477
M=0
//^^ push_d_to_stack
// #28478
@SP
// #28479
A=M
// #28480
M=D
// #28481
@SP
// #28482
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// if-goto IF_TRUE1
//^^ pop_stack_to_d
// #28483
@SP
// #28484
M=M-1
// #28485
A=M
// #28486
D=M
//vv pop_stack_to_d
// #28487
@Screen.drawRectangle$IF_TRUE1
// #28488
D;JNE
//
//// goto IF_FALSE1
// #28489
@Screen.drawRectangle$IF_FALSE1
// #28490
0;JMP
//
//// label IF_TRUE1
(Screen.drawRectangle$IF_TRUE1)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #28491
@LCL
// #28492
D=M
// #28493
@0
// #28494
A=D+A
// #28495
D=M
//^^ push_d_to_stack
// #28496
@SP
// #28497
A=M
// #28498
M=D
// #28499
@SP
// #28500
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push local 5
//^^ push_from_ram(LCL, 5)
// #28501
@LCL
// #28502
D=M
// #28503
@5
// #28504
A=D+A
// #28505
D=M
//^^ push_d_to_stack
// #28506
@SP
// #28507
A=M
// #28508
M=D
// #28509
@SP
// #28510
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 5)
//
//// push local 6
//^^ push_from_ram(LCL, 6)
// #28511
@LCL
// #28512
D=M
// #28513
@6
// #28514
A=D+A
// #28515
D=M
//^^ push_d_to_stack
// #28516
@SP
// #28517
A=M
// #28518
M=D
// #28519
@SP
// #28520
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 6)
//
//// and
//^^ arith_binary_op(&)
//^^ pop_stack_to_d
// #28521
@SP
// #28522
M=M-1
// #28523
A=M
// #28524
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D&M)
// #28525
@R13
// #28526
M=D
//^^ pop_stack_to_d
// #28527
@SP
// #28528
M=M-1
// #28529
A=M
// #28530
D=M
//vv pop_stack_to_d
// #28531
@R13
// #28532
D=D&M
// #28533
@R13
// #28534
M=0
//vv arith_d_with_stack_top(D&M)
//^^ push_d_to_stack
// #28535
@SP
// #28536
A=M
// #28537
M=D
// #28538
@SP
// #28539
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(&)
//
//// call Screen.updateLocation 2
//^^ push_constant(RET_ADDR_258)
// #28540
@RET_ADDR_258
// #28541
D=A
//^^ push_d_to_stack
// #28542
@SP
// #28543
A=M
// #28544
M=D
// #28545
@SP
// #28546
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_258)
//push return-address
// #28547
@LCL
// #28548
D=M
//^^ push_d_to_stack
// #28549
@SP
// #28550
A=M
// #28551
M=D
// #28552
@SP
// #28553
M=M+1
//vv push_d_to_stack
//push LCL
// #28554
@ARG
// #28555
D=M
//^^ push_d_to_stack
// #28556
@SP
// #28557
A=M
// #28558
M=D
// #28559
@SP
// #28560
M=M+1
//vv push_d_to_stack
//push ARG
// #28561
@THIS
// #28562
D=M
//^^ push_d_to_stack
// #28563
@SP
// #28564
A=M
// #28565
M=D
// #28566
@SP
// #28567
M=M+1
//vv push_d_to_stack
//push THIS
// #28568
@THAT
// #28569
D=M
//^^ push_d_to_stack
// #28570
@SP
// #28571
A=M
// #28572
M=D
// #28573
@SP
// #28574
M=M+1
//vv push_d_to_stack
//push THAT
// #28575
@SP
// #28576
D=M
// #28577
@ARG
// #28578
M=D
// #28579
@7
// #28580
D=A
// #28581
@ARG
// #28582
M=M-D // ARG = SP - args - 5
// #28583
@SP
// #28584
D=M
// #28585
@LCL
// #28586
M=D // LCL = SP
// #28587
@Screen.updateLocation
// #28588
0;JMP
(RET_ADDR_258)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #28589
@SP
// #28590
M=M-1
// #28591
A=M
// #28592
D=M
//vv pop_stack_to_d
// #28593
@5
// #28594
M=D
//vv pop_to_loc{5)
//
//// goto IF_END1
// #28595
@Screen.drawRectangle$IF_END1
// #28596
0;JMP
//
//// label IF_FALSE1
(Screen.drawRectangle$IF_FALSE1)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #28597
@LCL
// #28598
D=M
// #28599
@0
// #28600
A=D+A
// #28601
D=M
//^^ push_d_to_stack
// #28602
@SP
// #28603
A=M
// #28604
M=D
// #28605
@SP
// #28606
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push local 6
//^^ push_from_ram(LCL, 6)
// #28607
@LCL
// #28608
D=M
// #28609
@6
// #28610
A=D+A
// #28611
D=M
//^^ push_d_to_stack
// #28612
@SP
// #28613
A=M
// #28614
M=D
// #28615
@SP
// #28616
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 6)
//
//// call Screen.updateLocation 2
//^^ push_constant(RET_ADDR_259)
// #28617
@RET_ADDR_259
// #28618
D=A
//^^ push_d_to_stack
// #28619
@SP
// #28620
A=M
// #28621
M=D
// #28622
@SP
// #28623
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_259)
//push return-address
// #28624
@LCL
// #28625
D=M
//^^ push_d_to_stack
// #28626
@SP
// #28627
A=M
// #28628
M=D
// #28629
@SP
// #28630
M=M+1
//vv push_d_to_stack
//push LCL
// #28631
@ARG
// #28632
D=M
//^^ push_d_to_stack
// #28633
@SP
// #28634
A=M
// #28635
M=D
// #28636
@SP
// #28637
M=M+1
//vv push_d_to_stack
//push ARG
// #28638
@THIS
// #28639
D=M
//^^ push_d_to_stack
// #28640
@SP
// #28641
A=M
// #28642
M=D
// #28643
@SP
// #28644
M=M+1
//vv push_d_to_stack
//push THIS
// #28645
@THAT
// #28646
D=M
//^^ push_d_to_stack
// #28647
@SP
// #28648
A=M
// #28649
M=D
// #28650
@SP
// #28651
M=M+1
//vv push_d_to_stack
//push THAT
// #28652
@SP
// #28653
D=M
// #28654
@ARG
// #28655
M=D
// #28656
@7
// #28657
D=A
// #28658
@ARG
// #28659
M=M-D // ARG = SP - args - 5
// #28660
@SP
// #28661
D=M
// #28662
@LCL
// #28663
M=D // LCL = SP
// #28664
@Screen.updateLocation
// #28665
0;JMP
(RET_ADDR_259)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #28666
@SP
// #28667
M=M-1
// #28668
A=M
// #28669
D=M
//vv pop_stack_to_d
// #28670
@5
// #28671
M=D
//vv pop_to_loc{5)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #28672
@LCL
// #28673
D=M
// #28674
@0
// #28675
A=D+A
// #28676
D=M
//^^ push_d_to_stack
// #28677
@SP
// #28678
A=M
// #28679
M=D
// #28680
@SP
// #28681
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 1
//^^ push_constant(1)
// #28682
@1
// #28683
D=A
//^^ push_d_to_stack
// #28684
@SP
// #28685
A=M
// #28686
M=D
// #28687
@SP
// #28688
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #28689
@SP
// #28690
M=M-1
// #28691
A=M
// #28692
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #28693
@R13
// #28694
M=D
//^^ pop_stack_to_d
// #28695
@SP
// #28696
M=M-1
// #28697
A=M
// #28698
D=M
//vv pop_stack_to_d
// #28699
@R13
// #28700
D=D+M
// #28701
@R13
// #28702
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #28703
@SP
// #28704
A=M
// #28705
M=D
// #28706
@SP
// #28707
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
// #28708
@LCL
// #28709
D=M
// #28710
@0
// #28711
D=D+A
// #28712
@R13
// #28713
M=D
//^^ pop_stack_to_d
// #28714
@SP
// #28715
M=M-1
// #28716
A=M
// #28717
D=M
//vv pop_stack_to_d
// #28718
@R13
// #28719
A=M
// #28720
M=D
// #28721
@R13
// #28722
M=0
//vv pop_to_ram(LCL, 0)
//
//// label WHILE_EXP1
(Screen.drawRectangle$WHILE_EXP1)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #28723
@LCL
// #28724
D=M
// #28725
@0
// #28726
A=D+A
// #28727
D=M
//^^ push_d_to_stack
// #28728
@SP
// #28729
A=M
// #28730
M=D
// #28731
@SP
// #28732
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push local 1
//^^ push_from_ram(LCL, 1)
// #28733
@LCL
// #28734
D=M
// #28735
@1
// #28736
A=D+A
// #28737
D=M
//^^ push_d_to_stack
// #28738
@SP
// #28739
A=M
// #28740
M=D
// #28741
@SP
// #28742
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 1)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #28743
@SP
// #28744
M=M-1
// #28745
A=M
// #28746
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #28747
@R13
// #28748
M=D
//^^ pop_stack_to_d
// #28749
@SP
// #28750
M=M-1
// #28751
A=M
// #28752
D=M
//vv pop_stack_to_d
// #28753
@R13
// #28754
D=D-M
// #28755
@R13
// #28756
M=0
//vv arith_d_with_stack_top(D-M)
// #28757
@PUT_TRUE_260
// #28758
D;JLT
// #28759
@R13
// #28760
M=0
// #28761
@CONT_260
// #28762
0;JMP
(PUT_TRUE_260)
// #28763
@R13
// #28764
M=-1
(CONT_260)
// #28765
@R13
// #28766
D=M
// #28767
@R13
// #28768
M=0
//^^ push_d_to_stack
// #28769
@SP
// #28770
A=M
// #28771
M=D
// #28772
@SP
// #28773
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #28774
@SP
// #28775
M=M-1
// #28776
A=M
// #28777
D=M
//vv pop_stack_to_d
// #28778
D=!D
//^^ push_d_to_stack
// #28779
@SP
// #28780
A=M
// #28781
M=D
// #28782
@SP
// #28783
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// if-goto WHILE_END1
//^^ pop_stack_to_d
// #28784
@SP
// #28785
M=M-1
// #28786
A=M
// #28787
D=M
//vv pop_stack_to_d
// #28788
@Screen.drawRectangle$WHILE_END1
// #28789
D;JNE
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #28790
@LCL
// #28791
D=M
// #28792
@0
// #28793
A=D+A
// #28794
D=M
//^^ push_d_to_stack
// #28795
@SP
// #28796
A=M
// #28797
M=D
// #28798
@SP
// #28799
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 1
//^^ push_constant(1)
// #28800
@1
// #28801
D=A
//^^ push_d_to_stack
// #28802
@SP
// #28803
A=M
// #28804
M=D
// #28805
@SP
// #28806
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// neg
//^^ arith_unary_op(-)
//^^ pop_stack_to_d
// #28807
@SP
// #28808
M=M-1
// #28809
A=M
// #28810
D=M
//vv pop_stack_to_d
// #28811
D=-D
//^^ push_d_to_stack
// #28812
@SP
// #28813
A=M
// #28814
M=D
// #28815
@SP
// #28816
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(-)
//
//// call Screen.updateLocation 2
//^^ push_constant(RET_ADDR_261)
// #28817
@RET_ADDR_261
// #28818
D=A
//^^ push_d_to_stack
// #28819
@SP
// #28820
A=M
// #28821
M=D
// #28822
@SP
// #28823
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_261)
//push return-address
// #28824
@LCL
// #28825
D=M
//^^ push_d_to_stack
// #28826
@SP
// #28827
A=M
// #28828
M=D
// #28829
@SP
// #28830
M=M+1
//vv push_d_to_stack
//push LCL
// #28831
@ARG
// #28832
D=M
//^^ push_d_to_stack
// #28833
@SP
// #28834
A=M
// #28835
M=D
// #28836
@SP
// #28837
M=M+1
//vv push_d_to_stack
//push ARG
// #28838
@THIS
// #28839
D=M
//^^ push_d_to_stack
// #28840
@SP
// #28841
A=M
// #28842
M=D
// #28843
@SP
// #28844
M=M+1
//vv push_d_to_stack
//push THIS
// #28845
@THAT
// #28846
D=M
//^^ push_d_to_stack
// #28847
@SP
// #28848
A=M
// #28849
M=D
// #28850
@SP
// #28851
M=M+1
//vv push_d_to_stack
//push THAT
// #28852
@SP
// #28853
D=M
// #28854
@ARG
// #28855
M=D
// #28856
@7
// #28857
D=A
// #28858
@ARG
// #28859
M=M-D // ARG = SP - args - 5
// #28860
@SP
// #28861
D=M
// #28862
@LCL
// #28863
M=D // LCL = SP
// #28864
@Screen.updateLocation
// #28865
0;JMP
(RET_ADDR_261)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #28866
@SP
// #28867
M=M-1
// #28868
A=M
// #28869
D=M
//vv pop_stack_to_d
// #28870
@5
// #28871
M=D
//vv pop_to_loc{5)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #28872
@LCL
// #28873
D=M
// #28874
@0
// #28875
A=D+A
// #28876
D=M
//^^ push_d_to_stack
// #28877
@SP
// #28878
A=M
// #28879
M=D
// #28880
@SP
// #28881
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 1
//^^ push_constant(1)
// #28882
@1
// #28883
D=A
//^^ push_d_to_stack
// #28884
@SP
// #28885
A=M
// #28886
M=D
// #28887
@SP
// #28888
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #28889
@SP
// #28890
M=M-1
// #28891
A=M
// #28892
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #28893
@R13
// #28894
M=D
//^^ pop_stack_to_d
// #28895
@SP
// #28896
M=M-1
// #28897
A=M
// #28898
D=M
//vv pop_stack_to_d
// #28899
@R13
// #28900
D=D+M
// #28901
@R13
// #28902
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #28903
@SP
// #28904
A=M
// #28905
M=D
// #28906
@SP
// #28907
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
// #28908
@LCL
// #28909
D=M
// #28910
@0
// #28911
D=D+A
// #28912
@R13
// #28913
M=D
//^^ pop_stack_to_d
// #28914
@SP
// #28915
M=M-1
// #28916
A=M
// #28917
D=M
//vv pop_stack_to_d
// #28918
@R13
// #28919
A=M
// #28920
M=D
// #28921
@R13
// #28922
M=0
//vv pop_to_ram(LCL, 0)
//
//// goto WHILE_EXP1
// #28923
@Screen.drawRectangle$WHILE_EXP1
// #28924
0;JMP
//
//// label WHILE_END1
(Screen.drawRectangle$WHILE_END1)
//
//// push local 1
//^^ push_from_ram(LCL, 1)
// #28925
@LCL
// #28926
D=M
// #28927
@1
// #28928
A=D+A
// #28929
D=M
//^^ push_d_to_stack
// #28930
@SP
// #28931
A=M
// #28932
M=D
// #28933
@SP
// #28934
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 1)
//
//// push local 5
//^^ push_from_ram(LCL, 5)
// #28935
@LCL
// #28936
D=M
// #28937
@5
// #28938
A=D+A
// #28939
D=M
//^^ push_d_to_stack
// #28940
@SP
// #28941
A=M
// #28942
M=D
// #28943
@SP
// #28944
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 5)
//
//// call Screen.updateLocation 2
//^^ push_constant(RET_ADDR_262)
// #28945
@RET_ADDR_262
// #28946
D=A
//^^ push_d_to_stack
// #28947
@SP
// #28948
A=M
// #28949
M=D
// #28950
@SP
// #28951
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_262)
//push return-address
// #28952
@LCL
// #28953
D=M
//^^ push_d_to_stack
// #28954
@SP
// #28955
A=M
// #28956
M=D
// #28957
@SP
// #28958
M=M+1
//vv push_d_to_stack
//push LCL
// #28959
@ARG
// #28960
D=M
//^^ push_d_to_stack
// #28961
@SP
// #28962
A=M
// #28963
M=D
// #28964
@SP
// #28965
M=M+1
//vv push_d_to_stack
//push ARG
// #28966
@THIS
// #28967
D=M
//^^ push_d_to_stack
// #28968
@SP
// #28969
A=M
// #28970
M=D
// #28971
@SP
// #28972
M=M+1
//vv push_d_to_stack
//push THIS
// #28973
@THAT
// #28974
D=M
//^^ push_d_to_stack
// #28975
@SP
// #28976
A=M
// #28977
M=D
// #28978
@SP
// #28979
M=M+1
//vv push_d_to_stack
//push THAT
// #28980
@SP
// #28981
D=M
// #28982
@ARG
// #28983
M=D
// #28984
@7
// #28985
D=A
// #28986
@ARG
// #28987
M=M-D // ARG = SP - args - 5
// #28988
@SP
// #28989
D=M
// #28990
@LCL
// #28991
M=D // LCL = SP
// #28992
@Screen.updateLocation
// #28993
0;JMP
(RET_ADDR_262)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #28994
@SP
// #28995
M=M-1
// #28996
A=M
// #28997
D=M
//vv pop_stack_to_d
// #28998
@5
// #28999
M=D
//vv pop_to_loc{5)
//
//// label IF_END1
(Screen.drawRectangle$IF_END1)
//
//// push argument 1
//^^ push_from_ram(ARG, 1)
// #29000
@ARG
// #29001
D=M
// #29002
@1
// #29003
A=D+A
// #29004
D=M
//^^ push_d_to_stack
// #29005
@SP
// #29006
A=M
// #29007
M=D
// #29008
@SP
// #29009
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 1)
//
//// push constant 1
//^^ push_constant(1)
// #29010
@1
// #29011
D=A
//^^ push_d_to_stack
// #29012
@SP
// #29013
A=M
// #29014
M=D
// #29015
@SP
// #29016
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #29017
@SP
// #29018
M=M-1
// #29019
A=M
// #29020
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #29021
@R13
// #29022
M=D
//^^ pop_stack_to_d
// #29023
@SP
// #29024
M=M-1
// #29025
A=M
// #29026
D=M
//vv pop_stack_to_d
// #29027
@R13
// #29028
D=D+M
// #29029
@R13
// #29030
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #29031
@SP
// #29032
A=M
// #29033
M=D
// #29034
@SP
// #29035
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop argument 1
//^^ pop_to_ram(ARG, 1)
// #29036
@ARG
// #29037
D=M
// #29038
@1
// #29039
D=D+A
// #29040
@R13
// #29041
M=D
//^^ pop_stack_to_d
// #29042
@SP
// #29043
M=M-1
// #29044
A=M
// #29045
D=M
//vv pop_stack_to_d
// #29046
@R13
// #29047
A=M
// #29048
M=D
// #29049
@R13
// #29050
M=0
//vv pop_to_ram(ARG, 1)
//
//// push local 1
//^^ push_from_ram(LCL, 1)
// #29051
@LCL
// #29052
D=M
// #29053
@1
// #29054
A=D+A
// #29055
D=M
//^^ push_d_to_stack
// #29056
@SP
// #29057
A=M
// #29058
M=D
// #29059
@SP
// #29060
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 1)
//
//// push constant 32
//^^ push_constant(32)
// #29061
@32
// #29062
D=A
//^^ push_d_to_stack
// #29063
@SP
// #29064
A=M
// #29065
M=D
// #29066
@SP
// #29067
M=M+1
//vv push_d_to_stack
//vv push_constant(32)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #29068
@SP
// #29069
M=M-1
// #29070
A=M
// #29071
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #29072
@R13
// #29073
M=D
//^^ pop_stack_to_d
// #29074
@SP
// #29075
M=M-1
// #29076
A=M
// #29077
D=M
//vv pop_stack_to_d
// #29078
@R13
// #29079
D=D+M
// #29080
@R13
// #29081
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #29082
@SP
// #29083
A=M
// #29084
M=D
// #29085
@SP
// #29086
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push local 2
//^^ push_from_ram(LCL, 2)
// #29087
@LCL
// #29088
D=M
// #29089
@2
// #29090
A=D+A
// #29091
D=M
//^^ push_d_to_stack
// #29092
@SP
// #29093
A=M
// #29094
M=D
// #29095
@SP
// #29096
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 2)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #29097
@SP
// #29098
M=M-1
// #29099
A=M
// #29100
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #29101
@R13
// #29102
M=D
//^^ pop_stack_to_d
// #29103
@SP
// #29104
M=M-1
// #29105
A=M
// #29106
D=M
//vv pop_stack_to_d
// #29107
@R13
// #29108
D=D-M
// #29109
@R13
// #29110
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #29111
@SP
// #29112
A=M
// #29113
M=D
// #29114
@SP
// #29115
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
// #29116
@LCL
// #29117
D=M
// #29118
@0
// #29119
D=D+A
// #29120
@R13
// #29121
M=D
//^^ pop_stack_to_d
// #29122
@SP
// #29123
M=M-1
// #29124
A=M
// #29125
D=M
//vv pop_stack_to_d
// #29126
@R13
// #29127
A=M
// #29128
M=D
// #29129
@R13
// #29130
M=0
//vv pop_to_ram(LCL, 0)
//
//// goto WHILE_EXP0
// #29131
@Screen.drawRectangle$WHILE_EXP0
// #29132
0;JMP
//
//// label WHILE_END0
(Screen.drawRectangle$WHILE_END0)
//
//// push constant 0
//^^ push_constant(0)
// #29133
@0
// #29134
D=A
//^^ push_d_to_stack
// #29135
@SP
// #29136
A=M
// #29137
M=D
// #29138
@SP
// #29139
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #29140
@LCL
// #29141
D=M
// #29142
@R14
// #29143
M=D //R14=LCL
// #29144
@5
// #29145
A=D-A
// #29146
D=M
// #29147
@R15
// #29148
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #29149
@SP
// #29150
M=M-1
// #29151
A=M
// #29152
D=M
//vv pop_stack_to_d
// #29153
@ARG
// #29154
A=M
// #29155
M=D //*ARG = pop()
// #29156
@ARG
// #29157
D=M
// #29158
@SP
// #29159
M=D+1 //SP=ARG+1
// #29160
@R14
// #29161
AM=M-1
// #29162
D=M
// #29163
@THAT
// #29164
M=D //THAT = *(--R14)
// #29165
@R14
// #29166
AM=M-1
// #29167
D=M
// #29168
@THIS
// #29169
M=D //THIS = *(--R14)
// #29170
@R14
// #29171
AM=M-1
// #29172
D=M
// #29173
@ARG
// #29174
M=D //ARG = *(--R14)
// #29175
@R14
// #29176
AM=M-1
// #29177
D=M
// #29178
@LCL
// #29179
M=D //LCL = *(--R14)
// #29180
@R15
// #29181
A=M
// #29182
0;JMP //goto *R15
//
//// function Screen.drawHorizontal 11
(Screen.drawHorizontal)
// #29183
D=0
//^^ push_d_to_stack
// #29184
@SP
// #29185
A=M
// #29186
M=D
// #29187
@SP
// #29188
M=M+1
//vv push_d_to_stack
// #29189
D=0
//^^ push_d_to_stack
// #29190
@SP
// #29191
A=M
// #29192
M=D
// #29193
@SP
// #29194
M=M+1
//vv push_d_to_stack
// #29195
D=0
//^^ push_d_to_stack
// #29196
@SP
// #29197
A=M
// #29198
M=D
// #29199
@SP
// #29200
M=M+1
//vv push_d_to_stack
// #29201
D=0
//^^ push_d_to_stack
// #29202
@SP
// #29203
A=M
// #29204
M=D
// #29205
@SP
// #29206
M=M+1
//vv push_d_to_stack
// #29207
D=0
//^^ push_d_to_stack
// #29208
@SP
// #29209
A=M
// #29210
M=D
// #29211
@SP
// #29212
M=M+1
//vv push_d_to_stack
// #29213
D=0
//^^ push_d_to_stack
// #29214
@SP
// #29215
A=M
// #29216
M=D
// #29217
@SP
// #29218
M=M+1
//vv push_d_to_stack
// #29219
D=0
//^^ push_d_to_stack
// #29220
@SP
// #29221
A=M
// #29222
M=D
// #29223
@SP
// #29224
M=M+1
//vv push_d_to_stack
// #29225
D=0
//^^ push_d_to_stack
// #29226
@SP
// #29227
A=M
// #29228
M=D
// #29229
@SP
// #29230
M=M+1
//vv push_d_to_stack
// #29231
D=0
//^^ push_d_to_stack
// #29232
@SP
// #29233
A=M
// #29234
M=D
// #29235
@SP
// #29236
M=M+1
//vv push_d_to_stack
// #29237
D=0
//^^ push_d_to_stack
// #29238
@SP
// #29239
A=M
// #29240
M=D
// #29241
@SP
// #29242
M=M+1
//vv push_d_to_stack
// #29243
D=0
//^^ push_d_to_stack
// #29244
@SP
// #29245
A=M
// #29246
M=D
// #29247
@SP
// #29248
M=M+1
//vv push_d_to_stack
//
//// push constant 3
//^^ push_constant(3)
// #29249
@3
// #29250
D=A
//^^ push_d_to_stack
// #29251
@SP
// #29252
A=M
// #29253
M=D
// #29254
@SP
// #29255
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// call Memory.alloc 1
//^^ push_constant(RET_ADDR_302)
// #29256
@RET_ADDR_302
// #29257
D=A
//^^ push_d_to_stack
// #29258
@SP
// #29259
A=M
// #29260
M=D
// #29261
@SP
// #29262
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_302)
//push return-address
// #29263
@LCL
// #29264
D=M
//^^ push_d_to_stack
// #29265
@SP
// #29266
A=M
// #29267
M=D
// #29268
@SP
// #29269
M=M+1
//vv push_d_to_stack
//push LCL
// #29270
@ARG
// #29271
D=M
//^^ push_d_to_stack
// #29272
@SP
// #29273
A=M
// #29274
M=D
// #29275
@SP
// #29276
M=M+1
//vv push_d_to_stack
//push ARG
// #29277
@THIS
// #29278
D=M
//^^ push_d_to_stack
// #29279
@SP
// #29280
A=M
// #29281
M=D
// #29282
@SP
// #29283
M=M+1
//vv push_d_to_stack
//push THIS
// #29284
@THAT
// #29285
D=M
//^^ push_d_to_stack
// #29286
@SP
// #29287
A=M
// #29288
M=D
// #29289
@SP
// #29290
M=M+1
//vv push_d_to_stack
//push THAT
// #29291
@SP
// #29292
D=M
// #29293
@ARG
// #29294
M=D
// #29295
@6
// #29296
D=A
// #29297
@ARG
// #29298
M=M-D // ARG = SP - args - 5
// #29299
@SP
// #29300
D=M
// #29301
@LCL
// #29302
M=D // LCL = SP
// #29303
@Memory.alloc
// #29304
0;JMP
(RET_ADDR_302)
//
//// pop pointer 0
//^^ pop_to_loc{3)
//^^ pop_stack_to_d
// #29305
@SP
// #29306
M=M-1
// #29307
A=M
// #29308
D=M
//vv pop_stack_to_d
// #29309
@3
// #29310
M=D
//vv pop_to_loc{3)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #29311
@ARG
// #29312
D=M
// #29313
@0
// #29314
A=D+A
// #29315
D=M
//^^ push_d_to_stack
// #29316
@SP
// #29317
A=M
// #29318
M=D
// #29319
@SP
// #29320
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// pop this 0
//^^ pop_to_ram(THIS, 0)
// #29321
@THIS
// #29322
D=M
// #29323
@0
// #29324
D=D+A
// #29325
@R13
// #29326
M=D
//^^ pop_stack_to_d
// #29327
@SP
// #29328
M=M-1
// #29329
A=M
// #29330
D=M
//vv pop_stack_to_d
// #29331
@R13
// #29332
A=M
// #29333
M=D
// #29334
@R13
// #29335
M=0
//vv pop_to_ram(THIS, 0)
//
//// push argument 1
//^^ push_from_ram(ARG, 1)
// #29336
@ARG
// #29337
D=M
// #29338
@1
// #29339
A=D+A
// #29340
D=M
//^^ push_d_to_stack
// #29341
@SP
// #29342
A=M
// #29343
M=D
// #29344
@SP
// #29345
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 1)
//
//// pop this 1
//^^ pop_to_ram(THIS, 1)
// #29346
@THIS
// #29347
D=M
// #29348
@1
// #29349
D=D+A
// #29350
@R13
// #29351
M=D
//^^ pop_stack_to_d
// #29352
@SP
// #29353
M=M-1
// #29354
A=M
// #29355
D=M
//vv pop_stack_to_d
// #29356
@R13
// #29357
A=M
// #29358
M=D
// #29359
@R13
// #29360
M=0
//vv pop_to_ram(THIS, 1)
//
//// push argument 2
//^^ push_from_ram(ARG, 2)
// #29361
@ARG
// #29362
D=M
// #29363
@2
// #29364
A=D+A
// #29365
D=M
//^^ push_d_to_stack
// #29366
@SP
// #29367
A=M
// #29368
M=D
// #29369
@SP
// #29370
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 2)
//
//// pop this 2
//^^ pop_to_ram(THIS, 2)
// #29371
@THIS
// #29372
D=M
// #29373
@2
// #29374
D=D+A
// #29375
@R13
// #29376
M=D
//^^ pop_stack_to_d
// #29377
@SP
// #29378
M=M-1
// #29379
A=M
// #29380
D=M
//vv pop_stack_to_d
// #29381
@R13
// #29382
A=M
// #29383
M=D
// #29384
@R13
// #29385
M=0
//vv pop_to_ram(THIS, 2)
//
//// push pointer 0
//^^ push_from_loc(3)
// #29386
@3
// #29387
D=M
//^^ push_d_to_stack
// #29388
@SP
// #29389
A=M
// #29390
M=D
// #29391
@SP
// #29392
M=M+1
//vv push_d_to_stack
//vv push_from_loc(3)
//
//// call Square.draw 1
//^^ push_constant(RET_ADDR_303)
// #29393
@RET_ADDR_303
// #29394
D=A
//^^ push_d_to_stack
// #29395
@SP
// #29396
A=M
// #29397
M=D
// #29398
@SP
// #29399
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_303)
//push return-address
// #29400
@LCL
// #29401
D=M
//^^ push_d_to_stack
// #29402
@SP
// #29403
A=M
// #29404
M=D
// #29405
@SP
// #29406
M=M+1
//vv push_d_to_stack
//push LCL
// #29407
@ARG
// #29408
D=M
//^^ push_d_to_stack
// #29409
@SP
// #29410
A=M
// #29411
M=D
// #29412
@SP
// #29413
M=M+1
//vv push_d_to_stack
//push ARG
// #29414
@THIS
// #29415
D=M
//^^ push_d_to_stack
// #29416
@SP
// #29417
A=M
// #29418
M=D
// #29419
@SP
// #29420
M=M+1
//vv push_d_to_stack
//push THIS
// #29421
@THAT
// #29422
D=M
//^^ push_d_to_stack
// #29423
@SP
// #29424
A=M
// #29425
M=D
// #29426
@SP
// #29427
M=M+1
//vv push_d_to_stack
//push THAT
// #29428
@SP
// #29429
D=M
// #29430
@ARG
// #29431
M=D
// #29432
@6
// #29433
D=A
// #29434
@ARG
// #29435
M=M-D // ARG = SP - args - 5
// #29436
@SP
// #29437
D=M
// #29438
@LCL
// #29439
M=D // LCL = SP
// #29440
@Square.draw
// #29441
0;JMP
(RET_ADDR_303)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #29442
@SP
// #29443
M=M-1
// #29444
A=M
// #29445
D=M
//vv pop_stack_to_d
// #29446
@5
// #29447
M=D
//vv pop_to_loc{5)
//
//// push pointer 0
//^^ push_from_loc(3)
// #29448
@3
// #29449
D=M
//^^ push_d_to_stack
// #29450
@SP
// #29451
A=M
// #29452
M=D
// #29453
@SP
// #29454
M=M+1
//vv push_d_to_stack
//vv push_from_loc(3)
//
//// return
// #29455
@LCL
// #29456
D=M
// #29457
@R14
// #29458
M=D //R14=LCL
// #29459
@5
// #29460
A=D-A
// #29461
D=M
// #29462
@R15
// #29463
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #29464
@SP
// #29465
M=M-1
// #29466
A=M
// #29467
D=M
//vv pop_stack_to_d
// #29468
@ARG
// #29469
A=M
// #29470
M=D //*ARG = pop()
// #29471
@ARG
// #29472
D=M
// #29473
@SP
// #29474
M=D+1 //SP=ARG+1
// #29475
@R14
// #29476
AM=M-1
// #29477
D=M
// #29478
@THAT
// #29479
M=D //THAT = *(--R14)
// #29480
@R14
// #29481
AM=M-1
// #29482
D=M
// #29483
@THIS
// #29484
M=D //THIS = *(--R14)
// #29485
@R14
// #29486
AM=M-1
// #29487
D=M
// #29488
@ARG
// #29489
M=D //ARG = *(--R14)
// #29490
@R14
// #29491
AM=M-1
// #29492
D=M
// #29493
@LCL
// #29494
M=D //LCL = *(--R14)
// #29495
@R15
// #29496
A=M
// #29497
0;JMP //goto *R15
//
//// function Square.dispose 0
(Square.dispose)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #29498
@ARG
// #29499
D=M
// #29500
@0
// #29501
A=D+A
// #29502
D=M
//^^ push_d_to_stack
// #29503
@SP
// #29504
A=M
// #29505
M=D
// #29506
@SP
// #29507
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// pop pointer 0
//^^ pop_to_loc{3)
//^^ pop_stack_to_d
// #29508
@SP
// #29509
M=M-1
// #29510
A=M
// #29511
D=M
//vv pop_stack_to_d
// #29512
@3
// #29513
M=D
//vv pop_to_loc{3)
//
//// push pointer 0
//^^ push_from_loc(3)
// #29514
@3
// #29515
D=M
//^^ push_d_to_stack
// #29516
@SP
// #29517
A=M
// #29518
M=D
// #29519
@SP
// #29520
M=M+1
//vv push_d_to_stack
//vv push_from_loc(3)
//
//// call Memory.deAlloc 1
//^^ push_constant(RET_ADDR_304)
// #29521
@RET_ADDR_304
// #29522
D=A
//^^ push_d_to_stack
// #29523
@SP
// #29524
A=M
// #29525
M=D
// #29526
@SP
// #29527
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_304)
//push return-address
// #29528
@LCL
// #29529
D=M
//^^ push_d_to_stack
// #29530
@SP
// #29531
A=M
// #29532
M=D
// #29533
@SP
// #29534
M=M+1
//vv push_d_to_stack
//push LCL
// #29535
@ARG
// #29536
D=M
//^^ push_d_to_stack
// #29537
@SP
// #29538
A=M
// #29539
M=D
// #29540
@SP
// #29541
M=M+1
//vv push_d_to_stack
//push ARG
// #29542
@THIS
// #29543
D=M
//^^ push_d_to_stack
// #29544
@SP
// #29545
A=M
// #29546
M=D
// #29547
@SP
// #29548
M=M+1
//vv push_d_to_stack
//push THIS
// #29549
@THAT
// #29550
D=M
//^^ push_d_to_stack
// #29551
@SP
// #29552
A=M
// #29553
M=D
// #29554
@SP
// #29555
M=M+1
//vv push_d_to_stack
//push THAT
// #29556
@SP
// #29557
D=M
// #29558
@ARG
// #29559
M=D
// #29560
@6
// #29561
D=A
// #29562
@ARG
// #29563
M=M-D // ARG = SP - args - 5
// #29564
@SP
// #29565
D=M
// #29566
@LCL
// #29567
M=D // LCL = SP
// #29568
@Memory.deAlloc
// #29569
0;JMP
(RET_ADDR_304)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #29570
@SP
// #29571
M=M-1
// #29572
A=M
// #29573
D=M
//vv pop_stack_to_d
// #29574
@5
// #29575
M=D
//vv pop_to_loc{5)
//
//// push constant 0
//^^ push_constant(0)
// #29576
@0
// #29577
D=A
//^^ push_d_to_stack
// #29578
@SP
// #29579
A=M
// #29580
M=D
// #29581
@SP
// #29582
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #29583
@LCL
// #29584
D=M
// #29585
@R14
// #29586
M=D //R14=LCL
// #29587
@5
// #29588
A=D-A
// #29589
D=M
// #29590
@R15
// #29591
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #29592
@SP
// #29593
M=M-1
// #29594
A=M
// #29595
D=M
//vv pop_stack_to_d
// #29596
@ARG
// #29597
A=M
// #29598
M=D //*ARG = pop()
// #29599
@ARG
// #29600
D=M
// #29601
@SP
// #29602
M=D+1 //SP=ARG+1
// #29603
@R14
// #29604
AM=M-1
// #29605
D=M
// #29606
@THAT
// #29607
M=D //THAT = *(--R14)
// #29608
@R14
// #29609
AM=M-1
// #29610
D=M
// #29611
@THIS
// #29612
M=D //THIS = *(--R14)
// #29613
@R14
// #29614
AM=M-1
// #29615
D=M
// #29616
@ARG
// #29617
M=D //ARG = *(--R14)
// #29618
@R14
// #29619
AM=M-1
// #29620
D=M
// #29621
@LCL
// #29622
M=D //LCL = *(--R14)
// #29623
@R15
// #29624
A=M
// #29625
0;JMP //goto *R15
//
//// function Square.draw 0
(Square.draw)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #29626
@ARG
// #29627
D=M
// #29628
@0
// #29629
A=D+A
// #29630
D=M
//^^ push_d_to_stack
// #29631
@SP
// #29632
A=M
// #29633
M=D
// #29634
@SP
// #29635
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// pop pointer 0
//^^ pop_to_loc{3)
//^^ pop_stack_to_d
// #29636
@SP
// #29637
M=M-1
// #29638
A=M
// #29639
D=M
//vv pop_stack_to_d
// #29640
@3
// #29641
M=D
//vv pop_to_loc{3)
//
//// push constant 0
//^^ push_constant(0)
// #29642
@0
// #29643
D=A
//^^ push_d_to_stack
// #29644
@SP
// #29645
A=M
// #29646
M=D
// #29647
@SP
// #29648
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #29649
@SP
// #29650
M=M-1
// #29651
A=M
// #29652
D=M
//vv pop_stack_to_d
// #29653
D=!D
//^^ push_d_to_stack
// #29654
@SP
// #29655
A=M
// #29656
M=D
// #29657
@SP
// #29658
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// call Screen.setColor 1
//^^ push_constant(RET_ADDR_305)
// #29659
@RET_ADDR_305
// #29660
D=A
//^^ push_d_to_stack
// #29661
@SP
// #29662
A=M
// #29663
M=D
// #29664
@SP
// #29665
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_305)
//push return-address
// #29666
@LCL
// #29667
D=M
//^^ push_d_to_stack
// #29668
@SP
// #29669
A=M
// #29670
M=D
// #29671
@SP
// #29672
M=M+1
//vv push_d_to_stack
//push LCL
// #29673
@ARG
// #29674
D=M
//^^ push_d_to_stack
// #29675
@SP
// #29676
A=M
// #29677
M=D
// #29678
@SP
// #29679
M=M+1
//vv push_d_to_stack
//push ARG
// #29680
@THIS
// #29681
D=M
//^^ push_d_to_stack
// #29682
@SP
// #29683
A=M
// #29684
M=D
// #29685
@SP
// #29686
M=M+1
//vv push_d_to_stack
//push THIS
// #29687
@THAT
// #29688
D=M
//^^ push_d_to_stack
// #29689
@SP
// #29690
A=M
// #29691
M=D
// #29692
@SP
// #29693
M=M+1
//vv push_d_to_stack
//push THAT
// #29694
@SP
// #29695
D=M
// #29696
@ARG
// #29697
M=D
// #29698
@6
// #29699
D=A
// #29700
@ARG
// #29701
M=M-D // ARG = SP - args - 5
// #29702
@SP
// #29703
D=M
// #29704
@LCL
// #29705
M=D // LCL = SP
// #29706
@Screen.setColor
// #29707
0;JMP
(RET_ADDR_305)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #29708
@SP
// #29709
M=M-1
// #29710
A=M
// #29711
D=M
//vv pop_stack_to_d
// #29712
@5
// #29713
M=D
//vv pop_to_loc{5)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #29714
@THIS
// #29715
D=M
// #29716
@0
// #29717
A=D+A
// #29718
D=M
//^^ push_d_to_stack
// #29719
@SP
// #29720
A=M
// #29721
M=D
// #29722
@SP
// #29723
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #29724
@THIS
// #29725
D=M
// #29726
@1
// #29727
A=D+A
// #29728
D=M
//^^ push_d_to_stack
// #29729
@SP
// #29730
A=M
// #29731
M=D
// #29732
@SP
// #29733
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #29734
@THIS
// #29735
D=M
// #29736
@0
// #29737
A=D+A
// #29738
D=M
//^^ push_d_to_stack
// #29739
@SP
// #29740
A=M
// #29741
M=D
// #29742
@SP
// #29743
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #29744
@THIS
// #29745
D=M
// #29746
@2
// #29747
A=D+A
// #29748
D=M
//^^ push_d_to_stack
// #29749
@SP
// #29750
A=M
// #29751
M=D
// #29752
@SP
// #29753
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #29754
@SP
// #29755
M=M-1
// #29756
A=M
// #29757
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #29758
@R13
// #29759
M=D
//^^ pop_stack_to_d
// #29760
@SP
// #29761
M=M-1
// #29762
A=M
// #29763
D=M
//vv pop_stack_to_d
// #29764
@R13
// #29765
D=D+M
// #29766
@R13
// #29767
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #29768
@SP
// #29769
A=M
// #29770
M=D
// #29771
@SP
// #29772
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #29773
@THIS
// #29774
D=M
// #29775
@1
// #29776
A=D+A
// #29777
D=M
//^^ push_d_to_stack
// #29778
@SP
// #29779
A=M
// #29780
M=D
// #29781
@SP
// #29782
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #29783
@THIS
// #29784
D=M
// #29785
@2
// #29786
A=D+A
// #29787
D=M
//^^ push_d_to_stack
// #29788
@SP
// #29789
A=M
// #29790
M=D
// #29791
@SP
// #29792
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #29793
@SP
// #29794
M=M-1
// #29795
A=M
// #29796
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #29797
@R13
// #29798
M=D
//^^ pop_stack_to_d
// #29799
@SP
// #29800
M=M-1
// #29801
A=M
// #29802
D=M
//vv pop_stack_to_d
// #29803
@R13
// #29804
D=D+M
// #29805
@R13
// #29806
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #29807
@SP
// #29808
A=M
// #29809
M=D
// #29810
@SP
// #29811
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// call Screen.drawRectangle 4
//^^ push_constant(RET_ADDR_306)
// #29812
@RET_ADDR_306
// #29813
D=A
//^^ push_d_to_stack
// #29814
@SP
// #29815
A=M
// #29816
M=D
// #29817
@SP
// #29818
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_306)
//push return-address
// #29819
@LCL
// #29820
D=M
//^^ push_d_to_stack
// #29821
@SP
// #29822
A=M
// #29823
M=D
// #29824
@SP
// #29825
M=M+1
//vv push_d_to_stack
//push LCL
// #29826
@ARG
// #29827
D=M
//^^ push_d_to_stack
// #29828
@SP
// #29829
A=M
// #29830
M=D
// #29831
@SP
// #29832
M=M+1
//vv push_d_to_stack
//push ARG
// #29833
@THIS
// #29834
D=M
//^^ push_d_to_stack
// #29835
@SP
// #29836
A=M
// #29837
M=D
// #29838
@SP
// #29839
M=M+1
//vv push_d_to_stack
//push THIS
// #29840
@THAT
// #29841
D=M
//^^ push_d_to_stack
// #29842
@SP
// #29843
A=M
// #29844
M=D
// #29845
@SP
// #29846
M=M+1
//vv push_d_to_stack
//push THAT
// #29847
@SP
// #29848
D=M
// #29849
@ARG
// #29850
M=D
// #29851
@9
// #29852
D=A
// #29853
@ARG
// #29854
M=M-D // ARG = SP - args - 5
// #29855
@SP
// #29856
D=M
// #29857
@LCL
// #29858
M=D // LCL = SP
// #29859
@Screen.drawRectangle
// #29860
0;JMP
(RET_ADDR_306)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #29861
@SP
// #29862
M=M-1
// #29863
A=M
// #29864
D=M
//vv pop_stack_to_d
// #29865
@5
// #29866
M=D
//vv pop_to_loc{5)
//
//// push constant 0
//^^ push_constant(0)
// #29867
@0
// #29868
D=A
//^^ push_d_to_stack
// #29869
@SP
// #29870
A=M
// #29871
M=D
// #29872
@SP
// #29873
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #29874
@LCL
// #29875
D=M
// #29876
@R14
// #29877
M=D //R14=LCL
// #29878
@5
// #29879
A=D-A
// #29880
D=M
// #29881
@R15
// #29882
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #29883
@SP
// #29884
M=M-1
// #29885
A=M
// #29886
D=M
//vv pop_stack_to_d
// #29887
@ARG
// #29888
A=M
// #29889
M=D //*ARG = pop()
// #29890
@ARG
// #29891
D=M
// #29892
@SP
// #29893
M=D+1 //SP=ARG+1
// #29894
@R14
// #29895
AM=M-1
// #29896
D=M
// #29897
@THAT
// #29898
M=D //THAT = *(--R14)
// #29899
@R14
// #29900
AM=M-1
// #29901
D=M
// #29902
@THIS
// #29903
M=D //THIS = *(--R14)
// #29904
@R14
// #29905
AM=M-1
// #29906
D=M
// #29907
@ARG
// #29908
M=D //ARG = *(--R14)
// #29909
@R14
// #29910
AM=M-1
// #29911
D=M
// #29912
@LCL
// #29913
M=D //LCL = *(--R14)
// #29914
@R15
// #29915
A=M
// #29916
0;JMP //goto *R15
//
//// function Square.erase 0
(Square.erase)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #29917
@ARG
// #29918
D=M
// #29919
@0
// #29920
A=D+A
// #29921
D=M
//^^ push_d_to_stack
// #29922
@SP
// #29923
A=M
// #29924
M=D
// #29925
@SP
// #29926
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// pop pointer 0
//^^ pop_to_loc{3)
//^^ pop_stack_to_d
// #29927
@SP
// #29928
M=M-1
// #29929
A=M
// #29930
D=M
//vv pop_stack_to_d
// #29931
@3
// #29932
M=D
//vv pop_to_loc{3)
//
//// push constant 0
//^^ push_constant(0)
// #29933
@0
// #29934
D=A
//^^ push_d_to_stack
// #29935
@SP
// #29936
A=M
// #29937
M=D
// #29938
@SP
// #29939
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Screen.setColor 1
//^^ push_constant(RET_ADDR_307)
// #29940
@RET_ADDR_307
// #29941
D=A
//^^ push_d_to_stack
// #29942
@SP
// #29943
A=M
// #29944
M=D
// #29945
@SP
// #29946
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_307)
//push return-address
// #29947
@LCL
// #29948
D=M
//^^ push_d_to_stack
// #29949
@SP
// #29950
A=M
// #29951
M=D
// #29952
@SP
// #29953
M=M+1
//vv push_d_to_stack
//push LCL
// #29954
@ARG
// #29955
D=M
//^^ push_d_to_stack
// #29956
@SP
// #29957
A=M
// #29958
M=D
// #29959
@SP
// #29960
M=M+1
//vv push_d_to_stack
//push ARG
// #29961
@THIS
// #29962
D=M
//^^ push_d_to_stack
// #29963
@SP
// #29964
A=M
// #29965
M=D
// #29966
@SP
// #29967
M=M+1
//vv push_d_to_stack
//push THIS
// #29968
@THAT
// #29969
D=M
//^^ push_d_to_stack
// #29970
@SP
// #29971
A=M
// #29972
M=D
// #29973
@SP
// #29974
M=M+1
//vv push_d_to_stack
//push THAT
// #29975
@SP
// #29976
D=M
// #29977
@ARG
// #29978
M=D
// #29979
@6
// #29980
D=A
// #29981
@ARG
// #29982
M=M-D // ARG = SP - args - 5
// #29983
@SP
// #29984
D=M
// #29985
@LCL
// #29986
M=D // LCL = SP
// #29987
@Screen.setColor
// #29988
0;JMP
(RET_ADDR_307)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #29989
@SP
// #29990
M=M-1
// #29991
A=M
// #29992
D=M
//vv pop_stack_to_d
// #29993
@5
// #29994
M=D
//vv pop_to_loc{5)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #29995
@THIS
// #29996
D=M
// #29997
@0
// #29998
A=D+A
// #29999
D=M
//^^ push_d_to_stack
// #30000
@SP
// #30001
A=M
// #30002
M=D
// #30003
@SP
// #30004
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #30005
@THIS
// #30006
D=M
// #30007
@1
// #30008
A=D+A
// #30009
D=M
//^^ push_d_to_stack
// #30010
@SP
// #30011
A=M
// #30012
M=D
// #30013
@SP
// #30014
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #30015
@THIS
// #30016
D=M
// #30017
@0
// #30018
A=D+A
// #30019
D=M
//^^ push_d_to_stack
// #30020
@SP
// #30021
A=M
// #30022
M=D
// #30023
@SP
// #30024
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #30025
@THIS
// #30026
D=M
// #30027
@2
// #30028
A=D+A
// #30029
D=M
//^^ push_d_to_stack
// #30030
@SP
// #30031
A=M
// #30032
M=D
// #30033
@SP
// #30034
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #30035
@SP
// #30036
M=M-1
// #30037
A=M
// #30038
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #30039
@R13
// #30040
M=D
//^^ pop_stack_to_d
// #30041
@SP
// #30042
M=M-1
// #30043
A=M
// #30044
D=M
//vv pop_stack_to_d
// #30045
@R13
// #30046
D=D+M
// #30047
@R13
// #30048
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #30049
@SP
// #30050
A=M
// #30051
M=D
// #30052
@SP
// #30053
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #30054
@THIS
// #30055
D=M
// #30056
@1
// #30057
A=D+A
// #30058
D=M
//^^ push_d_to_stack
// #30059
@SP
// #30060
A=M
// #30061
M=D
// #30062
@SP
// #30063
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #30064
@THIS
// #30065
D=M
// #30066
@2
// #30067
A=D+A
// #30068
D=M
//^^ push_d_to_stack
// #30069
@SP
// #30070
A=M
// #30071
M=D
// #30072
@SP
// #30073
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #30074
@SP
// #30075
M=M-1
// #30076
A=M
// #30077
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #30078
@R13
// #30079
M=D
//^^ pop_stack_to_d
// #30080
@SP
// #30081
M=M-1
// #30082
A=M
// #30083
D=M
//vv pop_stack_to_d
// #30084
@R13
// #30085
D=D+M
// #30086
@R13
// #30087
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #30088
@SP
// #30089
A=M
// #30090
M=D
// #30091
@SP
// #30092
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// call Screen.drawRectangle 4
//^^ push_constant(RET_ADDR_308)
// #30093
@RET_ADDR_308
// #30094
D=A
//^^ push_d_to_stack
// #30095
@SP
// #30096
A=M
// #30097
M=D
// #30098
@SP
// #30099
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_308)
//push return-address
// #30100
@LCL
// #30101
D=M
//^^ push_d_to_stack
// #30102
@SP
// #30103
A=M
// #30104
M=D
// #30105
@SP
// #30106
M=M+1
//vv push_d_to_stack
//push LCL
// #30107
@ARG
// #30108
D=M
//^^ push_d_to_stack
// #30109
@SP
// #30110
A=M
// #30111
M=D
// #30112
@SP
// #30113
M=M+1
//vv push_d_to_stack
//push ARG
// #30114
@THIS
// #30115
D=M
//^^ push_d_to_stack
// #30116
@SP
// #30117
A=M
// #30118
M=D
// #30119
@SP
// #30120
M=M+1
//vv push_d_to_stack
//push THIS
// #30121
@THAT
// #30122
D=M
//^^ push_d_to_stack
// #30123
@SP
// #30124
A=M
// #30125
M=D
// #30126
@SP
// #30127
M=M+1
//vv push_d_to_stack
//push THAT
// #30128
@SP
// #30129
D=M
// #30130
@ARG
// #30131
M=D
// #30132
@9
// #30133
D=A
// #30134
@ARG
// #30135
M=M-D // ARG = SP - args - 5
// #30136
@SP
// #30137
D=M
// #30138
@LCL
// #30139
M=D // LCL = SP
// #30140
@Screen.drawRectangle
// #30141
0;JMP
(RET_ADDR_308)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #30142
@SP
// #30143
M=M-1
// #30144
A=M
// #30145
D=M
//vv pop_stack_to_d
// #30146
@5
// #30147
M=D
//vv pop_to_loc{5)
//
//// push constant 0
//^^ push_constant(0)
// #30148
@0
// #30149
D=A
//^^ push_d_to_stack
// #30150
@SP
// #30151
A=M
// #30152
M=D
// #30153
@SP
// #30154
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #30155
@LCL
// #30156
D=M
// #30157
@R14
// #30158
M=D //R14=LCL
// #30159
@5
// #30160
A=D-A
// #30161
D=M
// #30162
@R15
// #30163
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #30164
@SP
// #30165
M=M-1
// #30166
A=M
// #30167
D=M
//vv pop_stack_to_d
// #30168
@ARG
// #30169
A=M
// #30170
M=D //*ARG = pop()
// #30171
@ARG
// #30172
D=M
// #30173
@SP
// #30174
M=D+1 //SP=ARG+1
// #30175
@R14
// #30176
AM=M-1
// #30177
D=M
// #30178
@THAT
// #30179
M=D //THAT = *(--R14)
// #30180
@R14
// #30181
AM=M-1
// #30182
D=M
// #30183
@THIS
// #30184
M=D //THIS = *(--R14)
// #30185
@R14
// #30186
AM=M-1
// #30187
D=M
// #30188
@ARG
// #30189
M=D //ARG = *(--R14)
// #30190
@R14
// #30191
AM=M-1
// #30192
D=M
// #30193
@LCL
// #30194
M=D //LCL = *(--R14)
// #30195
@R15
// #30196
A=M
// #30197
0;JMP //goto *R15
//
//// function Square.incSize 0
(Square.incSize)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #30198
@ARG
// #30199
D=M
// #30200
@0
// #30201
A=D+A
// #30202
D=M
//^^ push_d_to_stack
// #30203
@SP
// #30204
A=M
// #30205
M=D
// #30206
@SP
// #30207
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// pop pointer 0
//^^ pop_to_loc{3)
//^^ pop_stack_to_d
// #30208
@SP
// #30209
M=M-1
// #30210
A=M
// #30211
D=M
//vv pop_stack_to_d
// #30212
@3
// #30213
M=D
//vv pop_to_loc{3)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #30214
@THIS
// #30215
D=M
// #30216
@1
// #30217
A=D+A
// #30218
D=M
//^^ push_d_to_stack
// #30219
@SP
// #30220
A=M
// #30221
M=D
// #30222
@SP
// #30223
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #30224
@THIS
// #30225
D=M
// #30226
@2
// #30227
A=D+A
// #30228
D=M
//^^ push_d_to_stack
// #30229
@SP
// #30230
A=M
// #30231
M=D
// #30232
@SP
// #30233
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #30234
@SP
// #30235
M=M-1
// #30236
A=M
// #30237
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #30238
@R13
// #30239
M=D
//^^ pop_stack_to_d
// #30240
@SP
// #30241
M=M-1
// #30242
A=M
// #30243
D=M
//vv pop_stack_to_d
// #30244
@R13
// #30245
D=D+M
// #30246
@R13
// #30247
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #30248
@SP
// #30249
A=M
// #30250
M=D
// #30251
@SP
// #30252
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push constant 254
//^^ push_constant(254)
// #30253
@254
// #30254
D=A
//^^ push_d_to_stack
// #30255
@SP
// #30256
A=M
// #30257
M=D
// #30258
@SP
// #30259
M=M+1
//vv push_d_to_stack
//vv push_constant(254)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #30260
@SP
// #30261
M=M-1
// #30262
A=M
// #30263
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #30264
@R13
// #30265
M=D
//^^ pop_stack_to_d
// #30266
@SP
// #30267
M=M-1
// #30268
A=M
// #30269
D=M
//vv pop_stack_to_d
// #30270
@R13
// #30271
D=D-M
// #30272
@R13
// #30273
M=0
//vv arith_d_with_stack_top(D-M)
// #30274
@PUT_TRUE_309
// #30275
D;JLT
// #30276
@R13
// #30277
M=0
// #30278
@CONT_309
// #30279
0;JMP
(PUT_TRUE_309)
// #30280
@R13
// #30281
M=-1
(CONT_309)
// #30282
@R13
// #30283
D=M
// #30284
@R13
// #30285
M=0
//^^ push_d_to_stack
// #30286
@SP
// #30287
A=M
// #30288
M=D
// #30289
@SP
// #30290
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #30291
@THIS
// #30292
D=M
// #30293
@0
// #30294
A=D+A
// #30295
D=M
//^^ push_d_to_stack
// #30296
@SP
// #30297
A=M
// #30298
M=D
// #30299
@SP
// #30300
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #30301
@THIS
// #30302
D=M
// #30303
@2
// #30304
A=D+A
// #30305
D=M
//^^ push_d_to_stack
// #30306
@SP
// #30307
A=M
// #30308
M=D
// #30309
@SP
// #30310
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #30311
@SP
// #30312
M=M-1
// #30313
A=M
// #30314
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #30315
@R13
// #30316
M=D
//^^ pop_stack_to_d
// #30317
@SP
// #30318
M=M-1
// #30319
A=M
// #30320
D=M
//vv pop_stack_to_d
// #30321
@R13
// #30322
D=D+M
// #30323
@R13
// #30324
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #30325
@SP
// #30326
A=M
// #30327
M=D
// #30328
@SP
// #30329
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push constant 510
//^^ push_constant(510)
// #30330
@510
// #30331
D=A
//^^ push_d_to_stack
// #30332
@SP
// #30333
A=M
// #30334
M=D
// #30335
@SP
// #30336
M=M+1
//vv push_d_to_stack
//vv push_constant(510)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #30337
@SP
// #30338
M=M-1
// #30339
A=M
// #30340
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #30341
@R13
// #30342
M=D
//^^ pop_stack_to_d
// #30343
@SP
// #30344
M=M-1
// #30345
A=M
// #30346
D=M
//vv pop_stack_to_d
// #30347
@R13
// #30348
D=D-M
// #30349
@R13
// #30350
M=0
//vv arith_d_with_stack_top(D-M)
// #30351
@PUT_TRUE_310
// #30352
D;JLT
// #30353
@R13
// #30354
M=0
// #30355
@CONT_310
// #30356
0;JMP
(PUT_TRUE_310)
// #30357
@R13
// #30358
M=-1
(CONT_310)
// #30359
@R13
// #30360
D=M
// #30361
@R13
// #30362
M=0
//^^ push_d_to_stack
// #30363
@SP
// #30364
A=M
// #30365
M=D
// #30366
@SP
// #30367
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// and
//^^ arith_binary_op(&)
//^^ pop_stack_to_d
// #30368
@SP
// #30369
M=M-1
// #30370
A=M
// #30371
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D&M)
// #30372
@R13
// #30373
M=D
//^^ pop_stack_to_d
// #30374
@SP
// #30375
M=M-1
// #30376
A=M
// #30377
D=M
//vv pop_stack_to_d
// #30378
@R13
// #30379
D=D&M
// #30380
@R13
// #30381
M=0
//vv arith_d_with_stack_top(D&M)
//^^ push_d_to_stack
// #30382
@SP
// #30383
A=M
// #30384
M=D
// #30385
@SP
// #30386
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(&)
//
//// if-goto IF_TRUE0
//^^ pop_stack_to_d
// #30387
@SP
// #30388
M=M-1
// #30389
A=M
// #30390
D=M
//vv pop_stack_to_d
// #30391
@Square.incSize$IF_TRUE0
// #30392
D;JNE
//
//// goto IF_FALSE0
// #30393
@Square.incSize$IF_FALSE0
// #30394
0;JMP
//
//// label IF_TRUE0
(Square.incSize$IF_TRUE0)
//
//// push pointer 0
//^^ push_from_loc(3)
// #30395
@3
// #30396
D=M
//^^ push_d_to_stack
// #30397
@SP
// #30398
A=M
// #30399
M=D
// #30400
@SP
// #30401
M=M+1
//vv push_d_to_stack
//vv push_from_loc(3)
//
//// call Square.erase 1
//^^ push_constant(RET_ADDR_311)
// #30402
@RET_ADDR_311
// #30403
D=A
//^^ push_d_to_stack
// #30404
@SP
// #30405
A=M
// #30406
M=D
// #30407
@SP
// #30408
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_311)
//push return-address
// #30409
@LCL
// #30410
D=M
//^^ push_d_to_stack
// #30411
@SP
// #30412
A=M
// #30413
M=D
// #30414
@SP
// #30415
M=M+1
//vv push_d_to_stack
//push LCL
// #30416
@ARG
// #30417
D=M
//^^ push_d_to_stack
// #30418
@SP
// #30419
A=M
// #30420
M=D
// #30421
@SP
// #30422
M=M+1
//vv push_d_to_stack
//push ARG
// #30423
@THIS
// #30424
D=M
//^^ push_d_to_stack
// #30425
@SP
// #30426
A=M
// #30427
M=D
// #30428
@SP
// #30429
M=M+1
//vv push_d_to_stack
//push THIS
// #30430
@THAT
// #30431
D=M
//^^ push_d_to_stack
// #30432
@SP
// #30433
A=M
// #30434
M=D
// #30435
@SP
// #30436
M=M+1
//vv push_d_to_stack
//push THAT
// #30437
@SP
// #30438
D=M
// #30439
@ARG
// #30440
M=D
// #30441
@6
// #30442
D=A
// #30443
@ARG
// #30444
M=M-D // ARG = SP - args - 5
// #30445
@SP
// #30446
D=M
// #30447
@LCL
// #30448
M=D // LCL = SP
// #30449
@Square.erase
// #30450
0;JMP
(RET_ADDR_311)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #30451
@SP
// #30452
M=M-1
// #30453
A=M
// #30454
D=M
//vv pop_stack_to_d
// #30455
@5
// #30456
M=D
//vv pop_to_loc{5)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #30457
@THIS
// #30458
D=M
// #30459
@2
// #30460
A=D+A
// #30461
D=M
//^^ push_d_to_stack
// #30462
@SP
// #30463
A=M
// #30464
M=D
// #30465
@SP
// #30466
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// push constant 2
//^^ push_constant(2)
// #30467
@2
// #30468
D=A
//^^ push_d_to_stack
// #30469
@SP
// #30470
A=M
// #30471
M=D
// #30472
@SP
// #30473
M=M+1
//vv push_d_to_stack
//vv push_constant(2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #30474
@SP
// #30475
M=M-1
// #30476
A=M
// #30477
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #30478
@R13
// #30479
M=D
//^^ pop_stack_to_d
// #30480
@SP
// #30481
M=M-1
// #30482
A=M
// #30483
D=M
//vv pop_stack_to_d
// #30484
@R13
// #30485
D=D+M
// #30486
@R13
// #30487
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #30488
@SP
// #30489
A=M
// #30490
M=D
// #30491
@SP
// #30492
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop this 2
//^^ pop_to_ram(THIS, 2)
// #30493
@THIS
// #30494
D=M
// #30495
@2
// #30496
D=D+A
// #30497
@R13
// #30498
M=D
//^^ pop_stack_to_d
// #30499
@SP
// #30500
M=M-1
// #30501
A=M
// #30502
D=M
//vv pop_stack_to_d
// #30503
@R13
// #30504
A=M
// #30505
M=D
// #30506
@R13
// #30507
M=0
//vv pop_to_ram(THIS, 2)
//
//// push pointer 0
//^^ push_from_loc(3)
// #30508
@3
// #30509
D=M
//^^ push_d_to_stack
// #30510
@SP
// #30511
A=M
// #30512
M=D
// #30513
@SP
// #30514
M=M+1
//vv push_d_to_stack
//vv push_from_loc(3)
//
//// call Square.draw 1
//^^ push_constant(RET_ADDR_312)
// #30515
@RET_ADDR_312
// #30516
D=A
//^^ push_d_to_stack
// #30517
@SP
// #30518
A=M
// #30519
M=D
// #30520
@SP
// #30521
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_312)
//push return-address
// #30522
@LCL
// #30523
D=M
//^^ push_d_to_stack
// #30524
@SP
// #30525
A=M
// #30526
M=D
// #30527
@SP
// #30528
M=M+1
//vv push_d_to_stack
//push LCL
// #30529
@ARG
// #30530
D=M
//^^ push_d_to_stack
// #30531
@SP
// #30532
A=M
// #30533
M=D
// #30534
@SP
// #30535
M=M+1
//vv push_d_to_stack
//push ARG
// #30536
@THIS
// #30537
D=M
//^^ push_d_to_stack
// #30538
@SP
// #30539
A=M
// #30540
M=D
// #30541
@SP
// #30542
M=M+1
//vv push_d_to_stack
//push THIS
// #30543
@THAT
// #30544
D=M
//^^ push_d_to_stack
// #30545
@SP
// #30546
A=M
// #30547
M=D
// #30548
@SP
// #30549
M=M+1
//vv push_d_to_stack
//push THAT
// #30550
@SP
// #30551
D=M
// #30552
@ARG
// #30553
M=D
// #30554
@6
// #30555
D=A
// #30556
@ARG
// #30557
M=M-D // ARG = SP - args - 5
// #30558
@SP
// #30559
D=M
// #30560
@LCL
// #30561
M=D // LCL = SP
// #30562
@Square.draw
// #30563
0;JMP
(RET_ADDR_312)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #30564
@SP
// #30565
M=M-1
// #30566
A=M
// #30567
D=M
//vv pop_stack_to_d
// #30568
@5
// #30569
M=D
//vv pop_to_loc{5)
//
//// label IF_FALSE0
(Square.incSize$IF_FALSE0)
//
//// push constant 0
//^^ push_constant(0)
// #30570
@0
// #30571
D=A
//^^ push_d_to_stack
// #30572
@SP
// #30573
A=M
// #30574
M=D
// #30575
@SP
// #30576
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #30577
@LCL
// #30578
D=M
// #30579
@R14
// #30580
M=D //R14=LCL
// #30581
@5
// #30582
A=D-A
// #30583
D=M
// #30584
@R15
// #30585
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #30586
@SP
// #30587
M=M-1
// #30588
A=M
// #30589
D=M
//vv pop_stack_to_d
// #30590
@ARG
// #30591
A=M
// #30592
M=D //*ARG = pop()
// #30593
@ARG
// #30594
D=M
// #30595
@SP
// #30596
M=D+1 //SP=ARG+1
// #30597
@R14
// #30598
AM=M-1
// #30599
D=M
// #30600
@THAT
// #30601
M=D //THAT = *(--R14)
// #30602
@R14
// #30603
AM=M-1
// #30604
D=M
// #30605
@THIS
// #30606
M=D //THIS = *(--R14)
// #30607
@R14
// #30608
AM=M-1
// #30609
D=M
// #30610
@ARG
// #30611
M=D //ARG = *(--R14)
// #30612
@R14
// #30613
AM=M-1
// #30614
D=M
// #30615
@LCL
// #30616
M=D //LCL = *(--R14)
// #30617
@R15
// #30618
A=M
// #30619
0;JMP //goto *R15
//
//// function Square.decSize 0
(Square.decSize)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #30620
@ARG
// #30621
D=M
// #30622
@0
// #30623
A=D+A
// #30624
D=M
//^^ push_d_to_stack
// #30625
@SP
// #30626
A=M
// #30627
M=D
// #30628
@SP
// #30629
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// pop pointer 0
//^^ pop_to_loc{3)
//^^ pop_stack_to_d
// #30630
@SP
// #30631
M=M-1
// #30632
A=M
// #30633
D=M
//vv pop_stack_to_d
// #30634
@3
// #30635
M=D
//vv pop_to_loc{3)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #30636
@THIS
// #30637
D=M
// #30638
@2
// #30639
A=D+A
// #30640
D=M
//^^ push_d_to_stack
// #30641
@SP
// #30642
A=M
// #30643
M=D
// #30644
@SP
// #30645
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// push constant 2
//^^ push_constant(2)
// #30646
@2
// #30647
D=A
//^^ push_d_to_stack
// #30648
@SP
// #30649
A=M
// #30650
M=D
// #30651
@SP
// #30652
M=M+1
//vv push_d_to_stack
//vv push_constant(2)
//
//// gt
//^^ arith_cmp_op(JGT)
//^^ pop_stack_to_d
// #30653
@SP
// #30654
M=M-1
// #30655
A=M
// #30656
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #30657
@R13
// #30658
M=D
//^^ pop_stack_to_d
// #30659
@SP
// #30660
M=M-1
// #30661
A=M
// #30662
D=M
//vv pop_stack_to_d
// #30663
@R13
// #30664
D=D-M
// #30665
@R13
// #30666
M=0
//vv arith_d_with_stack_top(D-M)
// #30667
@PUT_TRUE_313
// #30668
D;JGT
// #30669
@R13
// #30670
M=0
// #30671
@CONT_313
// #30672
0;JMP
(PUT_TRUE_313)
// #30673
@R13
// #30674
M=-1
(CONT_313)
// #30675
@R13
// #30676
D=M
// #30677
@R13
// #30678
M=0
//^^ push_d_to_stack
// #30679
@SP
// #30680
A=M
// #30681
M=D
// #30682
@SP
// #30683
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JGT)
//
//// if-goto IF_TRUE0
//^^ pop_stack_to_d
// #30684
@SP
// #30685
M=M-1
// #30686
A=M
// #30687
D=M
//vv pop_stack_to_d
// #30688
@Square.decSize$IF_TRUE0
// #30689
D;JNE
//
//// goto IF_FALSE0
// #30690
@Square.decSize$IF_FALSE0
// #30691
0;JMP
//
//// label IF_TRUE0
(Square.decSize$IF_TRUE0)
//
//// push pointer 0
//^^ push_from_loc(3)
// #30692
@3
// #30693
D=M
//^^ push_d_to_stack
// #30694
@SP
// #30695
A=M
// #30696
M=D
// #30697
@SP
// #30698
M=M+1
//vv push_d_to_stack
//vv push_from_loc(3)
//
//// call Square.erase 1
//^^ push_constant(RET_ADDR_314)
// #30699
@RET_ADDR_314
// #30700
D=A
//^^ push_d_to_stack
// #30701
@SP
// #30702
A=M
// #30703
M=D
// #30704
@SP
// #30705
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_314)
//push return-address
// #30706
@LCL
// #30707
D=M
//^^ push_d_to_stack
// #30708
@SP
// #30709
A=M
// #30710
M=D
// #30711
@SP
// #30712
M=M+1
//vv push_d_to_stack
//push LCL
// #30713
@ARG
// #30714
D=M
//^^ push_d_to_stack
// #30715
@SP
// #30716
A=M
// #30717
M=D
// #30718
@SP
// #30719
M=M+1
//vv push_d_to_stack
//push ARG
// #30720
@THIS
// #30721
D=M
//^^ push_d_to_stack
// #30722
@SP
// #30723
A=M
// #30724
M=D
// #30725
@SP
// #30726
M=M+1
//vv push_d_to_stack
//push THIS
// #30727
@THAT
// #30728
D=M
//^^ push_d_to_stack
// #30729
@SP
// #30730
A=M
// #30731
M=D
// #30732
@SP
// #30733
M=M+1
//vv push_d_to_stack
//push THAT
// #30734
@SP
// #30735
D=M
// #30736
@ARG
// #30737
M=D
// #30738
@6
// #30739
D=A
// #30740
@ARG
// #30741
M=M-D // ARG = SP - args - 5
// #30742
@SP
// #30743
D=M
// #30744
@LCL
// #30745
M=D // LCL = SP
// #30746
@Square.erase
// #30747
0;JMP
(RET_ADDR_314)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #30748
@SP
// #30749
M=M-1
// #30750
A=M
// #30751
D=M
//vv pop_stack_to_d
// #30752
@5
// #30753
M=D
//vv pop_to_loc{5)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #30754
@THIS
// #30755
D=M
// #30756
@2
// #30757
A=D+A
// #30758
D=M
//^^ push_d_to_stack
// #30759
@SP
// #30760
A=M
// #30761
M=D
// #30762
@SP
// #30763
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// push constant 2
//^^ push_constant(2)
// #30764
@2
// #30765
D=A
//^^ push_d_to_stack
// #30766
@SP
// #30767
A=M
// #30768
M=D
// #30769
@SP
// #30770
M=M+1
//vv push_d_to_stack
//vv push_constant(2)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #30771
@SP
// #30772
M=M-1
// #30773
A=M
// #30774
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #30775
@R13
// #30776
M=D
//^^ pop_stack_to_d
// #30777
@SP
// #30778
M=M-1
// #30779
A=M
// #30780
D=M
//vv pop_stack_to_d
// #30781
@R13
// #30782
D=D-M
// #30783
@R13
// #30784
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #30785
@SP
// #30786
A=M
// #30787
M=D
// #30788
@SP
// #30789
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// pop this 2
//^^ pop_to_ram(THIS, 2)
// #30790
@THIS
// #30791
D=M
// #30792
@2
// #30793
D=D+A
// #30794
@R13
// #30795
M=D
//^^ pop_stack_to_d
// #30796
@SP
// #30797
M=M-1
// #30798
A=M
// #30799
D=M
//vv pop_stack_to_d
// #30800
@R13
// #30801
A=M
// #30802
M=D
// #30803
@R13
// #30804
M=0
//vv pop_to_ram(THIS, 2)
//
//// push pointer 0
//^^ push_from_loc(3)
// #30805
@3
// #30806
D=M
//^^ push_d_to_stack
// #30807
@SP
// #30808
A=M
// #30809
M=D
// #30810
@SP
// #30811
M=M+1
//vv push_d_to_stack
//vv push_from_loc(3)
//
//// call Square.draw 1
//^^ push_constant(RET_ADDR_315)
// #30812
@RET_ADDR_315
// #30813
D=A
//^^ push_d_to_stack
// #30814
@SP
// #30815
A=M
// #30816
M=D
// #30817
@SP
// #30818
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_315)
//push return-address
// #30819
@LCL
// #30820
D=M
//^^ push_d_to_stack
// #30821
@SP
// #30822
A=M
// #30823
M=D
// #30824
@SP
// #30825
M=M+1
//vv push_d_to_stack
//push LCL
// #30826
@ARG
// #30827
D=M
//^^ push_d_to_stack
// #30828
@SP
// #30829
A=M
// #30830
M=D
// #30831
@SP
// #30832
M=M+1
//vv push_d_to_stack
//push ARG
// #30833
@THIS
// #30834
D=M
//^^ push_d_to_stack
// #30835
@SP
// #30836
A=M
// #30837
M=D
// #30838
@SP
// #30839
M=M+1
//vv push_d_to_stack
//push THIS
// #30840
@THAT
// #30841
D=M
//^^ push_d_to_stack
// #30842
@SP
// #30843
A=M
// #30844
M=D
// #30845
@SP
// #30846
M=M+1
//vv push_d_to_stack
//push THAT
// #30847
@SP
// #30848
D=M
// #30849
@ARG
// #30850
M=D
// #30851
@6
// #30852
D=A
// #30853
@ARG
// #30854
M=M-D // ARG = SP - args - 5
// #30855
@SP
// #30856
D=M
// #30857
@LCL
// #30858
M=D // LCL = SP
// #30859
@Square.draw
// #30860
0;JMP
(RET_ADDR_315)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #30861
@SP
// #30862
M=M-1
// #30863
A=M
// #30864
D=M
//vv pop_stack_to_d
// #30865
@5
// #30866
M=D
//vv pop_to_loc{5)
//
//// label IF_FALSE0
(Square.decSize$IF_FALSE0)
//
//// push constant 0
//^^ push_constant(0)
// #30867
@0
// #30868
D=A
//^^ push_d_to_stack
// #30869
@SP
// #30870
A=M
// #30871
M=D
// #30872
@SP
// #30873
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #30874
@LCL
// #30875
D=M
// #30876
@R14
// #30877
M=D //R14=LCL
// #30878
@5
// #30879
A=D-A
// #30880
D=M
// #30881
@R15
// #30882
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #30883
@SP
// #30884
M=M-1
// #30885
A=M
// #30886
D=M
//vv pop_stack_to_d
// #30887
@ARG
// #30888
A=M
// #30889
M=D //*ARG = pop()
// #30890
@ARG
// #30891
D=M
// #30892
@SP
// #30893
M=D+1 //SP=ARG+1
// #30894
@R14
// #30895
AM=M-1
// #30896
D=M
// #30897
@THAT
// #30898
M=D //THAT = *(--R14)
// #30899
@R14
// #30900
AM=M-1
// #30901
D=M
// #30902
@THIS
// #30903
M=D //THIS = *(--R14)
// #30904
@R14
// #30905
AM=M-1
// #30906
D=M
// #30907
@ARG
// #30908
M=D //ARG = *(--R14)
// #30909
@R14
// #30910
AM=M-1
// #30911
D=M
// #30912
@LCL
// #30913
M=D //LCL = *(--R14)
// #30914
@R15
// #30915
A=M
// #30916
0;JMP //goto *R15
//
//// function Square.moveUp 0
(Square.moveUp)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #30917
@ARG
// #30918
D=M
// #30919
@0
// #30920
A=D+A
// #30921
D=M
//^^ push_d_to_stack
// #30922
@SP
// #30923
A=M
// #30924
M=D
// #30925
@SP
// #30926
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// pop pointer 0
//^^ pop_to_loc{3)
//^^ pop_stack_to_d
// #30927
@SP
// #30928
M=M-1
// #30929
A=M
// #30930
D=M
//vv pop_stack_to_d
// #30931
@3
// #30932
M=D
//vv pop_to_loc{3)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #30933
@THIS
// #30934
D=M
// #30935
@1
// #30936
A=D+A
// #30937
D=M
//^^ push_d_to_stack
// #30938
@SP
// #30939
A=M
// #30940
M=D
// #30941
@SP
// #30942
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push constant 1
//^^ push_constant(1)
// #30943
@1
// #30944
D=A
//^^ push_d_to_stack
// #30945
@SP
// #30946
A=M
// #30947
M=D
// #30948
@SP
// #30949
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// gt
//^^ arith_cmp_op(JGT)
//^^ pop_stack_to_d
// #30950
@SP
// #30951
M=M-1
// #30952
A=M
// #30953
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #30954
@R13
// #30955
M=D
//^^ pop_stack_to_d
// #30956
@SP
// #30957
M=M-1
// #30958
A=M
// #30959
D=M
//vv pop_stack_to_d
// #30960
@R13
// #30961
D=D-M
// #30962
@R13
// #30963
M=0
//vv arith_d_with_stack_top(D-M)
// #30964
@PUT_TRUE_316
// #30965
D;JGT
// #30966
@R13
// #30967
M=0
// #30968
@CONT_316
// #30969
0;JMP
(PUT_TRUE_316)
// #30970
@R13
// #30971
M=-1
(CONT_316)
// #30972
@R13
// #30973
D=M
// #30974
@R13
// #30975
M=0
//^^ push_d_to_stack
// #30976
@SP
// #30977
A=M
// #30978
M=D
// #30979
@SP
// #30980
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JGT)
//
//// if-goto IF_TRUE0
//^^ pop_stack_to_d
// #30981
@SP
// #30982
M=M-1
// #30983
A=M
// #30984
D=M
//vv pop_stack_to_d
// #30985
@Square.moveUp$IF_TRUE0
// #30986
D;JNE
//
//// goto IF_FALSE0
// #30987
@Square.moveUp$IF_FALSE0
// #30988
0;JMP
//
//// label IF_TRUE0
(Square.moveUp$IF_TRUE0)
//
//// push constant 0
//^^ push_constant(0)
// #30989
@0
// #30990
D=A
//^^ push_d_to_stack
// #30991
@SP
// #30992
A=M
// #30993
M=D
// #30994
@SP
// #30995
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Screen.setColor 1
//^^ push_constant(RET_ADDR_317)
// #30996
@RET_ADDR_317
// #30997
D=A
//^^ push_d_to_stack
// #30998
@SP
// #30999
A=M
// #31000
M=D
// #31001
@SP
// #31002
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_317)
//push return-address
// #31003
@LCL
// #31004
D=M
//^^ push_d_to_stack
// #31005
@SP
// #31006
A=M
// #31007
M=D
// #31008
@SP
// #31009
M=M+1
//vv push_d_to_stack
//push LCL
// #31010
@ARG
// #31011
D=M
//^^ push_d_to_stack
// #31012
@SP
// #31013
A=M
// #31014
M=D
// #31015
@SP
// #31016
M=M+1
//vv push_d_to_stack
//push ARG
// #31017
@THIS
// #31018
D=M
//^^ push_d_to_stack
// #31019
@SP
// #31020
A=M
// #31021
M=D
// #31022
@SP
// #31023
M=M+1
//vv push_d_to_stack
//push THIS
// #31024
@THAT
// #31025
D=M
//^^ push_d_to_stack
// #31026
@SP
// #31027
A=M
// #31028
M=D
// #31029
@SP
// #31030
M=M+1
//vv push_d_to_stack
//push THAT
// #31031
@SP
// #31032
D=M
// #31033
@ARG
// #31034
M=D
// #31035
@6
// #31036
D=A
// #31037
@ARG
// #31038
M=M-D // ARG = SP - args - 5
// #31039
@SP
// #31040
D=M
// #31041
@LCL
// #31042
M=D // LCL = SP
// #31043
@Screen.setColor
// #31044
0;JMP
(RET_ADDR_317)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #31045
@SP
// #31046
M=M-1
// #31047
A=M
// #31048
D=M
//vv pop_stack_to_d
// #31049
@5
// #31050
M=D
//vv pop_to_loc{5)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #31051
@THIS
// #31052
D=M
// #31053
@0
// #31054
A=D+A
// #31055
D=M
//^^ push_d_to_stack
// #31056
@SP
// #31057
A=M
// #31058
M=D
// #31059
@SP
// #31060
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #31061
@THIS
// #31062
D=M
// #31063
@1
// #31064
A=D+A
// #31065
D=M
//^^ push_d_to_stack
// #31066
@SP
// #31067
A=M
// #31068
M=D
// #31069
@SP
// #31070
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #31071
@THIS
// #31072
D=M
// #31073
@2
// #31074
A=D+A
// #31075
D=M
//^^ push_d_to_stack
// #31076
@SP
// #31077
A=M
// #31078
M=D
// #31079
@SP
// #31080
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #31081
@SP
// #31082
M=M-1
// #31083
A=M
// #31084
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #31085
@R13
// #31086
M=D
//^^ pop_stack_to_d
// #31087
@SP
// #31088
M=M-1
// #31089
A=M
// #31090
D=M
//vv pop_stack_to_d
// #31091
@R13
// #31092
D=D+M
// #31093
@R13
// #31094
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #31095
@SP
// #31096
A=M
// #31097
M=D
// #31098
@SP
// #31099
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push constant 1
//^^ push_constant(1)
// #31100
@1
// #31101
D=A
//^^ push_d_to_stack
// #31102
@SP
// #31103
A=M
// #31104
M=D
// #31105
@SP
// #31106
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #31107
@SP
// #31108
M=M-1
// #31109
A=M
// #31110
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #31111
@R13
// #31112
M=D
//^^ pop_stack_to_d
// #31113
@SP
// #31114
M=M-1
// #31115
A=M
// #31116
D=M
//vv pop_stack_to_d
// #31117
@R13
// #31118
D=D-M
// #31119
@R13
// #31120
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #31121
@SP
// #31122
A=M
// #31123
M=D
// #31124
@SP
// #31125
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #31126
@THIS
// #31127
D=M
// #31128
@0
// #31129
A=D+A
// #31130
D=M
//^^ push_d_to_stack
// #31131
@SP
// #31132
A=M
// #31133
M=D
// #31134
@SP
// #31135
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #31136
@THIS
// #31137
D=M
// #31138
@2
// #31139
A=D+A
// #31140
D=M
//^^ push_d_to_stack
// #31141
@SP
// #31142
A=M
// #31143
M=D
// #31144
@SP
// #31145
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #31146
@SP
// #31147
M=M-1
// #31148
A=M
// #31149
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #31150
@R13
// #31151
M=D
//^^ pop_stack_to_d
// #31152
@SP
// #31153
M=M-1
// #31154
A=M
// #31155
D=M
//vv pop_stack_to_d
// #31156
@R13
// #31157
D=D+M
// #31158
@R13
// #31159
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #31160
@SP
// #31161
A=M
// #31162
M=D
// #31163
@SP
// #31164
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #31165
@THIS
// #31166
D=M
// #31167
@1
// #31168
A=D+A
// #31169
D=M
//^^ push_d_to_stack
// #31170
@SP
// #31171
A=M
// #31172
M=D
// #31173
@SP
// #31174
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #31175
@THIS
// #31176
D=M
// #31177
@2
// #31178
A=D+A
// #31179
D=M
//^^ push_d_to_stack
// #31180
@SP
// #31181
A=M
// #31182
M=D
// #31183
@SP
// #31184
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #31185
@SP
// #31186
M=M-1
// #31187
A=M
// #31188
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #31189
@R13
// #31190
M=D
//^^ pop_stack_to_d
// #31191
@SP
// #31192
M=M-1
// #31193
A=M
// #31194
D=M
//vv pop_stack_to_d
// #31195
@R13
// #31196
D=D+M
// #31197
@R13
// #31198
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #31199
@SP
// #31200
A=M
// #31201
M=D
// #31202
@SP
// #31203
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// call Screen.drawRectangle 4
//^^ push_constant(RET_ADDR_318)
// #31204
@RET_ADDR_318
// #31205
D=A
//^^ push_d_to_stack
// #31206
@SP
// #31207
A=M
// #31208
M=D
// #31209
@SP
// #31210
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_318)
//push return-address
// #31211
@LCL
// #31212
D=M
//^^ push_d_to_stack
// #31213
@SP
// #31214
A=M
// #31215
M=D
// #31216
@SP
// #31217
M=M+1
//vv push_d_to_stack
//push LCL
// #31218
@ARG
// #31219
D=M
//^^ push_d_to_stack
// #31220
@SP
// #31221
A=M
// #31222
M=D
// #31223
@SP
// #31224
M=M+1
//vv push_d_to_stack
//push ARG
// #31225
@THIS
// #31226
D=M
//^^ push_d_to_stack
// #31227
@SP
// #31228
A=M
// #31229
M=D
// #31230
@SP
// #31231
M=M+1
//vv push_d_to_stack
//push THIS
// #31232
@THAT
// #31233
D=M
//^^ push_d_to_stack
// #31234
@SP
// #31235
A=M
// #31236
M=D
// #31237
@SP
// #31238
M=M+1
//vv push_d_to_stack
//push THAT
// #31239
@SP
// #31240
D=M
// #31241
@ARG
// #31242
M=D
// #31243
@9
// #31244
D=A
// #31245
@ARG
// #31246
M=M-D // ARG = SP - args - 5
// #31247
@SP
// #31248
D=M
// #31249
@LCL
// #31250
M=D // LCL = SP
// #31251
@Screen.drawRectangle
// #31252
0;JMP
(RET_ADDR_318)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #31253
@SP
// #31254
M=M-1
// #31255
A=M
// #31256
D=M
//vv pop_stack_to_d
// #31257
@5
// #31258
M=D
//vv pop_to_loc{5)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #31259
@THIS
// #31260
D=M
// #31261
@1
// #31262
A=D+A
// #31263
D=M
//^^ push_d_to_stack
// #31264
@SP
// #31265
A=M
// #31266
M=D
// #31267
@SP
// #31268
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push constant 2
//^^ push_constant(2)
// #31269
@2
// #31270
D=A
//^^ push_d_to_stack
// #31271
@SP
// #31272
A=M
// #31273
M=D
// #31274
@SP
// #31275
M=M+1
//vv push_d_to_stack
//vv push_constant(2)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #31276
@SP
// #31277
M=M-1
// #31278
A=M
// #31279
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #31280
@R13
// #31281
M=D
//^^ pop_stack_to_d
// #31282
@SP
// #31283
M=M-1
// #31284
A=M
// #31285
D=M
//vv pop_stack_to_d
// #31286
@R13
// #31287
D=D-M
// #31288
@R13
// #31289
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #31290
@SP
// #31291
A=M
// #31292
M=D
// #31293
@SP
// #31294
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// pop this 1
//^^ pop_to_ram(THIS, 1)
// #31295
@THIS
// #31296
D=M
// #31297
@1
// #31298
D=D+A
// #31299
@R13
// #31300
M=D
//^^ pop_stack_to_d
// #31301
@SP
// #31302
M=M-1
// #31303
A=M
// #31304
D=M
//vv pop_stack_to_d
// #31305
@R13
// #31306
A=M
// #31307
M=D
// #31308
@R13
// #31309
M=0
//vv pop_to_ram(THIS, 1)
//
//// push constant 0
//^^ push_constant(0)
// #31310
@0
// #31311
D=A
//^^ push_d_to_stack
// #31312
@SP
// #31313
A=M
// #31314
M=D
// #31315
@SP
// #31316
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #31317
@SP
// #31318
M=M-1
// #31319
A=M
// #31320
D=M
//vv pop_stack_to_d
// #31321
D=!D
//^^ push_d_to_stack
// #31322
@SP
// #31323
A=M
// #31324
M=D
// #31325
@SP
// #31326
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// call Screen.setColor 1
//^^ push_constant(RET_ADDR_319)
// #31327
@RET_ADDR_319
// #31328
D=A
//^^ push_d_to_stack
// #31329
@SP
// #31330
A=M
// #31331
M=D
// #31332
@SP
// #31333
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_319)
//push return-address
// #31334
@LCL
// #31335
D=M
//^^ push_d_to_stack
// #31336
@SP
// #31337
A=M
// #31338
M=D
// #31339
@SP
// #31340
M=M+1
//vv push_d_to_stack
//push LCL
// #31341
@ARG
// #31342
D=M
//^^ push_d_to_stack
// #31343
@SP
// #31344
A=M
// #31345
M=D
// #31346
@SP
// #31347
M=M+1
//vv push_d_to_stack
//push ARG
// #31348
@THIS
// #31349
D=M
//^^ push_d_to_stack
// #31350
@SP
// #31351
A=M
// #31352
M=D
// #31353
@SP
// #31354
M=M+1
//vv push_d_to_stack
//push THIS
// #31355
@THAT
// #31356
D=M
//^^ push_d_to_stack
// #31357
@SP
// #31358
A=M
// #31359
M=D
// #31360
@SP
// #31361
M=M+1
//vv push_d_to_stack
//push THAT
// #31362
@SP
// #31363
D=M
// #31364
@ARG
// #31365
M=D
// #31366
@6
// #31367
D=A
// #31368
@ARG
// #31369
M=M-D // ARG = SP - args - 5
// #31370
@SP
// #31371
D=M
// #31372
@LCL
// #31373
M=D // LCL = SP
// #31374
@Screen.setColor
// #31375
0;JMP
(RET_ADDR_319)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #31376
@SP
// #31377
M=M-1
// #31378
A=M
// #31379
D=M
//vv pop_stack_to_d
// #31380
@5
// #31381
M=D
//vv pop_to_loc{5)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #31382
@THIS
// #31383
D=M
// #31384
@0
// #31385
A=D+A
// #31386
D=M
//^^ push_d_to_stack
// #31387
@SP
// #31388
A=M
// #31389
M=D
// #31390
@SP
// #31391
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #31392
@THIS
// #31393
D=M
// #31394
@1
// #31395
A=D+A
// #31396
D=M
//^^ push_d_to_stack
// #31397
@SP
// #31398
A=M
// #31399
M=D
// #31400
@SP
// #31401
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #31402
@THIS
// #31403
D=M
// #31404
@0
// #31405
A=D+A
// #31406
D=M
//^^ push_d_to_stack
// #31407
@SP
// #31408
A=M
// #31409
M=D
// #31410
@SP
// #31411
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #31412
@THIS
// #31413
D=M
// #31414
@2
// #31415
A=D+A
// #31416
D=M
//^^ push_d_to_stack
// #31417
@SP
// #31418
A=M
// #31419
M=D
// #31420
@SP
// #31421
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #31422
@SP
// #31423
M=M-1
// #31424
A=M
// #31425
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #31426
@R13
// #31427
M=D
//^^ pop_stack_to_d
// #31428
@SP
// #31429
M=M-1
// #31430
A=M
// #31431
D=M
//vv pop_stack_to_d
// #31432
@R13
// #31433
D=D+M
// #31434
@R13
// #31435
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #31436
@SP
// #31437
A=M
// #31438
M=D
// #31439
@SP
// #31440
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #31441
@THIS
// #31442
D=M
// #31443
@1
// #31444
A=D+A
// #31445
D=M
//^^ push_d_to_stack
// #31446
@SP
// #31447
A=M
// #31448
M=D
// #31449
@SP
// #31450
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push constant 1
//^^ push_constant(1)
// #31451
@1
// #31452
D=A
//^^ push_d_to_stack
// #31453
@SP
// #31454
A=M
// #31455
M=D
// #31456
@SP
// #31457
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #31458
@SP
// #31459
M=M-1
// #31460
A=M
// #31461
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #31462
@R13
// #31463
M=D
//^^ pop_stack_to_d
// #31464
@SP
// #31465
M=M-1
// #31466
A=M
// #31467
D=M
//vv pop_stack_to_d
// #31468
@R13
// #31469
D=D+M
// #31470
@R13
// #31471
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #31472
@SP
// #31473
A=M
// #31474
M=D
// #31475
@SP
// #31476
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// call Screen.drawRectangle 4
//^^ push_constant(RET_ADDR_320)
// #31477
@RET_ADDR_320
// #31478
D=A
//^^ push_d_to_stack
// #31479
@SP
// #31480
A=M
// #31481
M=D
// #31482
@SP
// #31483
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_320)
//push return-address
// #31484
@LCL
// #31485
D=M
//^^ push_d_to_stack
// #31486
@SP
// #31487
A=M
// #31488
M=D
// #31489
@SP
// #31490
M=M+1
//vv push_d_to_stack
//push LCL
// #31491
@ARG
// #31492
D=M
//^^ push_d_to_stack
// #31493
@SP
// #31494
A=M
// #31495
M=D
// #31496
@SP
// #31497
M=M+1
//vv push_d_to_stack
//push ARG
// #31498
@THIS
// #31499
D=M
//^^ push_d_to_stack
// #31500
@SP
// #31501
A=M
// #31502
M=D
// #31503
@SP
// #31504
M=M+1
//vv push_d_to_stack
//push THIS
// #31505
@THAT
// #31506
D=M
//^^ push_d_to_stack
// #31507
@SP
// #31508
A=M
// #31509
M=D
// #31510
@SP
// #31511
M=M+1
//vv push_d_to_stack
//push THAT
// #31512
@SP
// #31513
D=M
// #31514
@ARG
// #31515
M=D
// #31516
@9
// #31517
D=A
// #31518
@ARG
// #31519
M=M-D // ARG = SP - args - 5
// #31520
@SP
// #31521
D=M
// #31522
@LCL
// #31523
M=D // LCL = SP
// #31524
@Screen.drawRectangle
// #31525
0;JMP
(RET_ADDR_320)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #31526
@SP
// #31527
M=M-1
// #31528
A=M
// #31529
D=M
//vv pop_stack_to_d
// #31530
@5
// #31531
M=D
//vv pop_to_loc{5)
//
//// label IF_FALSE0
(Square.moveUp$IF_FALSE0)
//
//// push constant 0
//^^ push_constant(0)
// #31532
@0
// #31533
D=A
//^^ push_d_to_stack
// #31534
@SP
// #31535
A=M
// #31536
M=D
// #31537
@SP
// #31538
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #31539
@LCL
// #31540
D=M
// #31541
@R14
// #31542
M=D //R14=LCL
// #31543
@5
// #31544
A=D-A
// #31545
D=M
// #31546
@R15
// #31547
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #31548
@SP
// #31549
M=M-1
// #31550
A=M
// #31551
D=M
//vv pop_stack_to_d
// #31552
@ARG
// #31553
A=M
// #31554
M=D //*ARG = pop()
// #31555
@ARG
// #31556
D=M
// #31557
@SP
// #31558
M=D+1 //SP=ARG+1
// #31559
@R14
// #31560
AM=M-1
// #31561
D=M
// #31562
@THAT
// #31563
M=D //THAT = *(--R14)
// #31564
@R14
// #31565
AM=M-1
// #31566
D=M
// #31567
@THIS
// #31568
M=D //THIS = *(--R14)
// #31569
@R14
// #31570
AM=M-1
// #31571
D=M
// #31572
@ARG
// #31573
M=D //ARG = *(--R14)
// #31574
@R14
// #31575
AM=M-1
// #31576
D=M
// #31577
@LCL
// #31578
M=D //LCL = *(--R14)
// #31579
@R15
// #31580
A=M
// #31581
0;JMP //goto *R15
//
//// function Square.moveDown 0
(Square.moveDown)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #31582
@ARG
// #31583
D=M
// #31584
@0
// #31585
A=D+A
// #31586
D=M
//^^ push_d_to_stack
// #31587
@SP
// #31588
A=M
// #31589
M=D
// #31590
@SP
// #31591
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// pop pointer 0
//^^ pop_to_loc{3)
//^^ pop_stack_to_d
// #31592
@SP
// #31593
M=M-1
// #31594
A=M
// #31595
D=M
//vv pop_stack_to_d
// #31596
@3
// #31597
M=D
//vv pop_to_loc{3)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #31598
@THIS
// #31599
D=M
// #31600
@1
// #31601
A=D+A
// #31602
D=M
//^^ push_d_to_stack
// #31603
@SP
// #31604
A=M
// #31605
M=D
// #31606
@SP
// #31607
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #31608
@THIS
// #31609
D=M
// #31610
@2
// #31611
A=D+A
// #31612
D=M
//^^ push_d_to_stack
// #31613
@SP
// #31614
A=M
// #31615
M=D
// #31616
@SP
// #31617
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #31618
@SP
// #31619
M=M-1
// #31620
A=M
// #31621
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #31622
@R13
// #31623
M=D
//^^ pop_stack_to_d
// #31624
@SP
// #31625
M=M-1
// #31626
A=M
// #31627
D=M
//vv pop_stack_to_d
// #31628
@R13
// #31629
D=D+M
// #31630
@R13
// #31631
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #31632
@SP
// #31633
A=M
// #31634
M=D
// #31635
@SP
// #31636
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push constant 254
//^^ push_constant(254)
// #31637
@254
// #31638
D=A
//^^ push_d_to_stack
// #31639
@SP
// #31640
A=M
// #31641
M=D
// #31642
@SP
// #31643
M=M+1
//vv push_d_to_stack
//vv push_constant(254)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #31644
@SP
// #31645
M=M-1
// #31646
A=M
// #31647
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #31648
@R13
// #31649
M=D
//^^ pop_stack_to_d
// #31650
@SP
// #31651
M=M-1
// #31652
A=M
// #31653
D=M
//vv pop_stack_to_d
// #31654
@R13
// #31655
D=D-M
// #31656
@R13
// #31657
M=0
//vv arith_d_with_stack_top(D-M)
// #31658
@PUT_TRUE_321
// #31659
D;JLT
// #31660
@R13
// #31661
M=0
// #31662
@CONT_321
// #31663
0;JMP
(PUT_TRUE_321)
// #31664
@R13
// #31665
M=-1
(CONT_321)
// #31666
@R13
// #31667
D=M
// #31668
@R13
// #31669
M=0
//^^ push_d_to_stack
// #31670
@SP
// #31671
A=M
// #31672
M=D
// #31673
@SP
// #31674
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// if-goto IF_TRUE0
//^^ pop_stack_to_d
// #31675
@SP
// #31676
M=M-1
// #31677
A=M
// #31678
D=M
//vv pop_stack_to_d
// #31679
@Square.moveDown$IF_TRUE0
// #31680
D;JNE
//
//// goto IF_FALSE0
// #31681
@Square.moveDown$IF_FALSE0
// #31682
0;JMP
//
//// label IF_TRUE0
(Square.moveDown$IF_TRUE0)
//
//// push constant 0
//^^ push_constant(0)
// #31683
@0
// #31684
D=A
//^^ push_d_to_stack
// #31685
@SP
// #31686
A=M
// #31687
M=D
// #31688
@SP
// #31689
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Screen.setColor 1
//^^ push_constant(RET_ADDR_322)
// #31690
@RET_ADDR_322
// #31691
D=A
//^^ push_d_to_stack
// #31692
@SP
// #31693
A=M
// #31694
M=D
// #31695
@SP
// #31696
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_322)
//push return-address
// #31697
@LCL
// #31698
D=M
//^^ push_d_to_stack
// #31699
@SP
// #31700
A=M
// #31701
M=D
// #31702
@SP
// #31703
M=M+1
//vv push_d_to_stack
//push LCL
// #31704
@ARG
// #31705
D=M
//^^ push_d_to_stack
// #31706
@SP
// #31707
A=M
// #31708
M=D
// #31709
@SP
// #31710
M=M+1
//vv push_d_to_stack
//push ARG
// #31711
@THIS
// #31712
D=M
//^^ push_d_to_stack
// #31713
@SP
// #31714
A=M
// #31715
M=D
// #31716
@SP
// #31717
M=M+1
//vv push_d_to_stack
//push THIS
// #31718
@THAT
// #31719
D=M
//^^ push_d_to_stack
// #31720
@SP
// #31721
A=M
// #31722
M=D
// #31723
@SP
// #31724
M=M+1
//vv push_d_to_stack
//push THAT
// #31725
@SP
// #31726
D=M
// #31727
@ARG
// #31728
M=D
// #31729
@6
// #31730
D=A
// #31731
@ARG
// #31732
M=M-D // ARG = SP - args - 5
// #31733
@SP
// #31734
D=M
// #31735
@LCL
// #31736
M=D // LCL = SP
// #31737
@Screen.setColor
// #31738
0;JMP
(RET_ADDR_322)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #31739
@SP
// #31740
M=M-1
// #31741
A=M
// #31742
D=M
//vv pop_stack_to_d
// #31743
@5
// #31744
M=D
//vv pop_to_loc{5)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #31745
@THIS
// #31746
D=M
// #31747
@0
// #31748
A=D+A
// #31749
D=M
//^^ push_d_to_stack
// #31750
@SP
// #31751
A=M
// #31752
M=D
// #31753
@SP
// #31754
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #31755
@THIS
// #31756
D=M
// #31757
@1
// #31758
A=D+A
// #31759
D=M
//^^ push_d_to_stack
// #31760
@SP
// #31761
A=M
// #31762
M=D
// #31763
@SP
// #31764
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #31765
@THIS
// #31766
D=M
// #31767
@0
// #31768
A=D+A
// #31769
D=M
//^^ push_d_to_stack
// #31770
@SP
// #31771
A=M
// #31772
M=D
// #31773
@SP
// #31774
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #31775
@THIS
// #31776
D=M
// #31777
@2
// #31778
A=D+A
// #31779
D=M
//^^ push_d_to_stack
// #31780
@SP
// #31781
A=M
// #31782
M=D
// #31783
@SP
// #31784
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #31785
@SP
// #31786
M=M-1
// #31787
A=M
// #31788
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #31789
@R13
// #31790
M=D
//^^ pop_stack_to_d
// #31791
@SP
// #31792
M=M-1
// #31793
A=M
// #31794
D=M
//vv pop_stack_to_d
// #31795
@R13
// #31796
D=D+M
// #31797
@R13
// #31798
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #31799
@SP
// #31800
A=M
// #31801
M=D
// #31802
@SP
// #31803
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #31804
@THIS
// #31805
D=M
// #31806
@1
// #31807
A=D+A
// #31808
D=M
//^^ push_d_to_stack
// #31809
@SP
// #31810
A=M
// #31811
M=D
// #31812
@SP
// #31813
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push constant 1
//^^ push_constant(1)
// #31814
@1
// #31815
D=A
//^^ push_d_to_stack
// #31816
@SP
// #31817
A=M
// #31818
M=D
// #31819
@SP
// #31820
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #31821
@SP
// #31822
M=M-1
// #31823
A=M
// #31824
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #31825
@R13
// #31826
M=D
//^^ pop_stack_to_d
// #31827
@SP
// #31828
M=M-1
// #31829
A=M
// #31830
D=M
//vv pop_stack_to_d
// #31831
@R13
// #31832
D=D+M
// #31833
@R13
// #31834
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #31835
@SP
// #31836
A=M
// #31837
M=D
// #31838
@SP
// #31839
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// call Screen.drawRectangle 4
//^^ push_constant(RET_ADDR_323)
// #31840
@RET_ADDR_323
// #31841
D=A
//^^ push_d_to_stack
// #31842
@SP
// #31843
A=M
// #31844
M=D
// #31845
@SP
// #31846
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_323)
//push return-address
// #31847
@LCL
// #31848
D=M
//^^ push_d_to_stack
// #31849
@SP
// #31850
A=M
// #31851
M=D
// #31852
@SP
// #31853
M=M+1
//vv push_d_to_stack
//push LCL
// #31854
@ARG
// #31855
D=M
//^^ push_d_to_stack
// #31856
@SP
// #31857
A=M
// #31858
M=D
// #31859
@SP
// #31860
M=M+1
//vv push_d_to_stack
//push ARG
// #31861
@THIS
// #31862
D=M
//^^ push_d_to_stack
// #31863
@SP
// #31864
A=M
// #31865
M=D
// #31866
@SP
// #31867
M=M+1
//vv push_d_to_stack
//push THIS
// #31868
@THAT
// #31869
D=M
//^^ push_d_to_stack
// #31870
@SP
// #31871
A=M
// #31872
M=D
// #31873
@SP
// #31874
M=M+1
//vv push_d_to_stack
//push THAT
// #31875
@SP
// #31876
D=M
// #31877
@ARG
// #31878
M=D
// #31879
@9
// #31880
D=A
// #31881
@ARG
// #31882
M=M-D // ARG = SP - args - 5
// #31883
@SP
// #31884
D=M
// #31885
@LCL
// #31886
M=D // LCL = SP
// #31887
@Screen.drawRectangle
// #31888
0;JMP
(RET_ADDR_323)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #31889
@SP
// #31890
M=M-1
// #31891
A=M
// #31892
D=M
//vv pop_stack_to_d
// #31893
@5
// #31894
M=D
//vv pop_to_loc{5)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #31895
@THIS
// #31896
D=M
// #31897
@1
// #31898
A=D+A
// #31899
D=M
//^^ push_d_to_stack
// #31900
@SP
// #31901
A=M
// #31902
M=D
// #31903
@SP
// #31904
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push constant 2
//^^ push_constant(2)
// #31905
@2
// #31906
D=A
//^^ push_d_to_stack
// #31907
@SP
// #31908
A=M
// #31909
M=D
// #31910
@SP
// #31911
M=M+1
//vv push_d_to_stack
//vv push_constant(2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #31912
@SP
// #31913
M=M-1
// #31914
A=M
// #31915
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #31916
@R13
// #31917
M=D
//^^ pop_stack_to_d
// #31918
@SP
// #31919
M=M-1
// #31920
A=M
// #31921
D=M
//vv pop_stack_to_d
// #31922
@R13
// #31923
D=D+M
// #31924
@R13
// #31925
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #31926
@SP
// #31927
A=M
// #31928
M=D
// #31929
@SP
// #31930
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop this 1
//^^ pop_to_ram(THIS, 1)
// #31931
@THIS
// #31932
D=M
// #31933
@1
// #31934
D=D+A
// #31935
@R13
// #31936
M=D
//^^ pop_stack_to_d
// #31937
@SP
// #31938
M=M-1
// #31939
A=M
// #31940
D=M
//vv pop_stack_to_d
// #31941
@R13
// #31942
A=M
// #31943
M=D
// #31944
@R13
// #31945
M=0
//vv pop_to_ram(THIS, 1)
//
//// push constant 0
//^^ push_constant(0)
// #31946
@0
// #31947
D=A
//^^ push_d_to_stack
// #31948
@SP
// #31949
A=M
// #31950
M=D
// #31951
@SP
// #31952
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #31953
@SP
// #31954
M=M-1
// #31955
A=M
// #31956
D=M
//vv pop_stack_to_d
// #31957
D=!D
//^^ push_d_to_stack
// #31958
@SP
// #31959
A=M
// #31960
M=D
// #31961
@SP
// #31962
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// call Screen.setColor 1
//^^ push_constant(RET_ADDR_324)
// #31963
@RET_ADDR_324
// #31964
D=A
//^^ push_d_to_stack
// #31965
@SP
// #31966
A=M
// #31967
M=D
// #31968
@SP
// #31969
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_324)
//push return-address
// #31970
@LCL
// #31971
D=M
//^^ push_d_to_stack
// #31972
@SP
// #31973
A=M
// #31974
M=D
// #31975
@SP
// #31976
M=M+1
//vv push_d_to_stack
//push LCL
// #31977
@ARG
// #31978
D=M
//^^ push_d_to_stack
// #31979
@SP
// #31980
A=M
// #31981
M=D
// #31982
@SP
// #31983
M=M+1
//vv push_d_to_stack
//push ARG
// #31984
@THIS
// #31985
D=M
//^^ push_d_to_stack
// #31986
@SP
// #31987
A=M
// #31988
M=D
// #31989
@SP
// #31990
M=M+1
//vv push_d_to_stack
//push THIS
// #31991
@THAT
// #31992
D=M
//^^ push_d_to_stack
// #31993
@SP
// #31994
A=M
// #31995
M=D
// #31996
@SP
// #31997
M=M+1
//vv push_d_to_stack
//push THAT
// #31998
@SP
// #31999
D=M
// #32000
@ARG
// #32001
M=D
// #32002
@6
// #32003
D=A
// #32004
@ARG
// #32005
M=M-D // ARG = SP - args - 5
// #32006
@SP
// #32007
D=M
// #32008
@LCL
// #32009
M=D // LCL = SP
// #32010
@Screen.setColor
// #32011
0;JMP
(RET_ADDR_324)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #32012
@SP
// #32013
M=M-1
// #32014
A=M
// #32015
D=M
//vv pop_stack_to_d
// #32016
@5
// #32017
M=D
//vv pop_to_loc{5)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #32018
@THIS
// #32019
D=M
// #32020
@0
// #32021
A=D+A
// #32022
D=M
//^^ push_d_to_stack
// #32023
@SP
// #32024
A=M
// #32025
M=D
// #32026
@SP
// #32027
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #32028
@THIS
// #32029
D=M
// #32030
@1
// #32031
A=D+A
// #32032
D=M
//^^ push_d_to_stack
// #32033
@SP
// #32034
A=M
// #32035
M=D
// #32036
@SP
// #32037
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #32038
@THIS
// #32039
D=M
// #32040
@2
// #32041
A=D+A
// #32042
D=M
//^^ push_d_to_stack
// #32043
@SP
// #32044
A=M
// #32045
M=D
// #32046
@SP
// #32047
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #32048
@SP
// #32049
M=M-1
// #32050
A=M
// #32051
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #32052
@R13
// #32053
M=D
//^^ pop_stack_to_d
// #32054
@SP
// #32055
M=M-1
// #32056
A=M
// #32057
D=M
//vv pop_stack_to_d
// #32058
@R13
// #32059
D=D+M
// #32060
@R13
// #32061
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #32062
@SP
// #32063
A=M
// #32064
M=D
// #32065
@SP
// #32066
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push constant 1
//^^ push_constant(1)
// #32067
@1
// #32068
D=A
//^^ push_d_to_stack
// #32069
@SP
// #32070
A=M
// #32071
M=D
// #32072
@SP
// #32073
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #32074
@SP
// #32075
M=M-1
// #32076
A=M
// #32077
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #32078
@R13
// #32079
M=D
//^^ pop_stack_to_d
// #32080
@SP
// #32081
M=M-1
// #32082
A=M
// #32083
D=M
//vv pop_stack_to_d
// #32084
@R13
// #32085
D=D-M
// #32086
@R13
// #32087
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #32088
@SP
// #32089
A=M
// #32090
M=D
// #32091
@SP
// #32092
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #32093
@THIS
// #32094
D=M
// #32095
@0
// #32096
A=D+A
// #32097
D=M
//^^ push_d_to_stack
// #32098
@SP
// #32099
A=M
// #32100
M=D
// #32101
@SP
// #32102
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #32103
@THIS
// #32104
D=M
// #32105
@2
// #32106
A=D+A
// #32107
D=M
//^^ push_d_to_stack
// #32108
@SP
// #32109
A=M
// #32110
M=D
// #32111
@SP
// #32112
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #32113
@SP
// #32114
M=M-1
// #32115
A=M
// #32116
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #32117
@R13
// #32118
M=D
//^^ pop_stack_to_d
// #32119
@SP
// #32120
M=M-1
// #32121
A=M
// #32122
D=M
//vv pop_stack_to_d
// #32123
@R13
// #32124
D=D+M
// #32125
@R13
// #32126
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #32127
@SP
// #32128
A=M
// #32129
M=D
// #32130
@SP
// #32131
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #32132
@THIS
// #32133
D=M
// #32134
@1
// #32135
A=D+A
// #32136
D=M
//^^ push_d_to_stack
// #32137
@SP
// #32138
A=M
// #32139
M=D
// #32140
@SP
// #32141
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #32142
@THIS
// #32143
D=M
// #32144
@2
// #32145
A=D+A
// #32146
D=M
//^^ push_d_to_stack
// #32147
@SP
// #32148
A=M
// #32149
M=D
// #32150
@SP
// #32151
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #32152
@SP
// #32153
M=M-1
// #32154
A=M
// #32155
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #32156
@R13
// #32157
M=D
//^^ pop_stack_to_d
// #32158
@SP
// #32159
M=M-1
// #32160
A=M
// #32161
D=M
//vv pop_stack_to_d
// #32162
@R13
// #32163
D=D+M
// #32164
@R13
// #32165
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #32166
@SP
// #32167
A=M
// #32168
M=D
// #32169
@SP
// #32170
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// call Screen.drawRectangle 4
//^^ push_constant(RET_ADDR_325)
// #32171
@RET_ADDR_325
// #32172
D=A
//^^ push_d_to_stack
// #32173
@SP
// #32174
A=M
// #32175
M=D
// #32176
@SP
// #32177
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_325)
//push return-address
// #32178
@LCL
// #32179
D=M
//^^ push_d_to_stack
// #32180
@SP
// #32181
A=M
// #32182
M=D
// #32183
@SP
// #32184
M=M+1
//vv push_d_to_stack
//push LCL
// #32185
@ARG
// #32186
D=M
//^^ push_d_to_stack
// #32187
@SP
// #32188
A=M
// #32189
M=D
// #32190
@SP
// #32191
M=M+1
//vv push_d_to_stack
//push ARG
// #32192
@THIS
// #32193
D=M
//^^ push_d_to_stack
// #32194
@SP
// #32195
A=M
// #32196
M=D
// #32197
@SP
// #32198
M=M+1
//vv push_d_to_stack
//push THIS
// #32199
@THAT
// #32200
D=M
//^^ push_d_to_stack
// #32201
@SP
// #32202
A=M
// #32203
M=D
// #32204
@SP
// #32205
M=M+1
//vv push_d_to_stack
//push THAT
// #32206
@SP
// #32207
D=M
// #32208
@ARG
// #32209
M=D
// #32210
@9
// #32211
D=A
// #32212
@ARG
// #32213
M=M-D // ARG = SP - args - 5
// #32214
@SP
// #32215
D=M
// #32216
@LCL
// #32217
M=D // LCL = SP
// #32218
@Screen.drawRectangle
// #32219
0;JMP
(RET_ADDR_325)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #32220
@SP
// #32221
M=M-1
// #32222
A=M
// #32223
D=M
//vv pop_stack_to_d
// #32224
@5
// #32225
M=D
//vv pop_to_loc{5)
//
//// label IF_FALSE0
(Square.moveDown$IF_FALSE0)
//
//// push constant 0
//^^ push_constant(0)
// #32226
@0
// #32227
D=A
//^^ push_d_to_stack
// #32228
@SP
// #32229
A=M
// #32230
M=D
// #32231
@SP
// #32232
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #32233
@LCL
// #32234
D=M
// #32235
@R14
// #32236
M=D //R14=LCL
// #32237
@5
// #32238
A=D-A
// #32239
D=M
// #32240
@R15
// #32241
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #32242
@SP
// #32243
M=M-1
// #32244
A=M
// #32245
D=M
//vv pop_stack_to_d
// #32246
@ARG
// #32247
A=M
// #32248
M=D //*ARG = pop()
// #32249
@ARG
// #32250
D=M
// #32251
@SP
// #32252
M=D+1 //SP=ARG+1
// #32253
@R14
// #32254
AM=M-1
// #32255
D=M
// #32256
@THAT
// #32257
M=D //THAT = *(--R14)
// #32258
@R14
// #32259
AM=M-1
// #32260
D=M
// #32261
@THIS
// #32262
M=D //THIS = *(--R14)
// #32263
@R14
// #32264
AM=M-1
// #32265
D=M
// #32266
@ARG
// #32267
M=D //ARG = *(--R14)
// #32268
@R14
// #32269
AM=M-1
// #32270
D=M
// #32271
@LCL
// #32272
M=D //LCL = *(--R14)
// #32273
@R15
// #32274
A=M
// #32275
0;JMP //goto *R15
//
//// function Square.moveLeft 0
(Square.moveLeft)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #32276
@ARG
// #32277
D=M
// #32278
@0
// #32279
A=D+A
// #32280
D=M
//^^ push_d_to_stack
// #32281
@SP
// #32282
A=M
// #32283
M=D
// #32284
@SP
// #32285
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// pop pointer 0
//^^ pop_to_loc{3)
//^^ pop_stack_to_d
// #32286
@SP
// #32287
M=M-1
// #32288
A=M
// #32289
D=M
//vv pop_stack_to_d
// #32290
@3
// #32291
M=D
//vv pop_to_loc{3)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #32292
@THIS
// #32293
D=M
// #32294
@0
// #32295
A=D+A
// #32296
D=M
//^^ push_d_to_stack
// #32297
@SP
// #32298
A=M
// #32299
M=D
// #32300
@SP
// #32301
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push constant 1
//^^ push_constant(1)
// #32302
@1
// #32303
D=A
//^^ push_d_to_stack
// #32304
@SP
// #32305
A=M
// #32306
M=D
// #32307
@SP
// #32308
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// gt
//^^ arith_cmp_op(JGT)
//^^ pop_stack_to_d
// #32309
@SP
// #32310
M=M-1
// #32311
A=M
// #32312
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #32313
@R13
// #32314
M=D
//^^ pop_stack_to_d
// #32315
@SP
// #32316
M=M-1
// #32317
A=M
// #32318
D=M
//vv pop_stack_to_d
// #32319
@R13
// #32320
D=D-M
// #32321
@R13
// #32322
M=0
//vv arith_d_with_stack_top(D-M)
// #32323
@PUT_TRUE_326
// #32324
D;JGT
// #32325
@R13
// #32326
M=0
// #32327
@CONT_326
// #32328
0;JMP
(PUT_TRUE_326)
// #32329
@R13
// #32330
M=-1
(CONT_326)
// #32331
@R13
// #32332
D=M
// #32333
@R13
// #32334
M=0
//^^ push_d_to_stack
// #32335
@SP
// #32336
A=M
// #32337
M=D
// #32338
@SP
// #32339
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JGT)
//
//// if-goto IF_TRUE0
//^^ pop_stack_to_d
// #32340
@SP
// #32341
M=M-1
// #32342
A=M
// #32343
D=M
//vv pop_stack_to_d
// #32344
@Square.moveLeft$IF_TRUE0
// #32345
D;JNE
//
//// goto IF_FALSE0
// #32346
@Square.moveLeft$IF_FALSE0
// #32347
0;JMP
//
//// label IF_TRUE0
(Square.moveLeft$IF_TRUE0)
//
//// push constant 0
//^^ push_constant(0)
// #32348
@0
// #32349
D=A
//^^ push_d_to_stack
// #32350
@SP
// #32351
A=M
// #32352
M=D
// #32353
@SP
// #32354
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Screen.setColor 1
//^^ push_constant(RET_ADDR_327)
// #32355
@RET_ADDR_327
// #32356
D=A
//^^ push_d_to_stack
// #32357
@SP
// #32358
A=M
// #32359
M=D
// #32360
@SP
// #32361
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_327)
//push return-address
// #32362
@LCL
// #32363
D=M
//^^ push_d_to_stack
// #32364
@SP
// #32365
A=M
// #32366
M=D
// #32367
@SP
// #32368
M=M+1
//vv push_d_to_stack
//push LCL
// #32369
@ARG
// #32370
D=M
//^^ push_d_to_stack
// #32371
@SP
// #32372
A=M
// #32373
M=D
// #32374
@SP
// #32375
M=M+1
//vv push_d_to_stack
//push ARG
// #32376
@THIS
// #32377
D=M
//^^ push_d_to_stack
// #32378
@SP
// #32379
A=M
// #32380
M=D
// #32381
@SP
// #32382
M=M+1
//vv push_d_to_stack
//push THIS
// #32383
@THAT
// #32384
D=M
//^^ push_d_to_stack
// #32385
@SP
// #32386
A=M
// #32387
M=D
// #32388
@SP
// #32389
M=M+1
//vv push_d_to_stack
//push THAT
// #32390
@SP
// #32391
D=M
// #32392
@ARG
// #32393
M=D
// #32394
@6
// #32395
D=A
// #32396
@ARG
// #32397
M=M-D // ARG = SP - args - 5
// #32398
@SP
// #32399
D=M
// #32400
@LCL
// #32401
M=D // LCL = SP
// #32402
@Screen.setColor
// #32403
0;JMP
(RET_ADDR_327)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #32404
@SP
// #32405
M=M-1
// #32406
A=M
// #32407
D=M
//vv pop_stack_to_d
// #32408
@5
// #32409
M=D
//vv pop_to_loc{5)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #32410
@THIS
// #32411
D=M
// #32412
@0
// #32413
A=D+A
// #32414
D=M
//^^ push_d_to_stack
// #32415
@SP
// #32416
A=M
// #32417
M=D
// #32418
@SP
// #32419
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #32420
@THIS
// #32421
D=M
// #32422
@2
// #32423
A=D+A
// #32424
D=M
//^^ push_d_to_stack
// #32425
@SP
// #32426
A=M
// #32427
M=D
// #32428
@SP
// #32429
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #32430
@SP
// #32431
M=M-1
// #32432
A=M
// #32433
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #32434
@R13
// #32435
M=D
//^^ pop_stack_to_d
// #32436
@SP
// #32437
M=M-1
// #32438
A=M
// #32439
D=M
//vv pop_stack_to_d
// #32440
@R13
// #32441
D=D+M
// #32442
@R13
// #32443
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #32444
@SP
// #32445
A=M
// #32446
M=D
// #32447
@SP
// #32448
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push constant 1
//^^ push_constant(1)
// #32449
@1
// #32450
D=A
//^^ push_d_to_stack
// #32451
@SP
// #32452
A=M
// #32453
M=D
// #32454
@SP
// #32455
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #32456
@SP
// #32457
M=M-1
// #32458
A=M
// #32459
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #32460
@R13
// #32461
M=D
//^^ pop_stack_to_d
// #32462
@SP
// #32463
M=M-1
// #32464
A=M
// #32465
D=M
//vv pop_stack_to_d
// #32466
@R13
// #32467
D=D-M
// #32468
@R13
// #32469
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #32470
@SP
// #32471
A=M
// #32472
M=D
// #32473
@SP
// #32474
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #32475
@THIS
// #32476
D=M
// #32477
@1
// #32478
A=D+A
// #32479
D=M
//^^ push_d_to_stack
// #32480
@SP
// #32481
A=M
// #32482
M=D
// #32483
@SP
// #32484
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #32485
@THIS
// #32486
D=M
// #32487
@0
// #32488
A=D+A
// #32489
D=M
//^^ push_d_to_stack
// #32490
@SP
// #32491
A=M
// #32492
M=D
// #32493
@SP
// #32494
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #32495
@THIS
// #32496
D=M
// #32497
@2
// #32498
A=D+A
// #32499
D=M
//^^ push_d_to_stack
// #32500
@SP
// #32501
A=M
// #32502
M=D
// #32503
@SP
// #32504
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #32505
@SP
// #32506
M=M-1
// #32507
A=M
// #32508
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #32509
@R13
// #32510
M=D
//^^ pop_stack_to_d
// #32511
@SP
// #32512
M=M-1
// #32513
A=M
// #32514
D=M
//vv pop_stack_to_d
// #32515
@R13
// #32516
D=D+M
// #32517
@R13
// #32518
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #32519
@SP
// #32520
A=M
// #32521
M=D
// #32522
@SP
// #32523
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #32524
@THIS
// #32525
D=M
// #32526
@1
// #32527
A=D+A
// #32528
D=M
//^^ push_d_to_stack
// #32529
@SP
// #32530
A=M
// #32531
M=D
// #32532
@SP
// #32533
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #32534
@THIS
// #32535
D=M
// #32536
@2
// #32537
A=D+A
// #32538
D=M
//^^ push_d_to_stack
// #32539
@SP
// #32540
A=M
// #32541
M=D
// #32542
@SP
// #32543
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #32544
@SP
// #32545
M=M-1
// #32546
A=M
// #32547
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #32548
@R13
// #32549
M=D
//^^ pop_stack_to_d
// #32550
@SP
// #32551
M=M-1
// #32552
A=M
// #32553
D=M
//vv pop_stack_to_d
// #32554
@R13
// #32555
D=D+M
// #32556
@R13
// #32557
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #32558
@SP
// #32559
A=M
// #32560
M=D
// #32561
@SP
// #32562
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// call Screen.drawRectangle 4
//^^ push_constant(RET_ADDR_328)
// #32563
@RET_ADDR_328
// #32564
D=A
//^^ push_d_to_stack
// #32565
@SP
// #32566
A=M
// #32567
M=D
// #32568
@SP
// #32569
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_328)
//push return-address
// #32570
@LCL
// #32571
D=M
//^^ push_d_to_stack
// #32572
@SP
// #32573
A=M
// #32574
M=D
// #32575
@SP
// #32576
M=M+1
//vv push_d_to_stack
//push LCL
// #32577
@ARG
// #32578
D=M
//^^ push_d_to_stack
// #32579
@SP
// #32580
A=M
// #32581
M=D
// #32582
@SP
// #32583
M=M+1
//vv push_d_to_stack
//push ARG
// #32584
@THIS
// #32585
D=M
//^^ push_d_to_stack
// #32586
@SP
// #32587
A=M
// #32588
M=D
// #32589
@SP
// #32590
M=M+1
//vv push_d_to_stack
//push THIS
// #32591
@THAT
// #32592
D=M
//^^ push_d_to_stack
// #32593
@SP
// #32594
A=M
// #32595
M=D
// #32596
@SP
// #32597
M=M+1
//vv push_d_to_stack
//push THAT
// #32598
@SP
// #32599
D=M
// #32600
@ARG
// #32601
M=D
// #32602
@9
// #32603
D=A
// #32604
@ARG
// #32605
M=M-D // ARG = SP - args - 5
// #32606
@SP
// #32607
D=M
// #32608
@LCL
// #32609
M=D // LCL = SP
// #32610
@Screen.drawRectangle
// #32611
0;JMP
(RET_ADDR_328)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #32612
@SP
// #32613
M=M-1
// #32614
A=M
// #32615
D=M
//vv pop_stack_to_d
// #32616
@5
// #32617
M=D
//vv pop_to_loc{5)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #32618
@THIS
// #32619
D=M
// #32620
@0
// #32621
A=D+A
// #32622
D=M
//^^ push_d_to_stack
// #32623
@SP
// #32624
A=M
// #32625
M=D
// #32626
@SP
// #32627
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push constant 2
//^^ push_constant(2)
// #32628
@2
// #32629
D=A
//^^ push_d_to_stack
// #32630
@SP
// #32631
A=M
// #32632
M=D
// #32633
@SP
// #32634
M=M+1
//vv push_d_to_stack
//vv push_constant(2)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #32635
@SP
// #32636
M=M-1
// #32637
A=M
// #32638
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #32639
@R13
// #32640
M=D
//^^ pop_stack_to_d
// #32641
@SP
// #32642
M=M-1
// #32643
A=M
// #32644
D=M
//vv pop_stack_to_d
// #32645
@R13
// #32646
D=D-M
// #32647
@R13
// #32648
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #32649
@SP
// #32650
A=M
// #32651
M=D
// #32652
@SP
// #32653
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// pop this 0
//^^ pop_to_ram(THIS, 0)
// #32654
@THIS
// #32655
D=M
// #32656
@0
// #32657
D=D+A
// #32658
@R13
// #32659
M=D
//^^ pop_stack_to_d
// #32660
@SP
// #32661
M=M-1
// #32662
A=M
// #32663
D=M
//vv pop_stack_to_d
// #32664
@R13
// #32665
A=M
// #32666
M=D
// #32667
@R13
// #32668
M=0
//vv pop_to_ram(THIS, 0)
//
//// push constant 0
//^^ push_constant(0)
// #32669
@0
// #32670
D=A
//^^ push_d_to_stack
// #32671
@SP
// #32672
A=M
// #32673
M=D
// #32674
@SP
// #32675
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #32676
@SP
// #32677
M=M-1
// #32678
A=M
// #32679
D=M
//vv pop_stack_to_d
// #32680
D=!D
//^^ push_d_to_stack
// #32681
@SP
// #32682
A=M
// #32683
M=D
// #32684
@SP
// #32685
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// call Screen.setColor 1
//^^ push_constant(RET_ADDR_329)
// #32686
@RET_ADDR_329
// #32687
D=A
//^^ push_d_to_stack
// #32688
@SP
// #32689
A=M
// #32690
M=D
// #32691
@SP
// #32692
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_329)
//push return-address
// #32693
@LCL
// #32694
D=M
//^^ push_d_to_stack
// #32695
@SP
// #32696
A=M
// #32697
M=D
// #32698
@SP
// #32699
M=M+1
//vv push_d_to_stack
//push LCL
// #32700
@ARG
// #32701
D=M
//^^ push_d_to_stack
// #32702
@SP
// #32703
A=M
// #32704
M=D
// #32705
@SP
// #32706
M=M+1
//vv push_d_to_stack
//push ARG
// #32707
@THIS
// #32708
D=M
//^^ push_d_to_stack
// #32709
@SP
// #32710
A=M
// #32711
M=D
// #32712
@SP
// #32713
M=M+1
//vv push_d_to_stack
//push THIS
// #32714
@THAT
// #32715
D=M
//^^ push_d_to_stack
// #32716
@SP
// #32717
A=M
// #32718
M=D
// #32719
@SP
// #32720
M=M+1
//vv push_d_to_stack
//push THAT
// #32721
@SP
// #32722
D=M
// #32723
@ARG
// #32724
M=D
// #32725
@6
// #32726
D=A
// #32727
@ARG
// #32728
M=M-D // ARG = SP - args - 5
// #32729
@SP
// #32730
D=M
// #32731
@LCL
// #32732
M=D // LCL = SP
// #32733
@Screen.setColor
// #32734
0;JMP
(RET_ADDR_329)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #32735
@SP
// #32736
M=M-1
// #32737
A=M
// #32738
D=M
//vv pop_stack_to_d
// #32739
@5
// #32740
M=D
//vv pop_to_loc{5)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #32741
@THIS
// #32742
D=M
// #32743
@0
// #32744
A=D+A
// #32745
D=M
//^^ push_d_to_stack
// #32746
@SP
// #32747
A=M
// #32748
M=D
// #32749
@SP
// #32750
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #32751
@THIS
// #32752
D=M
// #32753
@1
// #32754
A=D+A
// #32755
D=M
//^^ push_d_to_stack
// #32756
@SP
// #32757
A=M
// #32758
M=D
// #32759
@SP
// #32760
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #32761
@THIS
// #32762
D=M
// #32763
@0
// #32764
A=D+A
// #32765
D=M
//^^ push_d_to_stack
// #32766
@SP
// #32767
A=M
// #32768
M=D
// #32769
@SP
// #32770
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push constant 1
//^^ push_constant(1)
// #32771
@1
// #32772
D=A
//^^ push_d_to_stack
// #32773
@SP
// #32774
A=M
// #32775
M=D
// #32776
@SP
// #32777
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #32778
@SP
// #32779
M=M-1
// #32780
A=M
// #32781
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #32782
@R13
// #32783
M=D
//^^ pop_stack_to_d
// #32784
@SP
// #32785
M=M-1
// #32786
A=M
// #32787
D=M
//vv pop_stack_to_d
// #32788
@R13
// #32789
D=D+M
// #32790
@R13
// #32791
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #32792
@SP
// #32793
A=M
// #32794
M=D
// #32795
@SP
// #32796
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #32797
@THIS
// #32798
D=M
// #32799
@1
// #32800
A=D+A
// #32801
D=M
//^^ push_d_to_stack
// #32802
@SP
// #32803
A=M
// #32804
M=D
// #32805
@SP
// #32806
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #32807
@THIS
// #32808
D=M
// #32809
@2
// #32810
A=D+A
// #32811
D=M
//^^ push_d_to_stack
// #32812
@SP
// #32813
A=M
// #32814
M=D
// #32815
@SP
// #32816
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #32817
@SP
// #32818
M=M-1
// #32819
A=M
// #32820
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #32821
@R13
// #32822
M=D
//^^ pop_stack_to_d
// #32823
@SP
// #32824
M=M-1
// #32825
A=M
// #32826
D=M
//vv pop_stack_to_d
// #32827
@R13
// #32828
D=D+M
// #32829
@R13
// #32830
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #32831
@SP
// #32832
A=M
// #32833
M=D
// #32834
@SP
// #32835
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// call Screen.drawRectangle 4
//^^ push_constant(RET_ADDR_330)
// #32836
@RET_ADDR_330
// #32837
D=A
//^^ push_d_to_stack
// #32838
@SP
// #32839
A=M
// #32840
M=D
// #32841
@SP
// #32842
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_330)
//push return-address
// #32843
@LCL
// #32844
D=M
//^^ push_d_to_stack
// #32845
@SP
// #32846
A=M
// #32847
M=D
// #32848
@SP
// #32849
M=M+1
//vv push_d_to_stack
//push LCL
// #32850
@ARG
// #32851
D=M
//^^ push_d_to_stack
// #32852
@SP
// #32853
A=M
// #32854
M=D
// #32855
@SP
// #32856
M=M+1
//vv push_d_to_stack
//push ARG
// #32857
@THIS
// #32858
D=M
//^^ push_d_to_stack
// #32859
@SP
// #32860
A=M
// #32861
M=D
// #32862
@SP
// #32863
M=M+1
//vv push_d_to_stack
//push THIS
// #32864
@THAT
// #32865
D=M
//^^ push_d_to_stack
// #32866
@SP
// #32867
A=M
// #32868
M=D
// #32869
@SP
// #32870
M=M+1
//vv push_d_to_stack
//push THAT
// #32871
@SP
// #32872
D=M
// #32873
@ARG
// #32874
M=D
// #32875
@9
// #32876
D=A
// #32877
@ARG
// #32878
M=M-D // ARG = SP - args - 5
// #32879
@SP
// #32880
D=M
// #32881
@LCL
// #32882
M=D // LCL = SP
// #32883
@Screen.drawRectangle
// #32884
0;JMP
(RET_ADDR_330)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #32885
@SP
// #32886
M=M-1
// #32887
A=M
// #32888
D=M
//vv pop_stack_to_d
// #32889
@5
// #32890
M=D
//vv pop_to_loc{5)
//
//// label IF_FALSE0
(Square.moveLeft$IF_FALSE0)
//
//// push constant 0
//^^ push_constant(0)
// #32891
@0
// #32892
D=A
//^^ push_d_to_stack
// #32893
@SP
// #32894
A=M
// #32895
M=D
// #32896
@SP
// #32897
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #32898
@LCL
// #32899
D=M
// #32900
@R14
// #32901
M=D //R14=LCL
// #32902
@5
// #32903
A=D-A
// #32904
D=M
// #32905
@R15
// #32906
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #32907
@SP
// #32908
M=M-1
// #32909
A=M
// #32910
D=M
//vv pop_stack_to_d
// #32911
@ARG
// #32912
A=M
// #32913
M=D //*ARG = pop()
// #32914
@ARG
// #32915
D=M
// #32916
@SP
// #32917
M=D+1 //SP=ARG+1
// #32918
@R14
// #32919
AM=M-1
// #32920
D=M
// #32921
@THAT
// #32922
M=D //THAT = *(--R14)
// #32923
@R14
// #32924
AM=M-1
// #32925
D=M
// #32926
@THIS
// #32927
M=D //THIS = *(--R14)
// #32928
@R14
// #32929
AM=M-1
// #32930
D=M
// #32931
@ARG
// #32932
M=D //ARG = *(--R14)
// #32933
@R14
// #32934
AM=M-1
// #32935
D=M
// #32936
@LCL
// #32937
M=D //LCL = *(--R14)
// #32938
@R15
// #32939
A=M
// #32940
0;JMP //goto *R15
//
//// function Square.moveRight 0
(Square.moveRight)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #32941
@ARG
// #32942
D=M
// #32943
@0
// #32944
A=D+A
// #32945
D=M
//^^ push_d_to_stack
// #32946
@SP
// #32947
A=M
// #32948
M=D
// #32949
@SP
// #32950
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// pop pointer 0
//^^ pop_to_loc{3)
//^^ pop_stack_to_d
// #32951
@SP
// #32952
M=M-1
// #32953
A=M
// #32954
D=M
//vv pop_stack_to_d
// #32955
@3
// #32956
M=D
//vv pop_to_loc{3)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #32957
@THIS
// #32958
D=M
// #32959
@0
// #32960
A=D+A
// #32961
D=M
//^^ push_d_to_stack
// #32962
@SP
// #32963
A=M
// #32964
M=D
// #32965
@SP
// #32966
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #32967
@THIS
// #32968
D=M
// #32969
@2
// #32970
A=D+A
// #32971
D=M
//^^ push_d_to_stack
// #32972
@SP
// #32973
A=M
// #32974
M=D
// #32975
@SP
// #32976
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #32977
@SP
// #32978
M=M-1
// #32979
A=M
// #32980
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #32981
@R13
// #32982
M=D
//^^ pop_stack_to_d
// #32983
@SP
// #32984
M=M-1
// #32985
A=M
// #32986
D=M
//vv pop_stack_to_d
// #32987
@R13
// #32988
D=D+M
// #32989
@R13
// #32990
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #32991
@SP
// #32992
A=M
// #32993
M=D
// #32994
@SP
// #32995
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push constant 510
//^^ push_constant(510)
// #32996
@510
// #32997
D=A
//^^ push_d_to_stack
// #32998
@SP
// #32999
A=M
// #33000
M=D
// #33001
@SP
// #33002
M=M+1
//vv push_d_to_stack
//vv push_constant(510)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #33003
@SP
// #33004
M=M-1
// #33005
A=M
// #33006
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #33007
@R13
// #33008
M=D
//^^ pop_stack_to_d
// #33009
@SP
// #33010
M=M-1
// #33011
A=M
// #33012
D=M
//vv pop_stack_to_d
// #33013
@R13
// #33014
D=D-M
// #33015
@R13
// #33016
M=0
//vv arith_d_with_stack_top(D-M)
// #33017
@PUT_TRUE_331
// #33018
D;JLT
// #33019
@R13
// #33020
M=0
// #33021
@CONT_331
// #33022
0;JMP
(PUT_TRUE_331)
// #33023
@R13
// #33024
M=-1
(CONT_331)
// #33025
@R13
// #33026
D=M
// #33027
@R13
// #33028
M=0
//^^ push_d_to_stack
// #33029
@SP
// #33030
A=M
// #33031
M=D
// #33032
@SP
// #33033
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// if-goto IF_TRUE0
//^^ pop_stack_to_d
// #33034
@SP
// #33035
M=M-1
// #33036
A=M
// #33037
D=M
//vv pop_stack_to_d
// #33038
@Square.moveRight$IF_TRUE0
// #33039
D;JNE
//
//// goto IF_FALSE0
// #33040
@Square.moveRight$IF_FALSE0
// #33041
0;JMP
//
//// label IF_TRUE0
(Square.moveRight$IF_TRUE0)
//
//// push constant 0
//^^ push_constant(0)
// #33042
@0
// #33043
D=A
//^^ push_d_to_stack
// #33044
@SP
// #33045
A=M
// #33046
M=D
// #33047
@SP
// #33048
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// call Screen.setColor 1
//^^ push_constant(RET_ADDR_332)
// #33049
@RET_ADDR_332
// #33050
D=A
//^^ push_d_to_stack
// #33051
@SP
// #33052
A=M
// #33053
M=D
// #33054
@SP
// #33055
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_332)
//push return-address
// #33056
@LCL
// #33057
D=M
//^^ push_d_to_stack
// #33058
@SP
// #33059
A=M
// #33060
M=D
// #33061
@SP
// #33062
M=M+1
//vv push_d_to_stack
//push LCL
// #33063
@ARG
// #33064
D=M
//^^ push_d_to_stack
// #33065
@SP
// #33066
A=M
// #33067
M=D
// #33068
@SP
// #33069
M=M+1
//vv push_d_to_stack
//push ARG
// #33070
@THIS
// #33071
D=M
//^^ push_d_to_stack
// #33072
@SP
// #33073
A=M
// #33074
M=D
// #33075
@SP
// #33076
M=M+1
//vv push_d_to_stack
//push THIS
// #33077
@THAT
// #33078
D=M
//^^ push_d_to_stack
// #33079
@SP
// #33080
A=M
// #33081
M=D
// #33082
@SP
// #33083
M=M+1
//vv push_d_to_stack
//push THAT
// #33084
@SP
// #33085
D=M
// #33086
@ARG
// #33087
M=D
// #33088
@6
// #33089
D=A
// #33090
@ARG
// #33091
M=M-D // ARG = SP - args - 5
// #33092
@SP
// #33093
D=M
// #33094
@LCL
// #33095
M=D // LCL = SP
// #33096
@Screen.setColor
// #33097
0;JMP
(RET_ADDR_332)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #33098
@SP
// #33099
M=M-1
// #33100
A=M
// #33101
D=M
//vv pop_stack_to_d
// #33102
@5
// #33103
M=D
//vv pop_to_loc{5)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #33104
@THIS
// #33105
D=M
// #33106
@0
// #33107
A=D+A
// #33108
D=M
//^^ push_d_to_stack
// #33109
@SP
// #33110
A=M
// #33111
M=D
// #33112
@SP
// #33113
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #33114
@THIS
// #33115
D=M
// #33116
@1
// #33117
A=D+A
// #33118
D=M
//^^ push_d_to_stack
// #33119
@SP
// #33120
A=M
// #33121
M=D
// #33122
@SP
// #33123
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #33124
@THIS
// #33125
D=M
// #33126
@0
// #33127
A=D+A
// #33128
D=M
//^^ push_d_to_stack
// #33129
@SP
// #33130
A=M
// #33131
M=D
// #33132
@SP
// #33133
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push constant 1
//^^ push_constant(1)
// #33134
@1
// #33135
D=A
//^^ push_d_to_stack
// #33136
@SP
// #33137
A=M
// #33138
M=D
// #33139
@SP
// #33140
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #33141
@SP
// #33142
M=M-1
// #33143
A=M
// #33144
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #33145
@R13
// #33146
M=D
//^^ pop_stack_to_d
// #33147
@SP
// #33148
M=M-1
// #33149
A=M
// #33150
D=M
//vv pop_stack_to_d
// #33151
@R13
// #33152
D=D+M
// #33153
@R13
// #33154
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #33155
@SP
// #33156
A=M
// #33157
M=D
// #33158
@SP
// #33159
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #33160
@THIS
// #33161
D=M
// #33162
@1
// #33163
A=D+A
// #33164
D=M
//^^ push_d_to_stack
// #33165
@SP
// #33166
A=M
// #33167
M=D
// #33168
@SP
// #33169
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #33170
@THIS
// #33171
D=M
// #33172
@2
// #33173
A=D+A
// #33174
D=M
//^^ push_d_to_stack
// #33175
@SP
// #33176
A=M
// #33177
M=D
// #33178
@SP
// #33179
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #33180
@SP
// #33181
M=M-1
// #33182
A=M
// #33183
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #33184
@R13
// #33185
M=D
//^^ pop_stack_to_d
// #33186
@SP
// #33187
M=M-1
// #33188
A=M
// #33189
D=M
//vv pop_stack_to_d
// #33190
@R13
// #33191
D=D+M
// #33192
@R13
// #33193
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #33194
@SP
// #33195
A=M
// #33196
M=D
// #33197
@SP
// #33198
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// call Screen.drawRectangle 4
//^^ push_constant(RET_ADDR_333)
// #33199
@RET_ADDR_333
// #33200
D=A
//^^ push_d_to_stack
// #33201
@SP
// #33202
A=M
// #33203
M=D
// #33204
@SP
// #33205
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_333)
//push return-address
// #33206
@LCL
// #33207
D=M
//^^ push_d_to_stack
// #33208
@SP
// #33209
A=M
// #33210
M=D
// #33211
@SP
// #33212
M=M+1
//vv push_d_to_stack
//push LCL
// #33213
@ARG
// #33214
D=M
//^^ push_d_to_stack
// #33215
@SP
// #33216
A=M
// #33217
M=D
// #33218
@SP
// #33219
M=M+1
//vv push_d_to_stack
//push ARG
// #33220
@THIS
// #33221
D=M
//^^ push_d_to_stack
// #33222
@SP
// #33223
A=M
// #33224
M=D
// #33225
@SP
// #33226
M=M+1
//vv push_d_to_stack
//push THIS
// #33227
@THAT
// #33228
D=M
//^^ push_d_to_stack
// #33229
@SP
// #33230
A=M
// #33231
M=D
// #33232
@SP
// #33233
M=M+1
//vv push_d_to_stack
//push THAT
// #33234
@SP
// #33235
D=M
// #33236
@ARG
// #33237
M=D
// #33238
@9
// #33239
D=A
// #33240
@ARG
// #33241
M=M-D // ARG = SP - args - 5
// #33242
@SP
// #33243
D=M
// #33244
@LCL
// #33245
M=D // LCL = SP
// #33246
@Screen.drawRectangle
// #33247
0;JMP
(RET_ADDR_333)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #33248
@SP
// #33249
M=M-1
// #33250
A=M
// #33251
D=M
//vv pop_stack_to_d
// #33252
@5
// #33253
M=D
//vv pop_to_loc{5)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #33254
@THIS
// #33255
D=M
// #33256
@0
// #33257
A=D+A
// #33258
D=M
//^^ push_d_to_stack
// #33259
@SP
// #33260
A=M
// #33261
M=D
// #33262
@SP
// #33263
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push constant 2
//^^ push_constant(2)
// #33264
@2
// #33265
D=A
//^^ push_d_to_stack
// #33266
@SP
// #33267
A=M
// #33268
M=D
// #33269
@SP
// #33270
M=M+1
//vv push_d_to_stack
//vv push_constant(2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #33271
@SP
// #33272
M=M-1
// #33273
A=M
// #33274
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #33275
@R13
// #33276
M=D
//^^ pop_stack_to_d
// #33277
@SP
// #33278
M=M-1
// #33279
A=M
// #33280
D=M
//vv pop_stack_to_d
// #33281
@R13
// #33282
D=D+M
// #33283
@R13
// #33284
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #33285
@SP
// #33286
A=M
// #33287
M=D
// #33288
@SP
// #33289
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// pop this 0
//^^ pop_to_ram(THIS, 0)
// #33290
@THIS
// #33291
D=M
// #33292
@0
// #33293
D=D+A
// #33294
@R13
// #33295
M=D
//^^ pop_stack_to_d
// #33296
@SP
// #33297
M=M-1
// #33298
A=M
// #33299
D=M
//vv pop_stack_to_d
// #33300
@R13
// #33301
A=M
// #33302
M=D
// #33303
@R13
// #33304
M=0
//vv pop_to_ram(THIS, 0)
//
//// push constant 0
//^^ push_constant(0)
// #33305
@0
// #33306
D=A
//^^ push_d_to_stack
// #33307
@SP
// #33308
A=M
// #33309
M=D
// #33310
@SP
// #33311
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #33312
@SP
// #33313
M=M-1
// #33314
A=M
// #33315
D=M
//vv pop_stack_to_d
// #33316
D=!D
//^^ push_d_to_stack
// #33317
@SP
// #33318
A=M
// #33319
M=D
// #33320
@SP
// #33321
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// call Screen.setColor 1
//^^ push_constant(RET_ADDR_334)
// #33322
@RET_ADDR_334
// #33323
D=A
//^^ push_d_to_stack
// #33324
@SP
// #33325
A=M
// #33326
M=D
// #33327
@SP
// #33328
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_334)
//push return-address
// #33329
@LCL
// #33330
D=M
//^^ push_d_to_stack
// #33331
@SP
// #33332
A=M
// #33333
M=D
// #33334
@SP
// #33335
M=M+1
//vv push_d_to_stack
//push LCL
// #33336
@ARG
// #33337
D=M
//^^ push_d_to_stack
// #33338
@SP
// #33339
A=M
// #33340
M=D
// #33341
@SP
// #33342
M=M+1
//vv push_d_to_stack
//push ARG
// #33343
@THIS
// #33344
D=M
//^^ push_d_to_stack
// #33345
@SP
// #33346
A=M
// #33347
M=D
// #33348
@SP
// #33349
M=M+1
//vv push_d_to_stack
//push THIS
// #33350
@THAT
// #33351
D=M
//^^ push_d_to_stack
// #33352
@SP
// #33353
A=M
// #33354
M=D
// #33355
@SP
// #33356
M=M+1
//vv push_d_to_stack
//push THAT
// #33357
@SP
// #33358
D=M
// #33359
@ARG
// #33360
M=D
// #33361
@6
// #33362
D=A
// #33363
@ARG
// #33364
M=M-D // ARG = SP - args - 5
// #33365
@SP
// #33366
D=M
// #33367
@LCL
// #33368
M=D // LCL = SP
// #33369
@Screen.setColor
// #33370
0;JMP
(RET_ADDR_334)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #33371
@SP
// #33372
M=M-1
// #33373
A=M
// #33374
D=M
//vv pop_stack_to_d
// #33375
@5
// #33376
M=D
//vv pop_to_loc{5)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #33377
@THIS
// #33378
D=M
// #33379
@0
// #33380
A=D+A
// #33381
D=M
//^^ push_d_to_stack
// #33382
@SP
// #33383
A=M
// #33384
M=D
// #33385
@SP
// #33386
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #33387
@THIS
// #33388
D=M
// #33389
@2
// #33390
A=D+A
// #33391
D=M
//^^ push_d_to_stack
// #33392
@SP
// #33393
A=M
// #33394
M=D
// #33395
@SP
// #33396
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #33397
@SP
// #33398
M=M-1
// #33399
A=M
// #33400
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #33401
@R13
// #33402
M=D
//^^ pop_stack_to_d
// #33403
@SP
// #33404
M=M-1
// #33405
A=M
// #33406
D=M
//vv pop_stack_to_d
// #33407
@R13
// #33408
D=D+M
// #33409
@R13
// #33410
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #33411
@SP
// #33412
A=M
// #33413
M=D
// #33414
@SP
// #33415
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push constant 1
//^^ push_constant(1)
// #33416
@1
// #33417
D=A
//^^ push_d_to_stack
// #33418
@SP
// #33419
A=M
// #33420
M=D
// #33421
@SP
// #33422
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #33423
@SP
// #33424
M=M-1
// #33425
A=M
// #33426
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #33427
@R13
// #33428
M=D
//^^ pop_stack_to_d
// #33429
@SP
// #33430
M=M-1
// #33431
A=M
// #33432
D=M
//vv pop_stack_to_d
// #33433
@R13
// #33434
D=D-M
// #33435
@R13
// #33436
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #33437
@SP
// #33438
A=M
// #33439
M=D
// #33440
@SP
// #33441
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #33442
@THIS
// #33443
D=M
// #33444
@1
// #33445
A=D+A
// #33446
D=M
//^^ push_d_to_stack
// #33447
@SP
// #33448
A=M
// #33449
M=D
// #33450
@SP
// #33451
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #33452
@THIS
// #33453
D=M
// #33454
@0
// #33455
A=D+A
// #33456
D=M
//^^ push_d_to_stack
// #33457
@SP
// #33458
A=M
// #33459
M=D
// #33460
@SP
// #33461
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #33462
@THIS
// #33463
D=M
// #33464
@2
// #33465
A=D+A
// #33466
D=M
//^^ push_d_to_stack
// #33467
@SP
// #33468
A=M
// #33469
M=D
// #33470
@SP
// #33471
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #33472
@SP
// #33473
M=M-1
// #33474
A=M
// #33475
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #33476
@R13
// #33477
M=D
//^^ pop_stack_to_d
// #33478
@SP
// #33479
M=M-1
// #33480
A=M
// #33481
D=M
//vv pop_stack_to_d
// #33482
@R13
// #33483
D=D+M
// #33484
@R13
// #33485
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #33486
@SP
// #33487
A=M
// #33488
M=D
// #33489
@SP
// #33490
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #33491
@THIS
// #33492
D=M
// #33493
@1
// #33494
A=D+A
// #33495
D=M
//^^ push_d_to_stack
// #33496
@SP
// #33497
A=M
// #33498
M=D
// #33499
@SP
// #33500
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push this 2
//^^ push_from_ram(THIS, 2)
// #33501
@THIS
// #33502
D=M
// #33503
@2
// #33504
A=D+A
// #33505
D=M
//^^ push_d_to_stack
// #33506
@SP
// #33507
A=M
// #33508
M=D
// #33509
@SP
// #33510
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #33511
@SP
// #33512
M=M-1
// #33513
A=M
// #33514
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #33515
@R13
// #33516
M=D
//^^ pop_stack_to_d
// #33517
@SP
// #33518
M=M-1
// #33519
A=M
// #33520
D=M
//vv pop_stack_to_d
// #33521
@R13
// #33522
D=D+M
// #33523
@R13
// #33524
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #33525
@SP
// #33526
A=M
// #33527
M=D
// #33528
@SP
// #33529
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// call Screen.drawRectangle 4
//^^ push_constant(RET_ADDR_335)
// #33530
@RET_ADDR_335
// #33531
D=A
//^^ push_d_to_stack
// #33532
@SP
// #33533
A=M
// #33534
M=D
// #33535
@SP
// #33536
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_335)
//push return-address
// #33537
@LCL
// #33538
D=M
//^^ push_d_to_stack
// #33539
@SP
// #33540
A=M
// #33541
M=D
// #33542
@SP
// #33543
M=M+1
//vv push_d_to_stack
//push LCL
// #33544
@ARG
// #33545
D=M
//^^ push_d_to_stack
// #33546
@SP
// #33547
A=M
// #33548
M=D
// #33549
@SP
// #33550
M=M+1
//vv push_d_to_stack
//push ARG
// #33551
@THIS
// #33552
D=M
//^^ push_d_to_stack
// #33553
@SP
// #33554
A=M
// #33555
M=D
// #33556
@SP
// #33557
M=M+1
//vv push_d_to_stack
//push THIS
// #33558
@THAT
// #33559
D=M
//^^ push_d_to_stack
// #33560
@SP
// #33561
A=M
// #33562
M=D
// #33563
@SP
// #33564
M=M+1
//vv push_d_to_stack
//push THAT
// #33565
@SP
// #33566
D=M
// #33567
@ARG
// #33568
M=D
// #33569
@9
// #33570
D=A
// #33571
@ARG
// #33572
M=M-D // ARG = SP - args - 5
// #33573
@SP
// #33574
D=M
// #33575
@LCL
// #33576
M=D // LCL = SP
// #33577
@Screen.drawRectangle
// #33578
0;JMP
(RET_ADDR_335)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #33579
@SP
// #33580
M=M-1
// #33581
A=M
// #33582
D=M
//vv pop_stack_to_d
// #33583
@5
// #33584
M=D
//vv pop_to_loc{5)
//
//// label IF_FALSE0
(Square.moveRight$IF_FALSE0)
//
//// push constant 0
//^^ push_constant(0)
// #33585
@0
// #33586
D=A
//^^ push_d_to_stack
// #33587
@SP
// #33588
A=M
// #33589
M=D
// #33590
@SP
// #33591
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #33592
@LCL
// #33593
D=M
// #33594
@R14
// #33595
M=D //R14=LCL
// #33596
@5
// #33597
A=D-A
// #33598
D=M
// #33599
@R15
// #33600
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #33601
@SP
// #33602
M=M-1
// #33603
A=M
// #33604
D=M
//vv pop_stack_to_d
// #33605
@ARG
// #33606
A=M
// #33607
M=D //*ARG = pop()
// #33608
@ARG
// #33609
D=M
// #33610
@SP
// #33611
M=D+1 //SP=ARG+1
// #33612
@R14
// #33613
AM=M-1
// #33614
D=M
// #33615
@THAT
// #33616
M=D //THAT = *(--R14)
// #33617
@R14
// #33618
AM=M-1
// #33619
D=M
// #33620
@THIS
// #33621
M=D //THIS = *(--R14)
// #33622
@R14
// #33623
AM=M-1
// #33624
D=M
// #33625
@ARG
// #33626
M=D //ARG = *(--R14)
// #33627
@R14
// #33628
AM=M-1
// #33629
D=M
// #33630
@LCL
// #33631
M=D //LCL = *(--R14)
// #33632
@R15
// #33633
A=M
// #33634
0;JMP //goto *R15
//
//// function SquareGame.new 0
(SquareGame.new)
//
//// push constant 2
//^^ push_constant(2)
// #33635
@2
// #33636
D=A
//^^ push_d_to_stack
// #33637
@SP
// #33638
A=M
// #33639
M=D
// #33640
@SP
// #33641
M=M+1
//vv push_d_to_stack
//vv push_constant(2)
//
//// call Memory.alloc 1
//^^ push_constant(RET_ADDR_336)
// #33642
@RET_ADDR_336
// #33643
D=A
//^^ push_d_to_stack
// #33644
@SP
// #33645
A=M
// #33646
M=D
// #33647
@SP
// #33648
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_336)
//push return-address
// #33649
@LCL
// #33650
D=M
//^^ push_d_to_stack
// #33651
@SP
// #33652
A=M
// #33653
M=D
// #33654
@SP
// #33655
M=M+1
//vv push_d_to_stack
//push LCL
// #33656
@ARG
// #33657
D=M
//^^ push_d_to_stack
// #33658
@SP
// #33659
A=M
// #33660
M=D
// #33661
@SP
// #33662
M=M+1
//vv push_d_to_stack
//push ARG
// #33663
@THIS
// #33664
D=M
//^^ push_d_to_stack
// #33665
@SP
// #33666
A=M
// #33667
M=D
// #33668
@SP
// #33669
M=M+1
//vv push_d_to_stack
//push THIS
// #33670
@THAT
// #33671
D=M
//^^ push_d_to_stack
// #33672
@SP
// #33673
A=M
// #33674
M=D
// #33675
@SP
// #33676
M=M+1
//vv push_d_to_stack
//push THAT
// #33677
@SP
// #33678
D=M
// #33679
@ARG
// #33680
M=D
// #33681
@6
// #33682
D=A
// #33683
@ARG
// #33684
M=M-D // ARG = SP - args - 5
// #33685
@SP
// #33686
D=M
// #33687
@LCL
// #33688
M=D // LCL = SP
// #33689
@Memory.alloc
// #33690
0;JMP
(RET_ADDR_336)
//
//// pop pointer 0
//^^ pop_to_loc{3)
//^^ pop_stack_to_d
// #33691
@SP
// #33692
M=M-1
// #33693
A=M
// #33694
D=M
//vv pop_stack_to_d
// #33695
@3
// #33696
M=D
//vv pop_to_loc{3)
//
//// push constant 0
//^^ push_constant(0)
// #33697
@0
// #33698
D=A
//^^ push_d_to_stack
// #33699
@SP
// #33700
A=M
// #33701
M=D
// #33702
@SP
// #33703
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 0
//^^ push_constant(0)
// #33704
@0
// #33705
D=A
//^^ push_d_to_stack
// #33706
@SP
// #33707
A=M
// #33708
M=D
// #33709
@SP
// #33710
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// push constant 30
//^^ push_constant(30)
// #33711
@30
// #33712
D=A
//^^ push_d_to_stack
// #33713
@SP
// #33714
A=M
// #33715
M=D
// #33716
@SP
// #33717
M=M+1
//vv push_d_to_stack
//vv push_constant(30)
//
//// call Square.new 3
//^^ push_constant(RET_ADDR_337)
// #33718
@RET_ADDR_337
// #33719
D=A
//^^ push_d_to_stack
// #33720
@SP
// #33721
A=M
// #33722
M=D
// #33723
@SP
// #33724
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_337)
//push return-address
// #33725
@LCL
// #33726
D=M
//^^ push_d_to_stack
// #33727
@SP
// #33728
A=M
// #33729
M=D
// #33730
@SP
// #33731
M=M+1
//vv push_d_to_stack
//push LCL
// #33732
@ARG
// #33733
D=M
//^^ push_d_to_stack
// #33734
@SP
// #33735
A=M
// #33736
M=D
// #33737
@SP
// #33738
M=M+1
//vv push_d_to_stack
//push ARG
// #33739
@THIS
// #33740
D=M
//^^ push_d_to_stack
// #33741
@SP
// #33742
A=M
// #33743
M=D
// #33744
@SP
// #33745
M=M+1
//vv push_d_to_stack
//push THIS
// #33746
@THAT
// #33747
D=M
//^^ push_d_to_stack
// #33748
@SP
// #33749
A=M
// #33750
M=D
// #33751
@SP
// #33752
M=M+1
//vv push_d_to_stack
//push THAT
// #33753
@SP
// #33754
D=M
// #33755
@ARG
// #33756
M=D
// #33757
@8
// #33758
D=A
// #33759
@ARG
// #33760
M=M-D // ARG = SP - args - 5
// #33761
@SP
// #33762
D=M
// #33763
@LCL
// #33764
M=D // LCL = SP
// #33765
@Square.new
// #33766
0;JMP
(RET_ADDR_337)
//
//// pop this 0
//^^ pop_to_ram(THIS, 0)
// #33767
@THIS
// #33768
D=M
// #33769
@0
// #33770
D=D+A
// #33771
@R13
// #33772
M=D
//^^ pop_stack_to_d
// #33773
@SP
// #33774
M=M-1
// #33775
A=M
// #33776
D=M
//vv pop_stack_to_d
// #33777
@R13
// #33778
A=M
// #33779
M=D
// #33780
@R13
// #33781
M=0
//vv pop_to_ram(THIS, 0)
//
//// push constant 0
//^^ push_constant(0)
// #33782
@0
// #33783
D=A
//^^ push_d_to_stack
// #33784
@SP
// #33785
A=M
// #33786
M=D
// #33787
@SP
// #33788
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// pop this 1
//^^ pop_to_ram(THIS, 1)
// #33789
@THIS
// #33790
D=M
// #33791
@1
// #33792
D=D+A
// #33793
@R13
// #33794
M=D
//^^ pop_stack_to_d
// #33795
@SP
// #33796
M=M-1
// #33797
A=M
// #33798
D=M
//vv pop_stack_to_d
// #33799
@R13
// #33800
A=M
// #33801
M=D
// #33802
@R13
// #33803
M=0
//vv pop_to_ram(THIS, 1)
//
//// push pointer 0
//^^ push_from_loc(3)
// #33804
@3
// #33805
D=M
//^^ push_d_to_stack
// #33806
@SP
// #33807
A=M
// #33808
M=D
// #33809
@SP
// #33810
M=M+1
//vv push_d_to_stack
//vv push_from_loc(3)
//
//// return
// #33811
@LCL
// #33812
D=M
// #33813
@R14
// #33814
M=D //R14=LCL
// #33815
@5
// #33816
A=D-A
// #33817
D=M
// #33818
@R15
// #33819
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #33820
@SP
// #33821
M=M-1
// #33822
A=M
// #33823
D=M
//vv pop_stack_to_d
// #33824
@ARG
// #33825
A=M
// #33826
M=D //*ARG = pop()
// #33827
@ARG
// #33828
D=M
// #33829
@SP
// #33830
M=D+1 //SP=ARG+1
// #33831
@R14
// #33832
AM=M-1
// #33833
D=M
// #33834
@THAT
// #33835
M=D //THAT = *(--R14)
// #33836
@R14
// #33837
AM=M-1
// #33838
D=M
// #33839
@THIS
// #33840
M=D //THIS = *(--R14)
// #33841
@R14
// #33842
AM=M-1
// #33843
D=M
// #33844
@ARG
// #33845
M=D //ARG = *(--R14)
// #33846
@R14
// #33847
AM=M-1
// #33848
D=M
// #33849
@LCL
// #33850
M=D //LCL = *(--R14)
// #33851
@R15
// #33852
A=M
// #33853
0;JMP //goto *R15
//
//// function SquareGame.dispose 0
(SquareGame.dispose)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #33854
@ARG
// #33855
D=M
// #33856
@0
// #33857
A=D+A
// #33858
D=M
//^^ push_d_to_stack
// #33859
@SP
// #33860
A=M
// #33861
M=D
// #33862
@SP
// #33863
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// pop pointer 0
//^^ pop_to_loc{3)
//^^ pop_stack_to_d
// #33864
@SP
// #33865
M=M-1
// #33866
A=M
// #33867
D=M
//vv pop_stack_to_d
// #33868
@3
// #33869
M=D
//vv pop_to_loc{3)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #33870
@THIS
// #33871
D=M
// #33872
@0
// #33873
A=D+A
// #33874
D=M
//^^ push_d_to_stack
// #33875
@SP
// #33876
A=M
// #33877
M=D
// #33878
@SP
// #33879
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// call Square.dispose 1
//^^ push_constant(RET_ADDR_338)
// #33880
@RET_ADDR_338
// #33881
D=A
//^^ push_d_to_stack
// #33882
@SP
// #33883
A=M
// #33884
M=D
// #33885
@SP
// #33886
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_338)
//push return-address
// #33887
@LCL
// #33888
D=M
//^^ push_d_to_stack
// #33889
@SP
// #33890
A=M
// #33891
M=D
// #33892
@SP
// #33893
M=M+1
//vv push_d_to_stack
//push LCL
// #33894
@ARG
// #33895
D=M
//^^ push_d_to_stack
// #33896
@SP
// #33897
A=M
// #33898
M=D
// #33899
@SP
// #33900
M=M+1
//vv push_d_to_stack
//push ARG
// #33901
@THIS
// #33902
D=M
//^^ push_d_to_stack
// #33903
@SP
// #33904
A=M
// #33905
M=D
// #33906
@SP
// #33907
M=M+1
//vv push_d_to_stack
//push THIS
// #33908
@THAT
// #33909
D=M
//^^ push_d_to_stack
// #33910
@SP
// #33911
A=M
// #33912
M=D
// #33913
@SP
// #33914
M=M+1
//vv push_d_to_stack
//push THAT
// #33915
@SP
// #33916
D=M
// #33917
@ARG
// #33918
M=D
// #33919
@6
// #33920
D=A
// #33921
@ARG
// #33922
M=M-D // ARG = SP - args - 5
// #33923
@SP
// #33924
D=M
// #33925
@LCL
// #33926
M=D // LCL = SP
// #33927
@Square.dispose
// #33928
0;JMP
(RET_ADDR_338)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #33929
@SP
// #33930
M=M-1
// #33931
A=M
// #33932
D=M
//vv pop_stack_to_d
// #33933
@5
// #33934
M=D
//vv pop_to_loc{5)
//
//// push pointer 0
//^^ push_from_loc(3)
// #33935
@3
// #33936
D=M
//^^ push_d_to_stack
// #33937
@SP
// #33938
A=M
// #33939
M=D
// #33940
@SP
// #33941
M=M+1
//vv push_d_to_stack
//vv push_from_loc(3)
//
//// call Memory.deAlloc 1
//^^ push_constant(RET_ADDR_339)
// #33942
@RET_ADDR_339
// #33943
D=A
//^^ push_d_to_stack
// #33944
@SP
// #33945
A=M
// #33946
M=D
// #33947
@SP
// #33948
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_339)
//push return-address
// #33949
@LCL
// #33950
D=M
//^^ push_d_to_stack
// #33951
@SP
// #33952
A=M
// #33953
M=D
// #33954
@SP
// #33955
M=M+1
//vv push_d_to_stack
//push LCL
// #33956
@ARG
// #33957
D=M
//^^ push_d_to_stack
// #33958
@SP
// #33959
A=M
// #33960
M=D
// #33961
@SP
// #33962
M=M+1
//vv push_d_to_stack
//push ARG
// #33963
@THIS
// #33964
D=M
//^^ push_d_to_stack
// #33965
@SP
// #33966
A=M
// #33967
M=D
// #33968
@SP
// #33969
M=M+1
//vv push_d_to_stack
//push THIS
// #33970
@THAT
// #33971
D=M
//^^ push_d_to_stack
// #33972
@SP
// #33973
A=M
// #33974
M=D
// #33975
@SP
// #33976
M=M+1
//vv push_d_to_stack
//push THAT
// #33977
@SP
// #33978
D=M
// #33979
@ARG
// #33980
M=D
// #33981
@6
// #33982
D=A
// #33983
@ARG
// #33984
M=M-D // ARG = SP - args - 5
// #33985
@SP
// #33986
D=M
// #33987
@LCL
// #33988
M=D // LCL = SP
// #33989
@Memory.deAlloc
// #33990
0;JMP
(RET_ADDR_339)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #33991
@SP
// #33992
M=M-1
// #33993
A=M
// #33994
D=M
//vv pop_stack_to_d
// #33995
@5
// #33996
M=D
//vv pop_to_loc{5)
//
//// push constant 0
//^^ push_constant(0)
// #33997
@0
// #33998
D=A
//^^ push_d_to_stack
// #33999
@SP
// #34000
A=M
// #34001
M=D
// #34002
@SP
// #34003
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #34004
@LCL
// #34005
D=M
// #34006
@R14
// #34007
M=D //R14=LCL
// #34008
@5
// #34009
A=D-A
// #34010
D=M
// #34011
@R15
// #34012
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #34013
@SP
// #34014
M=M-1
// #34015
A=M
// #34016
D=M
//vv pop_stack_to_d
// #34017
@ARG
// #34018
A=M
// #34019
M=D //*ARG = pop()
// #34020
@ARG
// #34021
D=M
// #34022
@SP
// #34023
M=D+1 //SP=ARG+1
// #34024
@R14
// #34025
AM=M-1
// #34026
D=M
// #34027
@THAT
// #34028
M=D //THAT = *(--R14)
// #34029
@R14
// #34030
AM=M-1
// #34031
D=M
// #34032
@THIS
// #34033
M=D //THIS = *(--R14)
// #34034
@R14
// #34035
AM=M-1
// #34036
D=M
// #34037
@ARG
// #34038
M=D //ARG = *(--R14)
// #34039
@R14
// #34040
AM=M-1
// #34041
D=M
// #34042
@LCL
// #34043
M=D //LCL = *(--R14)
// #34044
@R15
// #34045
A=M
// #34046
0;JMP //goto *R15
//
//// function SquareGame.run 2
(SquareGame.run)
// #34047
D=0
//^^ push_d_to_stack
// #34048
@SP
// #34049
A=M
// #34050
M=D
// #34051
@SP
// #34052
M=M+1
//vv push_d_to_stack
// #34053
D=0
//^^ push_d_to_stack
// #34054
@SP
// #34055
A=M
// #34056
M=D
// #34057
@SP
// #34058
M=M+1
//vv push_d_to_stack
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #34059
@ARG
// #34060
D=M
// #34061
@0
// #34062
A=D+A
// #34063
D=M
//^^ push_d_to_stack
// #34064
@SP
// #34065
A=M
// #34066
M=D
// #34067
@SP
// #34068
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// pop pointer 0
//^^ pop_to_loc{3)
//^^ pop_stack_to_d
// #34069
@SP
// #34070
M=M-1
// #34071
A=M
// #34072
D=M
//vv pop_stack_to_d
// #34073
@3
// #34074
M=D
//vv pop_to_loc{3)
//
//// push constant 0
//^^ push_constant(0)
// #34075
@0
// #34076
D=A
//^^ push_d_to_stack
// #34077
@SP
// #34078
A=M
// #34079
M=D
// #34080
@SP
// #34081
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// pop local 1
//^^ pop_to_ram(LCL, 1)
// #34082
@LCL
// #34083
D=M
// #34084
@1
// #34085
D=D+A
// #34086
@R13
// #34087
M=D
//^^ pop_stack_to_d
// #34088
@SP
// #34089
M=M-1
// #34090
A=M
// #34091
D=M
//vv pop_stack_to_d
// #34092
@R13
// #34093
A=M
// #34094
M=D
// #34095
@R13
// #34096
M=0
//vv pop_to_ram(LCL, 1)
//
//// label WHILE_EXP0
(SquareGame.run$WHILE_EXP0)
//
//// push local 1
//^^ push_from_ram(LCL, 1)
// #34097
@LCL
// #34098
D=M
// #34099
@1
// #34100
A=D+A
// #34101
D=M
//^^ push_d_to_stack
// #34102
@SP
// #34103
A=M
// #34104
M=D
// #34105
@SP
// #34106
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 1)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #34107
@SP
// #34108
M=M-1
// #34109
A=M
// #34110
D=M
//vv pop_stack_to_d
// #34111
D=!D
//^^ push_d_to_stack
// #34112
@SP
// #34113
A=M
// #34114
M=D
// #34115
@SP
// #34116
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #34117
@SP
// #34118
M=M-1
// #34119
A=M
// #34120
D=M
//vv pop_stack_to_d
// #34121
D=!D
//^^ push_d_to_stack
// #34122
@SP
// #34123
A=M
// #34124
M=D
// #34125
@SP
// #34126
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// if-goto WHILE_END0
//^^ pop_stack_to_d
// #34127
@SP
// #34128
M=M-1
// #34129
A=M
// #34130
D=M
//vv pop_stack_to_d
// #34131
@SquareGame.run$WHILE_END0
// #34132
D;JNE
//
//// label WHILE_EXP1
(SquareGame.run$WHILE_EXP1)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #34133
@LCL
// #34134
D=M
// #34135
@0
// #34136
A=D+A
// #34137
D=M
//^^ push_d_to_stack
// #34138
@SP
// #34139
A=M
// #34140
M=D
// #34141
@SP
// #34142
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 0
//^^ push_constant(0)
// #34143
@0
// #34144
D=A
//^^ push_d_to_stack
// #34145
@SP
// #34146
A=M
// #34147
M=D
// #34148
@SP
// #34149
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #34150
@SP
// #34151
M=M-1
// #34152
A=M
// #34153
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #34154
@R13
// #34155
M=D
//^^ pop_stack_to_d
// #34156
@SP
// #34157
M=M-1
// #34158
A=M
// #34159
D=M
//vv pop_stack_to_d
// #34160
@R13
// #34161
D=D-M
// #34162
@R13
// #34163
M=0
//vv arith_d_with_stack_top(D-M)
// #34164
@PUT_TRUE_340
// #34165
D;JEQ
// #34166
@R13
// #34167
M=0
// #34168
@CONT_340
// #34169
0;JMP
(PUT_TRUE_340)
// #34170
@R13
// #34171
M=-1
(CONT_340)
// #34172
@R13
// #34173
D=M
// #34174
@R13
// #34175
M=0
//^^ push_d_to_stack
// #34176
@SP
// #34177
A=M
// #34178
M=D
// #34179
@SP
// #34180
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #34181
@SP
// #34182
M=M-1
// #34183
A=M
// #34184
D=M
//vv pop_stack_to_d
// #34185
D=!D
//^^ push_d_to_stack
// #34186
@SP
// #34187
A=M
// #34188
M=D
// #34189
@SP
// #34190
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// if-goto WHILE_END1
//^^ pop_stack_to_d
// #34191
@SP
// #34192
M=M-1
// #34193
A=M
// #34194
D=M
//vv pop_stack_to_d
// #34195
@SquareGame.run$WHILE_END1
// #34196
D;JNE
//
//// call Keyboard.keyPressed 0
//^^ push_constant(RET_ADDR_341)
// #34197
@RET_ADDR_341
// #34198
D=A
//^^ push_d_to_stack
// #34199
@SP
// #34200
A=M
// #34201
M=D
// #34202
@SP
// #34203
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_341)
//push return-address
// #34204
@LCL
// #34205
D=M
//^^ push_d_to_stack
// #34206
@SP
// #34207
A=M
// #34208
M=D
// #34209
@SP
// #34210
M=M+1
//vv push_d_to_stack
//push LCL
// #34211
@ARG
// #34212
D=M
//^^ push_d_to_stack
// #34213
@SP
// #34214
A=M
// #34215
M=D
// #34216
@SP
// #34217
M=M+1
//vv push_d_to_stack
//push ARG
// #34218
@THIS
// #34219
D=M
//^^ push_d_to_stack
// #34220
@SP
// #34221
A=M
// #34222
M=D
// #34223
@SP
// #34224
M=M+1
//vv push_d_to_stack
//push THIS
// #34225
@THAT
// #34226
D=M
//^^ push_d_to_stack
// #34227
@SP
// #34228
A=M
// #34229
M=D
// #34230
@SP
// #34231
M=M+1
//vv push_d_to_stack
//push THAT
// #34232
@SP
// #34233
D=M
// #34234
@ARG
// #34235
M=D
// #34236
@5
// #34237
D=A
// #34238
@ARG
// #34239
M=M-D // ARG = SP - args - 5
// #34240
@SP
// #34241
D=M
// #34242
@LCL
// #34243
M=D // LCL = SP
// #34244
@Keyboard.keyPressed
// #34245
0;JMP
(RET_ADDR_341)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
// #34246
@LCL
// #34247
D=M
// #34248
@0
// #34249
D=D+A
// #34250
@R13
// #34251
M=D
//^^ pop_stack_to_d
// #34252
@SP
// #34253
M=M-1
// #34254
A=M
// #34255
D=M
//vv pop_stack_to_d
// #34256
@R13
// #34257
A=M
// #34258
M=D
// #34259
@R13
// #34260
M=0
//vv pop_to_ram(LCL, 0)
//
//// push pointer 0
//^^ push_from_loc(3)
// #34261
@3
// #34262
D=M
//^^ push_d_to_stack
// #34263
@SP
// #34264
A=M
// #34265
M=D
// #34266
@SP
// #34267
M=M+1
//vv push_d_to_stack
//vv push_from_loc(3)
//
//// call SquareGame.moveSquare 1
//^^ push_constant(RET_ADDR_342)
// #34268
@RET_ADDR_342
// #34269
D=A
//^^ push_d_to_stack
// #34270
@SP
// #34271
A=M
// #34272
M=D
// #34273
@SP
// #34274
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_342)
//push return-address
// #34275
@LCL
// #34276
D=M
//^^ push_d_to_stack
// #34277
@SP
// #34278
A=M
// #34279
M=D
// #34280
@SP
// #34281
M=M+1
//vv push_d_to_stack
//push LCL
// #34282
@ARG
// #34283
D=M
//^^ push_d_to_stack
// #34284
@SP
// #34285
A=M
// #34286
M=D
// #34287
@SP
// #34288
M=M+1
//vv push_d_to_stack
//push ARG
// #34289
@THIS
// #34290
D=M
//^^ push_d_to_stack
// #34291
@SP
// #34292
A=M
// #34293
M=D
// #34294
@SP
// #34295
M=M+1
//vv push_d_to_stack
//push THIS
// #34296
@THAT
// #34297
D=M
//^^ push_d_to_stack
// #34298
@SP
// #34299
A=M
// #34300
M=D
// #34301
@SP
// #34302
M=M+1
//vv push_d_to_stack
//push THAT
// #34303
@SP
// #34304
D=M
// #34305
@ARG
// #34306
M=D
// #34307
@6
// #34308
D=A
// #34309
@ARG
// #34310
M=M-D // ARG = SP - args - 5
// #34311
@SP
// #34312
D=M
// #34313
@LCL
// #34314
M=D // LCL = SP
// #34315
@SquareGame.moveSquare
// #34316
0;JMP
(RET_ADDR_342)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #34317
@SP
// #34318
M=M-1
// #34319
A=M
// #34320
D=M
//vv pop_stack_to_d
// #34321
@5
// #34322
M=D
//vv pop_to_loc{5)
//
//// goto WHILE_EXP1
// #34323
@SquareGame.run$WHILE_EXP1
// #34324
0;JMP
//
//// label WHILE_END1
(SquareGame.run$WHILE_END1)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #34325
@LCL
// #34326
D=M
// #34327
@0
// #34328
A=D+A
// #34329
D=M
//^^ push_d_to_stack
// #34330
@SP
// #34331
A=M
// #34332
M=D
// #34333
@SP
// #34334
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 81
//^^ push_constant(81)
// #34335
@81
// #34336
D=A
//^^ push_d_to_stack
// #34337
@SP
// #34338
A=M
// #34339
M=D
// #34340
@SP
// #34341
M=M+1
//vv push_d_to_stack
//vv push_constant(81)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #34342
@SP
// #34343
M=M-1
// #34344
A=M
// #34345
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #34346
@R13
// #34347
M=D
//^^ pop_stack_to_d
// #34348
@SP
// #34349
M=M-1
// #34350
A=M
// #34351
D=M
//vv pop_stack_to_d
// #34352
@R13
// #34353
D=D-M
// #34354
@R13
// #34355
M=0
//vv arith_d_with_stack_top(D-M)
// #34356
@PUT_TRUE_343
// #34357
D;JEQ
// #34358
@R13
// #34359
M=0
// #34360
@CONT_343
// #34361
0;JMP
(PUT_TRUE_343)
// #34362
@R13
// #34363
M=-1
(CONT_343)
// #34364
@R13
// #34365
D=M
// #34366
@R13
// #34367
M=0
//^^ push_d_to_stack
// #34368
@SP
// #34369
A=M
// #34370
M=D
// #34371
@SP
// #34372
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// if-goto IF_TRUE0
//^^ pop_stack_to_d
// #34373
@SP
// #34374
M=M-1
// #34375
A=M
// #34376
D=M
//vv pop_stack_to_d
// #34377
@SquareGame.run$IF_TRUE0
// #34378
D;JNE
//
//// goto IF_FALSE0
// #34379
@SquareGame.run$IF_FALSE0
// #34380
0;JMP
//
//// label IF_TRUE0
(SquareGame.run$IF_TRUE0)
//
//// push constant 0
//^^ push_constant(0)
// #34381
@0
// #34382
D=A
//^^ push_d_to_stack
// #34383
@SP
// #34384
A=M
// #34385
M=D
// #34386
@SP
// #34387
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #34388
@SP
// #34389
M=M-1
// #34390
A=M
// #34391
D=M
//vv pop_stack_to_d
// #34392
D=!D
//^^ push_d_to_stack
// #34393
@SP
// #34394
A=M
// #34395
M=D
// #34396
@SP
// #34397
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// pop local 1
//^^ pop_to_ram(LCL, 1)
// #34398
@LCL
// #34399
D=M
// #34400
@1
// #34401
D=D+A
// #34402
@R13
// #34403
M=D
//^^ pop_stack_to_d
// #34404
@SP
// #34405
M=M-1
// #34406
A=M
// #34407
D=M
//vv pop_stack_to_d
// #34408
@R13
// #34409
A=M
// #34410
M=D
// #34411
@R13
// #34412
M=0
//vv pop_to_ram(LCL, 1)
//
//// label IF_FALSE0
(SquareGame.run$IF_FALSE0)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #34413
@LCL
// #34414
D=M
// #34415
@0
// #34416
A=D+A
// #34417
D=M
//^^ push_d_to_stack
// #34418
@SP
// #34419
A=M
// #34420
M=D
// #34421
@SP
// #34422
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 90
//^^ push_constant(90)
// #34423
@90
// #34424
D=A
//^^ push_d_to_stack
// #34425
@SP
// #34426
A=M
// #34427
M=D
// #34428
@SP
// #34429
M=M+1
//vv push_d_to_stack
//vv push_constant(90)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #34430
@SP
// #34431
M=M-1
// #34432
A=M
// #34433
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #34434
@R13
// #34435
M=D
//^^ pop_stack_to_d
// #34436
@SP
// #34437
M=M-1
// #34438
A=M
// #34439
D=M
//vv pop_stack_to_d
// #34440
@R13
// #34441
D=D-M
// #34442
@R13
// #34443
M=0
//vv arith_d_with_stack_top(D-M)
// #34444
@PUT_TRUE_344
// #34445
D;JEQ
// #34446
@R13
// #34447
M=0
// #34448
@CONT_344
// #34449
0;JMP
(PUT_TRUE_344)
// #34450
@R13
// #34451
M=-1
(CONT_344)
// #34452
@R13
// #34453
D=M
// #34454
@R13
// #34455
M=0
//^^ push_d_to_stack
// #34456
@SP
// #34457
A=M
// #34458
M=D
// #34459
@SP
// #34460
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// if-goto IF_TRUE1
//^^ pop_stack_to_d
// #34461
@SP
// #34462
M=M-1
// #34463
A=M
// #34464
D=M
//vv pop_stack_to_d
// #34465
@SquareGame.run$IF_TRUE1
// #34466
D;JNE
//
//// goto IF_FALSE1
// #34467
@SquareGame.run$IF_FALSE1
// #34468
0;JMP
//
//// label IF_TRUE1
(SquareGame.run$IF_TRUE1)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #34469
@THIS
// #34470
D=M
// #34471
@0
// #34472
A=D+A
// #34473
D=M
//^^ push_d_to_stack
// #34474
@SP
// #34475
A=M
// #34476
M=D
// #34477
@SP
// #34478
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// call Square.decSize 1
//^^ push_constant(RET_ADDR_345)
// #34479
@RET_ADDR_345
// #34480
D=A
//^^ push_d_to_stack
// #34481
@SP
// #34482
A=M
// #34483
M=D
// #34484
@SP
// #34485
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_345)
//push return-address
// #34486
@LCL
// #34487
D=M
//^^ push_d_to_stack
// #34488
@SP
// #34489
A=M
// #34490
M=D
// #34491
@SP
// #34492
M=M+1
//vv push_d_to_stack
//push LCL
// #34493
@ARG
// #34494
D=M
//^^ push_d_to_stack
// #34495
@SP
// #34496
A=M
// #34497
M=D
// #34498
@SP
// #34499
M=M+1
//vv push_d_to_stack
//push ARG
// #34500
@THIS
// #34501
D=M
//^^ push_d_to_stack
// #34502
@SP
// #34503
A=M
// #34504
M=D
// #34505
@SP
// #34506
M=M+1
//vv push_d_to_stack
//push THIS
// #34507
@THAT
// #34508
D=M
//^^ push_d_to_stack
// #34509
@SP
// #34510
A=M
// #34511
M=D
// #34512
@SP
// #34513
M=M+1
//vv push_d_to_stack
//push THAT
// #34514
@SP
// #34515
D=M
// #34516
@ARG
// #34517
M=D
// #34518
@6
// #34519
D=A
// #34520
@ARG
// #34521
M=M-D // ARG = SP - args - 5
// #34522
@SP
// #34523
D=M
// #34524
@LCL
// #34525
M=D // LCL = SP
// #34526
@Square.decSize
// #34527
0;JMP
(RET_ADDR_345)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #34528
@SP
// #34529
M=M-1
// #34530
A=M
// #34531
D=M
//vv pop_stack_to_d
// #34532
@5
// #34533
M=D
//vv pop_to_loc{5)
//
//// label IF_FALSE1
(SquareGame.run$IF_FALSE1)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #34534
@LCL
// #34535
D=M
// #34536
@0
// #34537
A=D+A
// #34538
D=M
//^^ push_d_to_stack
// #34539
@SP
// #34540
A=M
// #34541
M=D
// #34542
@SP
// #34543
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 88
//^^ push_constant(88)
// #34544
@88
// #34545
D=A
//^^ push_d_to_stack
// #34546
@SP
// #34547
A=M
// #34548
M=D
// #34549
@SP
// #34550
M=M+1
//vv push_d_to_stack
//vv push_constant(88)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #34551
@SP
// #34552
M=M-1
// #34553
A=M
// #34554
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #34555
@R13
// #34556
M=D
//^^ pop_stack_to_d
// #34557
@SP
// #34558
M=M-1
// #34559
A=M
// #34560
D=M
//vv pop_stack_to_d
// #34561
@R13
// #34562
D=D-M
// #34563
@R13
// #34564
M=0
//vv arith_d_with_stack_top(D-M)
// #34565
@PUT_TRUE_346
// #34566
D;JEQ
// #34567
@R13
// #34568
M=0
// #34569
@CONT_346
// #34570
0;JMP
(PUT_TRUE_346)
// #34571
@R13
// #34572
M=-1
(CONT_346)
// #34573
@R13
// #34574
D=M
// #34575
@R13
// #34576
M=0
//^^ push_d_to_stack
// #34577
@SP
// #34578
A=M
// #34579
M=D
// #34580
@SP
// #34581
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// if-goto IF_TRUE2
//^^ pop_stack_to_d
// #34582
@SP
// #34583
M=M-1
// #34584
A=M
// #34585
D=M
//vv pop_stack_to_d
// #34586
@SquareGame.run$IF_TRUE2
// #34587
D;JNE
//
//// goto IF_FALSE2
// #34588
@SquareGame.run$IF_FALSE2
// #34589
0;JMP
//
//// label IF_TRUE2
(SquareGame.run$IF_TRUE2)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #34590
@THIS
// #34591
D=M
// #34592
@0
// #34593
A=D+A
// #34594
D=M
//^^ push_d_to_stack
// #34595
@SP
// #34596
A=M
// #34597
M=D
// #34598
@SP
// #34599
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// call Square.incSize 1
//^^ push_constant(RET_ADDR_347)
// #34600
@RET_ADDR_347
// #34601
D=A
//^^ push_d_to_stack
// #34602
@SP
// #34603
A=M
// #34604
M=D
// #34605
@SP
// #34606
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_347)
//push return-address
// #34607
@LCL
// #34608
D=M
//^^ push_d_to_stack
// #34609
@SP
// #34610
A=M
// #34611
M=D
// #34612
@SP
// #34613
M=M+1
//vv push_d_to_stack
//push LCL
// #34614
@ARG
// #34615
D=M
//^^ push_d_to_stack
// #34616
@SP
// #34617
A=M
// #34618
M=D
// #34619
@SP
// #34620
M=M+1
//vv push_d_to_stack
//push ARG
// #34621
@THIS
// #34622
D=M
//^^ push_d_to_stack
// #34623
@SP
// #34624
A=M
// #34625
M=D
// #34626
@SP
// #34627
M=M+1
//vv push_d_to_stack
//push THIS
// #34628
@THAT
// #34629
D=M
//^^ push_d_to_stack
// #34630
@SP
// #34631
A=M
// #34632
M=D
// #34633
@SP
// #34634
M=M+1
//vv push_d_to_stack
//push THAT
// #34635
@SP
// #34636
D=M
// #34637
@ARG
// #34638
M=D
// #34639
@6
// #34640
D=A
// #34641
@ARG
// #34642
M=M-D // ARG = SP - args - 5
// #34643
@SP
// #34644
D=M
// #34645
@LCL
// #34646
M=D // LCL = SP
// #34647
@Square.incSize
// #34648
0;JMP
(RET_ADDR_347)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #34649
@SP
// #34650
M=M-1
// #34651
A=M
// #34652
D=M
//vv pop_stack_to_d
// #34653
@5
// #34654
M=D
//vv pop_to_loc{5)
//
//// label IF_FALSE2
(SquareGame.run$IF_FALSE2)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #34655
@LCL
// #34656
D=M
// #34657
@0
// #34658
A=D+A
// #34659
D=M
//^^ push_d_to_stack
// #34660
@SP
// #34661
A=M
// #34662
M=D
// #34663
@SP
// #34664
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 131
//^^ push_constant(131)
// #34665
@131
// #34666
D=A
//^^ push_d_to_stack
// #34667
@SP
// #34668
A=M
// #34669
M=D
// #34670
@SP
// #34671
M=M+1
//vv push_d_to_stack
//vv push_constant(131)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #34672
@SP
// #34673
M=M-1
// #34674
A=M
// #34675
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #34676
@R13
// #34677
M=D
//^^ pop_stack_to_d
// #34678
@SP
// #34679
M=M-1
// #34680
A=M
// #34681
D=M
//vv pop_stack_to_d
// #34682
@R13
// #34683
D=D-M
// #34684
@R13
// #34685
M=0
//vv arith_d_with_stack_top(D-M)
// #34686
@PUT_TRUE_348
// #34687
D;JEQ
// #34688
@R13
// #34689
M=0
// #34690
@CONT_348
// #34691
0;JMP
(PUT_TRUE_348)
// #34692
@R13
// #34693
M=-1
(CONT_348)
// #34694
@R13
// #34695
D=M
// #34696
@R13
// #34697
M=0
//^^ push_d_to_stack
// #34698
@SP
// #34699
A=M
// #34700
M=D
// #34701
@SP
// #34702
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// if-goto IF_TRUE3
//^^ pop_stack_to_d
// #34703
@SP
// #34704
M=M-1
// #34705
A=M
// #34706
D=M
//vv pop_stack_to_d
// #34707
@SquareGame.run$IF_TRUE3
// #34708
D;JNE
//
//// goto IF_FALSE3
// #34709
@SquareGame.run$IF_FALSE3
// #34710
0;JMP
//
//// label IF_TRUE3
(SquareGame.run$IF_TRUE3)
//
//// push constant 1
//^^ push_constant(1)
// #34711
@1
// #34712
D=A
//^^ push_d_to_stack
// #34713
@SP
// #34714
A=M
// #34715
M=D
// #34716
@SP
// #34717
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// pop this 1
//^^ pop_to_ram(THIS, 1)
// #34718
@THIS
// #34719
D=M
// #34720
@1
// #34721
D=D+A
// #34722
@R13
// #34723
M=D
//^^ pop_stack_to_d
// #34724
@SP
// #34725
M=M-1
// #34726
A=M
// #34727
D=M
//vv pop_stack_to_d
// #34728
@R13
// #34729
A=M
// #34730
M=D
// #34731
@R13
// #34732
M=0
//vv pop_to_ram(THIS, 1)
//
//// label IF_FALSE3
(SquareGame.run$IF_FALSE3)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #34733
@LCL
// #34734
D=M
// #34735
@0
// #34736
A=D+A
// #34737
D=M
//^^ push_d_to_stack
// #34738
@SP
// #34739
A=M
// #34740
M=D
// #34741
@SP
// #34742
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 133
//^^ push_constant(133)
// #34743
@133
// #34744
D=A
//^^ push_d_to_stack
// #34745
@SP
// #34746
A=M
// #34747
M=D
// #34748
@SP
// #34749
M=M+1
//vv push_d_to_stack
//vv push_constant(133)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #34750
@SP
// #34751
M=M-1
// #34752
A=M
// #34753
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #34754
@R13
// #34755
M=D
//^^ pop_stack_to_d
// #34756
@SP
// #34757
M=M-1
// #34758
A=M
// #34759
D=M
//vv pop_stack_to_d
// #34760
@R13
// #34761
D=D-M
// #34762
@R13
// #34763
M=0
//vv arith_d_with_stack_top(D-M)
// #34764
@PUT_TRUE_349
// #34765
D;JEQ
// #34766
@R13
// #34767
M=0
// #34768
@CONT_349
// #34769
0;JMP
(PUT_TRUE_349)
// #34770
@R13
// #34771
M=-1
(CONT_349)
// #34772
@R13
// #34773
D=M
// #34774
@R13
// #34775
M=0
//^^ push_d_to_stack
// #34776
@SP
// #34777
A=M
// #34778
M=D
// #34779
@SP
// #34780
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// if-goto IF_TRUE4
//^^ pop_stack_to_d
// #34781
@SP
// #34782
M=M-1
// #34783
A=M
// #34784
D=M
//vv pop_stack_to_d
// #34785
@SquareGame.run$IF_TRUE4
// #34786
D;JNE
//
//// goto IF_FALSE4
// #34787
@SquareGame.run$IF_FALSE4
// #34788
0;JMP
//
//// label IF_TRUE4
(SquareGame.run$IF_TRUE4)
//
//// push constant 2
//^^ push_constant(2)
// #34789
@2
// #34790
D=A
//^^ push_d_to_stack
// #34791
@SP
// #34792
A=M
// #34793
M=D
// #34794
@SP
// #34795
M=M+1
//vv push_d_to_stack
//vv push_constant(2)
//
//// pop this 1
//^^ pop_to_ram(THIS, 1)
// #34796
@THIS
// #34797
D=M
// #34798
@1
// #34799
D=D+A
// #34800
@R13
// #34801
M=D
//^^ pop_stack_to_d
// #34802
@SP
// #34803
M=M-1
// #34804
A=M
// #34805
D=M
//vv pop_stack_to_d
// #34806
@R13
// #34807
A=M
// #34808
M=D
// #34809
@R13
// #34810
M=0
//vv pop_to_ram(THIS, 1)
//
//// label IF_FALSE4
(SquareGame.run$IF_FALSE4)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #34811
@LCL
// #34812
D=M
// #34813
@0
// #34814
A=D+A
// #34815
D=M
//^^ push_d_to_stack
// #34816
@SP
// #34817
A=M
// #34818
M=D
// #34819
@SP
// #34820
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 130
//^^ push_constant(130)
// #34821
@130
// #34822
D=A
//^^ push_d_to_stack
// #34823
@SP
// #34824
A=M
// #34825
M=D
// #34826
@SP
// #34827
M=M+1
//vv push_d_to_stack
//vv push_constant(130)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #34828
@SP
// #34829
M=M-1
// #34830
A=M
// #34831
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #34832
@R13
// #34833
M=D
//^^ pop_stack_to_d
// #34834
@SP
// #34835
M=M-1
// #34836
A=M
// #34837
D=M
//vv pop_stack_to_d
// #34838
@R13
// #34839
D=D-M
// #34840
@R13
// #34841
M=0
//vv arith_d_with_stack_top(D-M)
// #34842
@PUT_TRUE_350
// #34843
D;JEQ
// #34844
@R13
// #34845
M=0
// #34846
@CONT_350
// #34847
0;JMP
(PUT_TRUE_350)
// #34848
@R13
// #34849
M=-1
(CONT_350)
// #34850
@R13
// #34851
D=M
// #34852
@R13
// #34853
M=0
//^^ push_d_to_stack
// #34854
@SP
// #34855
A=M
// #34856
M=D
// #34857
@SP
// #34858
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// if-goto IF_TRUE5
//^^ pop_stack_to_d
// #34859
@SP
// #34860
M=M-1
// #34861
A=M
// #34862
D=M
//vv pop_stack_to_d
// #34863
@SquareGame.run$IF_TRUE5
// #34864
D;JNE
//
//// goto IF_FALSE5
// #34865
@SquareGame.run$IF_FALSE5
// #34866
0;JMP
//
//// label IF_TRUE5
(SquareGame.run$IF_TRUE5)
//
//// push constant 3
//^^ push_constant(3)
// #34867
@3
// #34868
D=A
//^^ push_d_to_stack
// #34869
@SP
// #34870
A=M
// #34871
M=D
// #34872
@SP
// #34873
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// pop this 1
//^^ pop_to_ram(THIS, 1)
// #34874
@THIS
// #34875
D=M
// #34876
@1
// #34877
D=D+A
// #34878
@R13
// #34879
M=D
//^^ pop_stack_to_d
// #34880
@SP
// #34881
M=M-1
// #34882
A=M
// #34883
D=M
//vv pop_stack_to_d
// #34884
@R13
// #34885
A=M
// #34886
M=D
// #34887
@R13
// #34888
M=0
//vv pop_to_ram(THIS, 1)
//
//// label IF_FALSE5
(SquareGame.run$IF_FALSE5)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #34889
@LCL
// #34890
D=M
// #34891
@0
// #34892
A=D+A
// #34893
D=M
//^^ push_d_to_stack
// #34894
@SP
// #34895
A=M
// #34896
M=D
// #34897
@SP
// #34898
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 132
//^^ push_constant(132)
// #34899
@132
// #34900
D=A
//^^ push_d_to_stack
// #34901
@SP
// #34902
A=M
// #34903
M=D
// #34904
@SP
// #34905
M=M+1
//vv push_d_to_stack
//vv push_constant(132)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #34906
@SP
// #34907
M=M-1
// #34908
A=M
// #34909
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #34910
@R13
// #34911
M=D
//^^ pop_stack_to_d
// #34912
@SP
// #34913
M=M-1
// #34914
A=M
// #34915
D=M
//vv pop_stack_to_d
// #34916
@R13
// #34917
D=D-M
// #34918
@R13
// #34919
M=0
//vv arith_d_with_stack_top(D-M)
// #34920
@PUT_TRUE_351
// #34921
D;JEQ
// #34922
@R13
// #34923
M=0
// #34924
@CONT_351
// #34925
0;JMP
(PUT_TRUE_351)
// #34926
@R13
// #34927
M=-1
(CONT_351)
// #34928
@R13
// #34929
D=M
// #34930
@R13
// #34931
M=0
//^^ push_d_to_stack
// #34932
@SP
// #34933
A=M
// #34934
M=D
// #34935
@SP
// #34936
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// if-goto IF_TRUE6
//^^ pop_stack_to_d
// #34937
@SP
// #34938
M=M-1
// #34939
A=M
// #34940
D=M
//vv pop_stack_to_d
// #34941
@SquareGame.run$IF_TRUE6
// #34942
D;JNE
//
//// goto IF_FALSE6
// #34943
@SquareGame.run$IF_FALSE6
// #34944
0;JMP
//
//// label IF_TRUE6
(SquareGame.run$IF_TRUE6)
//
//// push constant 4
//^^ push_constant(4)
// #34945
@4
// #34946
D=A
//^^ push_d_to_stack
// #34947
@SP
// #34948
A=M
// #34949
M=D
// #34950
@SP
// #34951
M=M+1
//vv push_d_to_stack
//vv push_constant(4)
//
//// pop this 1
//^^ pop_to_ram(THIS, 1)
// #34952
@THIS
// #34953
D=M
// #34954
@1
// #34955
D=D+A
// #34956
@R13
// #34957
M=D
//^^ pop_stack_to_d
// #34958
@SP
// #34959
M=M-1
// #34960
A=M
// #34961
D=M
//vv pop_stack_to_d
// #34962
@R13
// #34963
A=M
// #34964
M=D
// #34965
@R13
// #34966
M=0
//vv pop_to_ram(THIS, 1)
//
//// label IF_FALSE6
(SquareGame.run$IF_FALSE6)
//
//// label WHILE_EXP2
(SquareGame.run$WHILE_EXP2)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
// #34967
@LCL
// #34968
D=M
// #34969
@0
// #34970
A=D+A
// #34971
D=M
//^^ push_d_to_stack
// #34972
@SP
// #34973
A=M
// #34974
M=D
// #34975
@SP
// #34976
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push constant 0
//^^ push_constant(0)
// #34977
@0
// #34978
D=A
//^^ push_d_to_stack
// #34979
@SP
// #34980
A=M
// #34981
M=D
// #34982
@SP
// #34983
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #34984
@SP
// #34985
M=M-1
// #34986
A=M
// #34987
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #34988
@R13
// #34989
M=D
//^^ pop_stack_to_d
// #34990
@SP
// #34991
M=M-1
// #34992
A=M
// #34993
D=M
//vv pop_stack_to_d
// #34994
@R13
// #34995
D=D-M
// #34996
@R13
// #34997
M=0
//vv arith_d_with_stack_top(D-M)
// #34998
@PUT_TRUE_352
// #34999
D;JEQ
// #35000
@R13
// #35001
M=0
// #35002
@CONT_352
// #35003
0;JMP
(PUT_TRUE_352)
// #35004
@R13
// #35005
M=-1
(CONT_352)
// #35006
@R13
// #35007
D=M
// #35008
@R13
// #35009
M=0
//^^ push_d_to_stack
// #35010
@SP
// #35011
A=M
// #35012
M=D
// #35013
@SP
// #35014
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #35015
@SP
// #35016
M=M-1
// #35017
A=M
// #35018
D=M
//vv pop_stack_to_d
// #35019
D=!D
//^^ push_d_to_stack
// #35020
@SP
// #35021
A=M
// #35022
M=D
// #35023
@SP
// #35024
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// not
//^^ arith_unary_op(!)
//^^ pop_stack_to_d
// #35025
@SP
// #35026
M=M-1
// #35027
A=M
// #35028
D=M
//vv pop_stack_to_d
// #35029
D=!D
//^^ push_d_to_stack
// #35030
@SP
// #35031
A=M
// #35032
M=D
// #35033
@SP
// #35034
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(!)
//
//// if-goto WHILE_END2
//^^ pop_stack_to_d
// #35035
@SP
// #35036
M=M-1
// #35037
A=M
// #35038
D=M
//vv pop_stack_to_d
// #35039
@SquareGame.run$WHILE_END2
// #35040
D;JNE
//
//// call Keyboard.keyPressed 0
//^^ push_constant(RET_ADDR_353)
// #35041
@RET_ADDR_353
// #35042
D=A
//^^ push_d_to_stack
// #35043
@SP
// #35044
A=M
// #35045
M=D
// #35046
@SP
// #35047
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_353)
//push return-address
// #35048
@LCL
// #35049
D=M
//^^ push_d_to_stack
// #35050
@SP
// #35051
A=M
// #35052
M=D
// #35053
@SP
// #35054
M=M+1
//vv push_d_to_stack
//push LCL
// #35055
@ARG
// #35056
D=M
//^^ push_d_to_stack
// #35057
@SP
// #35058
A=M
// #35059
M=D
// #35060
@SP
// #35061
M=M+1
//vv push_d_to_stack
//push ARG
// #35062
@THIS
// #35063
D=M
//^^ push_d_to_stack
// #35064
@SP
// #35065
A=M
// #35066
M=D
// #35067
@SP
// #35068
M=M+1
//vv push_d_to_stack
//push THIS
// #35069
@THAT
// #35070
D=M
//^^ push_d_to_stack
// #35071
@SP
// #35072
A=M
// #35073
M=D
// #35074
@SP
// #35075
M=M+1
//vv push_d_to_stack
//push THAT
// #35076
@SP
// #35077
D=M
// #35078
@ARG
// #35079
M=D
// #35080
@5
// #35081
D=A
// #35082
@ARG
// #35083
M=M-D // ARG = SP - args - 5
// #35084
@SP
// #35085
D=M
// #35086
@LCL
// #35087
M=D // LCL = SP
// #35088
@Keyboard.keyPressed
// #35089
0;JMP
(RET_ADDR_353)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
// #35090
@LCL
// #35091
D=M
// #35092
@0
// #35093
D=D+A
// #35094
@R13
// #35095
M=D
//^^ pop_stack_to_d
// #35096
@SP
// #35097
M=M-1
// #35098
A=M
// #35099
D=M
//vv pop_stack_to_d
// #35100
@R13
// #35101
A=M
// #35102
M=D
// #35103
@R13
// #35104
M=0
//vv pop_to_ram(LCL, 0)
//
//// push pointer 0
//^^ push_from_loc(3)
// #35105
@3
// #35106
D=M
//^^ push_d_to_stack
// #35107
@SP
// #35108
A=M
// #35109
M=D
// #35110
@SP
// #35111
M=M+1
//vv push_d_to_stack
//vv push_from_loc(3)
//
//// call SquareGame.moveSquare 1
//^^ push_constant(RET_ADDR_354)
// #35112
@RET_ADDR_354
// #35113
D=A
//^^ push_d_to_stack
// #35114
@SP
// #35115
A=M
// #35116
M=D
// #35117
@SP
// #35118
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_354)
//push return-address
// #35119
@LCL
// #35120
D=M
//^^ push_d_to_stack
// #35121
@SP
// #35122
A=M
// #35123
M=D
// #35124
@SP
// #35125
M=M+1
//vv push_d_to_stack
//push LCL
// #35126
@ARG
// #35127
D=M
//^^ push_d_to_stack
// #35128
@SP
// #35129
A=M
// #35130
M=D
// #35131
@SP
// #35132
M=M+1
//vv push_d_to_stack
//push ARG
// #35133
@THIS
// #35134
D=M
//^^ push_d_to_stack
// #35135
@SP
// #35136
A=M
// #35137
M=D
// #35138
@SP
// #35139
M=M+1
//vv push_d_to_stack
//push THIS
// #35140
@THAT
// #35141
D=M
//^^ push_d_to_stack
// #35142
@SP
// #35143
A=M
// #35144
M=D
// #35145
@SP
// #35146
M=M+1
//vv push_d_to_stack
//push THAT
// #35147
@SP
// #35148
D=M
// #35149
@ARG
// #35150
M=D
// #35151
@6
// #35152
D=A
// #35153
@ARG
// #35154
M=M-D // ARG = SP - args - 5
// #35155
@SP
// #35156
D=M
// #35157
@LCL
// #35158
M=D // LCL = SP
// #35159
@SquareGame.moveSquare
// #35160
0;JMP
(RET_ADDR_354)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #35161
@SP
// #35162
M=M-1
// #35163
A=M
// #35164
D=M
//vv pop_stack_to_d
// #35165
@5
// #35166
M=D
//vv pop_to_loc{5)
//
//// goto WHILE_EXP2
// #35167
@SquareGame.run$WHILE_EXP2
// #35168
0;JMP
//
//// label WHILE_END2
(SquareGame.run$WHILE_END2)
//
//// goto WHILE_EXP0
// #35169
@SquareGame.run$WHILE_EXP0
// #35170
0;JMP
//
//// label WHILE_END0
(SquareGame.run$WHILE_END0)
//
//// push constant 0
//^^ push_constant(0)
// #35171
@0
// #35172
D=A
//^^ push_d_to_stack
// #35173
@SP
// #35174
A=M
// #35175
M=D
// #35176
@SP
// #35177
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #35178
@LCL
// #35179
D=M
// #35180
@R14
// #35181
M=D //R14=LCL
// #35182
@5
// #35183
A=D-A
// #35184
D=M
// #35185
@R15
// #35186
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #35187
@SP
// #35188
M=M-1
// #35189
A=M
// #35190
D=M
//vv pop_stack_to_d
// #35191
@ARG
// #35192
A=M
// #35193
M=D //*ARG = pop()
// #35194
@ARG
// #35195
D=M
// #35196
@SP
// #35197
M=D+1 //SP=ARG+1
// #35198
@R14
// #35199
AM=M-1
// #35200
D=M
// #35201
@THAT
// #35202
M=D //THAT = *(--R14)
// #35203
@R14
// #35204
AM=M-1
// #35205
D=M
// #35206
@THIS
// #35207
M=D //THIS = *(--R14)
// #35208
@R14
// #35209
AM=M-1
// #35210
D=M
// #35211
@ARG
// #35212
M=D //ARG = *(--R14)
// #35213
@R14
// #35214
AM=M-1
// #35215
D=M
// #35216
@LCL
// #35217
M=D //LCL = *(--R14)
// #35218
@R15
// #35219
A=M
// #35220
0;JMP //goto *R15
//
//// function SquareGame.moveSquare 0
(SquareGame.moveSquare)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #35221
@ARG
// #35222
D=M
// #35223
@0
// #35224
A=D+A
// #35225
D=M
//^^ push_d_to_stack
// #35226
@SP
// #35227
A=M
// #35228
M=D
// #35229
@SP
// #35230
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// pop pointer 0
//^^ pop_to_loc{3)
//^^ pop_stack_to_d
// #35231
@SP
// #35232
M=M-1
// #35233
A=M
// #35234
D=M
//vv pop_stack_to_d
// #35235
@3
// #35236
M=D
//vv pop_to_loc{3)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #35237
@THIS
// #35238
D=M
// #35239
@1
// #35240
A=D+A
// #35241
D=M
//^^ push_d_to_stack
// #35242
@SP
// #35243
A=M
// #35244
M=D
// #35245
@SP
// #35246
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push constant 1
//^^ push_constant(1)
// #35247
@1
// #35248
D=A
//^^ push_d_to_stack
// #35249
@SP
// #35250
A=M
// #35251
M=D
// #35252
@SP
// #35253
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #35254
@SP
// #35255
M=M-1
// #35256
A=M
// #35257
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #35258
@R13
// #35259
M=D
//^^ pop_stack_to_d
// #35260
@SP
// #35261
M=M-1
// #35262
A=M
// #35263
D=M
//vv pop_stack_to_d
// #35264
@R13
// #35265
D=D-M
// #35266
@R13
// #35267
M=0
//vv arith_d_with_stack_top(D-M)
// #35268
@PUT_TRUE_355
// #35269
D;JEQ
// #35270
@R13
// #35271
M=0
// #35272
@CONT_355
// #35273
0;JMP
(PUT_TRUE_355)
// #35274
@R13
// #35275
M=-1
(CONT_355)
// #35276
@R13
// #35277
D=M
// #35278
@R13
// #35279
M=0
//^^ push_d_to_stack
// #35280
@SP
// #35281
A=M
// #35282
M=D
// #35283
@SP
// #35284
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// if-goto IF_TRUE0
//^^ pop_stack_to_d
// #35285
@SP
// #35286
M=M-1
// #35287
A=M
// #35288
D=M
//vv pop_stack_to_d
// #35289
@SquareGame.moveSquare$IF_TRUE0
// #35290
D;JNE
//
//// goto IF_FALSE0
// #35291
@SquareGame.moveSquare$IF_FALSE0
// #35292
0;JMP
//
//// label IF_TRUE0
(SquareGame.moveSquare$IF_TRUE0)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #35293
@THIS
// #35294
D=M
// #35295
@0
// #35296
A=D+A
// #35297
D=M
//^^ push_d_to_stack
// #35298
@SP
// #35299
A=M
// #35300
M=D
// #35301
@SP
// #35302
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// call Square.moveUp 1
//^^ push_constant(RET_ADDR_356)
// #35303
@RET_ADDR_356
// #35304
D=A
//^^ push_d_to_stack
// #35305
@SP
// #35306
A=M
// #35307
M=D
// #35308
@SP
// #35309
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_356)
//push return-address
// #35310
@LCL
// #35311
D=M
//^^ push_d_to_stack
// #35312
@SP
// #35313
A=M
// #35314
M=D
// #35315
@SP
// #35316
M=M+1
//vv push_d_to_stack
//push LCL
// #35317
@ARG
// #35318
D=M
//^^ push_d_to_stack
// #35319
@SP
// #35320
A=M
// #35321
M=D
// #35322
@SP
// #35323
M=M+1
//vv push_d_to_stack
//push ARG
// #35324
@THIS
// #35325
D=M
//^^ push_d_to_stack
// #35326
@SP
// #35327
A=M
// #35328
M=D
// #35329
@SP
// #35330
M=M+1
//vv push_d_to_stack
//push THIS
// #35331
@THAT
// #35332
D=M
//^^ push_d_to_stack
// #35333
@SP
// #35334
A=M
// #35335
M=D
// #35336
@SP
// #35337
M=M+1
//vv push_d_to_stack
//push THAT
// #35338
@SP
// #35339
D=M
// #35340
@ARG
// #35341
M=D
// #35342
@6
// #35343
D=A
// #35344
@ARG
// #35345
M=M-D // ARG = SP - args - 5
// #35346
@SP
// #35347
D=M
// #35348
@LCL
// #35349
M=D // LCL = SP
// #35350
@Square.moveUp
// #35351
0;JMP
(RET_ADDR_356)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #35352
@SP
// #35353
M=M-1
// #35354
A=M
// #35355
D=M
//vv pop_stack_to_d
// #35356
@5
// #35357
M=D
//vv pop_to_loc{5)
//
//// label IF_FALSE0
(SquareGame.moveSquare$IF_FALSE0)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #35358
@THIS
// #35359
D=M
// #35360
@1
// #35361
A=D+A
// #35362
D=M
//^^ push_d_to_stack
// #35363
@SP
// #35364
A=M
// #35365
M=D
// #35366
@SP
// #35367
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push constant 2
//^^ push_constant(2)
// #35368
@2
// #35369
D=A
//^^ push_d_to_stack
// #35370
@SP
// #35371
A=M
// #35372
M=D
// #35373
@SP
// #35374
M=M+1
//vv push_d_to_stack
//vv push_constant(2)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #35375
@SP
// #35376
M=M-1
// #35377
A=M
// #35378
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #35379
@R13
// #35380
M=D
//^^ pop_stack_to_d
// #35381
@SP
// #35382
M=M-1
// #35383
A=M
// #35384
D=M
//vv pop_stack_to_d
// #35385
@R13
// #35386
D=D-M
// #35387
@R13
// #35388
M=0
//vv arith_d_with_stack_top(D-M)
// #35389
@PUT_TRUE_357
// #35390
D;JEQ
// #35391
@R13
// #35392
M=0
// #35393
@CONT_357
// #35394
0;JMP
(PUT_TRUE_357)
// #35395
@R13
// #35396
M=-1
(CONT_357)
// #35397
@R13
// #35398
D=M
// #35399
@R13
// #35400
M=0
//^^ push_d_to_stack
// #35401
@SP
// #35402
A=M
// #35403
M=D
// #35404
@SP
// #35405
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// if-goto IF_TRUE1
//^^ pop_stack_to_d
// #35406
@SP
// #35407
M=M-1
// #35408
A=M
// #35409
D=M
//vv pop_stack_to_d
// #35410
@SquareGame.moveSquare$IF_TRUE1
// #35411
D;JNE
//
//// goto IF_FALSE1
// #35412
@SquareGame.moveSquare$IF_FALSE1
// #35413
0;JMP
//
//// label IF_TRUE1
(SquareGame.moveSquare$IF_TRUE1)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #35414
@THIS
// #35415
D=M
// #35416
@0
// #35417
A=D+A
// #35418
D=M
//^^ push_d_to_stack
// #35419
@SP
// #35420
A=M
// #35421
M=D
// #35422
@SP
// #35423
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// call Square.moveDown 1
//^^ push_constant(RET_ADDR_358)
// #35424
@RET_ADDR_358
// #35425
D=A
//^^ push_d_to_stack
// #35426
@SP
// #35427
A=M
// #35428
M=D
// #35429
@SP
// #35430
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_358)
//push return-address
// #35431
@LCL
// #35432
D=M
//^^ push_d_to_stack
// #35433
@SP
// #35434
A=M
// #35435
M=D
// #35436
@SP
// #35437
M=M+1
//vv push_d_to_stack
//push LCL
// #35438
@ARG
// #35439
D=M
//^^ push_d_to_stack
// #35440
@SP
// #35441
A=M
// #35442
M=D
// #35443
@SP
// #35444
M=M+1
//vv push_d_to_stack
//push ARG
// #35445
@THIS
// #35446
D=M
//^^ push_d_to_stack
// #35447
@SP
// #35448
A=M
// #35449
M=D
// #35450
@SP
// #35451
M=M+1
//vv push_d_to_stack
//push THIS
// #35452
@THAT
// #35453
D=M
//^^ push_d_to_stack
// #35454
@SP
// #35455
A=M
// #35456
M=D
// #35457
@SP
// #35458
M=M+1
//vv push_d_to_stack
//push THAT
// #35459
@SP
// #35460
D=M
// #35461
@ARG
// #35462
M=D
// #35463
@6
// #35464
D=A
// #35465
@ARG
// #35466
M=M-D // ARG = SP - args - 5
// #35467
@SP
// #35468
D=M
// #35469
@LCL
// #35470
M=D // LCL = SP
// #35471
@Square.moveDown
// #35472
0;JMP
(RET_ADDR_358)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #35473
@SP
// #35474
M=M-1
// #35475
A=M
// #35476
D=M
//vv pop_stack_to_d
// #35477
@5
// #35478
M=D
//vv pop_to_loc{5)
//
//// label IF_FALSE1
(SquareGame.moveSquare$IF_FALSE1)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #35479
@THIS
// #35480
D=M
// #35481
@1
// #35482
A=D+A
// #35483
D=M
//^^ push_d_to_stack
// #35484
@SP
// #35485
A=M
// #35486
M=D
// #35487
@SP
// #35488
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push constant 3
//^^ push_constant(3)
// #35489
@3
// #35490
D=A
//^^ push_d_to_stack
// #35491
@SP
// #35492
A=M
// #35493
M=D
// #35494
@SP
// #35495
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #35496
@SP
// #35497
M=M-1
// #35498
A=M
// #35499
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #35500
@R13
// #35501
M=D
//^^ pop_stack_to_d
// #35502
@SP
// #35503
M=M-1
// #35504
A=M
// #35505
D=M
//vv pop_stack_to_d
// #35506
@R13
// #35507
D=D-M
// #35508
@R13
// #35509
M=0
//vv arith_d_with_stack_top(D-M)
// #35510
@PUT_TRUE_359
// #35511
D;JEQ
// #35512
@R13
// #35513
M=0
// #35514
@CONT_359
// #35515
0;JMP
(PUT_TRUE_359)
// #35516
@R13
// #35517
M=-1
(CONT_359)
// #35518
@R13
// #35519
D=M
// #35520
@R13
// #35521
M=0
//^^ push_d_to_stack
// #35522
@SP
// #35523
A=M
// #35524
M=D
// #35525
@SP
// #35526
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// if-goto IF_TRUE2
//^^ pop_stack_to_d
// #35527
@SP
// #35528
M=M-1
// #35529
A=M
// #35530
D=M
//vv pop_stack_to_d
// #35531
@SquareGame.moveSquare$IF_TRUE2
// #35532
D;JNE
//
//// goto IF_FALSE2
// #35533
@SquareGame.moveSquare$IF_FALSE2
// #35534
0;JMP
//
//// label IF_TRUE2
(SquareGame.moveSquare$IF_TRUE2)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #35535
@THIS
// #35536
D=M
// #35537
@0
// #35538
A=D+A
// #35539
D=M
//^^ push_d_to_stack
// #35540
@SP
// #35541
A=M
// #35542
M=D
// #35543
@SP
// #35544
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// call Square.moveLeft 1
//^^ push_constant(RET_ADDR_360)
// #35545
@RET_ADDR_360
// #35546
D=A
//^^ push_d_to_stack
// #35547
@SP
// #35548
A=M
// #35549
M=D
// #35550
@SP
// #35551
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_360)
//push return-address
// #35552
@LCL
// #35553
D=M
//^^ push_d_to_stack
// #35554
@SP
// #35555
A=M
// #35556
M=D
// #35557
@SP
// #35558
M=M+1
//vv push_d_to_stack
//push LCL
// #35559
@ARG
// #35560
D=M
//^^ push_d_to_stack
// #35561
@SP
// #35562
A=M
// #35563
M=D
// #35564
@SP
// #35565
M=M+1
//vv push_d_to_stack
//push ARG
// #35566
@THIS
// #35567
D=M
//^^ push_d_to_stack
// #35568
@SP
// #35569
A=M
// #35570
M=D
// #35571
@SP
// #35572
M=M+1
//vv push_d_to_stack
//push THIS
// #35573
@THAT
// #35574
D=M
//^^ push_d_to_stack
// #35575
@SP
// #35576
A=M
// #35577
M=D
// #35578
@SP
// #35579
M=M+1
//vv push_d_to_stack
//push THAT
// #35580
@SP
// #35581
D=M
// #35582
@ARG
// #35583
M=D
// #35584
@6
// #35585
D=A
// #35586
@ARG
// #35587
M=M-D // ARG = SP - args - 5
// #35588
@SP
// #35589
D=M
// #35590
@LCL
// #35591
M=D // LCL = SP
// #35592
@Square.moveLeft
// #35593
0;JMP
(RET_ADDR_360)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #35594
@SP
// #35595
M=M-1
// #35596
A=M
// #35597
D=M
//vv pop_stack_to_d
// #35598
@5
// #35599
M=D
//vv pop_to_loc{5)
//
//// label IF_FALSE2
(SquareGame.moveSquare$IF_FALSE2)
//
//// push this 1
//^^ push_from_ram(THIS, 1)
// #35600
@THIS
// #35601
D=M
// #35602
@1
// #35603
A=D+A
// #35604
D=M
//^^ push_d_to_stack
// #35605
@SP
// #35606
A=M
// #35607
M=D
// #35608
@SP
// #35609
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 1)
//
//// push constant 4
//^^ push_constant(4)
// #35610
@4
// #35611
D=A
//^^ push_d_to_stack
// #35612
@SP
// #35613
A=M
// #35614
M=D
// #35615
@SP
// #35616
M=M+1
//vv push_d_to_stack
//vv push_constant(4)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
// #35617
@SP
// #35618
M=M-1
// #35619
A=M
// #35620
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #35621
@R13
// #35622
M=D
//^^ pop_stack_to_d
// #35623
@SP
// #35624
M=M-1
// #35625
A=M
// #35626
D=M
//vv pop_stack_to_d
// #35627
@R13
// #35628
D=D-M
// #35629
@R13
// #35630
M=0
//vv arith_d_with_stack_top(D-M)
// #35631
@PUT_TRUE_361
// #35632
D;JEQ
// #35633
@R13
// #35634
M=0
// #35635
@CONT_361
// #35636
0;JMP
(PUT_TRUE_361)
// #35637
@R13
// #35638
M=-1
(CONT_361)
// #35639
@R13
// #35640
D=M
// #35641
@R13
// #35642
M=0
//^^ push_d_to_stack
// #35643
@SP
// #35644
A=M
// #35645
M=D
// #35646
@SP
// #35647
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// if-goto IF_TRUE3
//^^ pop_stack_to_d
// #35648
@SP
// #35649
M=M-1
// #35650
A=M
// #35651
D=M
//vv pop_stack_to_d
// #35652
@SquareGame.moveSquare$IF_TRUE3
// #35653
D;JNE
//
//// goto IF_FALSE3
// #35654
@SquareGame.moveSquare$IF_FALSE3
// #35655
0;JMP
//
//// label IF_TRUE3
(SquareGame.moveSquare$IF_TRUE3)
//
//// push this 0
//^^ push_from_ram(THIS, 0)
// #35656
@THIS
// #35657
D=M
// #35658
@0
// #35659
A=D+A
// #35660
D=M
//^^ push_d_to_stack
// #35661
@SP
// #35662
A=M
// #35663
M=D
// #35664
@SP
// #35665
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 0)
//
//// call Square.moveRight 1
//^^ push_constant(RET_ADDR_362)
// #35666
@RET_ADDR_362
// #35667
D=A
//^^ push_d_to_stack
// #35668
@SP
// #35669
A=M
// #35670
M=D
// #35671
@SP
// #35672
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_362)
//push return-address
// #35673
@LCL
// #35674
D=M
//^^ push_d_to_stack
// #35675
@SP
// #35676
A=M
// #35677
M=D
// #35678
@SP
// #35679
M=M+1
//vv push_d_to_stack
//push LCL
// #35680
@ARG
// #35681
D=M
//^^ push_d_to_stack
// #35682
@SP
// #35683
A=M
// #35684
M=D
// #35685
@SP
// #35686
M=M+1
//vv push_d_to_stack
//push ARG
// #35687
@THIS
// #35688
D=M
//^^ push_d_to_stack
// #35689
@SP
// #35690
A=M
// #35691
M=D
// #35692
@SP
// #35693
M=M+1
//vv push_d_to_stack
//push THIS
// #35694
@THAT
// #35695
D=M
//^^ push_d_to_stack
// #35696
@SP
// #35697
A=M
// #35698
M=D
// #35699
@SP
// #35700
M=M+1
//vv push_d_to_stack
//push THAT
// #35701
@SP
// #35702
D=M
// #35703
@ARG
// #35704
M=D
// #35705
@6
// #35706
D=A
// #35707
@ARG
// #35708
M=M-D // ARG = SP - args - 5
// #35709
@SP
// #35710
D=M
// #35711
@LCL
// #35712
M=D // LCL = SP
// #35713
@Square.moveRight
// #35714
0;JMP
(RET_ADDR_362)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #35715
@SP
// #35716
M=M-1
// #35717
A=M
// #35718
D=M
//vv pop_stack_to_d
// #35719
@5
// #35720
M=D
//vv pop_to_loc{5)
//
//// label IF_FALSE3
(SquareGame.moveSquare$IF_FALSE3)
//
//// push constant 5
//^^ push_constant(5)
// #35721
@5
// #35722
D=A
//^^ push_d_to_stack
// #35723
@SP
// #35724
A=M
// #35725
M=D
// #35726
@SP
// #35727
M=M+1
//vv push_d_to_stack
//vv push_constant(5)
//
//// call Sys.wait 1
//^^ push_constant(RET_ADDR_363)
// #35728
@RET_ADDR_363
// #35729
D=A
//^^ push_d_to_stack
// #35730
@SP
// #35731
A=M
// #35732
M=D
// #35733
@SP
// #35734
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_363)
//push return-address
// #35735
@LCL
// #35736
D=M
//^^ push_d_to_stack
// #35737
@SP
// #35738
A=M
// #35739
M=D
// #35740
@SP
// #35741
M=M+1
//vv push_d_to_stack
//push LCL
// #35742
@ARG
// #35743
D=M
//^^ push_d_to_stack
// #35744
@SP
// #35745
A=M
// #35746
M=D
// #35747
@SP
// #35748
M=M+1
//vv push_d_to_stack
//push ARG
// #35749
@THIS
// #35750
D=M
//^^ push_d_to_stack
// #35751
@SP
// #35752
A=M
// #35753
M=D
// #35754
@SP
// #35755
M=M+1
//vv push_d_to_stack
//push THIS
// #35756
@THAT
// #35757
D=M
//^^ push_d_to_stack
// #35758
@SP
// #35759
A=M
// #35760
M=D
// #35761
@SP
// #35762
M=M+1
//vv push_d_to_stack
//push THAT
// #35763
@SP
// #35764
D=M
// #35765
@ARG
// #35766
M=D
// #35767
@6
// #35768
D=A
// #35769
@ARG
// #35770
M=M-D // ARG = SP - args - 5
// #35771
@SP
// #35772
D=M
// #35773
@LCL
// #35774
M=D // LCL = SP
// #35775
@Sys.wait
// #35776
0;JMP
(RET_ADDR_363)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #35777
@SP
// #35778
M=M-1
// #35779
A=M
// #35780
D=M
//vv pop_stack_to_d
// #35781
@5
// #35782
M=D
//vv pop_to_loc{5)
//
//// push constant 0
//^^ push_constant(0)
// #35783
@0
// #35784
D=A
//^^ push_d_to_stack
// #35785
@SP
// #35786
A=M
// #35787
M=D
// #35788
@SP
// #35789
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// return
// #35790
@LCL
// #35791
D=M
// #35792
@R14
// #35793
M=D //R14=LCL
// #35794
@5
// #35795
A=D-A
// #35796
D=M
// #35797
@R15
// #35798
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #35799
@SP
// #35800
M=M-1
// #35801
A=M
// #35802
D=M
//vv pop_stack_to_d
// #35803
@ARG
// #35804
A=M
// #35805
M=D //*ARG = pop()
// #35806
@ARG
// #35807
D=M
// #35808
@SP
// #35809
M=D+1 //SP=ARG+1
// #35810
@R14
// #35811
AM=M-1
// #35812
D=M
// #35813
@THAT
// #35814
M=D //THAT = *(--R14)
// #35815
@R14
// #35816
AM=M-1
// #35817
D=M
// #35818
@THIS
// #35819
M=D //THIS = *(--R14)
// #35820
@R14
// #35821
AM=M-1
// #35822
D=M
// #35823
@ARG
// #35824
M=D //ARG = *(--R14)
// #35825
@R14
// #35826
AM=M-1
// #35827
D=M
// #35828
@LCL
// #35829
M=D //LCL = *(--R14)
// #35830
@R15
// #35831
A=M
// #35832
0;JMP //goto *R15
//
//// function String.new 0
(String.new)
//
//// push constant 3
//^^ push_constant(3)
// #35833
@3
// #35834
D=A
//^^ push_d_to_stack
// #35835
@SP
// #35836
A=M
// #35837
M=D
// #35838
@SP
// #35839
M=M+1
//vv push_d_to_stack
//vv push_constant(3)
//
//// call Memory.alloc 1
//^^ push_constant(RET_ADDR_364)
// #35840
@RET_ADDR_364
// #35841
D=A
//^^ push_d_to_stack
// #35842
@SP
// #35843
A=M
// #35844
M=D
// #35845
@SP
// #35846
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_364)
//push return-address
// #35847
@LCL
// #35848
D=M
//^^ push_d_to_stack
// #35849
@SP
// #35850
A=M
// #35851
M=D
// #35852
@SP
// #35853
M=M+1
//vv push_d_to_stack
//push LCL
// #35854
@ARG
// #35855
D=M
//^^ push_d_to_stack
// #35856
@SP
// #35857
A=M
// #35858
M=D
// #35859
@SP
// #35860
M=M+1
//vv push_d_to_stack
//push ARG
// #35861
@THIS
// #35862
D=M
//^^ push_d_to_stack
// #35863
@SP
// #35864
A=M
// #35865
M=D
// #35866
@SP
// #35867
M=M+1
//vv push_d_to_stack
//push THIS
// #35868
@THAT
// #35869
D=M
//^^ push_d_to_stack
// #35870
@SP
// #35871
A=M
// #35872
M=D
// #35873
@SP
// #35874
M=M+1
//vv push_d_to_stack
//push THAT
// #35875
@SP
// #35876
D=M
// #35877
@ARG
// #35878
M=D
// #35879
@6
// #35880
D=A
// #35881
@ARG
// #35882
M=M-D // ARG = SP - args - 5
// #35883
@SP
// #35884
D=M
// #35885
@LCL
// #35886
M=D // LCL = SP
// #35887
@Memory.alloc
// #35888
0;JMP
(RET_ADDR_364)
//
//// pop pointer 0
//^^ pop_to_loc{3)
//^^ pop_stack_to_d
// #35889
@SP
// #35890
M=M-1
// #35891
A=M
// #35892
D=M
//vv pop_stack_to_d
// #35893
@3
// #35894
M=D
//vv pop_to_loc{3)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #35895
@ARG
// #35896
D=M
// #35897
@0
// #35898
A=D+A
// #35899
D=M
//^^ push_d_to_stack
// #35900
@SP
// #35901
A=M
// #35902
M=D
// #35903
@SP
// #35904
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push constant 0
//^^ push_constant(0)
// #35905
@0
// #35906
D=A
//^^ push_d_to_stack
// #35907
@SP
// #35908
A=M
// #35909
M=D
// #35910
@SP
// #35911
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
// #35912
@SP
// #35913
M=M-1
// #35914
A=M
// #35915
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #35916
@R13
// #35917
M=D
//^^ pop_stack_to_d
// #35918
@SP
// #35919
M=M-1
// #35920
A=M
// #35921
D=M
//vv pop_stack_to_d
// #35922
@R13
// #35923
D=D-M
// #35924
@R13
// #35925
M=0
//vv arith_d_with_stack_top(D-M)
// #35926
@PUT_TRUE_365
// #35927
D;JLT
// #35928
@R13
// #35929
M=0
// #35930
@CONT_365
// #35931
0;JMP
(PUT_TRUE_365)
// #35932
@R13
// #35933
M=-1
(CONT_365)
// #35934
@R13
// #35935
D=M
// #35936
@R13
// #35937
M=0
//^^ push_d_to_stack
// #35938
@SP
// #35939
A=M
// #35940
M=D
// #35941
@SP
// #35942
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// if-goto IF_TRUE0
//^^ pop_stack_to_d
// #35943
@SP
// #35944
M=M-1
// #35945
A=M
// #35946
D=M
//vv pop_stack_to_d
// #35947
@String.new$IF_TRUE0
// #35948
D;JNE
//
//// goto IF_FALSE0
// #35949
@String.new$IF_FALSE0
// #35950
0;JMP
//
//// label IF_TRUE0
(String.new$IF_TRUE0)
//
//// push constant 14
//^^ push_constant(14)
// #35951
@14
// #35952
D=A
//^^ push_d_to_stack
// #35953
@SP
// #35954
A=M
// #35955
M=D
// #35956
@SP
// #35957
M=M+1
//vv push_d_to_stack
//vv push_constant(14)
//
//// call Sys.error 1
//^^ push_constant(RET_ADDR_366)
// #35958
@RET_ADDR_366
// #35959
D=A
//^^ push_d_to_stack
// #35960
@SP
// #35961
A=M
// #35962
M=D
// #35963
@SP
// #35964
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_366)
//push return-address
// #35965
@LCL
// #35966
D=M
//^^ push_d_to_stack
// #35967
@SP
// #35968
A=M
// #35969
M=D
// #35970
@SP
// #35971
M=M+1
//vv push_d_to_stack
//push LCL
// #35972
@ARG
// #35973
D=M
//^^ push_d_to_stack
// #35974
@SP
// #35975
A=M
// #35976
M=D
// #35977
@SP
// #35978
M=M+1
//vv push_d_to_stack
//push ARG
// #35979
@THIS
// #35980
D=M
//^^ push_d_to_stack
// #35981
@SP
// #35982
A=M
// #35983
M=D
// #35984
@SP
// #35985
M=M+1
//vv push_d_to_stack
//push THIS
// #35986
@THAT
// #35987
D=M
//^^ push_d_to_stack
// #35988
@SP
// #35989
A=M
// #35990
M=D
// #35991
@SP
// #35992
M=M+1
//vv push_d_to_stack
//push THAT
// #35993
@SP
// #35994
D=M
// #35995
@ARG
// #35996
M=D
// #35997
@6
// #35998
D=A
// #35999
@ARG
// #36000
M=M-D // ARG = SP - args - 5
// #36001
@SP
// #36002
D=M
// #36003
@LCL
// #36004
M=D // LCL = SP
// #36005
@Sys.error
// #36006
0;JMP
(RET_ADDR_366)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #36007
@SP
// #36008
M=M-1
// #36009
A=M
// #36010
D=M
//vv pop_stack_to_d
// #36011
@5
// #36012
M=D
//vv pop_to_loc{5)
//
//// label IF_FALSE0
(String.new$IF_FALSE0)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #36013
@ARG
// #36014
D=M
// #36015
@0
// #36016
A=D+A
// #36017
D=M
//^^ push_d_to_stack
// #36018
@SP
// #36019
A=M
// #36020
M=D
// #36021
@SP
// #36022
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push constant 0
//^^ push_constant(0)
// #36023
@0
// #36024
D=A
//^^ push_d_to_stack
// #36025
@SP
// #36026
A=M
// #36027
M=D
// #36028
@SP
// #36029
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
//
//// gt
//^^ arith_cmp_op(JGT)
//^^ pop_stack_to_d
// #36030
@SP
// #36031
M=M-1
// #36032
A=M
// #36033
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #36034
@R13
// #36035
M=D
//^^ pop_stack_to_d
// #36036
@SP
// #36037
M=M-1
// #36038
A=M
// #36039
D=M
//vv pop_stack_to_d
// #36040
@R13
// #36041
D=D-M
// #36042
@R13
// #36043
M=0
//vv arith_d_with_stack_top(D-M)
// #36044
@PUT_TRUE_367
// #36045
D;JGT
// #36046
@R13
// #36047
M=0
// #36048
@CONT_367
// #36049
0;JMP
(PUT_TRUE_367)
// #36050
@R13
// #36051
M=-1
(CONT_367)
// #36052
@R13
// #36053
D=M
// #36054
@R13
// #36055
M=0
//^^ push_d_to_stack
// #36056
@SP
// #36057
A=M
// #36058
M=D
// #36059
@SP
// #36060
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JGT)
//
//// if-goto IF_TRUE1
//^^ pop_stack_to_d
// #36061
@SP
// #36062
M=M-1
// #36063
A=M
// #36064
D=M
//vv pop_stack_to_d
// #36065
@String.new$IF_TRUE1
// #36066
D;JNE
//
//// goto IF_FALSE1
// #36067
@String.new$IF_FALSE1
// #36068
0;JMP
//
//// label IF_TRUE1
(String.new$IF_TRUE1)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #36069
@ARG
// #36070
D=M
// #36071
@0
// #36072
A=D+A
// #36073
D=M
//^^ push_d_to_stack
// #36074
@SP
//