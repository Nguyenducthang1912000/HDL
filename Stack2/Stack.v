
module Stack (data_io,empty,full,rst,push_pop,enable,clk);

	inout [7:0] data_io;
	input rst,push_pop,enable,clk;
	
	output empty,full;
	
	wire [7:0] data_io;
	wire rst,push_pop,enable,empty,full;
	
	wire         andout_0,andout_1,enable_0,enable_1;	
	wire [9:0]  mux_in0, mux_in1;
	wire [9:0]   mux_out;	
	
	and and0 (andout_0,push_pop,enable);
	
	and and1 (andout_1,~push_pop,enable);
	
	//empty = 1 <- inst0 == 1023
	nor nor_0 (empty,mux_out[0],mux_out[1],mux_out[2],mux_out[3],mux_out[4],mux_out[5],mux_out[6],mux_out[7],mux_out[8],mux_out[9]);
	and and_2 (full ,mux_out[0],mux_out[1],mux_out[2],mux_out[3],mux_out[4],mux_out[5],mux_out[6],mux_out[7],mux_out[8],mux_out[9]);
	

	
	//module UpDown_Counter (Cout,Out,Din,En,clk,In,Load);
	
	UpDown_Counter inst0 (
		.Cout(),
		.Out(mux_in1),
		.Din(andout_0),
		.En(enable),
		.clk(clk),
		.In (10'd0),
		.Load(rst)
	);

	UpDown_Counter inst1 (
		.Cout(),
		.Out(mux_in0),
		.Din(andout_0),
		.En(enable),
		.clk(clk),
		.In (10'd0),
		.Load(rst)
	);
	//module Mux2_1_10bit (data_out, data_in0, data_in1,select);
	Mux2_1_10bit inst2  (
		.data_out (mux_out),
		.data_in0 (mux_in0[9:0]),
		.data_in1 (mux_in1[9:0]),
		.select (andout_1)
	);
	
	
	//module SRAM_2x10_8bit (data_io,row_sl,chip_sl,address); 
	SRAM_2x10_8bit inst3 (
		.data_io(data_io),
		.row_sl(andout_1),
		.chip_sl(enable),
		.address(mux_out)
	);





endmodule 