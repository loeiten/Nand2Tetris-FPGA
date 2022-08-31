/**
* TOP-level module of HACK
* It connects the external pins of our FPGA (hack.pcf)
* to the modules (cpu,mem,RAM,rom,sram,but,led,uart,lcd,sd,sound,touch)
*/

`default_nettype none
module Hack6(
    input clk_in,				// external clock 100 MHz
    input [7:0] but,			// buttons	(0 if pressed, 1 if released)
	output [7:0] led,			// LEDs 	(0 off, 1 on)
	input rx,					// rx line of UART
	output tx,					// tx line of UART
	output [17:0] sram_addr,	// SRAM Address 18 Bit = 256K
	inout [15:0] sram_data,		// SRAM Data 16 Bit
	output sram_wen,			// SRAM write_enable_not
	output sram_oen,			// SRAM output_enable_not
	output sram_cen, 			// SRAM chip_enable_not
	output lcd_dcn,				// LCD spi data/command not
	output lcd_mosi,			// LCD spi mosi
	output lcd_sck,				// LCD spi sck
	output lcd_cen				// LCD spi chip enable#
);

endmodule
