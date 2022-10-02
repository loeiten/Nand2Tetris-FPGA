`default_nettype none

/**
 * 16-way demultiplexer:
 * {o0, o1, ..., o15} = {in, 0, ..., 0} if sel == 0000
 *                      {0, in, ..., 0} if sel == 0001
 *                      etc.
 *                      {0, 0, ..., in} if sel == 1111
 */
module DMux16Way(
    input wire in,
    input wire [3:0] sel,
    output wire o0,
    output wire o1,
    output wire o2,
    output wire o3,
    output wire o4,
    output wire o5,
    output wire o6,
    output wire o7,
    output wire o8,
    output wire o9,
    output wire o10,
    output wire o11,
    output wire o12,
    output wire o13,
    output wire o14,
    output wire o15
  );

  wire o0OrO1;
  wire o2OrO3;
  wire o4OrO5;
  wire o6OrO7;
  wire o8OrO9;
  wire o10OrO11;
  wire o12OrO13;
  wire o14OrO15;

  DMux8Way DMux8WaySplitInTwo(
             .in(in),
             .sel(sel[3:1]),
             .a(o0OrO1),
             .b(o2OrO3),
             .c(o4OrO5),
             .d(o6OrO7),
             .e(o8OrO9),
             .f(o10OrO11),
             .g(o12OrO13),
             .h(o14OrO15)
           );

  DMux DMux0vs1(.in(o0OrO1), .sel(sel[0]), .a(o0), .b(o1));
  DMux DMux2vs3(.in(o2OrO3), .sel(sel[0]), .a(o2), .b(o3));
  DMux DMux4vs5(.in(o4OrO5), .sel(sel[0]), .a(o4), .b(o5));
  DMux DMux6vs7(.in(o6OrO7), .sel(sel[0]), .a(o6), .b(o7));
  DMux DMux8vs9(.in(o8OrO9), .sel(sel[0]), .a(o8), .b(o9));
  DMux DMux10vs11(.in(o10OrO11), .sel(sel[0]), .a(o10), .b(o11));
  DMux DMux12vs13(.in(o12OrO13), .sel(sel[0]), .a(o12), .b(o13));
  DMux DMux14vs15(.in(o14OrO15), .sel(sel[0]), .a(o14), .b(o15));

endmodule


/**
 * 4-way 16-bit multiplexer:
 * out = a if sel == 00
 *       b if sel == 01
 *       c if sel == 10
 *       d if sel == 11
 */
module Mux4Way16(
    input wire [15:0] a,
    input wire [15:0] b,
    input wire [15:0] c,
    input wire [15:0] d,
    input wire [1:0] sel,
    output wire [15:0] out
  );

  wire [15:0] aOrBS0;
  wire [15:0] cOrDS0;

  // Translation of Mux4Way16.hdl
  Mux16 Mux16AOrBS0(.a(a), .b(b), .sel(sel[0]), .out(aOrBS0));
  Mux16 Mux16COrDS0(.a(c), .b(d), .sel(sel[0]), .out(cOrDS0));
  Mux16 Mux16Out(.a(aOrBS0), .b(cOrDS0), .sel(sel[1]), .out(out));
endmodule

/**
 * 8-way 16-bit multiplexer:
 * out = a if sel == 000
 *       b if sel == 001
 *       c if sel == 010
 *       d if sel == 011
 *       e if sel == 100
 *       f if sel == 101
 *       g if sel == 110
 *       h if sel == 111
 */
module Mux8Way16(
    input wire [15:0] a,
    input wire [15:0] b,
    input wire [15:0] c,
    input wire [15:0] d,
    input wire [15:0] e,
    input wire [15:0] f,
    input wire [15:0] g,
    input wire [15:0] h,
    input wire [2:0] sel,
    output wire [15:0] out
  );

  wire [15:0] abcd;
  wire [15:0] efgh;

  // NOTE: 0 index refers to the RIGHTMOST bit
  // NOTE: Only  most significant bit distinguishes a, b, c, d from e, f, g, h

  // Distinguish based on least significant bits
  Mux4Way16 Mux4Way16ABCD(
              .a(a),
              .b(b),
              .c(c),
              .d(d),
              .sel(sel[1:0]),
              .out(abcd)
            );
  Mux4Way16 Mux4Way16EFGH(
              .a(e),
              .b(f),
              .c(g),
              .d(h),
              .sel(sel[1:0]),
              .out(efgh)
            );

  // Distinguish based on most significant bit
  Mux16 Mux16Out(.a(abcd), .b(efgh), .sel(sel[2]), .out(out));

endmodule


/**
 * 16-way 16-bit multiplexer:
 * out = in0 if sel  == 0000
 *       in1 if sel  == 0001
 *       in2 if sel  == 0010
 *       in3 if sel  == 0011
 *       in4 if sel  == 0100
 *       in5 if sel  == 0101
 *       in6 if sel  == 0110
 *       in7 if sel  == 0111
 *       in8 if sel  == 1000
 *       in9 if sel  == 1001
 *       in10 if sel == 1010
 *       in11 if sel == 1011
 *       in12 if sel == 1100
 *       in13 if sel == 1101
 *       in14 if sel == 1110
 *       in15 if sel == 1111
 */
module Mux16Way16(
    input wire [15:0] in0,
    input wire [15:0] in1,
    input wire [15:0] in2,
    input wire [15:0] in3,
    input wire [15:0] in4,
    input wire [15:0] in5,
    input wire [15:0] in6,
    input wire [15:0] in7,
    input wire [15:0] in8,
    input wire [15:0] in9,
    input wire [15:0] in10,
    input wire [15:0] in11,
    input wire [15:0] in12,
    input wire [15:0] in13,
    input wire [15:0] in14,
    input wire [15:0] in15,
    input wire [3:0] sel,
    output wire [15:0] out
  );

  wire [15:0] in0To7;
  wire [15:0] in8To15;

  // NOTE: 0 index refers to the RIGHTMOST bit
  // NOTE: Only  most significant bit distinguishes in0-7 from in8-15

  // Distinguish based on least significant bits
  Mux8Way16 Mux8Way16In0To7(
              .a(in0),
              .b(in1),
              .c(in2),
              .d(in3),
              .e(in4),
              .f(in5),
              .g(in6),
              .h(in7),
              .sel(sel[2:0]),
              .out(in0To7)
            );
  Mux8Way16 Mux8Way16In8To15(
              .a(in8),
              .b(in9),
              .c(in10),
              .d(in11),
              .e(in12),
              .f(in13),
              .g(in14),
              .h(in15),
              .sel(sel[2:0]),
              .out(in8To15)
            );

  // Distinguish based on most significant bit
  Mux16 Mux16Out(.a(in0To7), .b(in8To15), .sel(sel[3]), .out(out));

endmodule


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

  // DMux temporary
  wire loadPeripherals;
  // Mux temporary (referring to in****)
  wire [15:0] inStar;

  // Select whether we should load from the peripherals
  And LoadPeripherals(.a(load), .b(address[13]), .out(loadPeripherals));
  Not NotLoadRAM(.in(loadPeripherals), .out(loadRAM));
  DMux16Way DMux16WaySetLoad(
              .in(loadPeripherals),
              .sel(address[3:0]),
              .o0(load0000),
              .o1(load0001),
              .o2(load0010),
              .o3(load0011),
              .o4(load0100),
              .o5(load0101),
              .o6(load0110),
              .o7(load0111),
              .o8(load1000),
              .o9(load1001),
              .o10(load1010),
              .o11(load1011),
              .o12(load1100),
              .o13(load1101),
              .o14(load1110),
              .o15(load1111)
            );

  // Select where we should output data from
  Mux16Way16 Mux16Way16InStar(
               .in0(in0000),
               .in1(in0001),
               .in2(in0010),
               .in3(in0011),
               .in4(in0100),
               .in5(in0101),
               .in6(in0110),
               .in7(in0111),
               .in8(in1000),
               .in9(in1001),
               .in10(in1010),
               .in11(in1011),
               .in12(in1100),
               .in13(in1101),
               .in14(in1110),
               .in15(in1111),
               .sel(address[3:0]),
               .out(inStar)
             );
  // Select to output the data from either inRAM or in****
  Mux16 Mux16Out(.a(inRAM), .b(inStar), .sel(address[13]), .out(out));

endmodule
