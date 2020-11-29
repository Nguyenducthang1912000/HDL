module ASIC(Inport,Outport,CLK,Done);
input [15:0] Inport;
output [15:0] Outport;
input CLK;
output Done;
//port type 
wire [2:0]	ADDR_WR,ADD_RDA,ADD_RDB;
wire Opcode;
wire [1:0] S;
wire CLK,IE,OE,WE;
wire [4:0] FSMtoCU;
wire [15:0] AtoALU,BtoALU,ALUtoSL,SLtoReg,RegtoNS;
ControlUnit ControlUnit_inst0(
.IE(IE),
.OE(OE),
.ADDR_WR(ADDR_WR),
.S(S),
.Opcode(Opcode),
.WE(WE),
.ADDR_RDA(ADD_RDA),
.ADDR_RDB(ADD_RDB),
.State(FSMtoCU),
.Done(Done)
);
Datapath Datapath_inst1(
.IE(IE),
.OE(OE),
.ADDR_WR(ADDR_WR),
.S(S),
.Opcode(Opcode),
.WE(WE),
.ADDR_RDA(ADD_RDA),
.ADDR_RDB(ADD_RDB),
.CLK(CLK),
.Inport (Inport),
.Outport (Outport)
);
MooreFSM MooreFSM_inst2(
.clk(CLK),
.MooreFSM_o(FSMtoCU)
);
endmodule