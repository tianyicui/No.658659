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
//// function Main.fibonacci 0
(Main.fibonacci)
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
//// push constant 2
//^^ push_constant(2)
// #16
@2
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
//vv push_constant(2)
//
//// lt
//^^ arith_cmp_op(JLT)
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
D;JLT
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
//vv arith_cmp_op(JLT)
//
//// if-goto IF_TRUE
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
@Main.fibonacci$IF_TRUE
// #59
D;JNE
//
//// goto IF_FALSE
// #60
@Main.fibonacci$IF_FALSE
// #61
0;JMP
//
//// label IF_TRUE
(Main.fibonacci$IF_TRUE)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #62
@ARG
// #63
D=M
// #64
@0
// #65
A=D+A
// #66
D=M
//^^ push_d_to_stack
// #67
@SP
// #68
A=M
// #69
M=D
// #70
@SP
// #71
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// return
// #72
@LCL
// #73
D=M
// #74
@R14
// #75
M=D //R14=LCL
// #76
@5
// #77
A=D-A
// #78
D=M
// #79
@R15
// #80
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #81
@SP
// #82
M=M-1
// #83
A=M
// #84
D=M
//vv pop_stack_to_d
// #85
@ARG
// #86
A=M
// #87
M=D //*ARG = pop()
// #88
@ARG
// #89
D=M
// #90
@SP
// #91
M=D+1 //SP=ARG+1
// #92
@R14
// #93
AM=M-1
// #94
D=M
// #95
@THAT
// #96
M=D //THAT = *(--R14)
// #97
@R14
// #98
AM=M-1
// #99
D=M
// #100
@THIS
// #101
M=D //THIS = *(--R14)
// #102
@R14
// #103
AM=M-1
// #104
D=M
// #105
@ARG
// #106
M=D //ARG = *(--R14)
// #107
@R14
// #108
AM=M-1
// #109
D=M
// #110
@LCL
// #111
M=D //LCL = *(--R14)
// #112
@R15
// #113
A=M
// #114
0;JMP //goto *R15
//
//// label IF_FALSE
(Main.fibonacci$IF_FALSE)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #115
@ARG
// #116
D=M
// #117
@0
// #118
A=D+A
// #119
D=M
//^^ push_d_to_stack
// #120
@SP
// #121
A=M
// #122
M=D
// #123
@SP
// #124
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push constant 2
//^^ push_constant(2)
// #125
@2
// #126
D=A
//^^ push_d_to_stack
// #127
@SP
// #128
A=M
// #129
M=D
// #130
@SP
// #131
M=M+1
//vv push_d_to_stack
//vv push_constant(2)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #132
@SP
// #133
M=M-1
// #134
A=M
// #135
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #136
@R13
// #137
M=D
//^^ pop_stack_to_d
// #138
@SP
// #139
M=M-1
// #140
A=M
// #141
D=M
//vv pop_stack_to_d
// #142
@R13
// #143
D=D-M
// #144
@R13
// #145
M=0
//vv arith_d_with_stack_top(D-M)
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
//vv arith_binary_op(-)
//
//// call Main.fibonacci 1
//^^ push_constant(RET_ADDR_2)
// #151
@RET_ADDR_2
// #152
D=A
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
//vv push_constant(RET_ADDR_2)
//push return-address
// #158
@LCL
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
//push LCL
// #165
@ARG
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
//push ARG
// #172
@THIS
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
//push THIS
// #179
@THAT
// #180
D=M
//^^ push_d_to_stack
// #181
@SP
// #182
A=M
// #183
M=D
// #184
@SP
// #185
M=M+1
//vv push_d_to_stack
//push THAT
// #186
@SP
// #187
D=M
// #188
@ARG
// #189
M=D
// #190
@6
// #191
D=A
// #192
@ARG
// #193
M=M-D // ARG = SP - args - 5
// #194
@SP
// #195
D=M
// #196
@LCL
// #197
M=D // LCL = SP
// #198
@Main.fibonacci
// #199
0;JMP
(RET_ADDR_2)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
// #200
@ARG
// #201
D=M
// #202
@0
// #203
A=D+A
// #204
D=M
//^^ push_d_to_stack
// #205
@SP
// #206
A=M
// #207
M=D
// #208
@SP
// #209
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 0)
//
//// push constant 1
//^^ push_constant(1)
// #210
@1
// #211
D=A
//^^ push_d_to_stack
// #212
@SP
// #213
A=M
// #214
M=D
// #215
@SP
// #216
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
// #217
@SP
// #218
M=M-1
// #219
A=M
// #220
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
// #221
@R13
// #222
M=D
//^^ pop_stack_to_d
// #223
@SP
// #224
M=M-1
// #225
A=M
// #226
D=M
//vv pop_stack_to_d
// #227
@R13
// #228
D=D-M
// #229
@R13
// #230
M=0
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
// #231
@SP
// #232
A=M
// #233
M=D
// #234
@SP
// #235
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// call Main.fibonacci 1
//^^ push_constant(RET_ADDR_3)
// #236
@RET_ADDR_3
// #237
D=A
//^^ push_d_to_stack
// #238
@SP
// #239
A=M
// #240
M=D
// #241
@SP
// #242
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_3)
//push return-address
// #243
@LCL
// #244
D=M
//^^ push_d_to_stack
// #245
@SP
// #246
A=M
// #247
M=D
// #248
@SP
// #249
M=M+1
//vv push_d_to_stack
//push LCL
// #250
@ARG
// #251
D=M
//^^ push_d_to_stack
// #252
@SP
// #253
A=M
// #254
M=D
// #255
@SP
// #256
M=M+1
//vv push_d_to_stack
//push ARG
// #257
@THIS
// #258
D=M
//^^ push_d_to_stack
// #259
@SP
// #260
A=M
// #261
M=D
// #262
@SP
// #263
M=M+1
//vv push_d_to_stack
//push THIS
// #264
@THAT
// #265
D=M
//^^ push_d_to_stack
// #266
@SP
// #267
A=M
// #268
M=D
// #269
@SP
// #270
M=M+1
//vv push_d_to_stack
//push THAT
// #271
@SP
// #272
D=M
// #273
@ARG
// #274
M=D
// #275
@6
// #276
D=A
// #277
@ARG
// #278
M=M-D // ARG = SP - args - 5
// #279
@SP
// #280
D=M
// #281
@LCL
// #282
M=D // LCL = SP
// #283
@Main.fibonacci
// #284
0;JMP
(RET_ADDR_3)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
// #285
@SP
// #286
M=M-1
// #287
A=M
// #288
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
// #289
@R13
// #290
M=D
//^^ pop_stack_to_d
// #291
@SP
// #292
M=M-1
// #293
A=M
// #294
D=M
//vv pop_stack_to_d
// #295
@R13
// #296
D=D+M
// #297
@R13
// #298
M=0
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
// #299
@SP
// #300
A=M
// #301
M=D
// #302
@SP
// #303
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// return
// #304
@LCL
// #305
D=M
// #306
@R14
// #307
M=D //R14=LCL
// #308
@5
// #309
A=D-A
// #310
D=M
// #311
@R15
// #312
M=D //R15=*(LCL-5)
//^^ pop_stack_to_d
// #313
@SP
// #314
M=M-1
// #315
A=M
// #316
D=M
//vv pop_stack_to_d
// #317
@ARG
// #318
A=M
// #319
M=D //*ARG = pop()
// #320
@ARG
// #321
D=M
// #322
@SP
// #323
M=D+1 //SP=ARG+1
// #324
@R14
// #325
AM=M-1
// #326
D=M
// #327
@THAT
// #328
M=D //THAT = *(--R14)
// #329
@R14
// #330
AM=M-1
// #331
D=M
// #332
@THIS
// #333
M=D //THIS = *(--R14)
// #334
@R14
// #335
AM=M-1
// #336
D=M
// #337
@ARG
// #338
M=D //ARG = *(--R14)
// #339
@R14
// #340
AM=M-1
// #341
D=M
// #342
@LCL
// #343
M=D //LCL = *(--R14)
// #344
@R15
// #345
A=M
// #346
0;JMP //goto *R15
//
//// function Sys.init 0
(Sys.init)
//
//// push constant 4
//^^ push_constant(4)
// #347
@4
// #348
D=A
//^^ push_d_to_stack
// #349
@SP
// #350
A=M
// #351
M=D
// #352
@SP
// #353
M=M+1
//vv push_d_to_stack
//vv push_constant(4)
//
//// call Main.fibonacci 1
//^^ push_constant(RET_ADDR_4)
// #354
@RET_ADDR_4
// #355
D=A
//^^ push_d_to_stack
// #356
@SP
// #357
A=M
// #358
M=D
// #359
@SP
// #360
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_4)
//push return-address
// #361
@LCL
// #362
D=M
//^^ push_d_to_stack
// #363
@SP
// #364
A=M
// #365
M=D
// #366
@SP
// #367
M=M+1
//vv push_d_to_stack
//push LCL
// #368
@ARG
// #369
D=M
//^^ push_d_to_stack
// #370
@SP
// #371
A=M
// #372
M=D
// #373
@SP
// #374
M=M+1
//vv push_d_to_stack
//push ARG
// #375
@THIS
// #376
D=M
//^^ push_d_to_stack
// #377
@SP
// #378
A=M
// #379
M=D
// #380
@SP
// #381
M=M+1
//vv push_d_to_stack
//push THIS
// #382
@THAT
// #383
D=M
//^^ push_d_to_stack
// #384
@SP
// #385
A=M
// #386
M=D
// #387
@SP
// #388
M=M+1
//vv push_d_to_stack
//push THAT
// #389
@SP
// #390
D=M
// #391
@ARG
// #392
M=D
// #393
@6
// #394
D=A
// #395
@ARG
// #396
M=M-D // ARG = SP - args - 5
// #397
@SP
// #398
D=M
// #399
@LCL
// #400
M=D // LCL = SP
// #401
@Main.fibonacci
// #402
0;JMP
(RET_ADDR_4)
//
//// label WHILE
(Sys.init$WHILE)
//
//// goto WHILE
// #403
@Sys.init$WHILE
// #404
0;JMP
