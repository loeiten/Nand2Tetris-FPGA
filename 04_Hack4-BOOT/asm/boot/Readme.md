## asm/boot

Rewrite `jack/boot` directly in assembler `boot.asm`. Without the overhead of Jack-OS the new bootloader should fit into 256x16 bit, which is the smallest BRAM vell available on iCE40. This saves us BRAM, so we can extend RAM of Hack to 3840x 16 bit (15 BRAM cells).

## Project
* Implement `boot.asm`
* Shrink ROM.v to 1 BRAM cell (256x16 bit)
* Extend RAM.v to 15 BRAM cell (3840x16 bit)
* Simulate Hack4 with `asm/boot.hack` preloaded in ROM
* Run `asm/boot/.hack` on Hack4 in real hardware:
* Upload assembler programms with bootloader:

```
$ cat asm/LEDs/LEDs.hack > /dev/ttyACM0
$ cat asm/blinky/blinky.hack > /dev/ttyACM0
$ cat asm/echo/echo.hack > /dev/ttyACM0
```
