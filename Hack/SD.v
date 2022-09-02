/**
* SD connects hack to a sd-card reader
*
* if (load == 1) & (run == 0) transmission of in[7:0] is started and run is
* set to 1.
* When transmssion is finished out[7:0] holds received byte and run = 0.
* if (load == 1) & (run == 0) & (in[15] == 1) cen (chip enabled not) is set to
* 1 during transmssion (used to initialise SD-Card in SPI-Mode).
*/
`default_nettype none

module SD(
    input wire clk,
    input wire load,
    input wire [15:0] in,
    output wire [15:0] out,
    output wire cen,
    output wire mosi,
    input wire miso,
    output wire sck
  );

  // your implementation comes here:



endmodule
