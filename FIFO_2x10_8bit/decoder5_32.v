//module decode4_16 (data_out,data_in,enable);

module decoder5_32 (data_out,data_in,enable);
	input  [4:0]  data_in;
	input 		  enable;
	output [31:0] data_out;

	wire [4:0] 	  data_in;
	wire [31:0]   data_out;
	wire [31:0]   da_o;
	decode4_16 de4_16_0 (
		.data_out(da_o[15:0]),
		.data_in(data_in[3:0]),
		.enable (!data_in[4])
	);
	decode4_16 de4_16_1 (
		.data_out(da_o[31:16]),
		.data_in(data_in[3:0]),
		.enable (data_in[4])
	);
	
	and ad[31:0] (data_out[31:0], da_o[31:0], enable);


endmodule 