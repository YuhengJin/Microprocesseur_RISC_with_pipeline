----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:30:05 05/13/2019 
-- Design Name: 
-- Module Name:    pipeline - Behavioral 
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

entity pipeline is
    Port ( Ain : in  STD_LOGIC_VECTOR (15 downto 0);
           OPin : in  STD_LOGIC_VECTOR (7 downto 0);
           Bin : in  STD_LOGIC_VECTOR (15 downto 0);
           Cin : in  STD_LOGIC_VECTOR (15 downto 0);
			  Aout : out  STD_LOGIC_VECTOR (15 downto 0);
           OPout : out  STD_LOGIC_VECTOR (7 downto 0);
           Bout : out  STD_LOGIC_VECTOR (15 downto 0);
           Cout : out  STD_LOGIC_VECTOR (15 downto 0);
			  CLK : in STD_LOGIC
			  ); 
end pipeline;

architecture Behavioral of pipeline is
	--signal S : 
begin
process
	begin
	wait until CLK' event and CLK='1';
	OPout <= OPin;
	Aout <= Ain;
	Bout <= Bin;
	Cout <= Cin;
end process;

end Behavioral;

