----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:39:40 03/08/2015 
-- Design Name: 
-- Module Name:    NOR_GATE - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity NOR_GATE is
    Port ( A,B : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end NOR_GATE;

architecture NOR_ARCH of NOR_GATE is

begin
process(A,B)
begin

if(A='0' and B='0') then
	Y<='1';
else
	Y<='0';
end if;	

end process;
end NOR_ARCH;

