# Project: Hack8-Sound
We will add a speaker to Hack8. To control the speaker we implement two modules `Timer.v` and `Sound.v`. `Sound.v` will generate a square wave signals with controllable periodic time. The output of `Sound.v` goes directly to a GPIO pin, to which a small speaker is attached. `Timer.v` is just a counter to have a real time value. This is used to controll length of the played tones.

### Layer 1: Physical (outside FPGA)
* Connect a speaker to a GPIO and GND with two jumper wires.


|wire|iCE40HX1K (FPGA)|iCE40HX1K-EVB (GPIO1)|
|-|-|-|
|SOUND|10|19|
|GND|-|2|

**Note:** Use piezo speakers with high impedance (high resistance), so they don't draw much current. (When using speakers with electromagnetic coils put a resistance in series to reduce draw current (max. 20mA). This will reduce sound loudness.)


* declare pin of iCE40HX1K (FPGA) in `Hack8.pcf`.

### Layer 2: Hardware (inside FPGA)
* Implement and test module [`Sound`](Sound).
* Implement and test module [`Timer`](Timer).

### Layer 3: Computer Architecture
* Implement and test [`Hack8`](Hack8) with extended memory map:

 |address | memory|R/W|function|
 |-|-|-|-|
 |8204|Timer|R|real time in 0.1 ms from startup (overflows every...s)|
 |8205|Sound|R/W|square wave signal period in (..ms) or 0=mute| 

* Match `Hack8.pcf` pin numbering of iCE40-HX1K (FPGA) with jumper wires used to connect to Speaker.

To Test:
* Preload ROM of Hack8 with [`asm/timer`](asm/timer and run testbench
* Preload ROM of Hack8 with [`asm/sound`](asm/sound) and run testbench

### Layer 4: Jack-OS

* Implement and test [`SoundTest`](SoundTest) (Sound.jack)
* Modify `Sys.wait()` to use Timer and test with [`Blinky`](Blinky).
* Add all Jack-OS files to project [`Tetris`](Tetris) and play tetris.

## Conclusion
Hack can play the Tetris with Sound effects!
