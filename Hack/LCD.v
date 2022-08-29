/** 
 * LCD-Screen
 * LCD is controlled over four line serial peripherial interface (SPI)
 * 
 * dcn	= high when 8 bit data is send / low when command is send.
 * cen = chip enable not is low to enable chip
 * mosi = master out slave in serial data line
 * sck = serial clock provided by master
 * miso = not connected, as we will only transmit to LCD and no receive
 *
 * If (loadC==1) & (run==0) in[7:0] is transmitted to spi interface of LCD with data/command line low.
 * If (loadD8==1) & (run==0) in[7:0] is transmitted to spi interface of LCD with data/command line high.
 * If (loadD16==1) & (run==0) in[15:0] is transmitted to spi interface of LCD with data/command line high.
 * run=1, when module is running, run=0 when module is ready to start next
 * transmission
 */

`default_nettype none
module LCD(
		input wire clk,			//clock 33.333333 MHz
		input wire loadC,		//start send command over SPI
		input wire loadD8,		//start send data (8 bits)
		input wire loadD16,		//start send data (16 bits)
		input wire [15:0] in,	//data to be send
		output wire [15:0] out,		//data to be send
		output wire dcn,		//SPI-line data/command not
		output wire cen,		//SPI-line chip enabled not
		output wire mosi,		//SPI-Line master out slave in
		output wire sck			//SPI-clock
);

// your implementation comes here:





endmodule
