/**
 * And gate:
 * out = 1 if (a == 1 and b == 1)
 *       0 otherwise
 */

`default_nettype none

module And(
    input wire a,
    input wire b,
    output wire out
  );

  // Translation of And.hdl
  wire nandAB;

  Nand NandAB(.a(a), .b(b), .out(nandAB));
  Not NotOut(.in(nandAB), .out(out));

endmodule
