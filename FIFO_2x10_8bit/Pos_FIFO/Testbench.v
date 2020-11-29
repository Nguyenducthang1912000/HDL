`timescale 1ns/1ps
module Testbench ();
    reg rst,clk,read_write,enable;
    reg [7:0] data_in;

    wire [7:0] data_io;
    wire full,empty;
    assign #2 data_io = (read_write==0) ? 8'dz : data_in;
    integer i;
    initial begin
        clk = 0;
        rst = 1'b1;

        read_write = 1'b1;
        enable = 1'b1;
        #50
        rst = 0;
        data_in = 8'd122;
        for (i=0 ;i<1024 ;i = i+1) begin
            if (i == 1023) begin
                enable = 0;
                data_in = 0;
            end
            #50
            data_in = 2*i;
        end
        read_write = 0;
        #50 
        enable = 1'b1;
        data_in = 0;
        #60000  $finish;
    end

always @(clk) begin
    #25 clk <= ~clk;
end
    FIFO inst0 (
        .empty(empty),
        .full(full),
        .data_io(data_io),
        .rst(rst),
        .clk(clk),
        .read_write(read_write),
        .enable(enable)
    );


endmodule
