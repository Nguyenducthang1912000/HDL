module D_Flipflop (
    data_q,data_in,clk
);
    input data_in,clk;
    output data_q;

    wire data_in,clk,data_q;
    wire mster_out;
    D_latch mster (
        .Qout(mster_out),
        .Din(data_in),
        .control_sig(~clk)
    );
    D_latch slave (
        .Qout(data_q),
        .Din(mster_out),
        .control_sig(clk)
    );
    
    
endmodule