module test (CLK,PCSrc,RegSrc,RegEn,ALUSrc,ALUOp,DmemWr,WrSrc,Inst);
input CLK;
output PCSrc,RegSrc,RegEn,ALUSrc,DmemWr,WrSrc;
output [3:0] ALUOp;
output [15:0] Inst;
//wire 
wire[5:0] PCtoIMEM;
wire[15:0] IMEMtoPC;
wire[5:0] Inc2;
assign Inst = IMEMtoPC;
Processer_Controller inst0(
.Opcode(IMEMtoPC[15:11]),
.PCSrc(PCSrc),
.RegSrc(RegSrc),
.ALUSrc(ALUSrc),
.DmemWr(DmemWr),
.WrSrc(WrSrc),
.ALUOp(ALUOp),
.RegEn(RegEn)
);
PC inst1(
.CLK(CLK),
.DATA_OUT(PCtoIMEM),
.DATA_IN(Inc2)
);
IMEM inst2(
.addr(PCtoIMEM[5:1]),
.q(IMEMtoPC)
);
Inc2 inst3(
.DATA_IN(PCtoIMEM),
.DATA_OUT(Inc2)
);
endmodule