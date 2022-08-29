module Test_tb();

reg clk = 0;
reg load = 0;
reg [15:0] in = 6;
wire [15:0] out;
wire mosi;
wire miso;
assign miso=~mosi;

Touch
  TOUCH(
    .clk(clk),
	.load(load),
	.in(in),
	.out(out),
	.miso(miso),
	.mosi(mosi)
  );

always #1 clk = ~clk;

initial begin
  $dumpfile("Test_tb.vcd");
  $dumpvars(0, Test_tb);
	# 200 load = 1;
	# 2 load = 0;
	# 1000
	# 2 load=1;in=-7;
	# 2 load=0;
	# 1000
  $finish;
end

endmodule
