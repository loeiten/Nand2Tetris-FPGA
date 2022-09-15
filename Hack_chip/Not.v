/**
 * Not gate:
 * out = not in
 */
`default_nettype none

module Not(
    input wire in,
    output wire out
  );

  Nand NAND1(.a(in), .b(in), .out(out));

endmodule
