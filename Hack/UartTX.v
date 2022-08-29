/**
* Uart_tx controls transmission of bytes over UART
*
* if (load == 1) & (run == 0) Uart_tx starts transmission:
*    1. set run = 1
*    2. serial output in[7:0] to tx:
*       1 startbit (0), 8 databits(LSB...MSB) and 1 stopbit(1) with
*       115200 Baud (bits per second)
*
* At end of transmission is finished set run = 0
*/

`default_nettype none
module UartTX(
	input wire clk,
	input wire load,
	input wire [7:0] in,
	output wire tx,
	output wire [15:0] out
);






endmodule
