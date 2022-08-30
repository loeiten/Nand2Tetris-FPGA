## Echo-String

Echo-String is a more soffisticated version of echo, which reads Strings over UART-RX terminated by a newline-char `\n`. After buffering the String in memory, the whole String is echoed to UART-TX. This is done using Jack-OS (Math, Memory, String, Array, Sys).

### Main.jack
Main.main() is called by Sys.init() after Jack-OS is initialized. It receives Strings over UART-RX and echoes them to UART-TX.
```
class Main{
	function void main(){
		while (true){
			do UART.printString(UART.readString());
			do UART.println();
		}
		return;
	}
}

```

### Sys.jack
`Sys.jack` needs little modification from original nand2tetris:

* `Sys.wait()` must be adapted to CPU speed (see project blinky).
* `Sys.error()` should output to UART using `UART.printString()`.

### UART.jack
Extend your UART.jack class by implementing `printString()` and `input()`.
```
class UART {

	// called at startup by Sys.init() to initialize UART-class
	function void init(){

	}

  	// returns last char read over UART-RX
	function int readChar() {

	}

	// writes char c to UART-TX, after waiting for UART-TX to be ready
   	function void writeChar(int c){

	}

	// prints the String s char by char to UART-TX
	function void printString(String s){

	}

	// prints a String representation of the integer i to UART-TX
    function void printInt(int i) {

	}

	// prints the new line char to UART-TX (linux ascii 10, windows like ascii 13)
	function void println(){

	}

	// reads a String terminated by new line from UART-RX and returns the integer value of the String.
	function int readInt(){

	}

	// reads a String terminated by newline char from UART-TX and returns the String withou the terminal newline char.
	function String readString(){

	}
}
```

### Memory.jack
Memory.jack has to be adapted because RAM is smaller then original nand2tetris RAM. Proposed Memory map:

|Address|Memory|
|-|-|
|0-15|R0-R15 (SP,LCL,ARG,THIS,THAT,...)|
|16-255| static|
|256-1023| stack|
|1024-3839| heap (stores objects: arrays, String ...)|

### Array.jack
Original nand2tetris version of `Array.jack` can be used without modification.

### String.jack
Original nand2tetris version of `String.jack` can be used with minor changes to values for `newLine()` and `backSpace()`. Check what chars your terminal program sends over UART (linux char-10, windows char-13).
**Tipp:** Modify Echo-char to echo `c+32` then open a terminal program and see what you get back sending the chars `newline`, `backspace` `enter` or whatever.

### Math.jack
Original nand2tetris version of `Math.jack` can be used without modification.


## Project
* Copy your version of `Array.jack` to project folder.
* Copy your version of`Math.jack` to project folder.
* Copy your version of`String.jack` to project folder.
* Copy your version of`Memory.jack` to project folder.
* Copy your version of`Sys.jack` to project folder.
* Do the changes described above.
* Implement `UART.jack`
* Run supplied `Main.jack` class on fpga

**Tipp:** If you are hunting for bugs, write some debug code that outputs debug infos to leds or to UART.
