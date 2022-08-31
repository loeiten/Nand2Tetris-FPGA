# Project 5: Jack-OS

## Scope
Now that we have a Hack-CPU capable of uploading and running big Hack applocations it's time to implement Jack-OS core services: `Array.jack`, `Memory.jack`, `UART.jack`, `String.jack`, `Math.jack`, `GPIO.jack`, `Sys.jack`.

## Layer 5: Jack-OS
* Preload ROM with `asm/boot` of `Hack4`.
* Upload `Hack4` to iCE40-HX1K-EVB and run in real hardware.
* Do project [`LEDs`](LEDs) (Implement `GPIO.jack`)
* Do project [`Echo-String`](Echo-String) (Implement `UART.jack`, `String.jack`, `Memory.jack`, `Math.jack` and `Array.jack`)
* Do project [`Blinky`](Blinky) (Implement `Sys.wait()`)
* Do project [`Average`](Average) to test Full-Jack-OS.

## Conclusion

Hack runs applications written in Jack under Jack-OS.
