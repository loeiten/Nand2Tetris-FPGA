
# Project: Hack5-LCD
We will connect a little 2.8 inch color LCD to Hack. The screen is controlled by a driver chip ILI9341V.  The connection has to be implemented over many different abstraction layers.

### Theory:
Read  this article on SPI communication:

http://elm-chan.org/docs/spi_e.html

### Layer 1: Physical Requirement (outside FPGA)
* Connect iCE40-HX1K-EVB with 6 jumper wires to driver chip ILI9341V and declare pins of iCE40HX1K (FPGA-chip) in `Hack6.pcf`.

|wire|iCE40HX1K (FPGA)|iCE40HX1K-EVB (GPIO1)|MOD-LCD-2.8 (UEXT)|
|-|-|-|-|
|+3.3V|-|1|1|
|GND|-|2|2|
|D/C|1|5|7|
|MOSI|2|7|8|
|SCK|3|9|9|
|CS|4|11|10|

### Layer 2: Hardware (inside FPGA)
* Build and test the shiftregister [`ShifterL`](ShifterL).
* Build and test the module [`LCD`](LCD).

### Layer 3: Computer Architecture
* Build [`Hack6`](Hack6) with memory map:

 |address | memory|R/W|function|
 |-|-|-|-|
 |8200|LCD|W|write 8bit command to LCD|
 |8201|LCD|W|write 8bit data to LCD|
 |8202|LCD|W|write 16bit data to LCD|
 |8200-8202|LCD|R|(=0) ready, (<0) busy|

* Match `Hack6.pcf` pin numbering of iCE40-HX1K (FPGA) with jumper wires used to connect to LCD.

To test:
* Preloaded ROM.v of Hack6 with [`asm/lcd](asm/lcd) and run test bench.

### Layer 4: Jack-OS

* Implement and test [`ScreenTest`](ScreenTest) (Screen.jack)
* Implement and test [`OutputTest`](OutputTest) (Output.jack)

### Layer 5: Application
* Implement and run [`Pong`](Pong).

## Conclusion
Hack plays Pong!
