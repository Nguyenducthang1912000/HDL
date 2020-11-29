library verilog;
use verilog.vl_types.all;
entity MooreFSM_vlg_check_tst is
    port(
        MooreFSM_o      : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end MooreFSM_vlg_check_tst;
