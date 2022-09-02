module Switch_tb();

  reg clk = 0;
  reg on = 0;
  reg off = 0;
  wire out;
  Switch
    SWITCH(
      .clk(clk),
      .on(on),
      .off(off),
      .out(out)
    );

  always #1 clk = ~clk;


  initial
    begin
      $dumpfile("Switch_tb.vcd");
      $dumpvars(0, Switch_tb);
      # 10 on = 1;
      # 2 on = 0;
      # 10 off = 1;
      # 2 off = 0;
      # 10
        $finish;
    end

endmodule
