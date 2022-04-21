library verilog;
use verilog.vl_types.all;
entity parte4 is
    port(
        clk             : in     vl_logic;
        D               : in     vl_logic;
        Qa              : out    vl_logic;
        Qb              : out    vl_logic;
        Qc              : out    vl_logic
    );
end parte4;
