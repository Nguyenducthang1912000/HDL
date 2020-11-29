library verilog;
use verilog.vl_types.all;
entity Cong is
    port(
        clk             : in     vl_logic;
        datain          : in     vl_logic_vector(15 downto 0);
        dataout         : out    vl_logic_vector(15 downto 0)
    );
end Cong;
