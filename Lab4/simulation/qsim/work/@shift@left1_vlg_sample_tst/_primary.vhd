library verilog;
use verilog.vl_types.all;
entity ShiftLeft1_vlg_sample_tst is
    port(
        DATA_IN         : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end ShiftLeft1_vlg_sample_tst;
