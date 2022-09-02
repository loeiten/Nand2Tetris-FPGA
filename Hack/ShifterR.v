/**
* 10 bit Shiftregister used by UART
* if (load == 1) out[t+1] = in[t]
* else if (shift == 1) out[t+1] = out[t] shifted one bit to right with inMSB
* shifted in the register as most significant bit.
*/
`default_nettype none

module ShifterR(
    input wire clk,
    input wire [9:0] in,
    output wire [9:0] out,
    input wire load,
    input wire shift,
    input wire inMSB
  );





endmodule
