//This's Top-Level Entity
//module HAS (Cout,DFF,Din,En,Q);
//module D_FF_rst (q,d,clk,rst);
//module Mux2_1 (Out,In0,In1,S);

module Top_sub1 (Cout,Out,Din,En,clk,set,In,Load);
	parameter N = 10;
	
	input Din,En,clk,set,Load;
	input   [N-1:0] In;
	output       Cout;
	output [N-1:0] Out;
	wire   [N-1:0] In;
	wire   [N-1:0] Out;
	wire         Cout;
	

	wire [N-2:0] C_Out  ;
	wire [N-1:0] DFF    ;


	HAS has[N-1:0] ({Cout,C_Out[N-2:0]},DFF[N-1:0],Din,{C_Out[N-2:0],En},Out[N-1:0]);

	wire [N-1:0] mux_out;
	
	Mux2_1 mux[N-1:0] (mux_out[N-1:0],DFF[N-1:0],In[N-1:0],Load);

	D_FF dff[N-1:0] (Out[N-1:0],mux_out[N-1:0],clk) ;

	
	
endmodule
	