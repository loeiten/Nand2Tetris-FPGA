`timescale 1ns/1ns
module Timer_tb();

reg clk = 0;
wire [15:0] out;

Timer
  TIMER(
	.clk(clk),
	.out(out)
  );

always #15  clk = ~clk;

initial begin
  $dumpfile("Timer_tb.vcd");
  $dumpvars(0, Timer_tb);
	# 200000
  $finish;
end

endmodule
