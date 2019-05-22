module DECODER_1to4 (CLK, SEL, OUT);

	input CLK;
	output [1:0] SEL;
	output [3:0] OUT;
	
	reg [1:0] SEL;
	reg [3:0] OUT;
	
	always@(posedge CLK)
	begin
		SEL <= SEL + 1;
		case (SEL)
			0 : OUT <= 4'b0001;
			1 : OUT <= 4'b0010;
			2 : OUT <= 4'b0100;
			3 : OUT <= 4'b1000;
		endcase
	end
	
endmodule
