module mux4_1(mux_out, sel, I3, I2, I1, I0);
	input [1:0] sel;
	input I3, I2, I1, I0;
	output mux_out;
	
	wire w3, w2, w1, w0;
	
	and and3(w3, sel[1], sel[0], I3);
	and and2(w2, sel[1], ~sel[0], I2);
	and and1(w1, ~sel[1], sel[0], I1);
	and and0(w0, ~sel[1], ~sel[0], I0);
	
	or or0(mux_out, w3, w2, w1, w0);
endmodule
	