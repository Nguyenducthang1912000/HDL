//module decoder2_4 (data_out, data_in,enable);
module decoder3_8 (data_out,data_in,enable);
	input  [2:0] data_in;
	input enable;
	output [7:0] data_out;
			
	wire [2:0] data_in;
	wire enable;
	wire [7:0] data_out;
	
	wire [3:0] da_o_1;
	
	decoder2_4 de2_4_0 (
			.data_out (da_o_1),
			.data_in ({1'b0,data_in[2]}),
			.enable(enable)
	);
	decoder2_4 de2_4_1 (
			.data_out (data_out[3:0]),
			.data_in (data_in[1:0]),
			.enable(da_o_1[0])
	);
	decoder2_4 de2_4_2 (
			.data_out (data_out[7:4]),
			.data_in (data_in[1:0]),
			.enable(da_o_1[1])
	);
/* decoder2_4 de2_4_0[2:0] (
	.data_out(data_out[7:0]),
	.data_in 


);
*/
endmodule 