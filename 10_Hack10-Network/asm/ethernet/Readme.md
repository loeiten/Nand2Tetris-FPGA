## touch.asm

`touch.asm` does the following tasks:
1. write byte 55 to Touch
2. wait for received byte (stored in register D)
3. Halt loop

```
(WAIT1)
@8203
D=M
@WAIT1	//Wait until Touch is ready
D;JLT
@55
D=A
@8203	//send 55
M=D

(WAIT2)	//wait until Touch is ready
@8203
D=M
@WAIT2
D;JLT

(HALT)	//D now holds received byte
@HALT
0;JMP
```

## Project
* Translate `touch.asm` to Hack-machine code using your Assembler.
* Preload `ROM.v` with `touch.hack`
* Simulate using testbench `Hack7_tb.v`
