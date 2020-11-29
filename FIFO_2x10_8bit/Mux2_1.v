
module Mux2_1 (Out,In0,In1,S);
	input In0,In1,S;
	output Out;
	
	wire nand1_out,nand2_out,S_n;
	
	not not1 (S_n,S);
	nand nand1 (nand1_out,S_n,In0);
	nand nand2 (nand2_out,S,In1);
	nand nand3 (Out,nand1_out,nand2_out);
endmodule 
