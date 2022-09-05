/**
 * Exclusive-or gate:
 * out = not (a == b)
 */
`default_nettype none  // Disable implicit inputs

module Xor(
    input wire a,
    input wire b,
    output wire out
  );

  // NOTE: Verilog has "built in" chips for unary, binary and ternary operators
  // NOTE: This includes XOR (symbol ^ used)
  // NOTE: XOR can be built from NOT, AND and OR, however, here we will built it
  //       entirely from NAND gates as described on:
  //       https://en.wikipedia.org/wiki/NAND_logic#XOR
  wire aNandB;
  wire bNandANandB;
  wire aNandANandB;

  Nand NAND1(.a(a), .b(b), .out(aNandB));
  Nand NAND2(.a(b), .b(aNandB), .out(bNandANandB));
  Nand NAND3(.a(a), .b(aNandB), .out(aNandANandB));
  Nand NAND4(.a(aNandANandB), .b(bNandANandB), .out(out));

endmodule
