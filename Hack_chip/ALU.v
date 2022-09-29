/**
 * The ALU (Arithmetic Logic Unit).
 * Computes one of the following functions:
 * x+y, x-y, y-x, 0, 1, -1, x, y, -x, -y, !x, !y,
 * x+1, y+1, x-1, y-1, x&y, x|y on two 16-bit inputs,
 * according to 6 input bits denoted zx,nx,zy,ny,f,no.
 * In addition, the ALU computes two 1-bit outputs:
 * if the ALU output == 0, zr is set to 1; otherwise zr is set to 0;
 * if the ALU output < 0, ng is set to 1; otherwise ng is set to 0.
 */

// Implementation: the ALU logic manipulates the x and y inputs
// and operates on the resulting values, as follows:
// if (zx == 1) set x = 0        // 16-bit constant
// if (nx == 1) set x = !x       // bitwise not
// if (zy == 1) set y = 0        // 16-bit constant
// if (ny == 1) set y = !y       // bitwise not
// if (f == 1)  set out = x + y  // integer 2's complement addition
// if (f == 0)  set out = x & y  // bitwise and
// if (no == 1) set out = !out   // bitwise not
// if (out == 0) set zr = 1
// if (out < 0) set ng = 1

`default_nettype none
module ALU(
    input wire [15:0] x,		// input x (16 bit)
    input wire [15:0] y,		// input y (16 bit)
    input wire zx, 				// zero the x input?
    input wire nx, 				// negate the x input?
    input wire zy, 				// zero the y input?
    input wire ny, 				// negate the y input?
    input wire f,  				// compute out = x + y (if 1) or x & y (if 0)
    input wire no, 				// negate the out output?
    output wire [15:0] out, 	// 16-bit output
    output wire zr, 			// 1 if (out == 0), 0 otherwise
    output wire ng 			// 1 if (out < 0),  0 otherwise
  );

  // Translation of Mux.hdl
  wire [15:0] zxOut;
  wire [15:0] notZxOut;
  wire [15:0] nxOut;

  wire [15:0] zyOut;
  wire [15:0] notZyOut;
  wire [15:0] nyOut;

  wire [15:0] addOut;
  wire [15:0] andOut;
  wire [15:0] fOut;

  wire[15:0] notFOut;
  wire[7:0] highSigBits;
  wire[7:0] lowSigBits;
  wire ngCheck;

  wire highOr;
  wire lowOr;
  wire anyBitsTrue;


  // zx selection
  Mux16 ZxOut(.a(x), .b(16'b0), .sel(zx), .out(zxOut));
  // nx selection
  Not16 NotZxOut(.in(zxOut), .out(notZxOut));
  Mux16 NxOut(.a(zxOut), .b(notZxOut), .sel(nx), .out(nxOut));

  // zy selection
  Mux16 ZyOut(.a(y), .b(16'b0), .sel(zy), .out(zyOut));
  // ny selection
  Not16 NotZyOut(.in(zyOut), .out(notZyOut));
  Mux16 NyOut(.a(zyOut), .b(notZyOut), .sel(ny), .out(nyOut));

  // f selection
  Add16 AddOut(.a(nxOut), .b(nyOut), .out(addOut));
  And16 AndOut(.a(nxOut), .b(nyOut), .out(andOut));
  Mux16 FOut(.a(andOut), .b(addOut), .sel(f), .out(fOut));

  // no selection
  Not16 NotFOut(.in(fOut), .out(notFOut));
  // NOTE: We fan the output with additional outputs for zr and ng
  Mux16 FanOut(.a(fOut),
               .b(notFOut),
               .sel(no),
               .out(out));

  assign highSigBits = out[7:0];
  assign lowSigBits = out[15:8];
  assign ngCheck = out[15];

  // zr
  // True if any of the inputs are true
  Or8Way HighOr(.in(highSigBits), .out(highOr));
  Or8Way LowOr(.in(lowSigBits), .out(lowOr));
  Or AnyBitsTrue(.a(highOr), .b(lowOr), .out(anyBitsTrue));
  Not NotZr(.in(anyBitsTrue), .out(zr));

  // ng
  // Check if most significant bit is 1
  And IsNeg(.a(ngCheck), .b(1'b1), .out(ng));

endmodule
