library verilog;
use verilog.vl_types.all;
entity Processer_16bit_vlg_check_tst is
    port(
        ADDR_o          : in     vl_logic_vector(2 downto 0);
        ALU_Op          : in     vl_logic_vector(3 downto 0);
        ALU_o           : in     vl_logic_vector(15 downto 0);
        DMEM_Wr         : in     vl_logic;
        DMEM_o          : in     vl_logic_vector(15 downto 0);
        IMEM_o          : in     vl_logic_vector(15 downto 0);
        PC_o            : in     vl_logic_vector(5 downto 0);
        RegDr_o         : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end Processer_16bit_vlg_check_tst;
