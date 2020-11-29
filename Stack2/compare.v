module compare (
    result_sig,data_a,data_b
);
    parameter N =10 ;
    input [N-1:0] data_a,data_b;
    output result_sig;
    wire [N-1:0] xor_out;

    xor xor0 [9:0] (xor_out,data_a,data_b);
	nor no0 (result_sig, xor_out[0],xor_out[1],xor_out[2],xor_out[3],xor_out[4],xor_out[5],xor_out[6],xor_out[7],xor_out[8],xor_out[9]);

    
endmodule