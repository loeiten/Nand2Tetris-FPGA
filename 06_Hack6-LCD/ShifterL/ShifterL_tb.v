module ShifterL_tb();

reg clk = 0;
reg [7:0] in = 55;
reg load = 0;
reg shift = 0;
reg inLSB =0;
wire [7:0] out;

ShifterL
  SHIFTERL(
    .clk(clk),
	.in(in),
	.load(load),
	.shift(shift),
	.out(out),
	.inLSB(inLSB)
  );

always #1 clk = ~clk;


initial begin

  $dumpfile("ShifterL_tb.vcd");
  $dumpvars(0, ShifterL_tb);
	# 4 load = 1;
	# 2 load = 0;
	# 2 shift = 1;
	# 20 shift = 0;
	#2
  $finish;
end

endmodule
