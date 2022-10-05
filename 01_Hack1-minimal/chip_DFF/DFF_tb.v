module DFF_tb();

  wire out;
  wire qBar;

  integer file;
  integer i = 0;

  reg clk;
  reg in;

  // NOTE: Start with 0 to show undefined behavior, 1 bit as the signal sets on non-rising
  // reg [10:0] clk_array = 11'b11110000010;
  // reg [10:0] in_array = 11'b10101010000;
  reg [14:0] clk_array = 15'b010101010101010;
  reg [14:0] in_array  = 15'b001100110000110;

  DFF DFF_DUT(.clk(clk), .in(in), .out(out), .qBar(qBar));

  initial
    begin

      file = $fopen("DFF.out", "w");
      $fwrite(file, "| clk  | in | out | qBar |\n");

      $dumpfile("DFF_tb.vcd");
      $dumpvars(0, DFF_tb);

      while (i<15)
        begin
          in = in_array[i];
          clk = clk_array[i];
          #1;
          $fwrite(file, "|   %1b  |  %1b |  %1b  |   %1b  |\n", clk, in, out, qBar);
          i = i+1;
        end

      $fclose(file);
      $finish();

    end

endmodule
