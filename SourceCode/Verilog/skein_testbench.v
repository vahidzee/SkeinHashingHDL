`include "skein.v"

module skein_hash_testbench();
    reg clock;
    reg [511:0] midstate;
    reg [95:0] data;
    reg [31:0] nonce;
    wire [511:0] hash;

    skein512 uut(.clk(clock), .midstate(midstate), .data(data), .nonce(nonce), .hash(hash));

    initial begin
        clock = 1'b0;
        // this one is same as IV512 in C
        // midstate = 128'h4903ADFF749C51CE_0D95DE399746DF03_8FD1934127C79BCE_9A255629FF352CB1_5DB62599DF6CA7B0_EABE394CA9D5C3F4_991112C71A75B523_AE18A40B660FCC33;
        // this one bellow is same as what is on internet
        midstate = 128'hA8D47980544A6E32_847511533E9B1A8A_6FAEE870D8E81A00_58B0D9D6CB557F92_9BBC0051DAC1D4E9_B744E2B1D189E7CA_979350FA709C5EF3_0350125A92067BCD;
        data = 24'hFF;
        nonce = 8'h00000014; // nonce is an optional input that 20 is its unique value
        #100 data = 24'h55;


    end

    always begin
        #20 clock = ~clock;
    end


endmodule : skein_hash_testbench