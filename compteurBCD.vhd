----------------------------------------------------------------------------------
-- Engineer: Khawla BOUGHERARA
-- 
-- Create Date:    15:13:21 27/04/2025
-- Module Name:    compteurBCD- Behavioral 
-- Project Name: BCD to 7-Segment 2-Digit Display in VHDL
-- Target Devices: FPGA
-- Tool versions: XILINX ISE
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity compteurBCD is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           overflow : out  STD_LOGIC;
           cout : out  STD_LOGIC_VECTOR (3 downto 0));
end compteurBCD;

architecture Behavioral of compteurBCD is
signal counter : STD_LOGIC_VECTOR(3 downto 0) := "0000";
    signal ovf : STD_LOGIC := '0';
begin
    process(clk, reset)
    begin
        if reset = '1' then
            counter <= "0000";
            ovf <= '0';
        elsif clk='1' and clk' event then
            if counter = "1001" then 
                counter <= "0000";
                ovf <= '1';
            else
                counter <= counter + 1;
                ovf <= '0';
            end if;
        end if;
    end process;

    cout <= counter;
    overflow <= ovf;

end Behavioral;

