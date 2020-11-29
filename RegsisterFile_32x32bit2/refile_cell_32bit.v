module refile_cell_32bit (
    OutA,OutB,write_sl,In,clk,select_a,select_b
);
    input         write_sl,clk,select_a,select_b;
    input  [31:0] In;
    output [31:0] OutA,OutB;

    wire [31:0] In,OutA,OutB;
    wire write_sl,clk,select_a,select_b;

    refile_cell inst[31:0] (
        .outA(OutA),
        .outB(OutB),
        .write_sl(write_sl),
        .in(In),
        .clk(clk),
        .select_a(select_a),
        .select_b(select_b)
    );
endmodule