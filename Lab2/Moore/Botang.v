module Botang(data_i,data_o);
input [2:0]  data_i;
output [2:0] data_o;

//declare data type for ports
wire [2:0] data_i;
reg [2:0]  data_o;
//Functional description
always @(data_i) begin
data_o = data_i + 3'd1;
end
endmodule