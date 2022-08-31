# Project 4: Hack4-BOOT

## Scope
Hack4 adds a bootlogic. At startup the bootloader `boot.asm` preloaded in ROM.v. starts reading bytes from UART. The bytes are stored in SRAM. At the end of transmission Hack resets itself and switches instruction memory to external SRAM.


### Layer 3: Computer Architecture
* Build [`Hack4`](Hack4) with extender memory map:

 |address | memory|R/W|function|
 |-|-|-|-|
 |8198|boot|W|reset Hack-CPU and switch instruction memory from internal ROM to external SRAM|

### Layer 5: Jack Application

To Test the boot circuit we can:
* Preload ROM (2048 words) with [`jack/boot`](jack/boot) of `Hack4`.
* Run `jack/boot` in real hardware and test with:
	- Upload and run [`asm/LEDs`](asm/LEDs) over UART
	- Upload and run [`asm/blinky`](asm/blinky) over UART
	- Upload and run [`asm/echo`](asm/echo) over UART

### Layer 4: Assembler
* Reimplement bootloader in assembler [`asm/boot`](asm/boot) fitting in 256x16 bit of ROM.
* Shrink ROM of Hack4 to 256 x 16bit and preload with `asm/boot`, extend RAM of Hack4 to 3840 x 16 bit.
* Run `asm/boot` in real hardware.
	- Upload and run `asm/LEDs` over UART
	- Upload and run `asm/blinky` over UAR
	- Upload and run `asm/echo` over UART

## Conclusion

We have a Hack System capable of uploading and running Hack-code up to 64K x 256 bytes.
