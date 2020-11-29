library verilog;
use verilog.vl_types.all;
entity Test_counter is
    generic(
        N               : integer := 10
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end Test_counter;
