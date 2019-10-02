----------------------------------------------------------------------------------
-- Company: 
-- Engineer:Goutam Debnath 
-- 
-- Create Date:    19:45:26 03/08/2015 
-- Design Name: 
-- Module Name:    T_F_F - Behavioral 
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

entity T_F_F is
    Port ( T,CLK,CLR,PRS : in  STD_LOGIC;
           Q : inout  STD_LOGIC;
           QN : out  STD_LOGIC);
end T_F_F;

architecture Behavioral of T_F_F is

begin
process(CLK,CLR,PRS)

begin
if(PRS='0' and CLR='0') then
	Q<='0';
	QN<='0';
	
else if(PRS='0' and CLR='1') then
	Q<='0';
	QN<='1';

else if(PRS='1' and CLR='0') then
	Q<='1';
	QN<='0';	

else if(PRS='1' and CLR='1') then
	if(CLK='1' and CLK'event) then
		if(T='0') then
			Q<=Q;
			QN<=not Q;
		else if(T='1')then
			Q<=not Q;
			QN<=Q;
			end if;
		end if;	
	end if;
end if;	
end if;
end if;
end if;


end process;
end Behavioral;

