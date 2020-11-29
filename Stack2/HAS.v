
module HAS (Cout,DFF,Din,En,Q);

	input Din,En,Q;
	output Cout,DFF;
	
	wire Q_n,and1_out,Din_n, and2_out,xor1_out;
	
	and and1 (and1_out,Din,En,!Q);
	and and2 (and2_out,En,Q,!Din);
	xor xor1 (DFF,En,Q);
	or or1 (Cout,and1_out,and2_out);
	
endmodule	