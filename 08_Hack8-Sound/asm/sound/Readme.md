## sound.asm

`sound.asm` does the following tasks:
1. play sound with periodic time 10
2. wait for Timer to increment (>0)
3. Halt loop

```
@10		//play tone 
D=-A	
@8205
M=D

(WAIT1)
@8204
D=M
@WAIT1
D;JLE

@0		//mute
D=A
@8205
M=D

(HALT)
@HALT
0;JMP
```

## Project
* Translate `sound.asm` to Hack-machine code using your Assembler.
* Preload `ROM.v` of `Hack8` with `sound.hack`
* Simulate using testbench `Hack8_tb.v`
