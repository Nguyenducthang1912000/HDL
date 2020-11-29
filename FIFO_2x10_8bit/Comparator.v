
module Comparator (data_out,data_a,data_b);
	input [9:0] data_a,data_b;
	output data_out;
	
	wire [9:0] data_a,data_b, xor_out;
	
	xor xor0 [9:0] (xor_out,data_a,data_b);
	nor no0 (data_out, xor_out[0],xor_out[1],xor_out[2],xor_out[3],xor_out[4],xor_out[5],xor_out[6],xor_out[7],xor_out[8],xor_out[9]);
	

endmodule 