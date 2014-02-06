----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:40:25 02/04/2014 
-- Design Name: 
-- Module Name:    DJN_CEX2_Behave - Behavioral 
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

entity DJN_CEX2_Behave is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (3 downto 0));
end DJN_CEX2_Behave;

architecture Behavioral of DJN_CEX2_Behave is

begin

Y(0) <= not I1 and not I0 and EN;
Y(1) <= not I1 and     I0 and EN;
Y(2) <=     I1 and not I0 and EN;
Y(3) <=     I1 and     I0 and EN;

end Behavioral;

