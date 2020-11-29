module ALU(
	input	[15:0] A,B,
	input Opcode,
	output [15:0] ALU_Out
);
//data type
reg[15:0] Result;
assign ALU_Out = Result;
always @(*)
begin
	case(Opcode)
	1'b0:
		Result = A+B;
	1'b1:
		Result = A-B;
	default: Result = A+B;
	endcase
	end
endmodule
