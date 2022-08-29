/** 
 * input clk_in: clock input 100 MHz
 * output clk: clock output 33.333333 MHz
 *
 * Implementation with 2 bit DFF-counter:
 * counter | 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 ....
 * clk     | 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 ....
 */

`default_nettype none

module Clock(
	input wire in,			//external clock 100Mz
	output wire out			//Hack clock 33.333333 MHz
);

	wire time1;
	wire time0;
	DFF TIME1(.clk(in),.in(time0),.out(time1));
	DFF TIME2(.clk(in),.in(time1),.out(out));
	Or OR(.a(time1),.b(out),.out(wtf));
	wire wtf;
	Not NOT(.in(wtf),.out(time0));

endmodule
