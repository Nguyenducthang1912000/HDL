module MooreFSM(clk,MooreFSM_o,Done);
//input 
input clk;
output Done;
//output
output[15:0] MooreFSM_o;
//data types for port
wire clk;
wire [15:0] NS_o;
wire [15:0] MooreFSM_o;

NextState NextState_inst0(
	.NS_o(NS_o),
	.Reg_i(MooreFSM_o),
	.Done(Done)
);
register register_inst1(
	.clk(clk),
	.data_i(NS_o),
	.data_o(MooreFSM_o)
);
endmodule