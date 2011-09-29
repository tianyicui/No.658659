(INIT)
    // scr=SCREEN
    @SCREEN
    D=A
    @scr
    M=D
    // end=SCREEN+0x2000
    @8192
    D=D+A
    @end
    M=D
(BEGIN)
    // if KBD D=0xffff else D=0
    @KBD
    D=M
    @SET0
    D;JEQ
    @32767
    D=A
    D=D+A
    D=D+1 //D=65535
    @CONT
    0;JMP
(SET0)
    D=0
(CONT)
    // A=scr
    @scr
    A=M
    // *scr=D
    M=D
    // scr++
    D=A+1
    @scr
    M=D
    // if D==end GOTO INIT
    @end
    D=D-M
    @INIT
    D;JEQ
    // GOTO BEGIN
    @BEGIN
    0;JMP
