module Hack7_tb();

reg clk_in = 0;
wire tp_miso;
wire tp_mosi;
wire tp_sck;

assign tp_miso=~tp_mosi;

Hack7
  HACK7(
    .clk_in(clk_in),
	.tp_miso(tp_miso),
	.tp_mosi(tp_mosi),
	.tp_sck(tp_sck)
  );

always #1 clk_in = ~clk_in;


initial begin
  $dumpfile("Hack7_tb.vcd");
  $dumpvars(0, Hack7_tb);
  #10000;
  $finish;
end

endmodule
