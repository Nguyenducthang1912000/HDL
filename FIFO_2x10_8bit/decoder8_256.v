//module decoder7_128 (data_out,data_in,enable);

module decoder8_256 (data_out,data_in,enable);
	input  [7:0]  data_in;
	input 		  enable;
	output [255:0] data_out;

	wire [7:0] 	  data_in;
	wire [255:0]   data_out;
	wire [255:0]   da_o;
	
	decoder7_128 de7_128_0 (
		.data_out(da_o[127:0]),
		.data_in(data_in[6:0]),
		.enable (!data_in[7])
	);
	decoder7_128 de7_128_1 (
		.data_out(da_o[255:128]),
		.data_in(data_in[6:0]),
		.enable (data_in[7])
	);
	
	and ad[255:0] (data_out[255:0], da_o[255:0], enable);


endmodule