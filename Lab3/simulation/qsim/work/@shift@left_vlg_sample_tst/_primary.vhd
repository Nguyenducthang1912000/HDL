library verilog;
use verilog.vl_types.all;
entity ShiftLeft_vlg_sample_tst is
    port(
        Data            : in     vl_logic_vector(15 downto 0);
        S               : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end ShiftLeft_vlg_sample_tst;
