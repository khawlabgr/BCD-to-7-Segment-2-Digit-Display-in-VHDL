----------------------------------------------------------------------------------
-- Engineer: Khawla BOUGHERARA
-- 
-- Create Date:    15:13:21 04/27/2025
-- Module Name:    bcd7seg2digit- Behavioral 
-- Project Name: BCD to 7-Segment 2-Digit Display in VHDL
-- Target Devices: FPGA
-- Tool versions: XILINX ISE
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity bcd7seg2digit is
    Port ( clk : in  STD_LOGIC;
           seg1 : out  STD_LOGIC_VECTOR (6 downto 0);
           seg2 : out  STD_LOGIC_VECTOR (6 downto 0));
end bcd7seg2digit;

architecture Mbcd7seg2digit of bcd7seg2digit is

component compteurBCD is
     Port (clk : in  STD_LOGIC;
            reset : in  STD_LOGIC;
            cout : out  STD_LOGIC_VECTOR (3 downto 0);
            overflow : out STD_LOGIC
        );
end component compteurBCD;

component bcd7seg is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           s : out  STD_LOGIC_VECTOR (6 downto 0));
end component bcd7seg;
signal fil1: std_logic_vector(3 downto 0);
signal fil2: std_logic_vector(3 downto 0);
signal overflow1: std_logic ;
begin
u0: compteurBCD port map(clk,'0',fil1,overflow1);
u1: compteurBCD port map(clk,overflow1,fil2,open);
u2: bcd7seg port map (fil1,seg1);
u3: bcd7seg port map(fil2,seg2);

end Mbcd7seg2digit;

