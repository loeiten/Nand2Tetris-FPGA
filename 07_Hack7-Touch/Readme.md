# Project: Hack7-Touch
MOD-LCD2.8-RTP has also a Touch-Panel controller on board (AR100). To connect to it we need to make several adjustments on every abstraction layer:

### Layer 1: Physical (outside FPGA)

The Touchpanel controller [AR1000](../dataseets/40001393C.pdf) on [MOD-LCD2.8RTP](../datasheets/MOD-LCD2.8RTP_revB.pdf) can be connected over several different modes (SPI,I2C,UART). We will use SPI mode, because it's fast and has minimal overhead. To use AR1000 in SPI mode the pin M1 on AR1000 has to be connected to +3.3V. This can be done with the solderjumper SJ1. Cut the connection to GND (green line) and solder the two right pads together.

SPI uses three wires (SDI, SDO, SCK). Two of these signals are connected to UEXT connector (SDI -> SDA(UEXT6)) and (SCK -> SCL(UEXT5)). The third line has to be connected with a solder jumper JS3 (SDO -> TXD(UEXT4)).

Check [datasheet AR1000](../dataseets/40001393C.pdf)

![](TouchJumper.png)

* Connect Touch-Panel controller to iCE40-HX1K-EVB with 3 more jumper wires (GPIO1-UEXT) and declare pins of iCE40HX1K (FPGA) in `Hack7.pcf`.

Check datasheet of iCE40-HX1K-EVB and MOD-LCD2.8RTP.

|wire|iCE40HX1K (FPGA)|iCE40HX1K-EVB (GPIO1)|MOD-LCD-2.8 (UEXT)|
|-|-|-|-|
|+3.3V|-|3|1|
|GND|-|2|2|
|SDO|7|13|4|
|SDI|8|15|6|
|SCK|9|17|5|

### Layer 2: Hardware (inside FPGA)
* Use shiftregister `ShifterL` from last project.
* Build and test the module [`Touch`](Touch).

### Layer 3: Computer Architecture
* Build [`Hack7`](Hack7) with extended memory map:

 |address | memory|R/W|function|
 |-|-|-|-|
 |8203|TP|W|write 8bit data to Touch-Panel|
 |8203|TP|R|read 8bit from Touch-Panel (<0 busy)| 

* Match `Hack7.pcf` pin numbering of iCE40-HX1K (FPGA) with jumper wires used to connect to Touch panel controller.

To test hardware:
* Preload ROM of Hack7 with [`asm/touch`](asm/touch) and run testbench `Hack7_tb.v`

### Layer 4: Jack-OS

* Implement and test [`TouchTest`](TouchTest) (Touch.jack)

## Conclusion
Touch panel running!