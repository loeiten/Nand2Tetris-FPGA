/**
 * input clk_in: clock input 100 MHz
 * output clk: clock output 33.333333 MHz
 *
 * Implementation with 2 bit DFF-counter:
 * counter | 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 ....
 * clk     | 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 ....
 */

`default_nettype none

module Clock (
    input wire in,
    output wire out
  );

  reg r_clk = 0;
  reg [1:0] counter = 2'b0;

  assign out = r_clk;

  always @(negedge in)
    begin
      if (r_clk == 1)
        begin
          r_clk = 0;
        end
      if (counter == 2'b10)
        begin
          r_clk <= ~r_clk;
          counter <= 2'b0;
        end
      else
        begin
          counter <= counter + 1'b1;
        end

    end

endmodule
