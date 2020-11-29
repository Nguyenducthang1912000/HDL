//module d_latch (q_out,d_in,enable);
module memcell_1b (data_out,row_sl,data_in,write_enable);
	input row_sl,data_in,write_enable;
	output data_out;
	
	wire and_out0,latch_out;
	
	and and0 (and_out0,row_sl,write_enable);
	d_latch latch0 (
		.q_out(latch_out),
		.d_in(data_in),
		.enable(and_out0)
	);
	bufif1(
		data_out,
		latch_out,
		row_sl
	);

endmodule 