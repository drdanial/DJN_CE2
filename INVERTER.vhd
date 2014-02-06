----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Danial Neebel
-- 
-- Create Date:    08:58:32 01/29/2014 
-- Design Name: Decoder 
-- Module Name:    INVERTER - Behavioral 
-- Project Name: Computer Exercise 2
-- Target Devices: Artix 7
-- Tool versions: Xilinx ISE 14.6
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

entity INVERTER is
    Port ( A : in  STD_LOGIC;
           F : out  STD_LOGIC);
end INVERTER;

architecture Behavioral of INVERTER is

begin

F <= NOT A;

end Behavioral;

