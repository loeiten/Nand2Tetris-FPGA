@0
(START)
@8196		//set address on SRAM
M=0

(LOOP)
(WAIT_RX) 	//WAIT for UART_RX
@8195
D=M
@WAIT_RX
D;JLT

@8195		//clear uart_rx
M=-1


@8197		//store received data do SRAM
M=D
0
@8196		//increment address on SRAM
MD=M+1
@4
D=D-A

@LOOP
D;JNE


@8196		//set address to first address
M=0

(WAIT_TX)	//Wait for uart_tx ready
@8194
D=M
@WAIT_TX
D;JNE

@8197		//write DATA to uart_tx
D=M
@8194
M=D

@8196		//increment SRAM address
MD=M+1
@4			//transmit 4 chars
D=D-A
@WAIT_TX
D;JNE

@START
0;JMP
