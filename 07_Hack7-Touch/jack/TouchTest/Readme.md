## Touch.jack
`Touch.jack` handels low level communication with touch panel controller as described in Datasheet AR100.

#### function void init()
initialize AR100 after power up by sending command ENABLE_TOUCH: 0x55,0x01,0x12 (hex) (compare datasheet p. 20+34). Ignore Answer of AR100.

#### function int getX()

return x-coordinate of last touch event (12 bit).

#### function int getY()

return y-coordinate of last touch event (12 bit).

#### function boolean getPressed()

returns true if last touch event was penDown.

returns false if last touch event was penUp.

return y-coordinate of last touch event (12 bit).

#### function boolean update()

receive next touch event composed of 5 consecutive bytes, holding: 0b1000000P, 0b0XXXXXXX, 0b000XXXXX, 0b0YYYYYYY, 0b000YYYYY (compare datasheet p. 19). returns true on success. Return false, if received bytes are not a valid touch event. 

#### function int send(int byte)

start transmission of byte to touch panel. wait untill transmission ends and return received byte.


## Project
* Read datasheet of AR100 (p. 19+20)
* Implement `Touch.jack` with suggested API.
* compile `TouchTest`
* run `Hack7.v` in real hardware with `asm/boot` preloaded to `ROM.v`
* upload to TouchTest to Hack7
* check if Touchpanel works.