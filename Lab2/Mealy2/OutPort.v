module OutPort (LastNo_i,Data_i,Data_o);
input [3:0] LastNo_i;
input [1:0] Data_i;
output Data_o;
//port type
wire [1:0] Data_i;
wire [3:0] LastNo_i;
reg  Data_o;
//code start here 
always @(LastNo_i,Data_i)
	begin
	if(LastNo_i==4'd3 && Data_i==2'd3)
		Data_o = 1'd1;
	else 
		Data_o = 1'd0;
	
	end
endmodule