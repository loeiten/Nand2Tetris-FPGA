/**
* Data-Flip-Flop
* out[t+1] = in[t]
*
* Negative-edge triggered flip flop based on figure a in
* https://www.sciencedirect.com/topics/computer-science/master-slave-flip
* Timing diagram:
* https://lambdageeks.com/d-type-flip-flop-circuit-conversion-truth-table/
*/

`default_nettype none

module DFF(
    input wire clk,
    input wire in,
    output wire out,
    output wire qBar
  );

  wire notIn;

  wire outMasterIn;
  wire outMasterNotIn;

  wire qMaster;
  wire qBarMaster;

  wire notQMaster;
  wire notClk;

  wire outSlaveIn;
  wire outSlaveNotIn;

  Not NotIn(.in(in), .out(notIn));

  Nand NandMasterIn(.a(in), .b(clk), .out(outMasterIn));
  Nand NandMasterNotIn(.a(clk), .b(notIn), .out(outMasterNotIn));

  Nand NandQMasterOut(.a(outMasterIn), .b(qBarMaster), .out(qMaster));
  Nand NandQBarMasterOut(.a(qMaster), .b(outMasterNotIn), .out(qBarMaster));

  Not NotQMaster(.in(qMaster), .out(notQMaster));
  Not NotClk(.in(clk), .out(notClk));

  Nand NandSlaveIn(.a(qMaster), .b(notClk), .out(outSlaveIn));
  Nand NandSlaveNotIn(.a(notClk), .b(notQMaster), .out(outSlaveNotIn));

  Nand NandSlaveOut(.a(outSlaveIn), .b(qBar), .out(out));
  Nand NandQBarSlaveOut(.a(out), .b(outSlaveNotIn), .out(qBar));

endmodule
