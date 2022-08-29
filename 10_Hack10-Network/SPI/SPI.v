/** 
* SPI controller.
* load=1: (write to controller)
* in[7:0] data
* in[14] cs
* in[15] run
*
* read from controller:
* out[7:0] data
* out[14] cs
* out[15] run
*
* if (load) & (in[15]) & (run) transmission of in[7:0] is started with
* cs (chip select) set to in[14] and run is set to 1.
*
* When transmssion is finished out[7:0] holds received byte and run = 0.
*
* if (load) & (~in[15]) cs (chip select) is set to in[14] without
* sending/receiving data (used to initialise SD-Card in SPI-Mode).
*/
`default_nettype none

module SPI(
	input wire clk,
	input wire load,
	input wire [15:0] in,
	output wire [15:0] out,
	output wire cs,
	output wire mosi,
	input wire miso,
	output wire sck
);
	wire start;
	assign start = ready & load;
	Switch CEN(.clk(clk),.on(start & in[8]),.off(start & ~in[8]),.out(cs));
	wire run;
	wire ready;
	assign ready = ~run;
	Switch DFF_RUN(.clk(clk),.on(start & in[9]),.off(stop),.out(run));

	wire [15:0] bits;
	PC BITS(.clk(clk),.in(16'b0000000000000000),.reset(start),.load(1'b0),.inc(run),.out(bits));
	assign sck = bits[0];
	wire sample;
	assign sample=run&~sck;
	wire inLSB;
	Bit LATCH(.clk(clk),.in(miso),.load(sample),.out(inLSB));

	wire shift;
	assign shift=run&sck;	
	wire [7:0] data;
	ShifterL SHIFTER(.clk(clk),.in(in[7:0]),.out(data),.load(start),.shift(shift),.inLSB(inLSB));
	assign mosi=data[7];

	
	wire stop;
	assign stop=bits[3]&bits[2]&bits[1]&sck;

	assign out = {run,7'b0000000,data};

endmodule
