/**
* UartRX receives bytes over UART
*
* if (ready = 1) and (rx = 0): modules starts receiving a byte:
* 	1. set ready = 0
* 	2. serial receive at line rx:
*      1 startbit(0), 8 data bits (LSB...MSB) and 1 stopbit(1) with
*      115200 Baud (bits per second)
*
*  after 9-bit out[7:0] holds the received byte with out[15] = 0
*  (valid byte)
*  
*  if (reset = 1) out[15] = 1 (receive buffer not valid)
*
*  Important implementation detail:
*  rx must be registered in a DFF!
*/
`default_nettype none

module UartRX(
	input wire clk,
	input wire reset,
	input wire rx,
	output wire [15:0] out
);





endmodule
