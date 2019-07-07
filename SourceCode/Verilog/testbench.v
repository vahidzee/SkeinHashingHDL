`timescale 1ns / 100ps

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
      	data =  96'd456;
		midstate =512'd12345609823;
		nonce = 32'd453;
		#5000;

		data = 96'd456;
		midstate =512'd7659432094555543122297600000000654 ;
		nonce = 32'd453;
		#5000;
		$stop();
	end
   always 
		#5 clk = ~clk;
      
endmodule

