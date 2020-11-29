module MooreFSM(clk,MooreFSM_o);
//input 
input clk;
//output
output[4:0] MooreFSM_o;
//data types for port
wire clk;
wire [4:0] NS_o;
wire [4:0] MooreFSM_o;

NextState NextState_inst0(
	.NS_o(NS_o),
	.Reg_i(MooreFSM_o)
);
register register_inst1(
	.clk(clk),
	.data_i(NS_o),
	.data_o(MooreFSM_o)
);
endmodule