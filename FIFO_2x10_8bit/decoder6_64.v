//module decoder5_32 (data_out,data_in,enable);
	
module decoder6_64 (data_out,data_in,enable);
	input  [5:0]  data_in;
	input 		  enable;
	output [63:0] data_out;

	wire [5:0] 	  data_in;
	wire [63:0]   data_out;
	wire [63:0]   da_o;
	decoder5_32 de5_32_0 (
		.data_out(da_o[31:0]),
		.data_in(data_in[4:0]),
		.enable (!data_in[5])
	);
	decoder5_32 de5_32_1 (
		.data_out(da_o[63:32]),
		.data_in(data_in[4:0]),
		.enable (data_in[5])
	);
	
	and ad[63:0] (data_out[63:0], da_o[63:0], enable);


endmodule