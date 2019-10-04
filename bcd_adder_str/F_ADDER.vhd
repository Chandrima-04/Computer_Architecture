----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:51:45 03/08/2015 
-- Design Name: 
-- Module Name:    F_ADDER - F_ADDER_TB 
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

entity F_ADDER is
    Port ( C_IN,A,B : in  STD_LOGIC;
           S,C_OUT : out  STD_LOGIC);
end F_ADDER;

architecture F_ADDER_TB of F_ADDER is

begin
process(C_IN,A,B)

begin

if(C_IN='0') then
	if(A='0' and B='0') then
		S<='0';
		C_OUT<='0';
		else if(A='1' and B='1') then
			S<='0';
			C_OUT<='1';
			else
				S<='1';
				C_OUT<='0';
		end if;
	end if;	
else if(C_IN='1') then
	if(A='0' and B='0') then
			S<='1';
			C_OUT<='0';
			else if(A='1' and B='1') then
				S<='1';
				C_OUT<='1';
				else
					S<='0';
					C_OUT<='1';
			end if;
		end if;	
end if;	
end if;	

end process;
end F_ADDER_TB;

