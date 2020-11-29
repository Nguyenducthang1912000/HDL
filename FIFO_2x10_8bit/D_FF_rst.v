module D_FF_rst (q,d,clk,rst);
    input  clk, d,rst;
    output q;
    reg    q;
       
    always @(posedge clk)
    begin
       if (rst == 1'b0)
			q <= 1'b0;
		else
			q <= d;
    end
        endmodule