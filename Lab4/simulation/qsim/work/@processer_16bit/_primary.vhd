library verilog;
use verilog.vl_types.all;
entity Processer_16bit is
    port(
        clk             : in     vl_logic;
        PC_o            : out    vl_logic_vector(5 downto 0);
        IMEM_o          : out    vl_logic_vector(15 downto 0);
        ALU_o           : out    vl_logic_vector(15 downto 0);
        DMEM_o          : out    vl_logic_vector(15 downto 0);
        RegDr_o         : out    vl_logic_vector(15 downto 0);
        ADDR_o          : out    vl_logic_vector(2 downto 0);
        DMEM_Wr         : out    vl_logic;
        ALU_Op          : out    vl_logic_vector(3 downto 0)
    );
end Processer_16bit;
