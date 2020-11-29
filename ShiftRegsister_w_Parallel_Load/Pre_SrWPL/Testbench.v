`timescale 1ns/1ps

module Testbench ();
parameter N = 8;
reg [N-1:0] data_in;
reg [1:0] selection;
reg clk,i_right,i_left;

wire [N-1:0] data_out;

initial begin
    clk =0;
    data_in = 8'd100;
    selection = 2'd1; // load
    #50
    selection = 2'd2; // shift left
    i_right = 1'b1;
    #50
    selection = 2'd3; // shift right
    i_left = 1'b1;
    #50
    selection = 2'd0; // no change
    #50 $finish;
end

always @ (clk) 
 #25 clk <= ~clk;

SrWPL inst0 (
    .data_out (data_out),
    .data_in (data_in),
    .selection (selection),
    .clk (clk),
    .i_right (i_right),
    .i_left (i_left)
);
endmodule
