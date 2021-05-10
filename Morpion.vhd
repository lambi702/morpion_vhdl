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
        colg : out std_logic_vector (1 to 5):="10001";
        row : out std_logic_vector (1 to 7):="0011100";
		green_led : buffer std_logic := '0';
		red_led : buffer std_logic := '0'
    );
end morpion;

architecture rtl of morpion is
 constant clk_freq : integer:= 1;
 signal clk_count : integer range 0 to 266 :=0;
 signal row_count : integer range 1 to 7 :=1;
 signal hor_count : integer range 1 to 5 :=1;
 signal lastPlay : std_logic :='0';
 signal lastHor : std_logic := '0';
 signal lastVer : std_logic := '0';
 signal lastRst : std_logic := '0';
 signal colr1 : std_logic_vector(1 to 5):="11111";
 signal colr2 : std_logic_vector(1 to 5):="11111";
 signal colr3 : std_logic_vector(1 to 5):="11111";
 signal colr4 : std_logic_vector(1 to 5):="11111";
 signal colr5 : std_logic_vector(1 to 5):="11111";
 signal colr6 : std_logic_vector(1 to 5):="11111";
 signal colr7 : std_logic_vector(1 to 5):="11111";
 signal colg1 : std_logic_vector(1 to 5):="11111";
 signal colg2 : std_logic_vector(1 to 5):="11111";
 signal colg3 : std_logic_vector(1 to 5):="11111";
 signal colg4 : std_logic_vector(1 to 5):="11111";
 signal colg5 : std_logic_vector(1 to 5):="11111";
 signal colg6 : std_logic_vector(1 to 5):="11111";
 signal colg7 : std_logic_vector(1 to 5):="11111";
 signal playerCol : integer range 3 to 5 := 4;
 signal playerRow : integer range 2 to 4 := 3;
 signal player : integer range 1 to 2 :=1;
 signal rst_boolean : boolean := false;
 

begin
scanning : process(clk)
	begin
		if rising_edge(clk) then
			if clk_count = clk_freq then
				clk_count<=0;
				if row_count = 5 then
					row_count <= 3;
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
			case(row_count) is
				when 1 =>
					colr <= colr1;
					colg <= colg1;
				when 2 =>
					colr <= colr2;
					colg <= colg2;
				when 3 =>
					colr <= colr3;
					colg <= colg3;
					if playerCol = row_count then 
						colg(playerRow)<='0';
						colr(playerRow)<='0';
					end if;
				when 4 =>
					colr <= colr4;
					colg <= colg4;
					if playerCol = row_count then 
						colg(playerRow)<='0';
						colr(playerRow)<='0';
					end if;
				when 5 =>
					colr <= colr5;
					colg <= colg5;
					if playerCol = row_count then 
						colg(playerRow)<='0';
						colr(playerRow)<='0';
					end if;
				when 6 =>
					colr <= colr6;
					colg <= colg6;
				when 7 =>
					colr <= colr7;
					colg <= colg7;	
				when others =>	
			end case ;
end process;


process (clk)
variable turn : boolean := true;
begin
	if rising_edge(clk) then 
		if lastPlay = '1' and play ='0' then
		-- Occurs when "play" button is pressed
		case( playerCol ) is
			when 3 =>
			if player = 2 and colg3(playerRow) = '1' and colr3(playerRow) = '1' then
				colg3(playerRow) <= '0';
				turn := false;
			elsif player = 1 and colg3(playerRow) = '1' and colr3(playerRow) = '1' then
				colr3(playerRow) <= '0';
				turn := false;
			else
				turn := true;
			end if;
			when 4 =>
			if player = 2 and colg4(playerRow) = '1' and colr4(playerRow) = '1' then
				colg4(playerRow) <= '0';
				turn := false;
			elsif player = 1 and colg4(playerRow) = '1' and colr4(playerRow) = '1' then
				colr4(playerRow) <= '0';
				turn := false;
			else
				turn := true;
			end if;
			when 5 =>
			if player = 2 and colg5(playerRow) = '1' and colr5(playerRow) = '1' then
				colg5(playerRow) <= '0';
				turn := false;
			elsif player = 1 and colg5(playerRow) = '1' and colr5(playerRow) = '1' then
				colr5(playerRow) <= '0';
				turn := false;
			else
				turn := true;
			end if;
			when others =>
		
		end case ;
		if turn = false then
			if player = 1 then player <= 2;
			elsif player = 2 then player <= 1;
			end if;
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
			if playerCol = 5 then playerCol <= 3;
			else playerCol <= playerCol + 1;
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
		if playerRow = 4 then playerRow <= 2;
		else playerRow <= playerRow + 1;
		end if;	
			end if;	
		lastVer <= ver;
	end if;
end process;

process (clk)
begin
	if rising_edge(clk) then 
		 if lastRst = '1' and rst ='0' then
		-- Occurs when "rst" button is pressed
			rst_boolean <= true;
		else 
			rst_boolean <= false;	
		end if;	
		lastRst <= rst;
	end if;
end process;

process (player)
begin
	if player = 1 then 
		green_led <= '0';
		red_led <= '1';
	elsif player = 2 then 
		green_led <= '1';
		red_led <= '0';
	end if;
end process;
end architecture;
