/**
 * Demultiplexor:
 * {a, b} = {in, 0} if sel == 0
 *          {0, in} if sel == 1
 */
`default_nettype none

module DMux(
    input wire in,
    input wire sel,
    output wire a,
    output wire b
  );

  // Translation of DMux.hdl
  wire notSel;

  Not NotSel(.in(sel), .out(notSel));
  And AndOutA(.in(in), .b(notSel), .out(a));
  And AndOutB(.in(in), .b(sel), .out(b));

endmodule
