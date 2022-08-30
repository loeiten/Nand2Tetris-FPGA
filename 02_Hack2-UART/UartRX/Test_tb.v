module Test_tb();

	localparam BAUD = 288;
	localparam BITRATE = (BAUD << 1);
	localparam FRAME = (BITRATE * 11);
	localparam FRAME_WAIT = (BITRATE * 4);

	task send_car;
    	input [7:0] car;
  		begin
    		rx <= 0;                 //-- Bit start
    		#BITRATE rx <= car[0];   //-- Bit 0
    		#BITRATE rx <= car[1];   //-- Bit 1
    		#BITRATE rx <= car[2];   //-- Bit 2
    		#BITRATE rx <= car[3];   //-- Bit 3
    		#BITRATE rx <= car[4];   //-- Bit 4
    		#BITRATE rx <= car[5];   //-- Bit 5
    		#BITRATE rx <= car[6];   //-- Bit 6
    		#BITRATE rx <= car[7];   //-- Bit 7
    		#BITRATE rx <= 1;        //-- Bit stop
  		end
  	endtask


	reg clk = 0;
	wire [15:0] out;
	reg reset = 0;
	reg rx=1;

	UartRX UARTRX(
    	.clk(clk),
		.reset(reset),
		.rx(rx),
		.out(out)
  	);

	always #1 clk = ~clk;


initial begin
  $dumpfile("Test_tb.vcd");
  $dumpvars(0, Test_tb);
   # 20
   #(FRAME_WAIT * 2) send_car("0");
   # 1000 reset = 1;
   # 2 reset = 0;
   #400
   #(FRAME_WAIT * 2) send_car("1");
   $finish;
end

endmodule
