/**
 * The module rst delivers a reset signal at power up which
 * is clocked by clk.
 *
 * The timing diagram should be:
 * -------------------------------------------
 * clk     0 | 1 | 0 | 1 | 0 | 1 | 0 | 1 ...
 * -------------------------------------------
 * reset   0 | 1 | 1 | 0 | 0 | 0 | 0 | 0 ...
 * -------------------------------------------
 */
`default_nettype none
module Reset(
    input clk,
    output reset
  );
  wire clk;
  wire reset;
  wire nreset;
  DFF dff(.clk(clk),.in(reset | nreset),.out(nreset));
  Not nr(.in(nreset),.out(reset));
endmodule
