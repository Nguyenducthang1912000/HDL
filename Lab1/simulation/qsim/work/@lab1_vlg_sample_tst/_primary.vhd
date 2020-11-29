library verilog;
use verilog.vl_types.all;
entity Lab1_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        load            : in     vl_logic;
        value           : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end Lab1_vlg_sample_tst;
