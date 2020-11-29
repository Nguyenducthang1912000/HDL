module Processer_Controller (RegSrc,RegEn,ALUSrc,ALUOp,DmemWr,WrSrc,Opcode,PCSrc,ZERO,DMEM_Wr,ALU_Op);
output 		RegSrc,RegEn,ALUSrc,DmemWr,WrSrc,PCSrc,DMEM_Wr;
output[3:0] ALUOp,ALU_Op;
input [4:0] Opcode;
input ZERO;
// connect type
reg 			RegSrc,RegEn,ALUSrc,DmemWr,WrSrc,PCSrc;
reg[3:0] 	ALUOp;
initial begin
PCSrc  = 0;
RegSrc = 0;
RegEn  = 0;
ALUSrc = 0;
ALUOp  = 0;
DmemWr = 0;
WrSrc  = 0;
end
assign DMEM_Wr = DmemWr;
assign ALU_Op = ALUOp;
always @(*) begin
	PCSrc = 0;
	case(Opcode)
//ADD
		5'b00010:	begin
		PCSrc  = 0;
		RegSrc = 1;
		RegEn  = 1;
		ALUSrc = 0;
		ALUOp  = 4'b0010;
		DmemWr = 0;
		WrSrc  = 1;
		end
//SUB
		5'b00011:	begin
		RegSrc = 1;
		RegEn  = 1;
		ALUSrc = 0;
		ALUOp  = 4'b0011;
		DmemWr = 0;
		WrSrc  = 1;
		end
//AND
		5'b00100:	begin
		PCSrc  = 0;
		RegSrc = 1;
		RegEn  = 1;
		ALUSrc = 0;
		ALUOp  = 4'b0100;
		DmemWr = 0;
		WrSrc  = 1;
		end
//OR
		5'b00101:	begin
		PCSrc  = 0;
		RegSrc = 1;
		RegEn  = 1;
		ALUSrc = 0;
		ALUOp  = 4'b0101;
		DmemWr = 0;
		WrSrc  = 1;
		end
//XOR
		5'b00110:	begin
		PCSrc  = 0;
		RegSrc = 1;
		RegEn  = 1;
		ALUSrc = 0;
		ALUOp  = 4'b0110;
		DmemWr = 0;
		WrSrc  = 1;
		end
//SR
		5'b01000:	begin
		PCSrc  = 0;
		RegSrc = 1;
		RegEn  = 1;
		ALUSrc = 0;
		ALUOp  = 4'b1000;
		DmemWr = 0;
		WrSrc  = 1;
		end
//SRA
		5'b01001:	begin
		PCSrc  = 0;
		RegSrc = 1;
		RegEn  = 1;
		ALUSrc = 0;
		ALUOp  = 4'b1001;
		DmemWr = 0;
		WrSrc  = 1;
		end
//SL
		5'b01010:	begin
		PCSrc  = 0;
		RegSrc = 1;
		RegEn  = 1;
		ALUSrc = 0;
		ALUOp  = 4'b1010;
		DmemWr = 0;
		WrSrc  = 1;
		end
//ADDI
		5'b10010:	begin
		PCSrc  = 0;
		RegSrc = 0;
		RegEn  = 1;
		ALUSrc = 1;
		ALUOp  = 4'b0010;
		DmemWr = 0;
		WrSrc  = 1;
		end
//ANDI
		5'b10100:	begin
		PCSrc  = 0;
		RegSrc = 0;
		RegEn  = 1;
		ALUSrc = 1;
		ALUOp  = 4'b0100;
		DmemWr = 0;
		WrSrc  = 1;
		end
//ORI
		5'b10101:	begin
		PCSrc  = 0;
		RegSrc = 0;
		RegEn  = 1;
		ALUSrc = 1;
		ALUOp  = 4'b0101;
		DmemWr = 0;
		WrSrc  = 1;
		end
//XORI
		5'b10110:	begin
		PCSrc  = 0;
		RegSrc = 0;
		RegEn  = 1;
		ALUSrc = 1;
		ALUOp  = 4'b0110;
		DmemWr = 0;
		WrSrc  = 1;
		end
//LW
		5'b11100:	begin
		PCSrc  = 0;
		RegSrc = 0;
		RegEn  = 1;
		ALUSrc = 1;
		ALUOp  = 4'b0010;
		DmemWr = 0;
		WrSrc  = 0;
		end
//SW
		5'b11101:	begin
		PCSrc  = 0;
		RegSrc = 0;
		RegEn  = 0;
		ALUSrc = 1;
		ALUOp  = 4'b0010;
		DmemWr = 1;
		WrSrc  = 1;
		end
//BEQ
		5'b11110:	begin
		RegSrc = 0;
		RegEn  = 0;
		ALUSrc = 0;
		ALUOp  = 4'b0011;
		DmemWr = 0;
		WrSrc  = 1;
		end
//BNE
		5'b11111:	begin
		RegSrc = 0;
		RegEn  = 0;
		ALUSrc = 0;
		ALUOp  = 4'b0011;
		DmemWr = 0;
		WrSrc  = 1;
		end
		default:		begin
		RegSrc = 0;
		RegEn  = 0;
		ALUSrc = 0;
		ALUOp  = 0;
		DmemWr = 0;
		WrSrc  = 0;
		end
	endcase
		if (ZERO == 1 && Opcode == 5'b11110)
			PCSrc = 1;
		else if (ZERO == 0 && Opcode == 5'b11111)
			PCSrc = 1;
		else if (ZERO == 1 && Opcode == 5'b11111)
			PCSrc = 0;
		else if (ZERO == 0 && Opcode == 5'b11110)
			PCSrc = 0;
end
endmodule
