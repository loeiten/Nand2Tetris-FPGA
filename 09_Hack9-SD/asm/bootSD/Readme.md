## asm/bootSD

In our last project you are asked to implement a bootloader in assembler which does the following tasks and fits into 256 words of ROM.v:

1. initialise SD-cardreader with start sequence (see `jack/SDTest`)
2. read byte for byte until you reach the starting tag `000000`
3. Read line by line and store the code in SRAM.
4. When `\n\n` is reached, reset CPU and switch instruction memory to SRAM.

**Tipp1:** To shrink Hack-code reload RAM.v with binary representation of initialisation procedure for SD-card.

**Tipp2:** Use LED and UART-TX to output debug information.

**Warning:** Not so easy!


## Project

* Implement `bootSD.asm`
* Run `asm/bootSD/bootSD.hack` on Hack9 in real hardware:
* Enter SD-card preloaded with `Tetris.hack` into SD card reader
* press reset button
* Play Tetris!


## Conclusion
Congratulation! You have build a standalone general purpouse 16 bit computer in real hardware, capable of running Jack compiled code stored on SD-card.
