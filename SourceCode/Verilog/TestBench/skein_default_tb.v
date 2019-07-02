`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:57:54 07/02/2019
// Design Name:   skein512
// Module Name:   H:/skein/skein_tb.v
// Project Name:  skein
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: skein512
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module skein_tb;

	// Inputs
	reg clk;
	reg [511:0] midstate;
	reg [95:0] data;
	reg [31:0] nonce;

	// Outputs
	wire [511:0] hash;

	// Instantiate the Unit Under Test (UUT)
	skein512 uut (
		.clk(clk), 
		.midstate(midstate), 
		.data(data), 
		.nonce(nonce), 
		.hash(hash)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		midstate = 0;
		data = 0;
		nonce = 0;

		// Wait 100 ns for global reset to finish
		#5000;
      	data = 512'd12345609823;
		midstate = 96'd456;
		nonce = 32'd453;
		#5000;

		data = 512'd7659432094555543122297600000000654;
		midstate = 96'd456;
		nonce = 32'd453;

	end
   always 
		#10 clk = ~clk;
      
endmodule

