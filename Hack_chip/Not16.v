/**
 * 16-bit Not:
 * for i=0..15: out[i] = not in[i]
 */
`default_nettype none

module Not16(
    input wire [15:0] in,
    output wire [15:0] out
  );

  // Translation of Not16.hdl
  Not Not0(.in(in[0]), .out(out[0]));
  Not Not1(.in(in[1]), .out(out[1]));
  Not Not2(.in(in[2]), .out(out[2]));
  Not Not3(.in(in[3]), .out(out[3]));
  Not Not4(.in(in[4]), .out(out[4]));
  Not Not5(.in(in[5]), .out(out[5]));
  Not Not6(.in(in[6]), .out(out[6]));
  Not Not7(.in(in[7]), .out(out[7]));
  Not Not8(.in(in[8]), .out(out[8]));
  Not Not9(.in(in[9]), .out(out[9]));
  Not Not10(.in(in[10]), .out(out[10]));
  Not Not11(.in(in[11]), .out(out[11]));
  Not Not12(.in(in[12]), .out(out[12]));
  Not Not13(.in(in[13]), .out(out[13]));
  Not Not14(.in(in[14]), .out(out[14]));
  Not Not15(.in(in[15]), .out(out[15]));

endmodule
