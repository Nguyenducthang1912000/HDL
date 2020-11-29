library verilog;
use verilog.vl_types.all;
entity Datapath_vlg_sample_tst is
    port(
        ALUOp           : in     vl_logic_vector(3 downto 0);
        ALUSrc          : in     vl_logic;
        CLK             : in     vl_logic;
        DmemWr          : in     vl_logic;
        PCSrc           : in     vl_logic;
        RegEn           : in     vl_logic;
        RegSrc          : in     vl_logic;
        WrSrc           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Datapath_vlg_sample_tst;
