`timescale 1ns/1ps
module Testbench();
reg CLK,RST_N,DATA_IN;
wire QOUT;
initial begin
    CLK = 0;
    RST_N = 0;
    DATA_IN = 0;
    #205;
    RST_N = 1'b1;
    #500;
    DATA_IN = 1'b1;
    #500;
    DATA_IN = 1'b0;
    #2000 $finish;
end
always @(CLK)
    #10 CLK <= ~CLK;
ModelSimTest    ins1(
    .Clk(CLK),
    .Resetn(RST_N),
    .Din(DATA_IN),
    .Qout(QOUT)
);
endmodule