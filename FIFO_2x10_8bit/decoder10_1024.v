//module decoder9_512 (data_out,data_in,enable);

module decoder10_1024 (data_out,data_in,enable);
	input  [9:0]  data_in;
	input 		  enable;
	output [1023:0] data_out;

	wire [9:0] 	  data_in;
	wire [1023:0]   data_out;
	wire [1023:0]   da_o;
	
	decoder9_512 de9_512_0 (
		.data_out(da_o[511:0]),
		.data_in(data_in[8:0]),
		.enable (!data_in[9])
	);
	decoder9_512 de9_512_1 (
		.data_out(da_o[1023:512]),
		.data_in(data_in[8:0]),
		.enable (data_in[9])
	);
	
	and ad[1023:0] (data_out[1023:0], da_o[1023:0], enable);


endmodule