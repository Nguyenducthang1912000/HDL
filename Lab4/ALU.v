module ALU(A_in,B_in,Opcode_i,OUT_o,ZERO_o);
input signed[15:0]  A_in,B_in;
input[3:0] Opcode_i;
output reg signed [15:0] OUT_o;
output reg ZERO_o;
wire[3:0] Opcode_i;
always @(*) begin
case(Opcode_i)
// ADD
	4'b0010:	OUT_o = A_in + B_in;
// SUB
	4'b0011:	OUT_o = A_in - B_in;
// AND
	4'b0100:	OUT_o = A_in & B_in;
// OR
	4'b0101:	OUT_o = A_in | B_in;
// XOR
	4'b0110:	OUT_o = A_in ^ B_in;
// SR
	4'b1000:	OUT_o = A_in >> B_in[2:0];
// SRA
	4'b1001:	OUT_o = A_in >>> B_in[2:0];
// SL
	4'b1010:	OUT_o = A_in << B_in[2:0];
	default: OUT_o = 0;
endcase
end


always @ (OUT_o) begin
			if (OUT_o == 16'b0)
			ZERO_o = 1'b1;
		else
			ZERO_o = 1'b0;
end
endmodule 