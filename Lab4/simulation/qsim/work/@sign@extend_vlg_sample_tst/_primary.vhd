library verilog;
use verilog.vl_types.all;
entity SignExtend_vlg_sample_tst is
    port(
        DATA_IN         : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end SignExtend_vlg_sample_tst;
