/**
 * Not gate:
 * out = not in
 */
`default_nettype none

module Not(
    input wire in,
    output wire out
  );

  // Translation of Not.hdl
  Nand NandOut(.a(in), .b(in), .out(out));

endmodule
