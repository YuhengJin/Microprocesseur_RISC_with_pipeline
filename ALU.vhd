----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:39:56 05/10/2019 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           C : out  STD_LOGIC;
           O : out  STD_LOGIC;
           N : out  STD_LOGIC;
           Z : out  STD_LOGIC;
           Ctr_Alu : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (15 downto 0));
end ALU;


architecture Behavioral of ALU is
	signal Sadd : STD_LOGIC_VECTOR (16 downto 0);
	signal Ssous : STD_LOGIC_VECTOR (15 downto 0);
	signal Smul : STD_LOGIC_VECTOR (31 downto 0);
	signal Stmp : STD_LOGIC_VECTOR (15 downto 0);
begin

	Sadd <= std_logic_vector(unsigned('0'&A) + unsigned('0'&B));
	Ssous <= std_logic_vector(unsigned(A) - unsigned(B));
	Smul	<= std_logic_vector(unsigned(A) * unsigned(B));
	
	Stmp <= Sadd(15 downto 0) when Ctr_Alu = "0001" else
			Ssous(15 downto 0) when Ctr_Alu = "0011" else
			Smul(15 downto 0) when Ctr_Alu = "0010" else
			x"0000";
		
	S <= Stmp;	
		
	C <= Sadd(16);
		
	O <= Sadd(15) when Ctr_Alu = "0001" and Sadd(15)='1' and A(15)='0' and B(15)='0' else
		'1' when Ctr_Alu = "0001" and Sadd(15)='0' and A(15)='1' and B(15)='1' else
		'1' when Ctr_Alu = "0011" and Ssous(15)='1' and A(15)='0' and B(15)='1' else
		'1' when Ctr_Alu = "0011" and Ssous(15)='0' and A(15)='1' and B(15)='0' else
		'0';
		
	
	N <= Stmp(15);
	
	Z <= '1' when Stmp(15 downto 0)=X"0000" else
		  '0';

end Behavioral;

