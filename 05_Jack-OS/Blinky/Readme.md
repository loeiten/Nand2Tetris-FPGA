## Blinky
Jack version of blinky using Jack-OS. Leds are incremented every 0.5 seconds.

### Main.jack
```
class Main{
	function void main(){
		while (true){
			do Sys.wait(500);
			do GPIO.setLed(GPIO.getLed()+1);
		}
		return;
	}
}
```
## Project
* Implement `Sys.wait()` in your `Sys.jack` classe
* Test with `Main.jack`
