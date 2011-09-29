    @R2
    M=0 //R2=0
    @R3
    M=1 //R3=1
(LOOP)
    // GOTO END if R0==0
    @R0
    D=M //D=R0
    @END
    D;JEQ //GOTO END if D=0

    // GOTO SHIFT if R0&R3==0
    @R0
    D=M //D=R0
    @R3
    D=D&M //D=R0&R3
    @SHIFT
    D;JEQ //GOTO SHIFT if D=0

    // R2+=R1
    @R2
    D=M //D=R2
    @R1
    D=D+M //D=R1+R2
    @R2
    M=D //R2=D

    // R0-=R3
    @R0
    D=M //D=R0
    @R3
    D=D-M //D=R0-R3
    @R0
    M=D //R0=D
(SHIFT)
    @R3
    D=M
    M=D+M //R3*=2
    @R1
    D=M
    M=D+M //R1*=2
    @LOOP
    0;JMP
(END)
    @END
    0;JMP
