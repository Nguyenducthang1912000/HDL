//module decoder6_64 (data_out,data_in,enable);

module decoder7_128 (data_out,data_in,enable);
	input  [6:0]  data_in;
	input 		  enable;
	output [127:0] data_out;

	wire [6:0] 	  data_in;
	wire [127:0]   data_out;
	wire [127:0]   da_o;
	decoder6_64 de6_64_0 (
		.data_out(da_o[63:0]),
		.data_in(data_in[5:0]),
		.enable (!data_in[6])
	);
	decoder6_64 de6_64_1 (
		.data_out(da_o[127:64]),
		.data_in(data_in[5:0]),
		.enable (data_in[6])
	);
	
	and ad[127:0] (data_out[127:0], da_o[127:0], enable);


endmodule