## jack/echo

Jack implementation of echo over UART.

### Sys.jack
The class Sys.jack contains the function init(), which by convention is the entry point of the VirtualMachine running jack compiled code.
```
class Sys
	function void init(){
		do UART.init();
		while (true){
			do UART.writeChar(UART.readChar());
		}
	}
}

```

### UART.jack
UART.jack provides access for serial UART interface.
#### function void init()
do some init stuff.
#### function int readChar()
wait until a byte is received an return it
#### function void writeChar(int c)
wait until UART-Transmit is ready then start transmition of the byte c.

### Project
* Implement the OS-class `UART.jack`.
* Compile with `$ make`. This runs Jack-compiler, VM-Translator and Assembler generating `out.hack`.
* Preload `ROM.v` with `out.hack`.
* Simulate with `Hack2_tb.v`
* Build and upload to FPGA.
* run a terminal connected to UART to test echo.
`screen /dev/ttyACM0`
