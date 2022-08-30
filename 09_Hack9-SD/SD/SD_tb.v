module SD_tb();

reg clk = 0;
reg load = 0;
reg [15:0] in = 42;
wire mosi;
wire miso = ~mosi;
wire [15:0] out;
wire cen;
wire sck;
SD
  SD(
    .clk(clk),
	.load(load),
	.in(in),
	.miso(miso),
	.mosi(mosi),
	.sck(sck),
	.cen(cen),
	.out(out)
  );
always #1 clk = ~clk;


initial begin

  $dumpfile("SD_tb.vcd");
  $dumpvars(0, SD_tb);
	# 2 load = 1;
	# 2 load = 0;
	# 40
	# 2 load=1;in=-7;
	# 2 load=0;
	# 40

	$display("FIN de la simulacion");
  $finish;
end

endmodule
