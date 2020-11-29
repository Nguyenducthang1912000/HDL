//module Mux2_1 (Out,In0,In1,S);


module Mux2_1_10bit (data_out, data_in0, data_in1,select);
	parameter N =10 ;
	input [N-1:0] data_in0, data_in1;
	input select;
	output [N-1:0] data_out;
	
	wire [N-1:0] data_in0,data_in1,data_out;
	wire select;
	
	Mux2_1 mux[N-1:0] (
		.Out(data_out[N-1:0]),
		.In0(data_in0[N-1:0]),
		.In1(data_in1[N-1:0]),
		.S(select)
	);


endmodule 