library verilog;
use verilog.vl_types.all;
entity DMEM_vlg_sample_tst is
    port(
        ADDR            : in     vl_logic_vector(3 downto 0);
        CLK             : in     vl_logic;
        DATA_IN         : in     vl_logic_vector(15 downto 0);
        W               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end DMEM_vlg_sample_tst;
