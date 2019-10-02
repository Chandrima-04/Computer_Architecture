----------------------------------------------------------------------------------
-- Company: 
-- Engineer:Goutam Debnath 
-- 
-- Create Date:    14:04:02 03/08/2015 
-- Design Name: 
-- Module Name:    MAG_COMP - MAG_COMP_ARCH 
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

entity MAG_COMP is
    Port ( X,Y : in  STD_LOGIC;
           Equal,Greater,Less : out  STD_LOGIC);
end MAG_COMP;

architecture MAG_COMP_ARCH of MAG_COMP is

begin
process(X,Y)
begin

if(X>Y) then
	Equal<='0';
	Greater<='1';
	Less<='0';	
	else if(X=Y) then	
		Equal<='1';
		Greater<='0';
		Less<='0';
		else if(X<Y) then
			Equal<='0';
			Greater<='0';
			Less<='1';
		end if;
	end if;
end if;	

end process;
end MAG_COMP_ARCH;

