library ieee;
use ieee.std_logic_1164.all;

-- Entidad del Full Adder
entity FullAdder is
    port
    (
        A    : in  STD_LOGIC;
        B    : in  STD_LOGIC;
        Cin  : in  STD_LOGIC;
        Sum  : out STD_LOGIC;
        Cout : out STD_LOGIC
    );
end FullAdder;

-- Arquitectura del Full Adder
architecture rtl of FullAdder is
begin
    -- Lógica combinacional para suma y acarreo
    Sum  <= A xor B xor Cin;
    Cout <= (A and B) or (A and Cin) or (B and Cin);
end rtl;
