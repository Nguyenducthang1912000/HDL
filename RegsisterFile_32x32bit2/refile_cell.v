
module refile_cell (
    outA,outB,write_sl,in,clk,select_a,select_b
);
    input clk,write_sl,in,select_a,select_b;
    output outA,outB;

    wire clk,write_sl,in,outA,outB,select_a,select_b;

    wire and_out1,and_out2,q_out,or_out1;

    and  inst0 (and_out1,q_out,~write_sl);
    and  inst1 (and_out2,in,write_sl);

    or   inst2 (or_out1,and_out2,and_out1);

    D_FF inst3 (
        .Q(q_out),
        .D(or_out1),
        .clk(clk)
    );

    bufif1 inst4 (
        outA,
        q_out,
        select_a
    );
    bufif1 inst5 (
        outB,
        q_out,
        select_b
    );

    
endmodule