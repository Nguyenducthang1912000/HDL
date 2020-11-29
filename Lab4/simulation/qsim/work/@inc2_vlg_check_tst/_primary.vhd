library verilog;
use verilog.vl_types.all;
entity Inc2_vlg_check_tst is
    port(
        DATA_OUT        : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end Inc2_vlg_check_tst;
