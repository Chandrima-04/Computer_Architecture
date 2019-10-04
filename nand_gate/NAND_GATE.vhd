----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:30:26 03/08/2015 
-- Design Name: 
-- Module Name:    NAND_GATE - Behavioral 
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

entity NAND_GATE is
    Port ( A,B : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end NAND_GATE;

architecture NAND_ARCH of NAND_GATE is

begin
process(A,B)
begin

if(A='1' and B='1') then
	Y<='0';
else
	Y<='1';
end if;	

end process;
end NAND_ARCH;

