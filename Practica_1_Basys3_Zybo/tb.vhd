library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entidad del Testbench
entity tb_FullAdder is
end tb_FullAdder;

-- Arquitectura del Testbench
architecture behavior of tb_FullAdder is

    -- Componente bajo prueba (DUT)
    component FullAdder
        port (
            A    : in  STD_LOGIC;
            B    : in  STD_LOGIC;
            Cin  : in  STD_LOGIC;
            Sum  : out STD_LOGIC;
            Cout : out STD_LOGIC
        );
    end component;

    -- Señales internas para conectar al DUT
    signal A    : STD_LOGIC := '0';
    signal B    : STD_LOGIC := '0';
    signal Cin  : STD_LOGIC := '0';
    signal Sum  : STD_LOGIC;
    signal Cout : STD_LOGIC;

begin

    -- Instancia del DUT
    UUT: FullAdder
        port map (
            A    => A,
            B    => B,
            Cin  => Cin,
            Sum  => Sum,
            Cout => Cout
        );

    -- Proceso de estimulación sin bucle
    stim_proc: process
    begin
        -- Combinación 000
        A <= '0'; B <= '0'; Cin <= '0';
        wait for 10 ns;

        -- Combinación 001
        A <= '0'; B <= '0'; Cin <= '1';
        wait for 10 ns;

        -- Combinación 010
        A <= '0'; B <= '1'; Cin <= '0';
        wait for 10 ns;

        -- Combinación 011
        A <= '0'; B <= '1'; Cin <= '1';
        wait for 10 ns;

        -- Combinación 100
        A <= '1'; B <= '0'; Cin <= '0';
        wait for 10 ns;

        -- Combinación 101
        A <= '1'; B <= '0'; Cin <= '1';
        wait for 10 ns;

        -- Combinación 110
        A <= '1'; B <= '1'; Cin <= '0';
        wait for 10 ns;

        -- Combinación 111
        A <= '1'; B <= '1'; Cin <= '1';
        wait for 10 ns;

        -- Fin de simulación
        wait;
    end process;

end behavior;
