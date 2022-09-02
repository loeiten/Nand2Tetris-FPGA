module Test_tb();

  reg clk = 0;
  wire [15:0] out;

  Timer
    TIMER(
      .clk(clk),
      .out(out)
    );

  always #1 clk = ~clk;

  initial
    begin
      $dumpfile("Test_tb.vcd");
      $dumpvars(0, Test_tb);
      # 100000
        $finish;
    end

endmodule
