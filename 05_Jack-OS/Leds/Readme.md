## Leds - GPIO

This is the Jack-Version of `leds.asm`. It makes use of the Jack class `GPIO.jack` which will be part of our new Jack-OS.

### Sys.jack
`Sys.init()` is the entry function called after starting Jack-OS. It's a loop continuosly writing the button state to the led as in `leds.asm`.
```
class Sys {

    function void init() {
		do GPIO.init();
		while (true){
			do GPIO.setLed(GPIO.getBut());
		}		
		return;
	}
}

```

### GPIO.jack
The class `GPIO.jack` gives acces to GPIO pins connected to leds and buttons.
 
```
class GPIO {

	// init() function is called at startup to initialise GPIO-class
	function void init(){
	}
  
  	// returns the state of the buttons on bit 1 and bit 0
  	// 0 = button released
  	// 1 = button pressed
	function int getBut() {

   	}
	
	// returns the state of the leds on bit 1 and bit 0
  	// 0 = led off
  	// 1 = led on
	function int getLed() {

   	}

	// sets the state of the leds (bit 1 and bit 0)
	// 1 = led on
	// 0 = led off
   function void setLed(int state){
		
   }

}
```
## Project

* Implement `GPIO.jack`
* Test with `Sys.jack`
	- compile `GPIO.jack` to `GPIO.vm`
	- compile `Sys.jack` to `Sys.vm`
	- translate VM-code to assembler
	- translate assembler to hack code
	- run Hack5 on fpga
	- upload `out.hack`