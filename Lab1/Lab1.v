module Lab1(clk,count_o,load,value);
input 		 clk;
input        load;
input [3:0]  value;
output [3:0] count_o;
//declare data type for ports
wire 		  clk;
wire 		  load;
wire [3:0] count_o;
wire [3:0] value;
//declare internal signal
wire [2:0] incr_t;
wire [2:0] state_t;
wire [2:0] lgOut;
//Functional description
register register_inst0(
		.clk(clk),
		.data_i(lgOut),
		.data_o(state_t)
	);
Botang Botang_inst0(
		.data_i(state_t),
		.data_o(incr_t)
	);
transfer transfer_inst0(
		.data_i(state_t),
		.data_o(count_o)
);
LoadLogic loadLogic_inst0(
		.data_in_i(incr_t),
		.load_i(load),
		.value_i(value),
		.qin_o(lgOut)
);
endmodule