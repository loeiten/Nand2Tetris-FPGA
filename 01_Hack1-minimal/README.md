# Project 1: Hack1-minimal

## Scope

Build the Hack-CPU connected to the two buttons and the two LEDs of iCE40-HX1K-EVB.
This way we can communicate with hack-CPU at runtime pressing buttons and looking at LEDs.
We write small assembler programs to test CPU, buttons and LEDs.

## Physical requirement (outside FPGA)

The board iCE40-HX1K-EVB has a crystal clock oscillator of 100MHz on board, which will be used to generate to clock signal.
Our Hack System needs slower clock+rate of 33.333333 MHz, so we will divide the clock frequency with hardware module (to be implemented in Verilog).
The board iCE40-HX1K-EVB comes with two buttons and to LEDs connected to FPGA (refer to [datasheets/iCE40HX1K-EVB](../datasheets/iCE40HX1K-EVB_Rev_B.pdf)).
We will connect our Hack system with the buttons and the LEDs to have possibility of input and output.

|wire|iCE40HX1K (FPGA)|
|-|-|
|clk_in (100MHz)|15|
|but[0]|41|
|but[1]|42|
|led[0]|40|
|led[1]|51|

* Add the pin numbering to `Hack1.pcf`.

### Layer 2: Hardware (inside FPGA)

* Implement and simulate [`ALU`](chip_ALU).
* Implement and simulate [`Memory`](chip_Memory).
* Implement and simulate [`Clock`](chip_Clock).
* Implement and simulate [`PC`](chip_PC).
* Implement and simulate [`CPU`](chip_CPU).

### Layer 3: Computer Architecture

* Build [`Hack1`](chip_Hack1) with the memory map:

 |address | memory|R/W|function|
 |-|-|-|-|
 |0-2047| RAM|R/W|R0--R15, static, stack, heap|
 | 8192 | but|R/W|0 = button pressed, 1 = button released|
 | 8193 | led|R/W|0 = led off, 1 = led on|

### Layer 4: Assembler

* Run [`asm/led`](asm/led) in simulation and real hardware on Hack1.
* Run [`asm/blinky`](asm/blinky) in simulation and real hardware on Hack1.

## Conclusion

The Hack-CPU is running!
