module D_FF (
    Q,D,clk
);
    input D,clk;
    output Q;
	 reg Q;
    always @(posedge clk ) begin
        Q <= D;
    end
    
endmodule