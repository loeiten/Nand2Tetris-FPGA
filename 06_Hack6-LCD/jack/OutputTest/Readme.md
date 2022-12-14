## Output.jack
`Output.jack` has to be rewritten to fit our little LCD screen with new specifications due to different pixel sizes.

A library of functions for writing text on the screen.
The Hack physical screen consists of 320 rows of 240 pixels each. The library uses a fixed font, in which each character is displayed within a frame which is 11 pixels high (including 1 pixel for inter-line spacing) and 8 pixels wide (including 2 pixels for inter-character spacing). The resulting grid accommodates 29 rows (indexed 0..28, top to bottom) of 30 characters each (indexed 0..29, left to right). The top left  character position on the screen is indexed (0,0). A cursor, implemented as a small filled square, indicates where the next character will be displayed.

**Tipp:** Use `Screen.setAddrWindow()` to select the window corresponding to one char. Then use `Screen.paintPixel()` and `Screen.clearPixel()` according to pitmap ob char.

## Project
* run `Hack6.v` in real hardware with `asm/boot` preloaded to `ROM.v`
* Implement `Output.jack` with new specifications.
(Use Screen.setAddressWindow(), Screen.paintPixel() and Screen.clearPixel())
* compile `OutputTest`
* upload to Hack
* check if LCD shows the following:

![](output.jpg)
