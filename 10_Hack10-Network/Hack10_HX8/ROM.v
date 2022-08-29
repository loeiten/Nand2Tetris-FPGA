/**
 * instruction memory at boot time 
 * The instruction memory is read only (ROM) and
 * preloaded with 256 x 16bit of Hackcode holding the bootloader.
 * 
 * instruction = ROM[pc]
 */
`default_nettype none

module ROM(
	input wire [15:0] pc,
	output wire [15:0] instruction		
);

	// ROM file of hack
	//parameter ROMFILE = "../asm/ethernet/ethernet.hack";
	//parameter ROMFILE = "../../asm/blinky/blinky.hack";
	parameter ROMFILE = "../../asm/debug/debug.hack";
	
	reg [15:0] mem [0:511];
	assign instruction = mem[pc[8:0]];
	
	initial begin
		$readmemb(ROMFILE,mem);
	end

endmodule
