module LCD_tb();

reg clk = 0;
reg loadC = 0;
reg loadD8 = 0;
reg loadD16 = 0;
reg [15:0] in = 6;

LCD
  LCD(
    .clk(clk),
	.loadC(loadC),
	.loadD8(loadD8),
	.loadD16(loadD16),
	.in(in)
  );

always #1 clk = ~clk;


initial begin
	
  $dumpfile("LCD_tb.vcd");
  $dumpvars(0, LCD_tb);
	# 2 loadC = 1;
	# 2 loadC = 0;
	# 40
	# 2 loadD8=1;
	# 2 loadD8=0;
	# 40
	# 2 loadD16=1; in =32123;
	# 2 loadD16=0;
	# 80
  $finish;
end

endmodule
