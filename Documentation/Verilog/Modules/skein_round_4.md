# Documentation of Round 4 Module
this is the verilog implementation given:

```verilog
module skein_round_4 (
	input clk,
	input even,
	input [511:0] in,
	output reg [511:0] out
);
	
	wire [63:0] p0, p1, p2, p3, p4, p5, p6, p7;
	wire [63:0] p0x,p1x,p2x,p3x,p4x,p5x,p6x,p7x;
	
	assign p0 = in[511:448];
	assign p1 = in[447:384];
	assign p2 = in[383:320];
	assign p3 = in[319:256];
	assign p4 = in[255:192];
	assign p5 = in[191:128];
	assign p6 = in[127: 64];
	assign p7 = in[ 63:  0];
	
	assign p0x = p0 + p7;
	assign p1x = (even) ? { p1[19:0], p1[63:20] } : { p1[55:0], p1[63:56] };
	assign p2x = p2 + p5;
	assign p3x = (even) ? { p3[ 7:0], p3[63: 8] } : { p3[41:0], p3[63:42] };
	assign p4x = p4 + p3;
	assign p5x = (even) ? { p5[ 9:0], p5[63:10] } : { p5[ 7:0], p5[63: 8] };
	assign p6x = p6 + p1;
	assign p7x = (even) ? { p7[54:0], p7[63:55] } : { p7[28:0], p7[63:29] };

	always @ (posedge clk) begin
	
		out[511:448] <= p0x;
		out[447:384] <= p1x ^ p6x;
		out[383:320] <= p2x;
		out[319:256] <= p3x ^ p4x;
		out[255:192] <= p4x;
		out[191:128] <= p5x ^ p2x;
		out[127: 64] <= p6x;
		out[ 63:  0] <= p7x ^ p0x;
		
	end

endmodule
```
