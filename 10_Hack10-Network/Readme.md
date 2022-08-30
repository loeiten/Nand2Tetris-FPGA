# Project: Hack10-Network

In this project we will add network connectivity and implement a minimal HTTP-Server. For this we use MOD-ENC28J60.
> The ENC28J60 is a stand-alone Ethernet controller with an industry standard Serial Peripheral Interface (SPI). It is designed to serve as an Ethernet network interface for any controller equipped with SPI.
>
> *Datasheet*

### Layer 1: Physical (outside FPGA)

We connect the ENC28J60 with a 4 wire SPI to GPIO of FPGA.

|wire|iCE40HX1K (FPGA)|iCE40HX1K-EVB (GPIO1)|MOD-ENC28J60 (UEXT)|
|-|-|-|-|
|+3.3V|-|3|1|
|GND|-|4|2|
|MISO|12|21|7|
|MOSI|13|23|8|
|SCK|16|25|9|
|CEN|18|27|10|

### Layer 2: Hardware (inside FPGA)
Inside the FPGA we will implement a SPI-Module to read and write bytes to ENC28J60.
* Use shiftregister `ShifterL` from last project.
* Build and test the module `ENC28J60.v`.

### Layer 3: Computer Architecture
We map the SPI-Module to a memory, so Hack-CPU can read/write to ENC28J60.

* Build `Hack10.v` with extended memory map:

 |address | memory|R/W|function|
 |-|-|-|-|
 |82xx|Network|W|write 8bit data to ENC28J60|
 |82xx|Network|R|read 8bit from ENC28J60 (<0 busy)|

* Match `Hack10.pcf` pin numbering of iCE40-HX1K (FPGA) with jumper wires used to connect to ENC28J60 ethernet controller.

* Preload ROM of Hack10 with `asm/Network/Network.hack` and run testbench

### Layer 4: Jack-OS

* Use `NetworkTest` (NetworkTest.jack) to test ENC28J60 controller.
* Implement `ARP.jack` to send/answer arping request.
* Implement `Ethernet.jack` to read/write Ethernet header.
* Implement `IMCP.jack` to send/answer ping request.
* Implement `TCP.jack` to controll sockets.
* Implement `IP.jack` to read/write IP-header.
* Implement `HTTP.jack` to answer http requests.


## Project
* Implement all Layers 1-4 to connect ENC28J60 and run a minimal HTTP-Server.

## Conclusion
Hack connects to network and serves the following services:
* ARP
* IMCP
* HTTP
