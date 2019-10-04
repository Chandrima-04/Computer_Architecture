----------------------------------------------------------------------------------
-- Company: 
-- Engineer: GOUTAM DEBNATH
-- 
-- Create Date:    22:19:20 03/21/2015 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

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

component BPA_STR is
    Port ( A,B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           C : out  STD_LOGIC);
end component;
component F_ADDER is
    Port ( C_IN,A,B : in  STD_LOGIC;
           S,C_OUT : out  STD_LOGIC);
end component;

signal s1 : STD_LOGIC_VECTOR (3 downto 0);
signal c1,c2,c3,c4 : STD_LOGIC;
begin
add1: BPA_STR port map(X,Y,s1,c1);
c2 <= (((s1(2) and s1(3)) or (s1(1) and s1(3))) or c1);
sum(0) <= s1(0);
fa1: F_ADDER port map(s1(1),c2,'0',sum(1),c3);
fa2: F_ADDER port map(s1(2),c2,c3,sum(2),c4);
sum(3) <= c4 xor s1(3);
carry<=c2;
--carry<= c1;
--s2(0) <= '0';
--s2(3) <= '0';
--s2(1) <= c2;
--s2(2) <= c2;
--add2: BPA_STR port map(s1,s2,sum,c2);
--process(X,Y)
--begin
--if(t>9) then
----temp_sum<="0110";
--sum<=t1;
--carry<='1';
--else
--sum<=t;
--carry<='0';
--end if;
--end process;


end Behavioral;

