//module Top_add1 (Cout,Out,Din,En,clk,rst);
//module Comparator (data_out,data_a,data_b);
//module SRAM_2x10_8bit (data_io,row_sl,chip_sl,address);
//module Mux2_1_10bit (data_out, data_in0, data_in1,select);



module FIFO (empty,full,data_io,rst,clk,read_write,enable);
	inout [7:0] data_io;
	input rst,clk,read_write,enable;
	output empty,full;
	
	wire [7:0] data_io;
	wire rst,clk,read_write,enable,empty,full;
	
	
	wire [10:0] mux_in0,mux_in1;
	wire [9:0]  mux_out;
	
	wire andout0,andout1,out_comparator,xor_out;
	
	and and0 (andout0,!read_write,enable);
	and and1 (andout1, read_write,enable);
	
	UpDown_Counter inst0 (
		.Cout(),
		.Out(mux_in1[10:0]),
		.Din(1'b0),
		.En(andout0),
		.clk(clk),
		.In(11'b0),
		.Load(rst)
	);
	
	UpDown_Counter inst1 (
		.Cout(),
		.Out(mux_in0[10:0]),
		.Din(1'b0),
		.En(andout1),
		.clk(clk),
		.In(11'b0),
		.Load(rst)
	);
	
	Comparator inst2 (
	.data_out(out_comparator),
	.data_a(mux_in0[9:0]),
	.data_b(mux_in1[9:0])
	);
	
	Mux2_1 inst3[9:0] (
	.Out(mux_out[9:0]),
	.In0(mux_in0[9:0]),
	.In1(mux_in1[9:0]),
	.S(andout0)
	);
	
	SRAM_2x10_8bit inst4 (
	.data_io(data_io),
	.row_sl(andout1),
	.chip_sl(enable),
	.address(mux_out[9:0])
	);
	
	xor xor0 (xor_out,mux_in1[10],mux_in0[10]);
	and and2 (empty,out_comparator,!xor_out);
	and and3 (full, out_comparator, xor_out);
	

endmodule 