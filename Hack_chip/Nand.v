/**
 * Nand gate:
 * out = 0 if (a == 1 and b == 1)
 *       1 otherwise
 *
 * This module is implemented using Verilog primitives
 */

`default_nettype none

module Nand(
    input wire a,
    input wire b,
    output wire out
  );
  nand(out,a,b);
endmodule
