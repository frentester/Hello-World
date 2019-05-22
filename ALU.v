module ALU (A, B, SEL, OUT);
	
	input [3:0] A, B;
	input [2:0] SEL;
  output [7:0] OUT;
  
  reg [7:0] OUT;
  
  always @(A or B or SEL)
    case(SEL)
      3'b000: OUT = A + B;
      3'b001: OUT = A - B;
      3'b010: OUT = A * B;
      3'b011: OUT = A / B;
      3'b100: OUT = A & B;
      3'b101: OUT = A | B;
      3'b110: OUT = A ^ B;
      3'b111: OUT = ~A;
    endcase

	
endmodule
