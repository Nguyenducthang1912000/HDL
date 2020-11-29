module register(clk,data_i,data_o);
input        clk;
input [1:0]  data_i;
output[1:0] data_o;

//declare data type for ports
wire       clk;
wire [1:0] data_i;
reg [1:0]  data_o;
//Functional description
always @(posedge clk) 
begin
	data_o <= data_i;
end
endmodule