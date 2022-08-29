/**
* Sound
* generates a square signal whith frequency depending on the input in[16].
*
* Implementation: use two counters:
* 1. a prescaler with 4 bits to have an ovf-signal every 16 cycles
* 2. a counter which increments every 16 cycles (ovf of prescaler)
* when counter2  ovfs: 1. counter2 is preloaded with in, and 2. out toggles
* this way out has a square signal with frequency dependending on in.
* 
* when in=0 out = 0 (mute)
*/

`default_nettype none
module Sound(
		input wire clk,
		input wire [15:0] in,
		output wire out
);





endmodule
