(WAIT1)		//wait for sd ready
@8207
D=M
@WAIT1
D;JLT

@256		//set cs=1
D=A
@8207
M=D

@567		//write 55 with cs=0
D=A
@8207
M=D

(WAIT2)		//wait for sd ready
@8207
D=M
@WAIT2
D;JLT

@256		//set cs=1
D=A
@8207
M=D

(HALT)		//Halt
@HALT
0;JMP
