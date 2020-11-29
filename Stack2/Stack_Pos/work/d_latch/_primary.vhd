library verilog;
use verilog.vl_types.all;
entity d_latch is
    port(
        q_out           : out    vl_logic;
        d_in            : in     vl_logic;
        enable          : in     vl_logic
    );
end d_latch;
