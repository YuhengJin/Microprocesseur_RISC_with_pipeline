----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:31:43 05/13/2019 
-- Design Name: 
-- Module Name:    Registre - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Registre is
    Port ( aA : in  STD_LOGIC_VECTOR (3 downto 0);
           aB : in  STD_LOGIC_VECTOR (3 downto 0);
           aW : in  STD_LOGIC_VECTOR (3 downto 0);
           WE : in  STD_LOGIC;
           DATA : in  STD_LOGIC_VECTOR (15 downto 0);
           RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           QA : out  STD_LOGIC_VECTOR (15 downto 0);
           QB : out  STD_LOGIC_VECTOR (15 downto 0));
end Registre;

architecture Behavioral of Registre is
	type t_regs is array(0 to 15) of STD_LOGIC_VECTOR (15 downto 0);
	signal reg : t_regs;	
begin
process
	begin
	wait until CLK' event and CLK = '1'; 
	if RST = '0' then -- réinitialisation du contenu
		reg <= (others => (others => '0'));
	elsif WE = '1' then
		reg(to_integer(unsigned(aW))) <= DATA;	
	end if;
end process;
	--Faut déclarer en même endroit
	QA <= DATA when RST='1' and WE='1' and aA=aW else -- si on ecrit et lit dans le même registre
		reg(to_integer(unsigned(aA))) when RST='1' else -- si on ne lit que dans le registre aA
		x"0000"; -- si on réinitialise (RST=0)
	QB <= DATA when RST='1' and WE='1' and aB=aW else
		reg(to_integer(unsigned(aB))) when RST='1' else
		x"0000";
	
	
end Behavioral;

