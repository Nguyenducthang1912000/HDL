
module decoder2_4 (data_out, data_in,enable);
	input  [1:0] data_in;
	input enable;
	output [3:0] data_out;
			
	wire [1:0] data_in;
	wire enable;
	wire [3:0] data_out;
	
	and and0 ( data_out[0], !data_in[0], !data_in[1],enable);
	and and1 ( data_out[1],  data_in[0], !data_in[1],enable);
	and and2 ( data_out[2], !data_in[0],  data_in[1],enable);
	and and3 ( data_out[3],  data_in[0],  data_in[1],enable);
	
endmodule 