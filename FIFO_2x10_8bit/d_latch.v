
module d_latch (q_out,d_in,enable);
	input d_in,enable;
	output q_out;
	
	wire nand_out0,nand_out1,nand_out3;
	
	nand nad0 (nand_out0,d_in,enable);
	nand nad1 (nand_out1,nand_out0,enable);
	
	nand nad2 (q_out,nand_out3,nand_out0);
	nand nad3 (nand_out3,q_out,nand_out1);
	
	
endmodule 