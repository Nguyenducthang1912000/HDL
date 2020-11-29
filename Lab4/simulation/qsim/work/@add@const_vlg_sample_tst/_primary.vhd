library verilog;
use verilog.vl_types.all;
entity AddConst_vlg_sample_tst is
    port(
        A_IN            : in     vl_logic_vector(5 downto 0);
        B_IN            : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end AddConst_vlg_sample_tst;
