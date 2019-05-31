----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:37:14 05/15/2019 
-- Design Name: 
-- Module Name:    Process - Behavioral 
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

entity Process is
	--entity LI_DI is
    Port LI_DI ( Ain1 : in  STD_LOGIC_VECTOR (15 downto 0);
           OPin1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Bin1 : in  STD_LOGIC_VECTOR (15 downto 0);
           Cin1 : in  STD_LOGIC_VECTOR (15 downto 0);
			  Aout1 : out  STD_LOGIC_VECTOR (15 downto 0);
           OPout1 : out  STD_LOGIC_VECTOR (7 downto 0);
           Bout1 : out  STD_LOGIC_VECTOR (15 downto 0);
           Cout1 : out  STD_LOGIC_VECTOR (15 downto 0);
			  CLK : in STD_LOGIC
			  ); 
	--end LI_DI;
	
	entity DI_EX is
    Port ( Ain2 : in  STD_LOGIC_VECTOR (15 downto 0);
           OPin2 : in  STD_LOGIC_VECTOR (7 downto 0);
           Bin2 : in  STD_LOGIC_VECTOR (15 downto 0);
           Cin2 : in  STD_LOGIC_VECTOR (15 downto 0);
			  Aout2 : out  STD_LOGIC_VECTOR (15 downto 0);
           OPout2 : out  STD_LOGIC_VECTOR (7 downto 0);
           Bout2 : out  STD_LOGIC_VECTOR (15 downto 0);
           Cout2 : out  STD_LOGIC_VECTOR (15 downto 0);
			  CLK : in STD_LOGIC
			  ); 
	end DI_EX;
	
	entity EX_MEM is
    Port ( Ain3 : in  STD_LOGIC_VECTOR (15 downto 0);
           OPin3 : in  STD_LOGIC_VECTOR (7 downto 0);
           Bin3 : in  STD_LOGIC_VECTOR (15 downto 0);
           Cin3 : in  STD_LOGIC_VECTOR (15 downto 0);
			  Aout3 : out  STD_LOGIC_VECTOR (15 downto 0);
           OPout3 : out  STD_LOGIC_VECTOR (7 downto 0);
           Bout3 : out  STD_LOGIC_VECTOR (15 downto 0);
           Cout3 : out  STD_LOGIC_VECTOR (15 downto 0);
			  CLK : in STD_LOGIC
			  ); 
	end EX_MEM;
	
	entity MEM_RE is
    Port ( Ain4 : in  STD_LOGIC_VECTOR (15 downto 0);
           OPin4 : in  STD_LOGIC_VECTOR (7 downto 0);
           Bin4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Cin4 : in  STD_LOGIC_VECTOR (15 downto 0);
			  Aout4 : out  STD_LOGIC_VECTOR (15 downto 0);
           OPout4 : out  STD_LOGIC_VECTOR (7 downto 0);
           Bout4 : out  STD_LOGIC_VECTOR (15 downto 0);
           Cout4 : out  STD_LOGIC_VECTOR (15 downto 0);
			  CLK : in STD_LOGIC
			  ); 
	end MEM_RE;




end Process;

architecture Behavioral of Process is

begin


end Behavioral;

