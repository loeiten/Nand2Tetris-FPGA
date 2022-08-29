// lcd.asm
// Test LCD module

// write Command
(WAIT1)
@8200
D=M
@WAIT1
D;JLT

@55
D=A
@8200
M=D

// write data 8
(WAIT2)
@8201
D=M
@WAIT2
D;JLT

@55
D=A
@8201
M=D

// write data 16
(WAIT3)
@8202
D=M
@WAIT3
D;JLT

@11111
D=A
@8202
M=D

(HALT)
@HALT
0;JMP
