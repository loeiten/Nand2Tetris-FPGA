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

  wire nandAB;

  /* Equivalent implementation:
   *
   */
  Nand NAND1(.a(a), .b(b), .out(nandAB));
  Not NOT(.in(nandAB), .out(out));

endmodule
