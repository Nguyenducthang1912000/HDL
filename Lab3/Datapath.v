module Datapath (IE,WE,OE,S,ADDR_WR,Inport,Outport,ADDR_RDA,ADDR_RDB,Opcode,CLK);
input [15:0] Inport;
input [2:0]	ADDR_WR,ADDR_RDA,ADDR_RDB;
input Opcode;
input [1:0] S;
input CLK,IE,OE,WE;
output [15:0] Outport;
wire [15:0] AtoALU,BtoALU,ALUtoSL,SLtoReg,RegtoNS;
RegisterFile RegisterFile_inst1(
.DATA_IN(Inport),
.ADDR_i(ADDR_WR),
.ReadA_i(ADDR_RDA),
.ReadB_i(ADDR_RDB),
.clk(CLK),
.WE_i(WE),
.IE_i(IE),
.OUTA(AtoALU),
.OUTB(BtoALU),
.ASIC_i(SLtoReg)
);
ALU ALU_inst2(
.A(AtoALU),
.B(BtoALU),
.Opcode(Opcode),
.ALU_Out(ALUtoSL)
);
ShiftLeft ShiftLeft_inst3(
.Data(ALUtoSL),
.S(S),
.SLOut(SLtoReg)
);
Reg Reg_inst4(
.RegIn(SLtoReg),
.RegOut(Outport),
.OE(OE),
.clk(CLK)
);
endmodule