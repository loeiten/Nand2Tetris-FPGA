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

  wire notA;
  wire notB;
  wire notAAndB;

  Not NOT1(.in(a), .out(notA));
  Not NOT2(.in(b), .out(notB));
  And AND1(.a(notA), .b(notB), .out(notAAndB));
  Not NOT3(.in(notAAndB), .out(out));

endmodule
