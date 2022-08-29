module Hack8_tb();

reg clk_in = 0;
wire snd;

Hack8
  HACK8(
    .clk_in(clk_in),
	.snd(snd)
  );

always #1 clk_in = ~clk_in;


initial begin
  $dumpfile("Hack8_tb.vcd");
  $dumpvars(0, Hack8_tb);
  #100000;
  $finish;
end

endmodule
