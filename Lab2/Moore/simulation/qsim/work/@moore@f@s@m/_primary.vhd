library verilog;
use verilog.vl_types.all;
entity MooreFSM is
    port(
        clk             : in     vl_logic;
        MooreFSM_o      : out    vl_logic_vector(15 downto 0)
    );
end MooreFSM;
