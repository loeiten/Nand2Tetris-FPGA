# Project 3: Hack3-SRAM

## Scope
We will connect Hack to external SRAM chip. Testing is done with `sram.asm` which reads bytes from UART and buffers them in SRAM.

## Physical requirement (outside FPGA)
The board iCE40HX1K-EVB comes with a SRAM chip capable of storing 256x16 bit (We will only use 64K x 16 bit due our addressbus, which is 16 bit wide). It is connected to the iCE40 chip over
* sram_addr 18 bit
* sram_data 16 bit (bidiretional inout)
* sram_cen (chip enable not)
* sram_oen (output enable not)
* sram_wen (write enable not)

**Note:** the 16 bit data bus is bidirectional and has therefor be connected over a tristate buffer.

See [datasheet of SRAM-chip](../datasheets/K6R4016V1D-TC10.pdf) for timing diagrams.

The control lines are:
* sram_cen = 0 continuosly.
While reading SRAM:
* sram_oen = 0 
* sram_wen = 1

On write cycle (when `loadSRAM=1`)
* sram_oen = 1
* sram_wen = 0


See [datasheet of iCE40-HX1K-EVB](../datasheets/iCE40-HX1K-EVB.pdf) for pin numbering of fpga connected to SRAM.

|wire|iCE40HX1K (FPGA)|
|-|-|
|sram_addr[0]|79|
|sram_addr[1]|80|
|sram_addr[2]|81|
|sram_addr[3]|82|
|sram_addr[4]|83|
|sram_addr[5]|85|
|sram_addr[6]|86|
|sram_addr[7]|87|
|...|...|


### Layer 3: Computer Architecture
* Build [`Hack3`](Hack3) with extender memory map:

 |address | memory|R/W|function|
 |-|-|-|-|
 |8196|r_sram_addr|R/W|SRAM address for next operation|
 |8197|r_sram_data|R|SRAM data at selected address|
 |8197|r_sram_data|W|start write procedure|


### Layer 4: Assembler

* Simulate and test [`asm/sram`](asm/sram) in real hardware.

## Conclusion

We can read and write data up to 64K x 256 bytes into external SRAM.
