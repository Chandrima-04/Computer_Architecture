----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:22:06 03/08/2015 
-- Design Name: 
-- Module Name:    NOT_GATE - Behavioral 
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

entity NOT_GATE is
    Port ( I : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end NOT_GATE;

architecture NOT_ARCH of NOT_GATE is

begin
process(I)
begin

if(I='0') then
	Y<='1';
else
	Y<='0';
end if;	

end process;
end NOT_ARCH;

