module decoder_10bit (data_out,data_in);
	input [9:0] data_in;
	output [1023:0] data_out;
	
	wire [9:0] data_in ;
	wire [1023:0] data_out;
	
	and inst[1023:0] (
		data_out,
		{   {512{data_in[9]}} ,  ~{512{data_in[9]}}  },
		{ 2{{256{data_in[8]}} ,  ~{256{data_in[8]}}} },
		{ 4{{128{data_in[7]}} ,  ~{128{data_in[7]}}} },
		{ 8{{ 64{data_in[6]}}  , ~{ 64{data_in[6]}}} },
		{ 16{{32{data_in[5]}} ,  ~{ 32{data_in[5]}}} },
		{ 32{{16{data_in[4]}} ,  ~{ 16{data_in[4]}}} },
		{ 64{{ 8{data_in[3]}}  , ~{  8{data_in[3]}}} },
		{ 128{{4{data_in[2]}} ,  ~{  4{data_in[2]}}} },
		{ 256{{2{data_in[1]}} ,  ~{  2{data_in[1]}}} },
		{ 512{  {data_in[0]}    ,~{    data_in[0]}}  }
		); 
endmodule 