module memcell (
   data_out,data_in,Row_select,Write_enable 
);  

    input  data_in;
    input  Row_select,Write_enable;
    output data_out;

    wire   data_in,data_out;
    wire Row_select,Write_enable;

    wire control,q_out;

    and ins0 (control,Row_select,Write_enable);

   D_latch inst0 (
      .Qout(q_out),
      .Din(data_in),
      .control_sig(control)
	);

   bufif1 inst1 (
      data_out,
      q_out,
      Row_select
   );
    
    
endmodule 