----------------------------------------------------------------------------------
-- Company: 
-- Engineer: GOUTAM DEBNATH
-- 
-- Create Date:    18:57:56 03/08/2015 
-- Design Name: 
-- Module Name:    F_ADDER - Behavioral 
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
           SUM,CARRY : out  STD_LOGIC);
end F_ADDER;

architecture F_ADDER_ARCH of F_ADDER is
component H_ADDER is
    Port ( A,B : in  STD_LOGIC;
           S,C : out  STD_LOGIC);
end component;
signal S1,C1,C2: STD_LOGIC;
begin
A1: H_ADDER port map(A,B,S1,C1);
S2: H_ADDER port map(C_IN,S1,SUM,C2);
CARRY<=C1 or C2;

end F_ADDER_ARCH;

