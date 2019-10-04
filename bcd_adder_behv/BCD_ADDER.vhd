----------------------------------------------------------------------------------
-- Company: 
-- Engineer: GOUTAM DEBNATH
-- 
-- Create Date:    13:24:45 03/22/2015 
-- Design Name: 
-- Module Name:    BCD_ADDER - Behavioral 
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

entity BCD_ADDER is
    Port ( X,Y : in  STD_LOGIC_VECTOR (3 downto 0);
           sum : out  STD_LOGIC_VECTOR (3 downto 0);
           carry : out  STD_LOGIC);
end BCD_ADDER;

architecture Behavioral of BCD_ADDER is

	procedure F_ADDER(                                    --signal T :out STD_LOGIC_VECTOR(3 downto 0);
	               signal S,C_OUT: out STD_LOGIC;
						signal C_IN,A,B : in  STD_LOGIC) is
	begin
	--process(C_IN,A,B)

--begin

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

--end process;
	end F_ADDER;
signal c0 : std_logic :='0';
signal c1,c2,c3,c4,c5,c6, a1,a2,a3, car : std_logic ;
begin
F_ADDER(sum(0),c1,X(0),Y(0),c0);
F_ADDER(a1,c2,X(1),Y(1),c1);
F_ADDER(a2,c3,X(2),Y(2),c2);
F_ADDER(a3,c4,X(3),Y(3),c3);
car <= ((a1 and a3) or (a2 and a3) or c4);
F_ADDER(sum(1),c5,a1,car,c0);
F_ADDER(sum(2),c6,a2,car,c5);
sum(3) <= c6 xor a3;
carry <= car; 
end Behavioral;

