`timescale 1ns/1ps

module TestRF ();
    reg  [4:0]  address_w,address_a,address_b;
    reg         enable_w,enable_a, enable_b,clk;
    reg  [31:0] In;
    wire [31:0] OutA, OutB;
    integer i;

    initial begin
        clk = 0;
        enable_w = 1'b1;
        enable_a = 0;
        enable_b = 0;
        address_w = 0;
        In = $urandom_range(0,4294967295);
        for (i = 1; i <32;i=i+1) begin
            if (i == 32'd32) begin
                enable_w = 0;
                In = 0;
            end
            #50
            address_w = i;
            In = $urandom_range(0,4294967295);
        end
        enable_a = 1'b1;
        address_a = 0;
        In= 0;  

        for (i =1;i<16;i = i+1 ) begin
            if (i ==32'd16) begin
                enable_a = 0;
            end
            else begin
                #50
                address_a = i;
            end
        end
        enable_a = 0;
        enable_b = 1'b1;
        address_b = 5'd16;
        for (i =17;i<32;i = i+1 ) begin
            if (i ==32'd32) begin
                enable_b = 0;
            end
            else begin
                #50
                address_b = i;
            end
        end
    end

    always @(clk ) begin
        #25 clk <= ~clk;
    end
    RegsisterFile_32x32bit inst0 (
        .OutA(OutA),            
        .OutB(OutB), 
        .address_w(address_w),
        .enable_w(enable_w),
        .address_a(address_a),
        .enable_a(enable_a),
        .address_b(address_b),
        .enable_b(enable_b),
        .In(In),
        .clk(clk)
    );

endmodule
