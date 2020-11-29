module D_FF (q,d,clk);
    input  clk, d;
    output q;
    reg    q;
       
    always @(posedge clk)
    begin
       q <= d;
    end
        endmodule