module LoadLogic(load_i,value_i,data_in_i,qin_o);
input load_i;
input [3:0] value_i;
input [2:0] data_in_i;
output [2:0] qin_o;
//declare port type 
reg [2:0] qin_o;
wire [2:0] data_in_i;
wire [3:0] value_i;
//functional description
always @(load_i or value_i or data_in_i) 
begin 
	qin_o = 3'b000;
	if (load_i==0) 
		begin
		qin_o = data_in_i;
		end
	else if(load_i==1) 
	begin 
	case(value_i) 
	4'd1 : qin_o = 3'd0;
   4'd8 : qin_o = 3'd1;
   4'd5 : qin_o = 3'd2;
	4'd2 : qin_o = 3'd3;
	4'd3 : qin_o = 3'd5;
	4'd9 : qin_o = 3'd6;
	default:
				qin_o=3'd0;
	endcase
	end
end 
endmodule 