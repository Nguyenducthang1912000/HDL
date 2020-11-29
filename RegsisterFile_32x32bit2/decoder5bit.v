
module decoder5bit (data_out,data_in,enable);
    input [4:0] data_in;
    input enable;
    output [31:0] data_out;

    wire [4:0] data_in;
    wire enable;
    wire [31:0] data_out;

    and inst0[31:0] (
        data_out,
		  {	32{enable}},
        {  {16{data_in[4]}} ,~{ 16{data_in[4]}}  },
        {2{{ 8{data_in[3]}} ,~{  8{data_in[3]}}} },
        {4{{ 4{data_in[2]}} ,~{  4{data_in[2]}}} },
        {8{{ 2{data_in[1]}} ,~{  2{data_in[1]}}} },
        {16{  {data_in[0]}  ,~{   {data_in[0]}}  }}
    );
   
endmodule 