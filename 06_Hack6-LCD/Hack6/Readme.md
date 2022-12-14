## Hack6.v
Writing to memory address 8200 sends the lower 8 bits to LCD as command. Writing to memory address 8201/8202 sends 8/16 bit to LCD as data. Reading from memory address 8200-8202 returns 0 if LCD module is ready and <0 (sign bit set) if LCD module is busy.

![](Hack6.png)

### Memory Map

 |address | memory|R/W|function|
 |-|-|-|-|
 |0-3839  | RAM|R/W|R0--R15, static, stack, heap|
 | 8192    | but|R/W|0 = button pressed, 1 = button released|
 | 8193    | led|R/W|0 = led off, 1 = led on|
 | 8194    | UART-TX|R|-1 = busy, 0 = ready|
 | 8194    | UART-TX|W|write char to be send|
 | 8195    | UART-RX|R|>=0 received byte, <0 busy|
 | 8195    | UART-RX|W|write -1 to clear buffer|
 |8196|r_sram_addr|R/W|SRAM address for next operation|
 |8197|r_sram_data|R|SRAM data at selected address|
 |8197|r_sram_data|W|start write procedure|
 |8198|boot|W|start boot procedure|
 |8200|LCD-C|W|write 8bit command to LCD|
 |8201|LCD-D8|W|write 8bit data to LCD|
 |8202|LCD-D16|W|write 16bit data to LCD|
 |8200-8202|LCD|R|0 = ready, (<0) busy|


## Hack6_tb.v
The Test bench `Hack6_tb.v` performs the following tasks:
* writes Command: 55
* writes Data8: 55
* writes Data16: 11111

![](Hack6_tb.png)

## Project

* Implement `Hack6.v`
* Preload `ROM.v` with `asm/lcd/lcd.hack`
* Simulate with test bench `Hack6_tb.v`
`$ apio sim`
* Compare output with `Hack6_tb.png`
* Connect MOD-LCD-28 to iCE40-HX1K-EVB with jumper wires.
* Preload `ROM.v` with `asm/boot/boot.hack`
* Build and upload to iCE40-HX1K-EVB
 `$ apio upload`
* Run `boot.hack` on Hack6 in real hardware.
* Do software part of project `jack/ScreenTest`
