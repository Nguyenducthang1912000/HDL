library verilog;
use verilog.vl_types.all;
entity Cong_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        datain          : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end Cong_vlg_sample_tst;
