----------------------------------------------------------------------------------
-- Company: 
-- Engineer: GOUTAM DEBNATH
-- 
-- Create Date:    18:59:43 03/08/2015 
-- Design Name: 
-- Module Name:    H_ADDER - Behavioral 
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

entity H_ADDER is
    Port ( A,B : in  STD_LOGIC;
           S,C : out  STD_LOGIC);
end H_ADDER;

architecture Behavioral of H_ADDER is

begin
process(A,B)
begin

if(A='0' and B='0') then
	S<='0';
	C<='0';
	else if(A='1' and B='1') then
		S<='0';
		C<='1';
		else
			S<='1';
			C<='0';
	end if;
end if;	

end process;
end Behavioral;

