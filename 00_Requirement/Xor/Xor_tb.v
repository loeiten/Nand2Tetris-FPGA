`default_nettype none
module Xor_tb();
  // Definition of ports
  wire out;

  // Declaration of other signlas
  integer file;
  integer i;  // Serves as a counter

  reg a;
  reg b;

  // We add the test-bits here
  // NOTE: From 0 to 3 are 4 bits
  // NOTE: Bits are fed from right to left, hence 0 is the first bit, not 1
  reg [3:0] a_array = 4'b1100;
  reg [3:0] b_array = 4'b1010;

  // Other module instantiations
  Xor Xor_DUT(
        .a(a),
        .b(b),
        .out(out)
      );

  // Behavioral code
  initial
    begin
      file = $fopen("Xor.out", "w");
      $fwrite(file, "| a | b |out|\n");

      // .vcd = value change dump
      // The dumpfile notes the changes in signal values for a simulation in an
      // external file so that waveform viewers (like gtkwave) can view the
      // results
      $dumpfile("Xor_tb.vcd");
      // dumpvars is used to specify which variables are to be dumped
      // $dumpvars(<levels> <, <module_or_variable>>* );
      $dumpvars(0, Xor_tb);

      for(i=0; i<4; i=i+1)
        begin
          // NOTE: <= is non-blocking, whereas = is blocking
          a = a_array[i];
          b = b_array[i];
          // NOTE: #1 means that we introduce a delay of unit 1
          // Without the delay everything would happen simultaneously
          #1;
          $fwrite(file, "| %1b | %1b | %1b |\n", a, b, out);
        end

      $fclose(file);
      $finish();
    end

endmodule
