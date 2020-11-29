module MealyFSM(clk,MealyFSM_i,MealyFSM_o);
//input 
input [3:0] MealyFSM_i;
input clk;
//output
output MealyFSM_o;
//data types for port
wire clk;
wire [3:0] MealyFSM_i;
wire [1:0] NS_o;
wire [1:0] Reg_o;

NextState NextState_inst0(
	.Data_i(MealyFSM_i),
	.Data_o(NS_o),
	.CurrentState_i(Reg_o)
);
register register_inst1(
	.clk(clk),
	.data_i(NS_o),
	.data_o(Reg_o)
);
outFSM outFSM_inst2(
	.LastNo_i(MealyFSM_i),
	.Data_i(Reg_o),
	.Data_o(MealyFSM_o)
);
endmodule