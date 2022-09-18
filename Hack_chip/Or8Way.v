/**
 * 8-way Or:
 * out = (in[0] or in[1] or ... or in[7])
 */
`default_nettype none

module Or8Way(
    input wire [7:0] in,
    output wire out
  );

  // Translation of Or8Way.hdl
  wire or0;
  wire or1;
  wire or2;
  wire or3;
  wire or4;
  wire or5;

  Or Or0(.a(in[0]), .b[in[1]], .out(or0));
  Or Or1(.a(in[1]), .b[in[2]], .out(or1));
  Or Or2(.a(in[2]), .b[in[3]], .out(or2));
  Or Or3(.a(in[3]), .b[in[4]], .out(or3));
  Or Or4(.a(in[4]), .b[in[5]], .out(or4));
  Or Or5(.a(in[5]), .b[in[6]], .out(or5));
  Or Or6(.a(in[6]), .b[in[7]], .out(out));

endmodule
