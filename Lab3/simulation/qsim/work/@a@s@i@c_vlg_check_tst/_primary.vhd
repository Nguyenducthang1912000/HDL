library verilog;
use verilog.vl_types.all;
entity ASIC_vlg_check_tst is
    port(
        Done            : in     vl_logic;
        Outport         : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end ASIC_vlg_check_tst;
