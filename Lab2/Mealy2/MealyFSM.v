module MealyFSM (MealyFSM_i,clk,MealyFSM_o);
//input
input [3:0] MealyFSM_i; 
input clk;
//output
output MealyFSM_o;
//port type
wire clk;
wire [1:0] NStoReg;
wire [1:0] RegtoNS;
wire [1:0] RegtoOut;
wire [3:0] MealyFSM_i;
wire MealyFSM_o;
NextState NextState_inst0(
.Data_i(MealyFSM_i),
.Data_o(NStoReg),
.CurrentState_i(RegtoNS)
);
register register_inst1(
.clk(clk),
.data_i(NStoReg),
.data_o(RegtoOut)
);
OutPort OutPort_inst2(
.Data_i(RegtoOut),
.Data_o(MealyFSM_o),
.LastNo_i(MealyFSM_i)
);
endmodule