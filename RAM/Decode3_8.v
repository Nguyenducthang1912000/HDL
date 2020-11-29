module Decode3_8 (Z,A,En);
parameter inde = 3;
parameter outde = 8;
//input port declarations
input [inde-1:0] A;
input En;
//output port declarations
output [outde-1:0] Z;
//code begin here 
and (Z[0],!A[2],!A[1],!A[0],En);
and (Z[1],!A[2],!A[1],A[0],En);
and (Z[2],!A[2],A[1],!A[0],En);
and (Z[3],!A[2],A[1],A[0],En);
and (Z[4],A[2],!A[1],!A[0],En);
and (Z[5],A[2],!A[1],A[0],En);
and (Z[6],A[2],A[1],!A[0],En);
and (Z[7],A[2],A[1],A[0],En);
endmodule