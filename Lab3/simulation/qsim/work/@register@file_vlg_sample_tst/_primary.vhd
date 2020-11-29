library verilog;
use verilog.vl_types.all;
entity RegisterFile_vlg_sample_tst is
    port(
        ADDR_i          : in     vl_logic_vector(2 downto 0);
        DATA_IN         : in     vl_logic_vector(15 downto 0);
        ReadA_i         : in     vl_logic_vector(2 downto 0);
        ReadB_i         : in     vl_logic_vector(2 downto 0);
        WE_i            : in     vl_logic;
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end RegisterFile_vlg_sample_tst;
