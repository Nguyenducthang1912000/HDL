library verilog;
use verilog.vl_types.all;
entity ShiftLeft_vlg_check_tst is
    port(
        SLOut           : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end ShiftLeft_vlg_check_tst;
