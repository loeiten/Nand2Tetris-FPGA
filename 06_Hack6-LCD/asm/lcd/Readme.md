## lcd.asm

`lcd.asm` does the following tasks:
1. write command 55 to LCD
2. write data8 55 to LCD
3. write data16 222222 to LCD
4. Halt loop

```
(WAIT1)
@8200
D=M
@WAIT1
D;JLT
@41
D=A
@8200
M=D

(WAIT2)
@8201
D=M
@WAIT2
D;JLT
@55
D=A
@8201
M=D

(WAIT3)
@8202
D=M
@WAIT3
D;JLT
@22222
D=A
@8202
M=D

(HALT)
@HALT
0;JMP

```

## Project
* Translate `lcd.asm` to Hack-machine code using your Assembler.
* Preload `ROM.v` with `lcd.hack`
* Simulate using testbench `Hack6_tb.v`
* upload and test Hack6 in real hardware (command 41 should turn the screen on showing random data)
