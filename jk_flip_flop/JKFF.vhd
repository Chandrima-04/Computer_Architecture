----------------------------------------------------------------------------------
-- Company: 
-- Engineer: GOUTAM DEBNATH
-- 
-- Create Date:    01:19:58 03/09/2015 
-- Design Name: 
-- Module Name:    JKFF - Behavioral 
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

entity JKFF is
    Port ( J,K,CLK : in  STD_LOGIC;
           Q,Q1,Z : inout  STD_LOGIC);
end JKFF;

architecture Behavioral of JKFF is

begin

process(CLK)
begin

if(CLK='1' and CLK'event) then
	if(J='0' and K='1') then
		Q<='1';
		Q1<='0';
		else if(J='1' and K='0') then
			Q<='0';
			Q1<='1';
			else if(J='1' and K='1') then
				Q<=not Q;
				Q1<=not Q1;
			end if;
		end if;
	end if;
end if;

end process;
end Behavioral;

