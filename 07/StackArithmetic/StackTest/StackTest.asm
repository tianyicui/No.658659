//
//// push constant 17
//^^ push_constant(17)
@17
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(17)
//
//// push constant 17
//^^ push_constant(17)
@17
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(17)
//
//// eq
//^^ arith_cmp_op(JEQ)
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
@R13
M=D
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
@R13
D=D-M
//vv arith_d_with_stack_top(D-M)
@PUT_TRUE_1
D;JEQ
@R13
M=0
@CONT_1
0;JMP
(PUT_TRUE_1)
@R13
M=-1
(CONT_1)
@R13
D=M
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JEQ)
//
//// push constant 892
//^^ push_constant(892)
@892
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(892)
//
//// push constant 891
//^^ push_constant(891)
@891
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(891)
//
//// lt
//^^ arith_cmp_op(JLT)
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
@R13
M=D
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
@R13
D=D-M
//vv arith_d_with_stack_top(D-M)
@PUT_TRUE_2
D;JLT
@R13
M=0
@CONT_2
0;JMP
(PUT_TRUE_2)
@R13
M=-1
(CONT_2)
@R13
D=M
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JLT)
//
//// push constant 32767
//^^ push_constant(32767)
@32767
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(32767)
//
//// push constant 32766
//^^ push_constant(32766)
@32766
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(32766)
//
//// gt
//^^ arith_cmp_op(JGT)
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
@R13
M=D
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
@R13
D=D-M
//vv arith_d_with_stack_top(D-M)
@PUT_TRUE_3
D;JGT
@R13
M=0
@CONT_3
0;JMP
(PUT_TRUE_3)
@R13
M=-1
(CONT_3)
@R13
D=M
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv arith_cmp_op(JGT)
//
//// push constant 56
//^^ push_constant(56)
@56
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(56)
//
//// push constant 31
//^^ push_constant(31)
@31
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(31)
//
//// push constant 53
//^^ push_constant(53)
@53
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(53)
//
//// add
//^^ arith_binary_op(+)
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D+M)
@R13
M=D
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
@R13
D=D+M
//vv arith_d_with_stack_top(D+M)
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(+)
//
//// push constant 112
//^^ push_constant(112)
@112
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(112)
//
//// sub
//^^ arith_binary_op(-)
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D-M)
@R13
M=D
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
@R13
D=D-M
//vv arith_d_with_stack_top(D-M)
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(-)
//
//// neg
//^^ arith_unary_op(-)
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
D=-D
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv arith_unary_op(-)
//
//// and
//^^ arith_binary_op(&)
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D&M)
@R13
M=D
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
@R13
D=D&M
//vv arith_d_with_stack_top(D&M)
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(&)
//
//// push constant 82
//^^ push_constant(82)
@82
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(82)
//
//// or
//^^ arith_binary_op(|)
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
//^^ arith_d_with_stack_top(D|M)
@R13
M=D
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
@R13
D=D|M
//vv arith_d_with_stack_top(D|M)
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv arith_binary_op(|)
