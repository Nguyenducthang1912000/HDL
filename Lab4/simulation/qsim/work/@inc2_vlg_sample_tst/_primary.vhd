library verilog;
use verilog.vl_types.all;
entity Inc2_vlg_sample_tst is
    port(
        DATA_IN         : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end Inc2_vlg_sample_tst;
