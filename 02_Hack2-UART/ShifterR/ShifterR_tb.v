module ShifterR_tb();

  reg clk = 0;
  reg [9:0] in = {10'b0110101001};
  reg load = 0;
  reg shift = 0;
  reg inMSB =1'b1;
  wire [7:0] out;

  ShifterR
    SHIFTERR(
      .clk(clk),
      .in(in),
      .load(load),
      .shift(shift),
      .out(out),
      .inMSB(inMSB)
    );

  always #1 clk = ~clk;


  initial
    begin

      $dumpfile("ShifterR_tb.vcd");
      $dumpvars(0, ShifterR_tb);
      # 4 load = 1;
      # 2 load = 0;
      # 2 shift = 1;
      # 24 shift = 0;
      #2
       $finish;
    end

endmodule
