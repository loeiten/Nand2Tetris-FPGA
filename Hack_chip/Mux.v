/**
 * Multiplexor:
 * out = a if sel == 0
 *       b otherwise
 */
`default_nettype none

module Mux(
    input wire a,
    input wire b,
    input wire sel,
    output wire out
  );

  // NOTE: MUX can be built from NOT, AND and OR, however, here we will built it
  //       entirely from NAND gates as described on:
  //       https://en.wikipedia.org/wiki/NAND_logic#MUX
  // Translation from Mux.hdl
  wire sNandS;
  wire bNandS;
  wire aNandSNandS;

  Nand SNandS(.a(s), .b(s), .out(sNandS));
  Nand BNandS(.a(b), .b(s), .out(bNandS));
  Nand ANandSNandS(.a(a), .b(sNandS), .out(aNandSNandS));
  Nand NanOut(.a(aNandSNandS), .b(bNandS), .out(out));

endmodule
