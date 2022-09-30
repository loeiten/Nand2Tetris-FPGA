/**
* Memory mapped IO
*
* Big Multiplexer/Demultiplexer to address Memory.
*
* if (load==1) and (address[13]==0) {loadRAM=1}
* if (load==1) and (address[13]==1 and address[3:0]==0000) {load0000=1}
* if (load==1) and (address[13]==1 and address[3:0]==0001) {load0001=1}
* if (load==1) and (address[13]==1 and address[3:0]==0010) {load0010=1}
* ...
* if (address[13]==0) out = inRAM
* if (address[13]==1 and address[3:0]=0000) {out = in0000}
* if (address[13]==1 and address[3:0]=0001) {out = in0001}
* if (address[13]==1 and address[3:0]=0010) {out = in0010}
*/

`default_nettype none
module Memory(
    input wire load,
    input wire [15:0] address,
    input wire [15:0] inRAM,
    input wire [15:0] in0000,
    input wire [15:0] in0001,
    input wire [15:0] in0010,
    input wire [15:0] in0011,
    input wire [15:0] in0100,
    input wire [15:0] in0101,
    input wire [15:0] in0110,
    input wire [15:0] in0111,
    input wire [15:0] in1000,
    input wire [15:0] in1001,
    input wire [15:0] in1010,
    input wire [15:0] in1011,
    input wire [15:0] in1100,
    input wire [15:0] in1101,
    input wire [15:0] in1110,
    input wire [15:0] in1111,
    output wire [15:0] out,
    output wire loadRAM,
    output wire load0000,
    output wire load0001,
    output wire load0010,
    output wire load0011,
    output wire load0100,
    output wire load0101,
    output wire load0110,
    output wire load0111,
    output wire load1000,
    output wire load1001,
    output wire load1010,
    output wire load1011,
    output wire load1100,
    output wire load1101,
    output wire load1110,
    output wire load1111
  );

  wire inStar;

  // FIXME:
  // Assign the load**** wires
  // Strategy
  // 1. Decide whether to load or not
  // 2. If yes, use the DMuxed signal to select the correct pin
  // 3. If no, output 1b'0


  // We can use Mux16 to select between outputs with 16 bits
  // We can first select between loadRAM[16] and the rest of the in****[16],
  // and then between the individual in****[16] inputs

  // If we are going to select among the in****, we need to decide which based on the address
  // The following is the same as a Mux16Way16


  // FIXME: Can use DMux to map address[3:0] to a 16 bit signal
  // The DMux, however, need to be DMux16Way
  // This can be constructed like DMux4Way -> DMux8Way
  // FIXME: Make internal chip here
  Mux MuxBit0();
  Mux MuxBit1();
  Mux MuxBit2();
  Mux MuxBit3();



  // Final selection between the inRAM and the in****
  Mux16 MuxInRAMVsIn(.a(inStar), .b(inRAM), .sel(address[13]), .out(out));

endmodule
