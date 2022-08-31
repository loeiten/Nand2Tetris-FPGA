## led.asm

`led.asm` runs an infinite loop, which reads the button state and ouputs the result to LEDs.
```
// led.asm
// execute an infinite loop to
// read the button state and write the result

(LOOP)
@8193		//read BUT
D=M

@8192		//write LED
M=D

@LOOP
0;JMP
```
## Makefile
Little helper file to run Assembler and upload code to Hack3-Boot.

## Project
* Translate `led.asm` to hack machine code with your Assembler.
* Preload `rom.v` with the corresponding hack-code.
* Simulate using `Hack1_tb.v`
`$ apio sim`
* Build and upload to iCE40-HX1K-EVB and test in real hardware.
`$ apio upload`
