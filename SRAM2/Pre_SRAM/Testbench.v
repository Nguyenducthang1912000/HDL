
`timescale 1ns/1ps

module Testbench ();
    reg [9:0] address;
    reg [7:0] data_in;
    reg rws,cs;

    wire [7:0] data_io;
    integer i;
    assign #3 data_io = (rws==1) ? data_in : 8'dz;

    initial begin
        rws = 1'b1; 
        cs = 1'd1;
        data_in = 0;
        address = 0;
        for (i = 1;i<1024 ;i=i+1 ) begin
                #25
                rws = 0;
                #25
                rws = 1'b1;
                data_in = 2*i;
                address =i;
        end
        rws = 0;
        data_in = 0;
        for (i=0; i<1024;i=i+1) begin
            address = i;
            #50;
        end
    end

    SRAM inst (
        .data_io(data_io),
        .address(address),
        .read_write_select(rws),
        .chip_select(cs)
    );
endmodule