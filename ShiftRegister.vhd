library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity shift_register is
  port (clk, rst   : in std_logic;
		Din : in std_logic_vector(7 downto 0);
		OP : in std_logic_vector(1 downto 0);
		Qout : out std_logic_vector(7 downto 0));
end entity shift_register;

architecture shift_register_arc of shift_register is
begin	
	process(clk, rst)
	
	variable Qv : std_logic_vector(7 downto 0);
	begin
		if rst = '0' then
			Qv := "00000000";
		
		elsif rising_edge(clk) then
			
			if OP = "01" then
				Qv := Din;
			elsif OP = "10" then
				Qv := "0" & Qv(7 downto 1);
			elsif OP = "11" then
				Qv := Qv(6 downto 0) & "0";
			end if;
			
		end if;
		
		Qout <= Qv;
	end process;
end architecture shift_register_arc;
