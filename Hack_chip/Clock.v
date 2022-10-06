/**
 * input clk_in: clock input 100 MHz
 * output clk: clock output 33.333333 MHz
 *
 * Implementation with 2 bit DFF-counter:
 * counter | 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 ....
 * clk     | 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 ....
 */

`default_nettype none

module Clock(
    input wire in,			//external clock 100Mz
    output wire out			//Hack clock 33.333333 MHz
  );

  wire DFFOut1;
  wire DFFQBar1;
  wire DFFQBarOut;

  DFF DFF1(.clk(in), .in(DFFQBar1), .out(DFFOut1), .qBar(DFFQBar1));
  DFF DFFOut(.clk(DFFQBar1), .in(DFFQBarOut), .out(out), .qBar(DFFQBarOut));

endmodule
