----------------------------------------------------------------------------------
-- Engineer: Khawla BOUGHERARA
-- 
-- Create Date:    15:13:21 04/27/2025
-- Module Name:    bcd7seg - Behavioral 
-- Project Name: BCD to 7-Segment 2-Digit Display in VHDL
-- Target Devices: FPGA
-- Tool versions: XILINX ISE

----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity bcd7seg is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           s : out  STD_LOGIC_VECTOR (6 downto 0));
end bcd7seg;

architecture Mbcd7seg of bcd7seg is
type rom is array (9 downto 0) of std_logic_vector(6 downto 0);
signal bcd:rom:= ("1111110","0110000","1101101","1111001","0110011","1011011","1011111","1110000","1111111","1111011");
begin
s <= bcd(conv_integer(x));

end Mbcd7seg;

