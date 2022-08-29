(WAIT1)		//wait for sd ready
@8206
D=M
@WAIT1
D;JLT

@55			//write 55
D=A
@8206
M=D


(WAIT2)		//wait for sd ready
@8206
D=M
@WAIT2
D;JLT

@54			//write 55 with cen=1
D=-A
@8206
M=D


(WAIT3)		//wait for sd ready
@8206
D=M
@WAIT3
D;JLT

(HALT)		//Halt
@HALT
0;JMP
