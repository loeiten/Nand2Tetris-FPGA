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

  // NOTE: XOR can be built from NOT, AND and OR, however, here we will built it
  //       entirely from NAND gates as described on:
  //       https://en.wikipedia.org/wiki/NAND_logic#XOR
  wire aNandB;
  wire bNandANandB;
  wire aNandANandB;

  Nand ANandB(.a(a), .b(b), .out(aNandB));
  Nand BNandANandB(.a(b), .b(aNandB), .out(bNandANandB));
  Nand ANandANandB(.a(a), .b(aNandB), .out(aNandANandB));
  Nand NandOut(.a(aNandANandB), .b(bNandANandB), .out(out));

endmodule
