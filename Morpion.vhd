library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity morpion is
    port (
        -- input
        clk : in std_logic;
        rst : in std_logic;
        play: in std_logic :='0';
		  lastPlay: buffer std_logic :='0';
        hor :in std_logic;
        ver: in std_logic;
        -- output
        colr : out std_logic_vector (1 to 5):="00000";
        colg : out std_logic_vector (1 to 5):="00000";
        row : out std_logic_vector (1 to 7):="1111111";
		green_led : buffer std_logic := '0'
    );
end morpion;

architecture rtl of morpion is
 constant clk_freq : integer:= 266;
 signal clk_count : integer range 0 to 266 :=0;
 signal row_count : integer range 1 to 7 :=1;
 signal hor_count : integer range 1 to 5 :=1;

begin
scanning : process(clk)
	begin	
		if rising_edge(clk) then
			if clk_count = clk_freq then
				clk_count<=0;
				if row_count = 7 then 
					row_count <= 1;
				else 
					row_count <= row_count+1;
				end if;
			else 
				clk_count <= clk_count+1;
			end if;
		end if;
    end process scanning;

process(row_count)
	begin	
		row <= (others => '0');
		row(row_count) <= '1';
end process;

process (play)
begin
if play = '1' then
if green_led = '1' then
green_led <= '0';
else
green_led <= '1';
end if;
end if;
end process;
end architecture;