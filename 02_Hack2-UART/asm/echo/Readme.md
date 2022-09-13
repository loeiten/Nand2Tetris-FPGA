## echo.asm

`echo.asm` runs an infinite loop, which reads a character from UART-RX and echoes it to UART-TX.

```
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
D;JEQ

@DATA		//write DATA to uart_tx
D=M
@8194
M=D

@LOOP	//LOOP
0;JMP

```

## Project
* Translate `echo.asm` to Hack-machine code using your Assembler.
* Preload `ROM.v` with `echo.hack`
* Simulate using test bench `Hack2_tb.v`
* Build and upload to iCE40-HX1K-EVB.
* Test in real hardware with
`$ screen /dev/ttyACM0`
