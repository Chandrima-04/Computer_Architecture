--------------------------------------------------------------------------------
-- Company: 
-- Engineer:GOUTAM DEBNATH
--
-- Create Date:   14:34:36 03/08/2015
-- Design Name:   
-- Module Name:   C:/Documents and Settings/mag_comp_4bit/MAG_COMP_TB.vhd
-- Project Name:  mag_comp_4bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MAG_COMP
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
 
ENTITY MAG_COMP_TB IS
END MAG_COMP_TB;
 
ARCHITECTURE behavior OF MAG_COMP_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MAG_COMP
    PORT(
         X : IN  std_logic_vector(3 downto 0);
         Y : IN  std_logic_vector(3 downto 0);
         Equal : OUT  std_logic;
         Greater : OUT  std_logic;
         Less : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(3 downto 0) := (others => '0');
   signal Y : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Equal : std_logic;
   signal Greater : std_logic;
   signal Less : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MAG_COMP PORT MAP (
          X => X,
          Y => Y,
          Equal => Equal,
          Greater => Greater,
          Less => Less
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
		X<="1011";
		Y<="0110";
      wait for 100ns;
		
		X<="1011";
		Y<="1011";
      wait for 100ns;
		
		X<="0110";
		Y<="1011";
      wait for 100ns;
   end process;

END;
