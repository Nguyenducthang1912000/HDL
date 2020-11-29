library verilog;
use verilog.vl_types.all;
entity SignExtend_vlg_check_tst is
    port(
        DATA_OUT        : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end SignExtend_vlg_check_tst;
