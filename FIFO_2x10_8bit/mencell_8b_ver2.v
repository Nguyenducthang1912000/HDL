
module mencell_8b_ver2 (data_out,data_in,row_sl,write_enable);
	input [7:0] data_in;
	input row_sl,write_enable;
	output [7:0] data_out;
	
	wire [7:0] data_in;
	wire [7:0] data_out;
	
	memcell_1b mc1b_0 [7:0] (
		.data_out(data_out),
		.data_in(data_in),
		.row_sl(row_sl),
		.write_enable(write_enable)
	);

endmodule 