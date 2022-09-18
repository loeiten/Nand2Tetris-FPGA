/**
 * 16-bit multiplexor:
 * for i = 0..15 out[i] = a[i] if sel == 0
 *                        b[i] if sel == 1
 */
`default_nettype none

module Mux16(
    input wire [15:0] a,
    input wire [15:0] b,
    input wire sel,
    output wire [15:0] out
  );

  // Translation of Mux.hdl
  Mux Mux0(.a(a[0]), .b(b[0]), .sel(sel), .out(out[0]));
  Mux Mux1(.a(a[1]), .b(b[1]), .sel(sel), .out(out[1]));
  Mux Mux2(.a(a[2]), .b(b[2]), .sel(sel), .out(out[2]));
  Mux Mux3(.a(a[3]), .b(b[3]), .sel(sel), .out(out[3]));
  Mux Mux4(.a(a[4]), .b(b[4]), .sel(sel), .out(out[4]));
  Mux Mux5(.a(a[5]), .b(b[5]), .sel(sel), .out(out[5]));
  Mux Mux6(.a(a[6]), .b(b[6]), .sel(sel), .out(out[6]));
  Mux Mux7(.a(a[7]), .b(b[7]), .sel(sel), .out(out[7]));
  Mux Mux8(.a(a[8]), .b(b[8]), .sel(sel), .out(out[8]));
  Mux Mux9(.a(a[9]), .b(b[9]), .sel(sel), .out(out[9]));
  Mux Mux10(.a(a[10]), .b(b[10]), .sel(sel), .out(out[10]));
  Mux Mux11(.a(a[11]), .b(b[11]), .sel(sel), .out(out[11]));
  Mux Mux12(.a(a[12]), .b(b[12]), .sel(sel), .out(out[12]));
  Mux Mux13(.a(a[13]), .b(b[13]), .sel(sel), .out(out[13]));
  Mux Mux14(.a(a[14]), .b(b[14]), .sel(sel), .out(out[14]));
  Mux Mux15(.a(a[15]), .b(b[15]), .sel(sel), .out(out[15]));

endmodule
