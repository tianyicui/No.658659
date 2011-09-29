    @R2
    M=0 //R2=0
(LOOP)
    @R0
    D=M //D=R0
    @END
    D;JEQ //GOTO END if D=0
    @R2
    D=M //D=R2
    @R1
    A=M //A=R1
    D=D+A //D=R2+R1
    @R2
    M=D //R2=D
    @R0
    D=M
    M=D-1 //R0=R0-1
    @LOOP
    0;JMP
(END)
    @END
    0;JMP
