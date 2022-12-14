## buffer.asm

`buffer.asm` runs an infinite loop, which reads 8 bytes from UART-RX, buffers them in RAM and finally echoes the 8 bytes to UART-TX.

```
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
@8
D=D-A

@LOOP
D;JNE


@0
M=0

(WAIT_TX)	//Wait for uart_tx ready
@8194
D=M
@WAIT_TX
D;JEQ

@0
AM=M+1
D=M
@8194
M=D

@0
D=M
@8			//transmit 8 chars
D=D-A
@WAIT_TX
D;JNE

@START
0;JMP
```

## Project
* Translate `buffer.asm` to Hack-machine code using your Assembler.
* Preload `ROM.v` with `buffer.hack`
* Simulate using test bench `Hack2_tb.v`
* Build and upload to iCE40-HX1K-EVB.
* Test in real hardware with
`$ screen /dev/ttyACM0`
