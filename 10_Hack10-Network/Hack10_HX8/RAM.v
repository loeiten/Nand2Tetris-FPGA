/**
* BlockRAM of iCE40
* implements 3840 Bytes of RAM addressed from 0000 - 3839
* out = M[address] (continuosly assigned using combinatorial logic)
* if (load =i= 1) M[address][t+1] = in[t] (clocked using sequential logic)
*/

`default_nettype none
module RAM(
    input wire clk,
    input wire [15:0] address,
    input wire [15:0] in,
    input wire load,
    output wire [15:0] out
  );

  reg [15:0] regRAM [0:7679];
  always @(posedge clk)
    if (load)
      regRAM[address[12:0]] <= in;

  parameter ROMFILE = "../../asm/debug/RAM.bin";
  initial
    begin
      $readmemb(ROMFILE,regRAM);
    end

  assign out = regRAM[address[12:0]];
endmodule
