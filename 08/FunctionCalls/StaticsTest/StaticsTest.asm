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
//// push constant 6
//^^ push_constant(6)
// #6
@6
// #7
D=A
//^^ push_d_to_stack
// #8
@SP
// #9
A=M
// #10
M=D
// #11
@SP
// #12
M=M+1
//vv push_d_to_stack
//vv push_constant(6)
//
//// push constant 8
//^^ push_constant(8)
// #13
@8
// #14
D=A
//^^ push_d_to_stack
// #15
@SP
// #16
A=M
// #17
M=D
// #18
@SP
// #19
M=M+1
//vv push_d_to_stack
//vv push_constant(8)
//
//// call Class1.set 2
//^^ push_constant(RET_ADDR_1)
// #20
@RET_ADDR_1
// #21
D=A
//^^ push_d_to_stack
// #22
@SP
// #23
A=M
// #24
M=D
// #25
@SP
// #26
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_1)
//push return-address
// #27
@LCL
// #28
D=M
//^^ push_d_to_stack
// #29
@SP
// #30
A=M
// #31
M=D
// #32
@SP
// #33
M=M+1
//vv push_d_to_stack
//push LCL
// #34
@ARG
// #35
D=M
//^^ push_d_to_stack
// #36
@SP
// #37
A=M
// #38
M=D
// #39
@SP
// #40
M=M+1
//vv push_d_to_stack
//push ARG
// #41
@THIS
// #42
D=M
//^^ push_d_to_stack
// #43
@SP
// #44
A=M
// #45
M=D
// #46
@SP
// #47
M=M+1
//vv push_d_to_stack
//push THIS
// #48
@THAT
// #49
D=M
//^^ push_d_to_stack
// #50
@SP
// #51
A=M
// #52
M=D
// #53
@SP
// #54
M=M+1
//vv push_d_to_stack
//push THAT
// #55
@SP
// #56
D=M
// #57
@ARG
// #58
M=D
// #59
@7
// #60
D=A
// #61
@ARG
// #62
M=M-D // ARG = SP - args - 5
// #63
@SP
// #64
D=M
// #65
@LCL
// #66
M=D // LCL = SP
// #67
@Class1.set
// #68
0;JMP
(RET_ADDR_1)
//
//// pop temp 0
//^^ pop_to_loc{5)
//^^ pop_stack_to_d
// #69
@SP
// #70
M=M-1
// #71
A=M
// #72
D=M
//vv pop_stack_to_d
// #73
@5
// #74
M=D
//vv pop_to_loc{5)
//
//// push constant 23
//^^ push_constant(23)
// #75
@23
// #76
D=A
//^^ push_d_to_stack
// #77
@SP
// #78
A=M
// #79
M=D
// #80
@SP
// #81
M=M+1
//vv push_d_to_stack
//vv push_constant(23)
//
//// push constant 15
//^^ push_constant(15)
// #82
@15
// #83
D=A
//^^ push_d_to_stack
// #84
@SP
// #85
A=M
// #86
M=D
// #87
@SP
// #88
M=M+1
//vv push_d_to_stack
//vv push_constant(15)
//
//// call Class2.set 2
//^^ push_constant(RET_ADDR_2)
// #89
@RET_ADDR_2
// #90
D=A
//^^ push_d_to_stack
// #91
@SP
// #92
A=M
// #93
M=D
// #94
@SP
// #95
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_2)
//push return-address
// #96
@LCL
// #97
D=M
//^^ push_d_to_stack
// #98
@SP
// #99
A=M
// #100
M=D
// #101
@SP
// #102
M=M+1
//vv push_d_to_stack
//push LCL
// #103
@ARG
// #104
D=M
//^^ push_d_to_stack
// #105
@SP
// #106
A=M
// #107
M=D
// #108
@SP
// #109
M=M+1
//vv push_d_to_stack
//push ARG
// #110
@THIS
// #111
D=M
//^^ push_d_to_stack
// #112
@SP
// #113
A=M
// #114
M=D
// #115
@SP
// #116
M=M+1
//vv push_d_to_stack
//push THIS
// #117
@THAT
// #118
D=M
//^^ push_d_to_stack
// #119
@SP
// #120
A=M
// #121
M=D
// #122
@SP
// #123
M=M+1
//vv push_d_to_stack
//push THAT
// #124
@SP
// #125
D=M
// #126
@ARG
// #127
M=D
// #128
@7
// #129
D=A
// #130
@ARG
// #131
M=M-D // ARG = SP - args - 5
// #132
@SP
// #133
D=M
// #134
@LCL
// #135
M=D // LCL = SP
// #136
@Class2.set
// #137
0;JMP
(RET_ADDR_2)
//
//// pop temp 0
//^^ pop_to_loc{5)
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
@5
// #143
M=D
//vv pop_to_loc{5)
//
//// call Class1.get 0
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
@5
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
@Class1.get
// #192
0;JMP
(RET_ADDR_3)
//
//// call Class2.get 0
//^^ push_constant(RET_ADDR_4)
// #193
@RET_ADDR_4
// #194
D=A
//^^ push_d_to_stack
// #195
@SP
// #196
A=M
// #197
M=D
// #198
@SP
// #199
M=M+1
//vv push_d_to_stack
//vv push_constant(RET_ADDR_4)
//push return-address
// #200
@LCL
// #201
D=M
//^^ push_d_to_stack
// #202
@SP
// #203
A=M
// #204
M=D
// #205
@SP
// #206
M=M+1
//vv push_d_to_stack
//push LCL
// #207
@ARG
// #208
D=M
//^^ push_d_to_stack
// #209
@SP
// #210
A=M
// #211
M=D
// #212
@SP
// #213
M=M+1
//vv push_d_to_stack
//push ARG
// #214
@THIS
// #215
D=M
//^^ push_d_to_stack
// #216
@SP
// #217
A=M
// #218
M=D
// #219
@SP
// #220
M=M+1
//vv push_d_to_stack
//push THIS
// #221
@THAT
// #222
D=M
//^^ push_d_to_stack
// #223
@SP
// #224
A=M
// #225
M=D
// #226
@SP
// #227
M=M+1
//vv push_d_to_stack
//push THAT
// #228
@SP
// #229
D=M
// #230
@ARG
// #231
M=D
// #232
@5
// #233
D=A
// #234
@ARG
// #235
M=M-D // ARG = SP - args - 5
// #236
@SP
// #237
D=M
// #238
@LCL
// #239
M=D // LCL = SP
// #240
@Class2.get
// #241
0;JMP
(RET_ADDR_4)
//
//// label WHILE
(Sys.init$WHILE)
//
//// goto WHILE
// #242
@Sys.init$WHILE
// #243
0;JMP
