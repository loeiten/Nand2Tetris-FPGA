@8195
M=0

(START)
@0
D=A
@0			//set address to 16
M=0

(LOOP)
(WAIT_RX) 	//WAIT for UART_RX
@8195
D=M
@WAIT_RX
D;JLT		

@8195		//clear uart_rx
M=-1

@0
AM=M+1
M=D

D=A
@4
D=D-A

@LOOP
D;JNE


@0
M=0

(WAIT_TX)	//Wait for uart_tx ready
@8194
D=M
@WAIT_TX
D;JNE

@0
AM=M+1
D=M
@8194
M=D

@0
D=M
@4			//transmit 4 chars
D=D-A
@WAIT_TX
D;JNE

@START
0;JMP
