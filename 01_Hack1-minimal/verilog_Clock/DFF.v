/**
* Data-Flip-Flop
* out[t+1] = in[t]
*
* This module is implemented using reg-variables in Verilog
* Timing diagram:
* https://lambdageeks.com/d-type-flip-flop-circuit-conversion-truth-table/
*
* NOTE: out and qBar are indeterminate
*/

`default_nettype none

module DFF(
    input wire clk,
    input wire in,
    output reg out,
    output reg qBar
  );

  always @(negedge clk)
    begin
      if (in)
        begin
          out = 1'b1;  // This is a blocking assignment (needs to happen before qBar)
        end
      else
        begin
          out = 1'b0;
        end

      qBar <= ~out;  // The <= is a non-blocking assignment
    end

endmodule
