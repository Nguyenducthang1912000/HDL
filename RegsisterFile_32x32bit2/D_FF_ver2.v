module D_FF_ver2 (
    Q_out,Qn_out,D_in,clk
);
    input clk,D_in;
    output Q_out,Qn_out;

    wire clk,D_in,Q_out,Qn_out;
    wire inst0_out,inst1_out,inst2_out;
    nand inst0(inst0_out,clk,D_in);
    nand inst1(inst1_out,clk,~D_in);
    nand inst2(Q_out,Qn_out,inst0_out);
    nand inst3(Qn_out,Q_out,inst1_out);
endmodule