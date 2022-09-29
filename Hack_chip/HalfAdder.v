/**
 * Computes the sum of two bits.
 */
`default_nettype none
module HalfAdder(
    input wire a,		//1-bit input
    input wire b,		//1-bit input
    output wire sum,	//Right bit of a + b
    output wire carry	//Lef bit of a + b
  );

  // Translation of HalfAdder.hdl
  Xor XorSum(.a(a), .b(b), .out(sum));
  And AndCarry(.a(a), .b(b), .out(carry));

endmodule
