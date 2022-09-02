module Hack10_tb();

  reg clk_in = 0;
  wire miso;
  wire mosi;
  wire sck;
  wire cs;

  Hack10
    HACK(
      .clk_in(clk_in),
      .eth_miso(miso),
      .eth_mosi(mosi),
      .eth_sck(sck),
      .eth_cs(cs)
    );

  always #1 clk_in = ~clk_in;
  assign miso=~mosi;

  initial
    begin
      $dumpfile("Hack10_tb.vcd");
      $dumpvars(0, Hack10_tb);
      #40000;
      $finish;
    end

endmodule
