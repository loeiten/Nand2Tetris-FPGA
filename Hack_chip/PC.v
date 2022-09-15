/**
 * A 16-bit counter with load control bit.
 * if (load[t] == 1)       out[t+1] = in[t]
 * else if (inc[t] == 1)   out[t+1] = out[t] + 1  (integer addition)
 * else                    out[t+1] = out[t]
 */

`default_nettype none

module PC(
    input wire clk,
    input wire reset,
    input wire [15:0] in,
    input wire load,
    input wire inc,
    output wire [15:0] out
  );



endmodule
