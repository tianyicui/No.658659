//
//// push constant 3030
//^^ push_constant(3030)
@3030
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(3030)
//
//// pop pointer 0
//^^ pop_to_loc{3)
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
@3
M=D
//vv pop_to_loc{3)
//
//// push constant 3040
//^^ push_constant(3040)
@3040
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(3040)
//
//// pop pointer 1
//^^ pop_to_loc{4)
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
@4
M=D
//vv pop_to_loc{4)
//
//// push constant 32
//^^ push_constant(32)
@32
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(32)
//
//// pop this 2
//^^ pop_to_ram(THIS, 2)
@THIS
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
//vv pop_to_ram(THIS, 2)
//
//// push constant 46
//^^ push_constant(46)
@46
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(46)
//
//// pop that 6
//^^ pop_to_ram(THAT, 6)
@THAT
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
//vv pop_to_ram(THAT, 6)
//
//// push pointer 0
//^^ push_from_loc(3)
@3
D=M
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_from_loc(3)
//
//// push pointer 1
//^^ push_from_loc(4)
@4
D=M
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_from_loc(4)
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
//// push this 2
//^^ push_from_ram(THIS, 2)
@THIS
D=M
@2
A=D+A
D=M
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_from_ram(THIS, 2)
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
//// push that 6
//^^ push_from_ram(THAT, 6)
@THAT
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
//vv push_from_ram(THAT, 6)
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
