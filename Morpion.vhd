library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity morpion is
    port (
        -- input
        clk : in std_logic;
        rst : in std_logic;
        play: in std_logic;  
        hor :in std_logic;  
        ver: in std_logic;
		  
        -- output
        colr : out std_logic_vector (1 to 5):="11111";
        colg : out std_logic_vector (1 to 5):="00000";
        row : out std_logic_vector (1 to 7):="1111111";
		green_led : buffer std_logic := '0';
		red_led : buffer std_logic := '0'
    );
end morpion;

architecture rtl of morpion is
 constant clk_freq : integer:= 1;
 signal clk_count : integer range 0 to 266 :=0;
 signal row_count : integer range 1 to 7 :=1;
 signal hor_count : integer range 1 to 5 :=1;
 signal lastPlay: std_logic :='0';
 signal lastHor : std_logic := '0';
 signal lastVer: std_logic := '0';
 signal lastRst: std_logic := '0';

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


process (clk)
begin
	if rising_edge(clk) then 
		if lastPlay = '1' and play ='0' then
			-- Occurs when "play" button is pressed
		
		
			if green_led = '0' then green_led <= '1';
			elsif green_led = '1' then green_led <='0';
			end if;
			
			
		end if;	
		lastPlay <= play;
	end if;
end process;

process (clk)
begin
	if rising_edge(clk) then 
		if lastHor = '1' and hor ='0' then
		-- Occurs when "hor" button is pressed
		
		
			if red_led = '0' then red_led <= '1';
			elsif red_led = '1' then red_led <='0';
			
			
			
			end if;
		end if;	
		lastHor <= hor;
	end if;
end process;

process (clk)
begin
	if rising_edge(clk) then 
		if lastVer = '1' and ver ='0' then
		-- Occurs when "ver" button is pressed
		
		
		
			
			
			
			end if;	
		lastVer <= ver;
	end if;
end process;

process (clk)
begin
	if rising_edge(clk) then 
		 if lastRst = '1' and rst ='0' then
		-- Occurs when "rst" button is pressed
		
		
		
			
			
			
		 end if;	
		lastRst <= rst;
	end if;
end process;
end architecture;
