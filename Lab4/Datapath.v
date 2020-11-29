
module Datapath(PCSrc,RegSrc,RegEn,ALUSrc,ALUOp,DmemWr,WrSrc,CLK,Ins,ZERO,PC_o,IMEM_o,ALU_o,DMEM_o,RegDr_o,ADDR_o);
input PCSrc,RegSrc,RegEn,ALUSrc,DmemWr,WrSrc,CLK;
input[3:0] ALUOp;
output[4:0] Ins;
output ZERO;
output[4:0] PC_o;
output[15:0] IMEM_o;
output[2:0] ADDR_o;
output [15:0] ALU_o;
output [15:0] DMEM_o;
output [15:0] RegDr_o;
 //wire connect
 
wire[5:0] Inc2toMux;
wire[5:0] AddConsttoMux;
wire[5:0] PCSrctoPC;
wire[4:0] PCOut;
wire[15:0] IMEM_Out,SE_Out;
wire[5:0] ShiftLeft_Out;
wire[2:0] RegSrctoRF;
wire[15:0] RFA_Out,RFB_Out;
wire[15:0] ALUSrctoALU,ALU_Out;
wire[15:0] DMEM_Out,WrSrc_Out;
wire[5:0] active;
wire[5:0] PC_temp = {PCOut[4:0],1'b0};
assign Ins = IMEM_Out[15:11];
assign PC_o = PCOut;
assign IMEM_o = IMEM_Out;
assign ALU_o = ALU_Out;
assign DMEM_o = DMEM_Out;
assign RegDr_o = WrSrc_Out;
assign ADDR_o = IMEM_Out[10:8];
Mux5bit	PCSrcBlock(
.IN_0(Inc2toMux),
.IN_1(AddConsttoMux),
.Select(PCSrc),
.DATA_OUT(PCSrctoPC)
);
PC	PCBlock(
.DATA_IN(PCSrctoPC),
.DATA_OUT(PC_temp),
.CLK(CLK)
);
Inc2	Inc2Block(
.DATA_IN(PC_temp),
.DATA_OUT(Inc2toMux)
);
IMEM	IMEMBlock(
.addr(PC_temp[5:1]),
.q(IMEM_Out)
);
Mux3bit	RegSrcBlock(
.IN_0(IMEM_Out[10:8]),
.IN_1(IMEM_Out[4:2]),
.DATA_OUT(RegSrctoRF),
.Select(RegSrc)
);
RegisterFile	RF(
.ADDR_i(IMEM_Out[10:8]),
.WE_i(RegEn),
.ReadA_i(IMEM_Out[7:5]),
.ReadB_i(RegSrctoRF),
.clk(CLK),
.DATA_IN(WrSrc_Out),
.OUTA(RFA_Out),
.OUTB(RFB_Out)
);
SignExtend	SignExtendBlock(
.DATA_IN(IMEM_Out[4:0]),
.DATA_OUT(SE_Out)
);
ShiftLeft1	SL1(
.DATA_IN(SE_Out[5:0]),
.DATA_OUT(ShiftLeft_Out)
);
AddConst	AddConstBlock(
.A_IN(ShiftLeft_Out),
.B_IN({PCOut[4:0],1'b0}),
.DATA_OUT(AddConsttoMux)
);
Mux16bit	ALUSrcBlock(
.IN_0(RFB_Out),
.IN_1(SE_Out),
.Select(ALUSrc),
.DATA_OUT(ALUSrctoALU)
);
ALU	ALUBlock(
.A_in(RFA_Out),
.B_in(ALUSrctoALU),
.Opcode_i(ALUOp),
.ZERO_o(ZERO),
.OUT_o(ALU_Out)
);
DMEM	DMEMBlock(
.W(DmemWr),
.ADDR(ALU_Out[2:0]),
.CLK(CLK),
.DATA_IN(RFB_Out),
.DATA_OUT(DMEM_Out)
);
Mux16bit	WrSrcBlock(
.IN_0(DMEM_Out),
.IN_1(ALU_Out),
.Select(WrSrc),
.DATA_OUT(WrSrc_Out)
);
endmodule 