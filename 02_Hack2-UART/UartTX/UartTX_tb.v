module UartTX_tb();

  reg clk = 0;
  reg load = 0;
  reg [15:0] in=6;
  wire tx;
  wire [15:0] out;

  UartTX
    UARTTX(
      .clk(clk),
      .load(load),
      .in(in),
      .tx(tx),
      .out(out)
    );
  always #1 clk = ~clk;


  initial
    begin
      $dumpfile("UartTX_tb.vcd");
      $dumpvars(0, UartTX_tb);
      # 200 load = 1;
      in=42;
      # 2 load = 0;
      # 6000
        # 200 load = 1;
      in=-7;
      # 2 load = 0;
      # 6000

        $finish;
    end

endmodule
