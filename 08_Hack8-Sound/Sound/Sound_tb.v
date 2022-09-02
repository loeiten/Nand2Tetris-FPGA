module Sound_tb();

  reg clk = 0;
  reg [15:0] in=0;
  wire out;
  Sound
    SOUND(
      .clk(clk),
      .in(in),
      .out(out)
    );

  always #1 clk = ~clk;


  initial
    begin

      $dumpfile("Sound_tb.vcd");
      $dumpvars(0, Sound_tb);
      # 2 in=0;
      # 500 in =-1;
      # 1000 in=0;
      #500 in = -3;
      #1000 in = 0;
      #500
       $display("FIN de la simulacion");
      $finish;
    end

endmodule
