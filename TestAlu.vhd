--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:18:55 05/10/2019
-- Design Name:   
-- Module Name:   /home/yujin/4B/ArchiMat/Projet-System-Info/TestAlu.vhd
-- Project Name:  Projet-System-Info
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY TestAlu IS
END TestAlu;
 
ARCHITECTURE behavior OF TestAlu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         C : OUT  std_logic;
         O : OUT  std_logic;
         N : OUT  std_logic;
         Z : OUT  std_logic;
         Ctr_Alu : IN  std_logic_vector(3 downto 0);
         S : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');
   signal Ctr_Alu : std_logic_vector(3 downto 0) := (others => '0');
   signal S : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal C : std_logic;
   signal O : std_logic;
   signal N : std_logic;
   signal Z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A => A,
          B => B,
          C => C,
          O => O,
          N => N,
          Z => Z,
          Ctr_Alu => Ctr_Alu,
          S => S
        );

   -- Clock process definitions
   --<clock>_process :process
   --begin
		--<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		A <= X"0005";
		B <= X"0006";
		Ctr_Alu <= "0001";
		--S <= X"000B"; --add
		wait for 100 ns;
		A <= X"8003";
		B <= X"8005";
		Ctr_Alu <= "0001";
		--S <= X"8008"; --add
		wait for 100 ns;
		A <= x"0000";
		B <= X"0000";
		Ctr_Alu <= "0001";
		wait for 100 ns;
		A <= X"0005";
		B <= X"FFFD";  --résoudre ce pb
		Ctr_Alu <= "0001";
		--S <= X"0003"; --add
		--wait for 100 ns;
		--A <= X"8002";
		--B <= X"0005";
		--Ctr_Alu <= "0001";
		--S <= X"0003"; --add
		
      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
