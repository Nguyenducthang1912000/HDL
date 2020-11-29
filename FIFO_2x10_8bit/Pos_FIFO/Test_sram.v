
`timescale 1ns/1ps

module Test_sram ();

reg  row_sl,chip_sl;
reg  [9:0] address;
reg  [7:0] data_in; 
wire [7:0] data_io;
integer i;
assign #2 data_io = (row_sl == 1) ? data_in : 8'bz;

initial begin
    #0
    chip_sl = 1'b1;
    row_sl  = 1'b0;
    for (i=0;i<=1024;i=i+1) begin
        #30
        data_in = $urandom%255;
        address = i;
    end
    row_sl = 0;
    for (i=0;i<=1024;i=i+1) begin
        row_sl = 0;
        #30
        data_in = 8'd0;
        address = i;
    end
    $finish;
end
always @ (row_sl)
#25 row_sl <= ~row_sl;

SRAM_2x10_8bit inst0  (
    .data_io (data_io),
    .row_sl (row_sl),
    .chip_sl(chip_sl),
    .address (address)
);
endmodule 
