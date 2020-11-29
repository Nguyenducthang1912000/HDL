module Processer_16bit (clk,PC_o,IMEM_o,ALU_o,DMEM_o,RegDr_o,ADDR_o,DMEM_Wr,ALU_Op,ZERO_o,WrSrc_o);
input clk;
output[4:0] PC_o;
output[15:0] IMEM_o;
output[2:0] ADDR_o;
output [15:0] ALU_o;
output [15:0] DMEM_o;
output [15:0] RegDr_o;
output [3:0] ALU_Op;
output WrSrc_o;
output DMEM_Wr;
output ZERO_o;
//Wire connection
wire PCSrc;
wire RegSrc;
wire RegEn;
wire ALUSrc;
wire [3:0] ALUOp;
wire DmemWr;
wire WrSrc;
wire[4:0] Inst;
wire ZERO;
assign ZERO_o = ZERO;
assign WrSrc_o = WrSrc;
Processer_Controller Processer_Controller_inst0(
.RegSrc(RegSrc),
.RegEn(RegEn),
.ALUSrc(ALUSrc),
.ALUOp(ALUOp),
.DmemWr(DmemWr),
.WrSrc(WrSrc),
.Opcode(Inst),
.ZERO(ZERO),
.PCSrc(PCSrc),
.DMEM_Wr(DMEM_Wr),
.ALU_Op(ALU_Op)
);
Datapath Datapath_inst1(
.CLK(clk),
.PCSrc(PCSrc),
.Ins(Inst),
.RegEn(RegEn),
.RegSrc(RegSrc),
.ALUSrc(ALUSrc),
.ALUOp(ALUOp),
.DmemWr(DmemWr),
.WrSrc(WrSrc),
.ZERO(ZERO),
.PC_o(PC_o),
.IMEM_o(IMEM_o),
.ADDR_o(ADDR_o),
.ALU_o(ALU_o),
.DMEM_o(DMEM_o),
.RegDr_o(RegDr_o)
);
endmodule