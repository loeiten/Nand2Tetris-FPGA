@8195	//clear Uart_rx buffer
M=0
(LOOP)
(WAIT_RX) //WAIT for UART_RX
@8195
D=M
@WAIT_RX
D;JLT		

@DATA	//store Received data
M=D

@8195	//clear uart_rx
M=-1

(WAIT_TX)	//Wait for uart_tx ready
@8194
D=M
@WAIT_TX
D;JNE

@DATA		//write DATA to uart_tx
D=M
@8194
M=D

@LOOP	//LOOP
0;JMP
