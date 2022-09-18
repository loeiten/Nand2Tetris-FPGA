/**
* Or gate:
* out = 1 if (a == 1 or b == 1)
*       0 otherwise
*/
`default_nettype none

module Or(
    input wire a,
    input wire b,
    output wire out
  );

  // NOTE: OR can be built from NOT and AND, however, here we will built it
  //       entirely from NAND gates as described on:
  //       https://en.wikipedia.org/wiki/NAND_logic#OR
  wire aNandA;
  wire bNandB;

  Nand ANandA(.a(a), .b(a), .out(aNandA));
  Nand BNandB(.a(b), .b(b), .out(bNandB));
  Nand NandOut(.a(aNandA), .b(bNandB), .out(out));

endmodule
