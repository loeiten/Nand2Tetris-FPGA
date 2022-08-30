## Hack8.v

The modules `Sound.v` and `Timer.v` are mapped to memory addresses 8204-8205.

![](Hack8.png)

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
 |8203|Touch|W|write 8bit data to Touchpanel|
 |8203|Touch|R|last received byte, or (<0) if busy|
 |8204|Timer|R|real time since reset in 0.1 ms (ignores overflow)|
 |8205|Sound|R/W|preload value for Sound card. Set 0 to mute.|


## Hack8_tb.v
The Testbench `Hack8_tb.v` performs the following tasks:
* writes data: -10 to Soundcard
* waits for Timer incrementing to 1.
* mutes Sound card
![](Hack8_tb.png)

## Project

* Implement `Hack8.v`
* Preload `ROM.v` with `asm/sound/sound.hack`
* Simulate with testbench `Hack8_tb.v`
`$ apio sim`
* Compare output with `Hack8_tb.png`
* Connect Speaker to GPIO.
* Preload `ROM.v` with `asm/boot/boot.hack`
* Build and upload to iCE40-HX1K-EVB
 `$ apio upload`
* Run `boot.hack` on Hack8 in real hardware.
* Do software part of project `jack/SoundTest`
