module sram_1024add_8bit (
    data_io,address,read_write_select,chip_select
);
    inout [7:0] data_io;
    input [9:0] address;
    input read_write_select,chip_select;
    
    wire [9:0] address;
    wire read_write_select,chip_select;

    wire output_enable, write_enable;
    wire [1023:0] decoder_out;
    wire [7:0] data_out;
    and inst0 (write_enable,read_write_select,chip_select);
    and inst1 (output_enable,~read_write_select,chip_select);


    decoder_10bit inst2 (
        .data_out(decoder_out),
        .data_in(address)
    );

    memcell_nbit inst3[1023:0](
        .data_out(data_out),
        .data_in(data_io[7:0]),
        .row_select(decoder_out),
        .write_enable(write_enable)
    );

    bufif1 inst4[7:0] (
        data_io[7:0],
        data_out[7:0],
        output_enable
    );
endmodule 