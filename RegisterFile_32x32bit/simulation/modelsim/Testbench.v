`timescale 1ns/1ps

module Testbench ();
    reg  [4:0]  address_w,address_a,address_b;
    reg         enable_w,enable_a, enable_b,clk;
    reg  [31:0] In;
    wire [31:0] OutA, OutB;
    integer i;

    initial begin
        clk = 0;
        enable_w = 1'b1;
        enable_a = 1'b1;
        enable_b = 1'b1;
        address_w = 0;
        address_a = 0;
        address_b = 0;
        In = 0;
        for (i = 1; i <32;i=i+1) begin
            if (i == 32'd32) begin
                enable_w = 0;
        	    enable_a = 0;
        	    enable_b = 0;
                In = 0;
            end
            #50
            address_w = i;
            address_a = i;
            address_b = i;
            In = 2*i;
        end
        enable_a = 1'b1;
        address_a = 0;
        In= 0;  

        for (i =1;i<32;i = i+1 ) begin
            if (i ==32'd32) begin
                enable_a = 0;
            end
            else begin
                #50
                address_a = i;
            end
        end
        enable_a = 0;
        enable_b = 1'b1;
        address_b = 5'd0;
        for (i =1;i<32;i = i+1 ) begin
            if (i ==32'd32) begin
                enable_b = 0;
            end
            else begin
                #50
                address_b = i;
            end
        end
        enable_b = 0;
        #25
        enable_a = 1'b1;
        enable_b = 1'b1;
        for (i =1 ;i<32 ;i=i+1 ) begin
            if (i ==32'd32) begin
                enable_b = 0;
                enable_a = 0;
            end
            else begin
                #50
                address_a = $urandom_range(0,15);
                address_b = $urandom_range(16,31);
            end
        end
        $finish;
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

