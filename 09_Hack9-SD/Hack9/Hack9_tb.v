module Hack9_tb();

reg clk_in = 0;
wire sd_miso;
wire sd_mosi;
wire sd_sck;
wire sd_cen;

Hack9
  HACK9(
    .clk_in(clk_in),
    .sd_miso(sd_miso),
    .sd_mosi(sd_mosi),
	.sd_sck(sd_sck),
	.sd_cen(sd_cen)
  );

always #1 clk_in = ~clk_in;
assign sd_miso=~sd_mosi;

initial begin
  $dumpfile("Hack9_tb.vcd");
  $dumpvars(0, Hack9_tb);
  #10000;
  $finish;
end

endmodule
