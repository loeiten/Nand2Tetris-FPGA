(BOOT)
@8195
D=M
@48
D=D-A
@BOOT
D;JNE
@8195
M=0

(LOOP)
@8192		//state 01
M=1

@8196		//set PROM Address to 0
M=0

(NEXT)
@0			//clear data
M=0

(WAIT_RX)	//Wait for char
@8195
D=M
@WAIT_RX
D;JLT

@8195		//clear rx-buffer
M=0

@20			//char==\n ?
D=D-A
@CHAR_NL
D;JLE

@8192		//again in state 01
M=1

@28			//char==0 ?
D=D-A
@CHAR_0
D;JEQ

D=D-1		//char==1 ?
@CHAR_1
D;JEQ

@3
D=A
@8192		//error state = 3
M=D

(HALT)
@HALT		//next char
0;JMP

(CHAR_0)	//char 0
@0
D=M

M=D+M
@WAIT_RX
0;JMP

(CHAR_1)	//char 1
@0
D=M
M=D+M
M=M+1
@WAIT_RX
0;JMP

(CHAR_NL)	//char \n
@0
D=M
@8197
M=D
0
@8196
M=M+1
@8192		//last char \n?
D=M-1
@CHAR_EOT
D;JNE
@8192		//last char is \n
M=M+1
@NEXT
0;JMP

(CHAR_EOT)
@8192		//LED 0 run
M=0
@8198		//jump to SRAM
AMD=0
0;JMP
