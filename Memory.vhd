----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:25:27 05/29/2019 
-- Design Name: 
-- Module Name:    Memory - Behavioral 
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

entity Memory is
    Port ( adr : in  STD_LOGIC_VECTOR (7 downto 0);
           RW : in  STD_LOGIC;
			  CLK : in  STD_LOGIC;
			  RST : in  STD_LOGIC;
           dIN : in  STD_LOGIC_VECTOR (7 downto 0);
           dOUT : out  STD_LOGIC_VECTOR (7 downto 0));
end Memory;

architecture Behavioral of Memory is
	type t_memory is array(0 to 7) of STD_LOGIC_VECTOR (7 downto 0);
	signal memoire: t_memory;	
begin
process
	begin
	wait until CLK' event and CLK='1';
	if RST = '0' then -- réinitialisation du contenu
		memoire <= (others => (others => '0'));
	elsif RW = '1' then
		memoire(to_integer(unsigned(adr))) <= dIN;
	end if;
end process;
	dOUT <= adr;
	

end Behavioral;

