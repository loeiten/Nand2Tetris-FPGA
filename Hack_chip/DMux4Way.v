/**
 * 4-way demultiplexer:
 * {a, b, c, d} = {in, 0, 0, 0} if sel == 00
 *                {0, in, 0, 0} if sel == 01
 *                {0, 0, in, 0} if sel == 10
 *                {0, 0, 0, in} if sel == 11
 */

module DMux4Way(
    input wire in,
    input wire [1:0] sel,
    output wire a,
    output wire b,
    output wire c,
    output wire d
  );

  // Translation of DMux4Way.hdl
  wire aOrB;
  wire cOrD;

  DMux DMuxABCD(.in(in), .sel(sel[1]), .a(aOrB), .b(cOrD));
  DMux DMuxOutAB(.in(aOrB), .sel(sel[0]), .a(a), .b(b));
  DMux DMuxOutCD(.in(cOrD), .sel(sel[0]), .a(c), .b(d));

endmodule
