module NextState(CurrentState_i,Data_i,Data_o);
//input port declare
input [1:0] CurrentState_i;
input [3:0]  Data_i;
//output port declare
output [1:0] Data_o;
//port type
wire [1:0] CurrentState_i;
wire [3:0] Data_i;
reg [1:0] Data_o;
//code start here
always @(Data_i,CurrentState_i)
begin
	Data_o=2'd0;
	case(Data_i)
		4'd1:
		begin
			if(CurrentState_i == 0)
				Data_o = 2'd1;
			else 
				Data_o = 2'd0;
		end
		4'd3:
		begin 
			if(CurrentState_i == 1)
				Data_o = 2'd2;
			else 
				Data_o = 2'd0;
		end
		4'd9:
		begin 
			if(CurrentState_i == 2)
				Data_o = 2'd3;
			else
				Data_o = 2'd0;
		end
		default:
		Data_o = 2'd0;
	endcase
end
endmodule