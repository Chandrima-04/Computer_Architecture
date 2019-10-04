--------------------------------------------------------------------------------
-- Company: 
-- Engineer:GOUTAM DEBNATH
--
-- Create Date:   19:25:20 03/08/2015
-- Design Name:   
-- Module Name:   C:/Documents and Settings/f_adder_struct/F_ADDER_TB.vhd
-- Project Name:  f_adder_struct
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: F_ADDER
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
 
ENTITY F_ADDER_TB IS
END F_ADDER_TB;
 
ARCHITECTURE behavior OF F_ADDER_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT F_ADDER
    PORT(
         C_IN : IN  std_logic;
         A : IN  std_logic;
         B : IN  std_logic;
         SUM : OUT  std_logic;
         CARRY : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal C_IN : std_logic := '0';
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal SUM : std_logic;
   signal CARRY : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: F_ADDER PORT MAP (
          C_IN => C_IN,
          A => A,
          B => B,
          SUM => SUM,
          CARRY => CARRY
        );

--   -- Clock process definitions
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
      C_IN<='0'; wait for 100ns;
		C_IN<='1'; wait for 100ns;	
	end process;
      --wait for <clock>_period*10;

      -- insert stimulus here 
	process
	begin
	
		wait for 100ns;
		A<='0';
		B<='1'; wait for 200ns;
		
		A<='1';
		B<='1'; wait for 200ns;
   
		A<='1';
		B<='0'; wait for 200ns;
   end process;

END;
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:25:20 03/08/2015
-- Design Name:   
-- Module Name:   C:/Documents and Settings/f_adder_struct/F_ADDER_TB.vhd
-- Project Name:  f_adder_struct
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: F_ADDER
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
 
ENTITY F_ADDER_TB IS
END F_ADDER_TB;
 
ARCHITECTURE behavior OF F_ADDER_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT F_ADDER
    PORT(
         C_IN : IN  std_logic;
         A : IN  std_logic;
         B : IN  std_logic;
         SUM : OUT  std_logic;
         CARRY : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal C_IN : std_logic := '0';
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal SUM : std_logic;
   signal CARRY : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: F_ADDER PORT MAP (
          C_IN => C_IN,
          A => A,
          B => B,
          SUM => SUM,
          CARRY => CARRY
        );

--   -- Clock process definitions
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
      C_IN<='0'; wait for 100ns;
		C_IN<='1'; wait for 100ns;	
	end process;
      --wait for <clock>_period*10;

      -- insert stimulus here 
	process
	begin
	
		wait for 100ns;
		A<='0';
		B<='1'; wait for 200ns;
		
		A<='1';
		B<='1'; wait for 200ns;
   
		A<='1';
		B<='0'; wait for 200ns;
   end process;

END;
