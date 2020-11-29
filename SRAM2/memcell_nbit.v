module memcell_nbit (
    data_out,data_in,row_select,write_enable
);
    parameter N = 8;

    input [N-1:0] data_in;
    input row_select,write_enable;

    output [N-1:0] data_out;

    wire [N-1:0] data_out,data_in;
    wire row_select,write_enable;

    memcell inst[N-1:0] (
        .data_out(data_out),
        .data_in(data_in),
        .Row_select(row_select),
        .Write_enable(write_enable)
    );
    
endmodule