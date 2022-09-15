/**
* 8-bit Shiftregister used by SPI
* if (load == 1) out[t+1] = in[t]
* else if (shift == 1) out[t+1] = out[t] shifted by one bit to left (inMSB is
* shifted in the register at Lowest significant bit)
*/
`default_nettype none

module ShifterL(
    input wire clk,
    input wire [7:0] in,
    input wire load,
    input wire shift,
    output wire [7:0] out,
    input wire inLSB
  );





endmodule
