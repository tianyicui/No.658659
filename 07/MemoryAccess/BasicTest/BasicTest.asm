//
//// push constant 10
//^^ push_constant(10)
@10
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(10)
//
//// pop local 0
//^^ pop_to_ram(LCL, 0)
@LCL
D=M
@0
D=D+A
@R13
M=D
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
@R13
A=M
M=D
//vv pop_to_ram(LCL, 0)
//
//// push constant 21
//^^ push_constant(21)
@21
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(21)
//
//// push constant 22
//^^ push_constant(22)
@22
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(22)
//
//// pop argument 2
//^^ pop_to_ram(ARG, 2)
@ARG
D=M
@2
D=D+A
@R13
M=D
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
@R13
A=M
M=D
//vv pop_to_ram(ARG, 2)
//
//// pop argument 1
//^^ pop_to_ram(ARG, 1)
@ARG
D=M
@1
D=D+A
@R13
M=D
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
@R13
A=M
M=D
//vv pop_to_ram(ARG, 1)
//
//// push constant 36
//^^ push_constant(36)
@36
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(36)
//
//// pop this 6
//^^ pop_to_ram(THIS, 6)
@THIS
D=M
@6
D=D+A
@R13
M=D
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
@R13
A=M
M=D
//vv pop_to_ram(THIS, 6)
//
//// push constant 42
//^^ push_constant(42)
@42
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(42)
//
//// push constant 45
//^^ push_constant(45)
@45
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(45)
//
//// pop that 5
//^^ pop_to_ram(THAT, 5)
@THAT
D=M
@5
D=D+A
@R13
M=D
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
@R13
A=M
M=D
//vv pop_to_ram(THAT, 5)
//
//// pop that 2
//^^ pop_to_ram(THAT, 2)
@THAT
D=M
@2
D=D+A
@R13
M=D
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
@R13
A=M
M=D
//vv pop_to_ram(THAT, 2)
//
//// push constant 510
//^^ push_constant(510)
@510
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(510)
//
//// pop temp 6
//^^ pop_to_loc{11)
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
@11
M=D
//vv pop_to_loc{11)
//
//// push local 0
//^^ push_from_ram(LCL, 0)
@LCL
D=M
@0
A=D+A
D=M
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_from_ram(LCL, 0)
//
//// push that 5
//^^ push_from_ram(THAT, 5)
@THAT
D=M
@5
A=D+A
D=M
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THAT, 5)
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
//// push argument 1
//^^ push_from_ram(ARG, 1)
@ARG
D=M
@1
A=D+A
D=M
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_from_ram(ARG, 1)
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
//// push this 6
//^^ push_from_ram(THIS, 6)
@THIS
D=M
@6
A=D+A
D=M
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 6)
//
//// push this 6
//^^ push_from_ram(THIS, 6)
@THIS
D=M
@6
A=D+A
D=M
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 6)
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
//// push temp 6
//^^ push_from_loc(11)
@11
D=M
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_from_loc(11)
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
