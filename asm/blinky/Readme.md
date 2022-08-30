## blinky.asm

`blinky.asm` runs a counter, to realise a delay of 1 second. Every second then the led-register is incremented.
```
@0
(LOOP)
@100
D=A
@0
M=D
(WAIT2)
D=0
(WAIT)
@WAIT
D=D+1
D;JNE
@0
MD=M-1
@WAIT2
D;JNE

@8192		//write LED
M=M+1

@LOOP
0;JMP

```


## Project
* Translate `blinky.asm` to hack machine code with your Assembler.
* Preload `ROM.v` with the corresponding hack-code.
* Build and upload to iCE40-HX1K-EVB and test in real hardware.
`$ apio upload`
