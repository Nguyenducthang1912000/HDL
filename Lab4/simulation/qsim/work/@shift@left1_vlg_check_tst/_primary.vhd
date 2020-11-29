library verilog;
use verilog.vl_types.all;
entity ShiftLeft1_vlg_check_tst is
    port(
        DATA_OUT        : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end ShiftLeft1_vlg_check_tst;
