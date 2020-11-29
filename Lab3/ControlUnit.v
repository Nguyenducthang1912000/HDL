module ControlUnit(Done,IE,WE,OE,S,ADDR_WR,State,ADDR_RDA,ADDR_RDB,Opcode);
input [4:0] State;
output Done;
output IE,WE,OE,Opcode;
output[1:0] S;
output[2:0] ADDR_WR,ADDR_RDA,ADDR_RDB;
wire [4:0] FSMtoCU;
reg Done;
reg IE,WE,OE,Opcode;
reg[1:0] S;
reg[2:0] ADDR_WR,ADDR_RDA,ADDR_RDB;
always @(State,WE,OE,IE,S,Opcode,ADDR_RDA,ADDR_RDB,ADDR_WR,Done) begin
	WE = 1'b1;
	OE =1'b0;
	IE = 1'b1;
	S = 1'b0;
	Opcode = 1'b0;
	ADDR_RDA =3'b0;
	ADDR_RDB =3'b0;
	ADDR_WR = 3'b0; 
	Done = 1'b0;
	case(State)
		4'd0:
		begin
			IE = 1'd0;
			ADDR_RDA = 3'd0;
			ADDR_RDB = 3'd0;
			ADDR_WR = 3'd1;
		end
		4'd1:
		begin
			IE = 1'd0;
			ADDR_WR = 3'd2;
			ADDR_RDA = 3'd0;
			ADDR_RDB = 3'd0;
		end
		4'd2:
		begin
			IE = 1'd0;
			ADDR_WR = 3'd3;
			ADDR_RDA = 3'd0;
			ADDR_RDB = 3'd0;
		end
		4'd3:
		begin
			IE = 1'd0;
			ADDR_WR = 3'd4;
			ADDR_RDA = 3'd0;
			ADDR_RDB = 3'd0;
		end
		4'd4:begin
			ADDR_WR = 3'd5;
			ADDR_RDA = 3'd1;
			ADDR_RDB = 3'd0;
			end
		4'd5:begin
			ADDR_WR = 3'd1;
			ADDR_RDA = 3'd1;
			ADDR_RDB = 3'd0;
			S = 2'd1;
			end
		4'd6:begin
			ADDR_WR = 3'd1;
			ADDR_RDA = 3'd1;
			ADDR_RDB = 3'd5;
			end
		4'd7:begin
			ADDR_WR = 3'd5;
			ADDR_RDA = 3'd2;
			ADDR_RDB = 3'd0;
		end
		4'd8:begin
			ADDR_WR = 3'd2;
			ADDR_RDA = 3'd2;
			ADDR_RDB = 3'd0;
			S = 2'd3;
		end
		4'd9:begin
			ADDR_WR = 3'd2;
			ADDR_RDA = 3'd2;
			ADDR_RDB = 3'd5;
		end
		4'd10:begin
			ADDR_WR = 3'd5;
			ADDR_RDA = 3'd3;
			ADDR_RDB = 3'd0;
		end
		4'd11:begin
			ADDR_WR = 3'd3;
			ADDR_RDA = 3'd3;
			ADDR_RDB = 3'd0;
			S = 2'd1;
		end
		4'd12:begin
			ADDR_WR = 3'd3;
			ADDR_RDA = 3'd3;
			ADDR_RDB = 3'd5;
		end
		4'd13:begin
			ADDR_WR = 3'd6;
			ADDR_RDA = 3'd4;
			ADDR_RDB = 3'd2;
		end
		4'd14:begin
			ADDR_WR = 3'd5;
			ADDR_RDA = 3'd3;
			ADDR_RDB = 3'd1;
		end
		4'd15:begin
			ADDR_WR = 3'd6;
			ADDR_RDA = 3'd6;
			ADDR_RDB = 3'd5;
			Opcode = 1'd1;
			OE = 1'b1;
			WE = 1'b0;
			IE = 1'b0;
		end
		5'd16:
			Done = 1'b1;
		default:begin
			IE = 1'd0;
			ADDR_RDA = 3'd0;
			ADDR_RDB = 3'd0;
			ADDR_WR = 3'd1;
			end
endcase
end
endmodule

