/**
* Touch communicats to the touch panel over SPI (serial peripherial
* interface). SPI is done over 3 lines (miso,mosi,sck) bytewise (8 bits)
* 
* if (load == 1) & (run == 0) serial transmission of in is started and run
* is set to 1.
* When transmssion is finished run = 0 and out holds the received byte.
* 
* Touchpanel must be clocked 8 times slower than the system clk (33.333333MHz)
*/

`default_nettype none

module Touch(
	input wire clk,
	input wire load,
	input wire [7:0] in,
	output wire [15:0] out,
	output wire mosi,
	input wire miso,
	output wire sck
);





endmodule
