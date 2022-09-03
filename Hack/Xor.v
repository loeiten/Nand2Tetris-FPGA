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

  wire notA;
  wire notB;

  // Invert the input signals
  Not NOT1(.in(a), .out(notA));
  Not NOT2(.in(b), .out(notB));

  // We use temporary wires for the and output
  wire w1;
  wire w2;
  And AND1(.a(a), .b(notB), .out(w1));
  And AND2(.a(notA), .b(b), .out(w2));

  // Use the temporary wires for the final output
  Or OR(.a(w1), .b(w2), .out(out));

endmodule
