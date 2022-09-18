/**
 * Computes the sum of three bits.
 */
`default_nettype none

module FullAdder(
    input wire a,		//1-bit input
    input wire b,		//1-bit input
    input wire c,		//1-bit input
    output wire sum,	//Right bit of a + b + c
    output wire carry	//Left bit of a + b + c
  );

  // Translation of HalfAdder.hdl
  wire aB;
  wire c1;
  wire c2;

  HalfAdder C1(.a(a), .b(b), .sum(aB), .carry(c1));
  HalfAdder HalfAdderSum(.a(aB), .b(c), .sum(sum), .carry(c2));
  Xor XorCarry(.a(c1), .b(c2), .out(carry));

endmodule
