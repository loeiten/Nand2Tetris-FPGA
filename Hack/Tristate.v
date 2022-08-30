/**
* Tristate Buffer (16 bit)
*
* if (oe == 1) dataW is output to external pins, dataR = dataW
* if (oe == 0) pins are set to High-Z, dataR = external pins
*/
`default_nettype none

module Tristate(
	inout wire [15:0] pin,
	input wire [15:0] dataW,
	output wire [15:0] dataR,
	input wire oe
	);

	assign pin = (oe)? dataW: 16'bzzzzzzzzzzzzzzzz;
	assign dataR = pin;

endmodule
