--------------------------------------------------------------------------------
-- Company: 
-- Engineer:GOUTAM DEBNATH
--
-- Create Date:   15:01:06 03/22/2015
-- Design Name:   
-- Module Name:   C:/Documents and Settings/bcd_adder_behv/BCD_ADDER_BEHV_TB.vhd
-- Project Name:  bcd_adder_behv
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BCD_ADDER
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY BCD_ADDER_BEHV_TB IS
END BCD_ADDER_BEHV_TB;
 
ARCHITECTURE behavior OF BCD_ADDER_BEHV_TB IS 
 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BCD_ADDER
    PORT(
         X : IN  std_logic_vector(3 downto 0);
         Y : IN  std_logic_vector(3 downto 0);
         sum : OUT  std_logic_vector(3 downto 0);
         carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(3 downto 0) := (others => '0');
   signal Y : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal sum : std_logic_vector(3 downto 0);
   signal carry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BCD_ADDER PORT MAP (
          X => X,
          Y => Y,
          sum => sum,
          carry => carry
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      --wait for <clock>_period*10;

      -- insert stimulus here 

    	X<="0110";
		Y<="0010";
      wait for 100ns;
		
		X<="0100";
		Y<="1000";
      wait for 100ns;
		
		X<="0101";
		Y<="1001";
      wait for 100ns;

   end process;

END;
