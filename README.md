# Nand2Tetris-FPGA

Implementation of [Nand2Tetris-FPGA](https://gitlab.com/x653/nand2tetris-fpga) initially developed by Michael Schröder.

**NOTE**: There are two ways one can use `verilog` in this course.
The first way is to "translate" the `.hdl` files to `.v` files.
All chips made in this way are linked to the [Hack_chip](Hack_chip) directory.
By only translating the `.hdl` files one will miss to learn some of the beauty of the `verilog` language.
Hence, the second way of making the `Hack` machine is to write the logic in native `verilog`.
Chips made in this way are linked to the [Hack_verilog](Hack_verilog) directory.

---

> ... _Wouldn't it be nice to make Hack or Jack also run on some "real platform," made from some "real stuff"?_ ...
>
>---Noam Nisan and Shimon Schocken

This project is about building Hack on real hardware as proposed in Chapter 13 of the course [Nand2Tetris](https://www.Nand2Tetris.org/) using only FOSS, free and open source hard- and software.

We build hack in 9 steps, starting with Hack-1, a minimal working Hack-CPU connected to some LEDs and buttons and ending at Hack-9, the final implementation of Hack running Jack-Compiled code with specs:

* original CPU/ALU design of HACK from Nand2Tetris
* implemented on iCE40 FPGA
* clocked at 33.333333 MHz
* RAM 3840 x 16 bit (R0-R15/static/stack/heap)
* Programmable instruction memory PROM 64K x 16 bit
* 2.8 Inch Color LCD with 320x240 Pixel
* SD-Card-Reader
* bootloader in ROM (256 words) boots Hack-code from SD or UART
* sound-card capable of playing the tetris theme
* touch-panel support

Finally we will proof, that Hack-9 is powerful enough to run serious Jack-Application like Pong and Tetris!

## Roadmap

In every project folder/subfolder you find a file `README.md` containing specifications and implementation details.

>_... This is your last chance. After this, there is no turning back. You take the blue pill — the story ends, you wake up in your bed and believe whatever you want to believe. You take the red pill — you stay in Wonderland and I show you how deep the rabbit-hole goes. ..._
>
> ---Morpheus

### [Project0: Requirement](00_Requirement)

Get the hardware and install the tools.

### [Project 1: Hack1-minimal](01_Hack1-minimal)

Build minimal running version of Hack-CPU connected to two buttons and two LEDs as input/output.

### [Project 2: Hack2-UART](02_Hack2-UART)

Add UART support so Hack can send and receive bytes at runtime.
First test of Virtual machine running small Jack-compiled programs like `echo`.

### [Project 3: Hack3-SRAM](03_Hack3-SRAM)

Hack writes and reads data to external SRAM-chip so bigger Hack-programms can be stored (64K x 16 bit).

### [Project 4: Hack4-BOOT](04_Hack4-BOOT)

Boot logic can switch instruction memory between internal ROM (boot-mode) and external SRAM (run-mode).

### [Project 5: Jack-OS](05_Jack-OS)

Hack now has 3840 x 16 bit of RAM for stack/heap, 256 x 16 bit of ROM preloaded with bootloader and 64K x 16 bit of programmable instruction memory.
It's time to implement Jack-OS and run application like `Average`.

### [Project 6: Hack6-LCD](06_Hack6-LCD)

Connect Screen MOD-2.8LCD-RTP with 320x240 pixels in 16 bit color depth. Rewrite parts of OS `Screen.jack` and `Output.jack`. Play Pong!

![Pong on LCD](06_Hack6-LCD/pong.png)

### [Project 7: Hack7-TOUCH](07_Hack7-Touch)

Add support for resistive touch panel of MOD-2.8LCD-RTP. Just because it's there.

### [Project 8: Hack8-SOUND](08_Hack8-Sound)

Build "mini sound-card" capable of playing Tetris-theme.

![Tetris movie](08_Hack8-Sound/jack/Tetris/tetris.mp4)

![Tetris image](08_Hack8-Sound/jack/Tetris/tetris.png)

### [Project 9: Hack9-SDCard](09_Hack9-SD)

Add SD-card reader MOD-SDMMC. Re-implement bootloader capable of loading Jack-compiled code from SD-Card directly into SRAM. Play Tetris!

![SD card](09_Hack9-SD/Hack9.jpg)


## Credits

* Noam Nisan and Shimon Schocken: Visit [Nand2Tetris](https://Nand2Tetris.org) and learn to build a modern general-purpose computer system from ground up.
* [Olimex Ltd](https://www.Olimex.com/): Buy your hardware from the Company with highest number of registered OSHW projects :)
* Wolf Clifford: The master of open source FPGA with iCE40 and  [Project IceStorm](http://www.clifford.at/icestorm/)
* Jesús Arroyo Torrens, Juan González (Obijuan): Open source ecosystem for open FPGA boards [APIO](https://github.com/FPGAwars/apio)
* Juan González-Gomez (Obijuan): Lern Verilog with [open-FPGA-Verilog-tutorial](https://github.com/Obijuan/open-FPGA-Verilog-tutorial/), best tutorial!
* Icons made by [Those icons](https://www.flaticon.com/free-icon/cpu_483131?term=cpu&page=3&position=86) from [Flaticon](https://www.flaticon.com/)

---
For questions or comments write an email to
mi.schroeder@netcologne.de
