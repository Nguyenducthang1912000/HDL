
`timescale 1ns/1ps; 

module Test_counter();
    parameter N = 11;

    reg [N-1:0] In;
    reg Din,En,clk,Load;

    wire [N-1:0] Out;
    wire Cout;

    UpDown_Counter inst0 (
        .Cout(Cout),
        .Out(Out),
        .Din(Din),
        .En(En),
        .clk(clk),
        .In(In),
        .Load(Load)
    );

    initial begin
        clk = 0;
        Din = 0;
        Load = 1'b 1;
        En = 1'b1;
        In = 9'd 123;
        #15
        Load = 0;

        #100
        Din = 1'b1;

        #200 $finish;

    end
always @ (clk)
#10 clk <= ~clk;



endmodule
