
//module decoder10_1024 (data_out,data_in,enable);
//module mencell_8b_ver2 (data_out,data_in,row_sl,write_enable);


// row_sl => read or write select
module SRAM_2x10_8bit (data_io,row_sl,chip_sl,address); 

	inout [7:0] data_io;
	input row_sl,chip_sl;
	input [9:0] address;
	
	wire [7:0] data_io;
	wire row_sl,chip_sl;
	wire [9:0] address;
	
	wire [1023:0] dcder_out;
	wire [7:0] mcell_out;
	
	wire andout0,andout1;
	
	and and0 (andout0,row_sl,chip_sl);
	and and1 (andout1,!row_sl,chip_sl);
	
	decoder_10bit inst0 (
		.data_out(dcder_out),
		.data_in(address)
	);
	mencell_8b_ver2 inst1 [1023:0] (
		.data_out (mcell_out[7:0]),
		.data_in  (data_io[7:0]),
		.write_enable (andout0),
		.row_sl (dcder_out)

	);	
	bufif1 buf0[7:0] (
		data_io[7:0],
		mcell_out[7:0],
		andout1
	); 
	
endmodule 