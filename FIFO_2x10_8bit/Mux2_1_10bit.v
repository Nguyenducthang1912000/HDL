//module Mux2_1 (Out,In0,In1,S);


module Mux2_1_10bit (data_out, data_in0, data_in1,select);
	input [9:0] data_in0, data_in1;
	input select;
	output [9:0] data_out;
	
	wire [9:0] data_in0,data_in1,data_out;
	wire select;
	
	Mux2_1 mux[9:0] (
		.Out(data_out[9:0]),
		.In0(data_in0[9:0]),
		.In1(data_in1[9:0]),
		.S(select)
	);


endmodule 