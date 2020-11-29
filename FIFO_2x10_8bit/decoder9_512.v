//module decoder8_256 (data_out,data_in,enable);

module decoder9_512 (data_out,data_in,enable);
	input  [8:0]  data_in;
	input 		  enable;
	output [511:0] data_out;

	wire [8:0] 	  data_in;
	wire [511:0]   data_out;
	wire [511:0]   da_o;
	
	decoder8_256 de8_256_0 (
		.data_out(da_o[255:0]),
		.data_in(data_in[7:0]),
		.enable (!data_in[8])
	);
	decoder8_256 de8_256_1 (
		.data_out(da_o[511:256]),
		.data_in(data_in[7:0]),
		.enable (data_in[8])
	);
	
	and ad[511:0] (data_out[511:0], da_o[511:0], enable);


endmodule