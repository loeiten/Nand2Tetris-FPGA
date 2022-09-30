/**
 * 8-way demultiplexor:
 * {a, b, c, d, e, f, g, h} = {in, 0, 0, 0, 0, 0, 0, 0} if sel == 000
 *                            {0, in, 0, 0, 0, 0, 0, 0} if sel == 001
 *                            etc.
 *                            {0, 0, 0, 0, 0, 0, 0, in} if sel == 111
 */

module DMux8Way(
    input wire in,
    input wire [2:0] sel,
    output wire a,
    output wire b,
    output wire c,
    output wire d,
    output wire e,
    output wire f,
    output wire g,
    output wire h
  );

  // Translation of DMux8Way.hdl
  wire aOrB;
  wire cOrD;
  wire eOrF;
  wire gOrH;

  DMux4Way DMux4WayABCDEFGH(.in(in), .sel(sel[2:1]), .a(aOrB), .b(cOrD), .c(eOrF), .d(gOrH));
  DMux DMuxAB(.in(aOrB), .sel(sel[0]), .a(a), .b(b));
  DMux DMuxCD(.in(cOrD), .sel(sel[0]), .a(c), .b(d));
  DMux DMuxEF(.in(eOrF), .sel(sel[0]), .a(e), .b(f));
  DMux DMuxGH(.in(gOrH), .sel(sel[0]), .a(g), .b(h));

endmodule
