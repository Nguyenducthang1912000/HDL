library verilog;
use verilog.vl_types.all;
entity Cong_vlg_check_tst is
    port(
        dataout         : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end Cong_vlg_check_tst;
