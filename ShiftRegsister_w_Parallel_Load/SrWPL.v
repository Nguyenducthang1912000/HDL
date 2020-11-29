module SrWPL (
    data_out,data_in,selection,clk,i_right,i_left
);
    parameter N = 8;
    input          clk,i_right,i_left;
    input  [N-1:0] data_in;
    output [N-1:0] data_out;
	 input  [1:0]   selection;

    wire [N-1:0] data_out,data_in;
	 wire [1:0]   selection;
    wire         clk,i_right,i_left;

    D_n inst0 (
        .Out (data_out),
        .In (data_in),
        .selection(selection),
        .I_right (i_right),
        .I_left (i_left),
        .clk (clk)
    );

endmodule