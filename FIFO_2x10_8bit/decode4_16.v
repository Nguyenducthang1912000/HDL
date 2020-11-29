//module decoder3_8 (data_out,data_in,enable);
module decode4_16 (data_out,data_in,enable);
	input  [3:0]  data_in;
	input 		  enable;
	output [15:0] data_out;

	wire [3:0] 	  data_in;
	wire [15:0]   data_out;
	wire [15:0]   da_o;
	decoder3_8 de3_8_0 (
		.data_out(da_o[7:0]),
		.data_in(data_in[2:0]),
		.enable (!data_in[3])
	);
	decoder3_8 de3_8_1 (
		.data_out(da_o[15:8]),
		.data_in(data_in[2:0]),
		.enable (data_in[3])
	);
	
	and ad[15:0] (data_out[15:0], da_o[15:0], enable);
	
	
endmodule 