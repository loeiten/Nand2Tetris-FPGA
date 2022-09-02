module Hack6_tb();

  reg clk_in = 0;
  wire lcd_dcn;
  wire lcd_mosi;
  wire lcd_sck;
  wire lcd_cen;
  Hack6
    HACK6(
      .clk_in(clk_in),
      .lcd_dcn(lcd_dcn),
      .lcd_mosi(lcd_mosi),
      .lcd_sck(lcd_sck),
      .lcd_cen(lcd_cen)
    );

  always #1 clk_in = ~clk_in;


  initial
    begin
      $dumpfile("Hack6_tb.vcd");
      $dumpvars(0, Hack6_tb);
      #10000
       $finish;
    end

endmodule
