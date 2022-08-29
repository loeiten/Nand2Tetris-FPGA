/**
* Switch 
*
* One bit-register, that can be switched on and off
* 
* if (out[t] == 0) and (on[t] == 1) out[t+1] = 1
* if (out[t] == 1) and (off[t] == 1) out[t+1] = 0
*/
`default_nettype none
module Switch(
	input wire clk,
	input wire on,
	input wire off,
	output wire out
	);


	
	
endmodule
