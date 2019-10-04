----------------------------------------------------------------------------------
-- Company: 
-- Engineer: GOUTAM DEBNATH
-- 
-- Create Date:    22:54:36 03/08/2015 
-- Design Name: 
-- Module Name:    DFF - DFF_ARCH 
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

entity DFF is
    Port ( D,CLK : in  STD_LOGIC;
           Q,QN : out  STD_LOGIC);
end DFF;

architecture DFF_ARCH of DFF is

begin
process(CLK,D)
begin


if(CLK='1' and CLK'event) then
	Q<=D;
	QN<=not D;
end if;	

end process;
end DFF_ARCH;

