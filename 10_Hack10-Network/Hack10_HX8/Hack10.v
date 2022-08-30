/**
* TOP-level module of HACK
* It connects the external pins of our FPGA (hack.pcf)
* to the modules (cpu,mem,RAM,rom,sram,but,led,uart,lcd,sd,sound,touch)
*/

`default_nettype none
module Hack10(
    input clk_in,				// external clock 100 MHz
    input [7:0] but,			// buttons	(0 if pressed, 1 if released)
	output [7:0] led,			// leds 	(0 off, 1 on)
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
	output lcd_cen,				// LCD spi chip enable#
	input tp_miso,				// TP spi miso
	output tp_mosi,				// TP spi mosi
	output tp_sck,				// TP spi sck
	output snd,				// SND speaker
	input sd_miso,				// SD spi miso
	output sd_mosi,				// SD spi mosi
	output sd_sck,				// SD spi sck
	output sd_cen,				// SD spi chip enable#
	input eth_miso,
	output eth_mosi,
	output eth_sck,
	output eth_cs
);

	SB_GB Clock_Buffer (// required for a user’s internally generated FPGA signal that is heavily loaded and requires global buffering. For example, a user’s logic-generated clock.
		.USER_SIGNAL_TO_GLOBAL_BUFFER (clk_out),
		.GLOBAL_BUFFER_OUTPUT (clk)
	);

	// internal clock should be 33.333333MHz
	wire clk;
	wire clk_out;
	Clock CLK(.in(clk_in),.out(clk_out));
	wire reset;
	//wire locked;
	//assign reset=~locked;
	Reset RST(.clk(clk),.reset(reset));
	//pll PLL(.in(clk_in),.out(clk),.locked(locked));
	// hack cpu (Nand2Tetris)
	wire [15:0] pc;
	wire [15:0] instruction;
	wire [15:0] addressM;
	wire loadM;
	wire [15:0] outM;
	wire [15:0] inM;
	CPU CPU(
		.clk(clk),
    	.inM(inM),         			// M value input  (M = contents of RAM[A])
    	.instruction(instruction), 	// Instruction for execution
    	.reset(loadRUN|reset),           	// Signals whether to re-start the current
                         			// program (rstn==0) or continue executing
                         			// the current program (rstn==1).
    	.outM(outM),       			// M value output
    	.writeM(loadM),          	// Write to M?
    	.addressM(addressM),    	// Address in data memory to Read(of M)
    	.pc(pc)          			// address of next instruction
	);

	//memory map
	Memory MEMORY(.address(addressM),.load(loadM),.out(inM),
			.loadRAM(loadRAM),.inRAM(outRAM),
			.load0000(loadLED),.in0000(outLED),
			.load0001(),.in0001(outBUT),
			.load0010(loadTX),.in0010(outTX),
			.load0011(loadRX),.in0011(outRX),
			.load0100(loadSRAM_ADDR),.in0100(boot_sram_addr),
			.load0101(loadSRAM_DATA),.in0101(sram_dataR),
			.load0110(loadRUN),.in0110(16'b0000000000000000),
			.load0111(),.in0111(16'b0000000000000000),
			.load1000(loadLCD_C),.in1000(outLCD),
			.load1001(loadLCD_D8),.in1001(outLCD),
			.load1010(loadLCD_D16),.in1010(outLCD),
			.load1011(loadTOUCH),.in1011(outTOUCH),
			.load1100(),.in1100(outTIME),
			.load1101(loadSOUND),.in1101(outSOUND),
			.load1110(loadSD),.in1110(outSD),
			.load1111(loadETHERNET),.in1111(outETHERNET)
	);

	// RAM
	wire [15:0] outRAM;
	wire loadRAM;
	RAM RAM(.clk(clk),.address(addressM),.in(outM),.load(loadRAM),.out(outRAM));

	// leds
	wire [15:0] outLED;
	wire loadLED;
	Register LED(.clk(clk),.load(loadLED),.in(outM),.out(outLED));
	assign led = outLED[7:0];

	// but
	wire [15:0] outBUT;
	Register BUT(.clk(clk),.load(1'b1),.in({8'b00000000,but}),.out(outBUT));

	// UART TX
	wire [15:0] outTX;
	wire loadTX;
	UartTX UARTTX(.clk(clk),.load(loadTX),.in(outM[7:0]),.tx(tx),.out(outTX));

	//UART RX
	wire [15:0] outRX;
	wire loadRX;
	UartRX UARTRX(.clk(clk),.reset(loadRX),.rx(rx),.out(outRX));

	//SRAM
	wire loadSRAM_ADDR;
	wire loadSRAM_DATA;
	wire [15:0] boot_sram_addr;
	Register SRAM_A(.clk(clk),.load(loadSRAM_ADDR),.in(outM),.out(boot_sram_addr));
	Register PROM_D(.clk(clk),.load(loadSRAM_DATA),.in(outM),.out(sram_dataW));
	Switch WE(.clk(clk),.on(loadSRAM_DATA),.off(1'b1),.out(we));
	wire we;

	//Tristate
	wire [15:0] sram_dataR;
	wire [15:0] sram_dataW;
	Tristate SRAM_DATA(.pin(sram_data),.oe(sram_oen),.dataW(sram_dataW),.dataR(sram_dataR));
	Mux16 INSTR(.a(instructionROM),.b(sram_dataR),.sel(run),.out(instruction));
	Mux16 SRAMA(.a(boot_sram_addr),.b(pc),.sel(run),.out(sram_addr[15:0]));
	Or OEN(.a(run),.b(~we),.out(sram_wen));
	Not WEN(.in(sram_wen),.out(sram_oen));
	assign sram_addr[17:16]=2'b00;
	//assign instruction = (run) ? sram_dataR:instructionROM;
	//assign sram_addr = (run) ? {2'b00,pc}: {2'b00,boot_sram_addr};
	//assign sram_wen = (run) ? 1: ~we;
	//assign sram_oen = (run) ? 0: we;
	assign sram_cen = 0;

	// internal ROM with bootloader
	wire [15:0] instructionROM;
	ROM ROM(
		.pc(pc),
		.instruction(instructionROM)
	);

	//boot logic
	wire loadRUN;
	wire run;
	Switch BOOT(.clk(clk),.on(loadRUN),.off(1'b0),.out(run));

	//SD-card
	wire loadSD;
	wire [15:0] outSD;
	SD SD(
		.clk(clk),
		.load(loadSD),
		.in(outM),
		.out(outSD),
		.cen(sd_cen),
		.mosi(sd_mosi),
		.miso(sd_miso),
		.sck(sd_sck)
	);

	//LCD
	wire [15:0] outLCD;
	wire loadLCD_C;
	wire loadLCD_D8;
	wire loadLCD_D16;
	LCD LCD(
		.clk(clk),
		.loadC(loadLCD_C),
		.loadD8(loadLCD_D8),
		.loadD16(loadLCD_D16),
		.in(outM),
		.out(outLCD),
		.dcn(lcd_dcn),
		.cen(lcd_cen),
		.mosi(lcd_mosi),
		.sck(lcd_sck)
	);


	// sound
	wire [15:0] outSOUND;
	wire loadSOUND;
	Register SOUND(.clk(clk),.load(loadSOUND),.in(outM),.out(outSOUND));
	Sound SND(.clk(clk),.in(outSOUND),.out(snd));

	//timer
	wire [15:0] outTIME;
	Timer TIMER(.clk(clk),.out(outTIME));

	//touch panel
	wire [15:0] outTOUCH;
	wire loadTOUCH;
	Touch TOUCH(
		.clk(clk),
		.load(loadTOUCH),.in(outM[7:0]),.out(outTOUCH),
		.mosi(tp_mosi),.miso(tp_miso),.sck(tp_sck)
	);

	//Ethernet
	wire [15:0] outETHERNET;
	wire loadETHERNET;
	SPI Ethernet(
			.clk(clk),
			.load(loadETHERNET),.in(outM),.out(outETHERNET),
			.mosi(eth_mosi),.miso(eth_miso),.sck(eth_sck),.cs(eth_cs)
	);
endmodule
