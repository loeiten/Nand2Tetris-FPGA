## sd.asm

`sd.asm` does the following tasks:
1. wait for sd module ready
2. write byte 55 to sd
3. wait for sd module ready
4. write byte 55 to sd with cen=1
5. Halt loop

```
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
```

## Project
* Translate `sd.asm` to Hack-machine code using your Assembler.
* Preload `ROM.v` with `sd.hack`
* Simulate using testbench `Hack9_tb.v`
