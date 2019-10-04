----------------------------------------------------------------------------------
-- Company: 
-- Engineer: GOUTAM DEBNATH
-- 
-- Create Date:    21:25:04 03/21/2015 
-- Design Name: 
-- Module Name:    BPA_STR - Behavioral 
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

entity BPA_STR is
    Port ( A,B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           C : out  STD_LOGIC);
end BPA_STR;

architecture Behavioral of BPA_STR is
component F_ADDER is
    Port ( C_IN,A,B : in  STD_LOGIC;
           S,C_OUT : out  STD_LOGIC);
end component;
signal s_temp : STD_LOGIC:='0';
signal carry : STD_LOGIC_VECTOR(2 downto 0);
begin
FA1: F_ADDER port map(A(0),B(0),s_temp,S(0),carry(0));
FA2: F_ADDER port map(carry(0),A(1),B(1),S(1),carry(1));
FA3: F_ADDER port map(carry(1),A(2),B(2),S(2),carry(2));
FA4: F_ADDER port map(carry(2),A(3),B(3),S(3),C); 

end Behavioral;

