# Requirement

## FPGA-Board

In this project we will implement the Hack computer of the Nand2Tetris course in real hardware.
This is done with a development board featuring a so called field programmable array (FPGA).
The FPGA is a small piece of silicon holding lots of logic cells (LC) and [block RAM](https://nandland.com/lesson-15-what-is-a-block-ram-bram/) (BRAM), which can be routed programmatically.

![FPGA development board](figs/FPGA.png)

On a typical FPGA-development board you will find:

|Component | Description|
|-|-|
|FPGA-chip ([iCE40](https://en.wikipedia.org/wiki/ICE_(FPGA)#iCE40_(40_nm))) | Holds logic cells and block RAM, which can be routed programmatically |
|Serial RAM | Holds the bit stream data, which is a binary representation of the circuits you want to implement on the FPGA.  At startup FPGA loads bit stream from serial RAM and configures its logic cells to become the machine you want the FPGA to be. |
| USB (A) | Some boards have a USB connector. This is needed to upload the bit stream file to the serial RAM. |
| Programmer (B) | Boards without a USB connector need an external programmer to upload code to the board. |
| LED | Most development boards come with some LEDs. This are user programmable and can be used to enter data or for debugging. |
| BUT | Most development boards come with some buttons. This are user programmable and can be used to enter data or for debugging. |
| GPIO | All boards come with general purpose in-/output pins. This pins can be used to connect external hardware. We will use this pins to connect an LCD screen, SD-Card, Speaker and Touch-panel. |
| SRAM | Some boards have a static RAM chip on board.  This is useful if you need more memory is than what is available on the block RAM inside the FPGA. If you want to run Tetris or Pong on your Hack, you should consider to look for a board with SRAM. |

In this tutorial we use FPGA-boards from [Olimex](https://www.olimex.com), which have the nice property of having SRAM (256x16bit) on board.

|Board|FPGA|LC|BRAM|SRAM|
|--|---|--|--|--|
|Olimex iCE40-HX1K-EVB|iCE40-HX1K|1280|64K Bits|256K x 16 bit|
|Olimex iCE40-HX8K-EVB|iCE40-HX8K|7680|128K Bits|256K x 16 bit|

Our final implementation of Hack needs ~1200 Logic cells!
So the smaller (nicer form factor) and cheaper iCE40HX1K-EVB is ok.
The BRAM of the smaller board translates to 4K x 16 bit of RAM for stack/heap of Hack and the external SRAM is used to implement a 64K x 16 bit instruction memory, which can be loaded with Hack code at boot time.

## Tools

The modules of our Hack computer (ALU, CPU, Register, Memory, IO) are implemented in Verilog, a standard hardware description language similar to HDL from Nand2Tetris.
So we need tools to translate Verilog-code to the so called bit stream, which is a binary representation of all the wires between the logic cells we want to activate.
Finally we need tools to upload the bit stream file to the FPGA board.

We will use [iCE40-FPGA](https://en.wikipedia.org/wiki/ICE_(FPGA)#iCE40_(40_nm)) from Lattice Semiconductors, because they have the nice property that there exists a complete free and open source toolchain [Project Icestorm](http://www.clifford.at/icestorm/) for programming:

| Tool | Description |
|-|-|
|[`YoSYS`](https://yosyshq.net/yosys/) | Register-transfer level (RTL) [syntesization](https://www.fpga4fun.com/FPGAsoftware5.html) of Verilog code to  to a gate-level [netlist](https://en.wikipedia.org/wiki/Netlist).|
|[`nextpnr`](https://github.com/YosysHQ/nextpnr) | A [place-and-route](https://www.fpga4fun.com/FPGAsoftware5.html) tool.|
| [`iceprog`](https://hedmen.org/icestorm-doc/icestorm.html#iceprog-Invocation) | Simple programming tool for [FTDI](https://ftdichip.com)-based [Lattice](https://www.latticesemi.com) [iCE](https://en.wikipedia.org/wiki/ICE_(FPGA)) programmers which can read, write and erase the flash and write the SRAM of an FPGA.|
| [`gtkwave`](http://gtkwave.sourceforge.net) | A wave viewer which simulates and visualizes signals in FPGA circuits.|

![Hardware and software](figs/soft.png)

To run Hack we also need some Hack-code.
The simpler projects like a blinking LED can be programmed directly in Assembler.
Harder tasks like the driver for the LCD-screen are programmed in Jack, translated for the virtual machine and finally compiled to Hack code.

## Getting started

In order to start we need both some hardware and some software.

### Buy the hardware

| Component | Description | Needed for |
|-|-|-|
| [iCE40HX1K-EVB](https://www.Olimex.com/Products/FPGA/iCE40/) or [iCE40HX8K-EVB](https://www.Olimex.com/Products/FPGA/iCE40/) | iCE40 FPGA board | Flashing the Hack hardware to the machine |
| [Olimexino-32u4](https://www.Olimex.com/Products/Duino/AVR/OLIMEXINO-32U4/open-source-hardware) | FPGA programmer | Instructing the FPGA how to behave |
| [CABLE-IDC10-15cm ribbon](https://www.olimex.com/Products/Components/Cables/CABLE-IDC10-15cm/) | Cable | Connecting between [UEXT](../../datasheets/UEXT_rev_B.pdf)s |
| 2 x [JW-200x10-FF](https://www.olimex.com/Products/Breadboarding/JUMPER-WIRES/JW-200x10-FF/) | Female-to-female jumper wires | Connecting through GPIO pins or [UEXT](../../datasheets/UEXT_rev_B.pdf)s |
| [MOD-SDMMC](https://www.Olimex.com/Products/Modules/Interface/MOD-SDMMC/open-source-hardware) | SD-Card connector | Needed in project 3-5 to store larger Hack files |
| [SD card](https://www.olimex.com/Products/Components/Storage/SD-MMC-4GB-CLASS10/) | SD-Card | SD-Card to store larger Hack files |
| [USB A to USB Mini B](https://www.olimex.com/Products/Components/Cables/CABLE-USB-A-MINI-1.8M/) |  USB A to USB Mini B | Connecting the programmer to the PC |
| [MOD-LCD2.8RTP](https://www.Olimex.com/Products/Modules/LCD/MOD-LCD2-8RTP) | 2.8 Inch LCD color screen with resistive touch panel | Display for the Hack machine |
| [Piezoelectric loudspeakers](https://smile.amazon.com/gp/product/B08SLZBKCH/ref=ppx_od_dt_b_asin_title_s00?ie=UTF8&psc=1) | For producing sound | Needed for project 8 |
| [MOD-ENC28J60](https://www.olimex.com/Products/Modules/Ethernet/MOD-ENC28J60/) | Ethernet controller | Project 10 |
| [SY0605E](https://www.olimex.com/Products/Power/SY0605E/) | 5V supply adapter | Powering the FPGA (the programmer is powered by the USB connection) |
| (Optional, I never got mine to fit) [RUBBER-FEETS-B](https://www.olimex.com/Products/Components/Misc/RUBBER-FEETS-B/) | Rubber feet | Electrical isolation |

Check the bill of material and consider to buy at Olimex Ltd., the company with the highest number of registered OSHW-projects.

![Shopping cart](figs/BOM.png)

The payment solution might be a bit different from what you are used to, but it all checks out.

### Install the software

We will install both [Project Icestorm](http://www.clifford.at/icestorm/) for flashing the FGPA and [apio](https://github.com/FPGAwars/apio) for simulating (and possibly also flash to the FPGA).

#### Installing the dependencies

We can install the dependencies for [Project Icestorm](http://www.clifford.at/icestorm/) in the following way

##### Dependencies on Linux

```bash
sudo apt-get install build-essential clang bison flex libreadline-dev \
gawk tcl-dev libffi-dev git mercurial graphviz \
xdot pkg-config python3 libftdi-dev gtkwave
```

##### Dependencies on MacOS

```bash
brew install libftdi eigen tcl-tk bison libffi
```

A few extra steps are required to install `gtkwave` on MacOS:
Install by typing

```bash
brew install gtkwave
# From https://ughe.github.io/2018/11/06/gtkwave-osx
cpan install Switch  # Go with the standard option
```

followed by

```bash
perl -V:'installsitelib'
```

If this does not return `/Library/Perl/5.*/`, do

```bash
sudo cp /usr/local/Cellar/perl/5.*/lib/perl5/site_perl/5.*/Switch.pm /Library/Perl/5.*/
```

The following should now work

```bash
/Applications/gtkwave.app/Contents/Resources/bin/gtkwave
```

Add the following to either `~/.bash_profile` or `~/.zshrc`

```bash
export PATH=/Applications/gtkwave.app/Contents/Resources/bin/:$PATH
```

#### Build and install Project Icestorm

Installing the IceStorm Tools (`icepack`, `icebox`, `iceprog`, `icetime`, chip databases):

```bash
git clone https://github.com/cliffordwolf/icestorm.git icestorm
cd icestorm
make -j$(nproc)
sudo make install
cd ..
```

Installing Arachne-PNR (the place&route tool):

```bash
git clone https://github.com/cseed/arachne-pnr.git arachne-pnr
cd arachne-pnr
make -j$(nproc)
sudo make install
cd ..
```

Installing Yosys (Verilog synthesis):

```bash
git clone https://github.com/cliffordwolf/yosys.git yosys
cd yosys
make -j$(nproc)
sudo make install
cd ..
```

If you go with Olimex boards you additionally have to install the programmer software `iceprogduino` on your Olimexino-32u4.

```bash
git clone https://github.com/OLIMEX/iCE40HX1K-EVB.git
cd iCE40HX1K-EVB/programmer/iceprogduino
make
sudo make install
```

We will see how to use this in [Hello, world using Olimex](hello_world_Olimex).

#### Install apio

Apio (pronounced [ˈa.pjo]) is a multi platform toolbox, with static pre-built packages, project configuration tools and easy command interface to verify, synthesize, simulate and upload your Verilog designs.

Install with

```bash
pip install -U apio
apio install -a
```

Apio currently runs [Icarus verilog](https://iverilog.fandom.com/wiki/Main_Page) under the hood.

#### Jack-Hack-tools

You will also need some tools for the Jack programming language and the Hack hardware.
The `JackCompiler`, `VirtualMachine Translator` and `Assembler for Hack` should be developed by yourself.
Follow guidelines at [Nand2Tetris](https://www.Nand2Tetris.org/).

### Do some Verilog examples

There is no need to learn much Verilog.
Just dig into the example `Xor` and learn how to "translate" your HDL-files from Nand2Tetris into Verilog.

If you like to have some Verilog-background I recommend to do the [Verilog tutorial for beginners](https://www.chipverify.com/verilog/verilog-tutorial).

There is also the tutorial of Juan González-Gomez (Obijuan), which starts at absolute beginners level [open-FPGA-Verilog-tutorial](https://github.com/Obijuan/open-fpga-verilog-tutorial/wiki/Home_EN).
This is mainly written in spanish, but clicking the `(EN)` buttons gets you to the English pages (this also applies for the index).

### Project

* (Optional, but recommended if you go for the Olimex products described above) [Hello, world in Olimex](hello_world_Olimex)
* [Build and test module `Xor`](chip_Xor)
