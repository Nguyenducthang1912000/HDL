
`timescale 1ns/1ps;

module TestStack  ();
reg rst,push_pop,enable,clk;
reg [7:0] data_in;

wire [7:0] data_io;
wire empty,full;  

integer i;
assign #2 data_io = (push_pop ==1) ? 8'bz : data_in;
initial begin
    clk = 0;
    rst = 1'b1;
    enable = 1'b1;
    push_pop = 0;

    # 30 
    rst = 0;
    data_in = 0;
    for (i=1 ;i<1024 ;i=i+1 ) begin
        if (i == 1024)begin
            push_pop = 1'b1;
            enable = 0;
        end
        #50
        data_in = 2*i;
    end
    #50
    enable = 1'b1;
    for (i=0 ;i<1024 ;i=i+1 ) begin
        if (i==1024) begin
            push_pop = 1'bz;
        end
        #50
        data_in = 0;
    end
    $finish;
end

always @(clk) begin
    #25 clk <= ~clk;
end
Stack inst0 (
	.data_io (data_io),
	.empty (empty),
	.full (full),
	.rst (rst),
	.push_pop (push_pop),
	.enable (enable),
	.clk (clk)    
);
endmodule
