# Project: Hack9-SD
In this project we will add a SD-card reader. First we will read content of SD-card with the Jack app `SDTest`. Finally we will rewrite the bootloader in assembler, so that our Hack system can load hack code from the sd card to SRAM at boot time. This way we will have a computer system capable of running stored programms on SD card without the help of a computer to upload the programm.

### Theory:
Read  this article on SPI communication with SD-cards:

http://elm-chan.org/docs/mmc/mmc_e.html

### Layer 0: Requirement
* Format SD-card. Use small FAT partition. The smaller the partition, the faster Hack finds the file.
* Write a Hack file `out.hack` to SD card.


### Layer 1: Physical (outside FPGA)

SD cards are able to communicate via SPI to Hack. The connection is done with a SD-Card adapter and some jumper wires:

|wire|iCE40HX1K (FPGA)|iCE40HX1K-EVB (GPIO1)|MOD-SD (UEXT)|
|-|-|-|-|
|+3.3V|-|3|1|
|GND|-|4|2|
|MISO|12|21|7|
|MOSI|13|23|8|
|SCK|16|25|9|
|CEN|18|27|10|


### Layer 2: Hardware (inside FPGA)
* Use shiftregister `ShifterL` from last project.
* Build and test the module [`SD`](SD).

### Layer 3: Computer Architecture
* Build [`Hack9`](Hack9) with extended memory map:

 |address | memory|R/W|function|
 |-|-|-|-|
 |82xx|SD|W|write 8bit data to SD-card|
 |82xx|SD|R|read 8bit from SD-card (<0 busy)|

* Match `Hack9.pcf` pin numbering of iCE40-HX1K (FPGA) with jumper wires used to connect to SD card reader.

* Preload ROM of Hack9 with `asm/SD/SD.hack` and run test bench

### Layer 5: Jack-OS

* Compile and run [`SDTest`](SDTest)

### Layer 4: Assembler (bootstrapping)

* Implement bootloader [`asm/bootSD`](asm/bootSD) that is capable of loading hack-code directly from SD card to SRAM.

## Conclusion
We have a complete computer system capable of running Jack compiled code stored on a SD card.
