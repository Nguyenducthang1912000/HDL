module RegisterFile_32x32bit (
    OutA, OutB, address_w,enable_w, address_a, enable_a, address_b, enable_b,In, clk
);
    input enable_w,enable_a, enable_b,clk;
    input [4:0] address_w,address_a,address_b;
    input [31:0] In;
    output [31:0] OutA, OutB;

    wire [31:0] In,OutA, OutB;

    wire enable_w,enable_a, enable_b,clk;
    wire [4:0] address_w,address_a,address_b;

    wire [31:0] dcout_0,dcout_1,dcout_2;
    // address write decoder
    decoder5bit inst0 (
        .data_out(dcout_0),
        .data_in (address_w),
        .enable (enable_w)
    );
    // address a decoder 
    decoder5bit inst1 (
        .data_out(dcout_1),
        .data_in (address_a),
        .enable (enable_a)
    );
    decoder5bit inst2 (
        .data_out(dcout_2),
        .data_in (address_b),
        .enable (enable_b)
    );

    refile_cell_32bit inst3 [31:0] (
        .OutA (OutA[31:0]),
        .OutB (OutB[31:0]),
        .write_sl (dcout_0[31:0]),
        .In (In[31:0]),
        .clk (clk),
        .select_a (dcout_1[31:0]),
        .select_b (dcout_2[31:0])
    );
    
endmodule