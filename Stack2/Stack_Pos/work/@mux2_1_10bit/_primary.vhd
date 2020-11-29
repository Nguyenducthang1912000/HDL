library verilog;
use verilog.vl_types.all;
entity Mux2_1_10bit is
    generic(
        N               : integer := 10
    );
    port(
        data_out        : out    vl_logic_vector;
        data_in0        : in     vl_logic_vector;
        data_in1        : in     vl_logic_vector;
        \select\        : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end Mux2_1_10bit;
