module SPI_tb();

  reg clk = 0;
  reg load = 0;
  reg [15:0] in = 16'h0042;
  wire mosi;
  wire miso = ~mosi;
  wire [15:0] out;
  wire cs;
  wire sck;
  SPI
    SPI(
      .clk(clk),
      .load(load),
      .in(in),
      .miso(miso),
      .mosi(mosi),
      .sck(sck),
      .cs(cs),
      .out(out)
    );
  always #1 clk = ~clk;


  initial
    begin

      $dumpfile("SPI_tb.vcd");
      $dumpvars(0, SPI_tb);
      # 3 load = 1;
      # 2 load = 0;
      # 40
        # 2 load=1;
      in=16'h142;
      # 2 load=0;
      # 40
        # 2 load=1;
      in=16'h242;
      # 2 load=0;
      # 40
        # 2 load=1;
      in=16'h342;
      # 2 load=0;
      # 40

        $display("FIN de la simulacion");
      $finish;
    end

endmodule
