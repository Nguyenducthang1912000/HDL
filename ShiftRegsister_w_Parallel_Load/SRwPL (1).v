//Shifter Register with Parallel Load
//sel = 00 --> no change
//sel = 01 --> load INPUT
//sel = 10 --> shift left
//sel = 11 --> shift right

module SRwPL(OUT, clk, IN, sel);    
	parameter N = 8;
	parameter gnd = 1'b0;
	//parameter vcc = 1'b1;
	input clk;
	input [1:0] sel;
	input [N-1:0] IN;
	output [N-1:0] OUT;
	
	//wire OUT [N-1:0];
	wire [N-1:0] mux_o ;
	
	//	D_ff D[N-1:0]( .Qout(), .clk(), .Din()	);
	D_ff D[N-1:0](OUT[N-1:0], clk, mux_o[N-1:0]);
	
	//	mux4_1 mux[N-1:0](.mux_out(), .sel(), .I3(), .I2(), .I1(), .I0());
	mux4_1 mux[N-1:0](mux_o[N-1:0], sel, {gnd, OUT[N-1:1]}, {OUT[N-2:0], gnd}, IN[N-1:0], OUT[N-1:0]);

endmodule 



