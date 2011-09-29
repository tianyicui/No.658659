//
//// push constant 0
//^^ push_constant(0)
@0
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(0)
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
//// label LOOP_START
(LOOP_START)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
@ARG
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
//vv push_from_ram(ARG, 0)
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
//// push argument 0
//^^ push_from_ram(ARG, 0)
@ARG
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
//vv push_from_ram(ARG, 0)
//
//// push constant 1
//^^ push_constant(1)
@1
D=A
//^^ push_d_to_stack
@SP
A=M
M=D
@SP
M=M+1
//vv push_d_to_stack
//vv push_constant(1)
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
//// pop argument 0
//^^ pop_to_ram(ARG, 0)
@ARG
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
//vv pop_to_ram(ARG, 0)
//
//// push argument 0
//^^ push_from_ram(ARG, 0)
@ARG
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
//vv push_from_ram(ARG, 0)
//
//// if-goto LOOP_START
//^^ pop_stack_to_d
@SP
M=M-1
A=M
D=M
//vv pop_stack_to_d
@LOOP_START
D;JNE
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
