//This's Top-Level Entity
//module HAS (Cout,DFF,Din,En,Q);
//module D_FF (q,d,clk);
//module Mux2_1 (Out,In0,In1,S);

module TestHAS (Cout,Out,Din,En,clk,In, Load);
	parameter N = 8;
	input Din,En,clk,Load;
	input  [N-1:0] In;
	output       Cout;
	output [N-1:0] Out;
	wire   [N-1:0] In;
	wire   [N-1:0] Out;
	wire         Cout;
	
//	wire Cout0,Cout1,Cout2,Cout3,Cout4,Cout5,Cout6;
//	wire DFF0,DFF1,DFF2,DFF3,DFF4,DFF5,DFF6,DFF7;
//	wire	Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7;
//	reg qff0,qff1,qff2,qff3,qff4,qff5,qff6,qff7;

	wire [N-2:0] C_Out  ;
	wire [N-1:0] DFF    ;

	
//	HAS has0 (Cout0,DFF0,Din,En,Out[0]);
//	HAS has1 (Cout1,DFF1,Din,Cout0,Out[1]);
//	HAS has2 (Cout2,DFF2,Din,Cout1,Out[2]);
//	HAS has3 (Cout3,DFF3,Din,Cout2,Out[3]);
//	HAS has4 (Cout4,DFF4,Din,Cout3,Out[4]);
//	HAS has5 (Cout5,DFF5,Din,Cout4,Out[5]);
//	HAS has6 (Cout6,DFF6,Din,Cout5,Out[6]);
//	HAS has7 (Cout,DFF7,Din,Cout6,Out[7]);

	HAS has[N-1:0] ({Cout,C_Out[N-2:0]},DFF[N-1:0],Din,{C_Out[N-2:0],En},Out[N-1:0]);
//	
//	wire mux_out0,mux_out1,mux_out2,mux_out3,mux_out4,mux_out5,mux_out6,mux_out7;
	
//	Mux2_1 mux0 (mux_out0,DFF0,In[0],Load);
//	Mux2_1 mux1 (mux_out1,DFF1,In[1],Load);
//	Mux2_1 mux2 (mux_out2,DFF2,In[2],Load);
//	Mux2_1 mux3 (mux_out3,DFF3,In[3],Load);
//	Mux2_1 mux4 (mux_out4,DFF4,In[4],Load);
//	Mux2_1 mux5 (mux_out5,DFF5,In[5],Load);
//	Mux2_1 mux6 (mux_out6,DFF6,In[6],Load);
//	Mux2_1 mux7 (mux_out7,DFF7,In[7],Load);

	wire [N-1:0] mux_out;
	Mux2_1 mux[N-1:0] (mux_out[N-1:0],DFF[N-1:0],In[N-1:0],Load);
	
//	D_FF dff0 (Out[0],mux_out0,clk);	
//	D_FF dff1 (Out[1],mux_out1,clk);
//	D_FF dff2 (Out[2],mux_out2,clk);
//	D_FF dff3 (Out[3],mux_out3,clk);
//	D_FF dff4 (Out[4],mux_out4,clk);
//	D_FF dff5 (Out[5],mux_out5,clk);
//	D_FF dff6 (Out[6],mux_out6,clk);
//	D_FF dff7 (Out[7],mux_out7,clk);

//	assign Out[0] = Q0;
//	assign Out[1] = Q1;
//	assign Out[2] = Q2;
//	assign Out[3] = Q3;
//	assign Out[4] = Q4;
//	assign Out[5] = Q5;
//	assign Out[6] = Q6;
//	assign Out[7] = Q7;
	D_FF dff[N-1:0] (Out[N-1:0],mux_out[N-1:0],clk) ;

	
	
endmodule
	