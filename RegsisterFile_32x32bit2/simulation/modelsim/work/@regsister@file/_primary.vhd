library verilog;
use verilog.vl_types.all;
entity RegsisterFile is
    port(
        OutA            : out    vl_logic_vector(31 downto 0);
        OutB            : out    vl_logic_vector(31 downto 0);
        address_w       : in     vl_logic_vector(4 downto 0);
        enable_w        : in     vl_logic;
        address_a       : in     vl_logic_vector(4 downto 0);
        enable_a        : in     vl_logic;
        address_b       : in     vl_logic_vector(4 downto 0);
        enable_b        : in     vl_logic;
        \In\            : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic
    );
end RegsisterFile;
