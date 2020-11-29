module SRAM (
    data_io,address,read_write_select,chip_select
);
    inout [7:0] data_io;
    input [9:0] address;
    input read_write_select,chip_select;
    
    wire [9:0] address;
    wire read_write_select,chip_select;

    sram_1024add_8bit inst0 (
        .data_io(data_io),
        .address(address),
        .read_write_select(read_write_select),
        .chip_select(chip_select)
    );
   

endmodule 