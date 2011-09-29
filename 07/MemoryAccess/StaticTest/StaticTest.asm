//
//// push constant 111
//^^ push_constant(111)
@111
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(111)
//
//// push constant 333
//^^ push_constant(333)
@333
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(333)
//
//// push constant 888
//^^ push_constant(888)
@888
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(888)
//
//// pop static 8
//^^ pop_to_loc{StaticTest.vm.8)
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
@StaticTest.vm.8
M=D
//vv pop_to_loc{StaticTest.vm.8)
//
//// pop static 3
//^^ pop_to_loc{StaticTest.vm.3)
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
@StaticTest.vm.3
M=D
//vv pop_to_loc{StaticTest.vm.3)
//
//// pop static 1
//^^ pop_to_loc{StaticTest.vm.1)
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
@StaticTest.vm.1
M=D
//vv pop_to_loc{StaticTest.vm.1)
//
//// push static 3
//^^ push_from_loc(StaticTest.vm.3)
@StaticTest.vm.3
D=M
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_from_loc(StaticTest.vm.3)
//
//// push static 1
//^^ push_from_loc(StaticTest.vm.1)
@StaticTest.vm.1
D=M
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_from_loc(StaticTest.vm.1)
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
//// push static 8
//^^ push_from_loc(StaticTest.vm.8)
@StaticTest.vm.8
D=M
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_from_loc(StaticTest.vm.8)
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
