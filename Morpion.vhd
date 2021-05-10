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
		red_led : buffer std_logic := '0';
		compteur1 : out std_logic := '0';
		compteur2 : out std_logic := '0'
    );
end morpion;

architecture rtl of morpion is

 signal clk_count : integer range 0 to 2 :=0;
 signal row_count : integer range 3 to 5 :=3;
 signal hor_count : integer range 2 to 4 :=2;
 signal lastPlay : std_logic :='0';
 signal lastHor : std_logic := '0';
 signal lastVer : std_logic := '0';
 signal lastRst : std_logic := '0';
 --signal colr1 : std_logic_vector(1 to 5):="11111";
 --signal colr2 : std_logic_vector(1 to 5):="11111";
 signal colr3 : std_logic_vector(1 to 5):="11111";
 signal colr4 : std_logic_vector(1 to 5):="11111";
 signal colr5 : std_logic_vector(1 to 5):="11111";
 --signal colr6 : std_logic_vector(1 to 5):="11111";
 --signal colr7 : std_logic_vector(1 to 5):="11111";
 --signal colg1 : std_logic_vector(1 to 5):="11111";
 --signal colg2 : std_logic_vector(1 to 5):="11111";
 signal colg3 : std_logic_vector(1 to 5):="11111";
 signal colg4 : std_logic_vector(1 to 5):="11111";
 signal colg5 : std_logic_vector(1 to 5):="11111";
 --signal colg6 : std_logic_vector(1 to 5):="11111";
 --signal colg7 : std_logic_vector(1 to 5):="11111";
 signal playerCol : integer range 3 to 5 := 4;
 signal playerRow : integer range 2 to 4 := 3;
 signal player : integer range 1 to 2 :=1;
 signal rst_boolean : boolean := false;
 begin
scanning : process(clk)
	begin
		if rising_edge(clk) then
			if clk_count = 2 then
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
				when others =>
			end case ;
end process;


process (clk)
variable turn : boolean := true;
variable winner : integer range 0 to 2 :=0;
variable countTurn : integer range 0 to 9 :=0;
begin
	if rising_edge(clk) then 
		compteur1 <= '0';
		compteur2 <= '0';
		if (winner = 1) then
				countTurn := 9;
				compteur1 <= '1';
		elsif (winner = 2) then
				countTurn := 9;
				compteur2 <= '1';
		end if;	
		if colr3(2) = '0' and colr3(3) = '0' and colr3(4) = '0' then
		winner := 1;
		elsif colr4(2) = '0' and colr4(3) = '0' and colr4(4) = '0' then
		winner := 1;
		elsif colr5(2) = '0' and colr5(3) = '0' and colr5(4) = '0' then
		winner := 1;
		elsif colr3(2) = '0' and colr4(2) = '0' and colr5(2) = '0' then
		winner := 1;
		elsif colr3(3) = '0' and colr4(3) = '0' and colr5(3) = '0' then
		winner := 1;
		elsif colr3(4) = '0' and colr4(4) = '0' and colr5(4) = '0' then
		winner := 1;
		elsif colr3(2) = '0' and colr4(3) = '0' and colr5(4) = '0' then
		winner := 1;
		elsif colr3(4) = '0' and colr4(3) = '0' and colr5(2) = '0' then
		winner := 1;
		elsif colg3(2) = '0' and colg3(3) = '0' and colg3(4) = '0' then
		winner := 2;
		elsif colg4(2) = '0' and colg4(3) = '0' and colg4(4) = '0' then
		winner := 2;
		elsif colg5(2) = '0' and colg5(3) = '0' and colg5(4) = '0' then
		winner := 2;
		elsif colg3(2) = '0' and colg4(2) = '0' and colg5(2) = '0' then
		winner := 2;
		elsif colg3(3) = '0' and colg4(3) = '0' and colg5(3) = '0' then
		winner := 2;
		elsif colg3(4) = '0' and colg4(4) = '0' and colg5(4) = '0' then
		winner := 2;
		elsif colg3(2) = '0' and colg4(3) = '0' and colg5(4) = '0' then
		winner := 2;
		elsif colg3(4) = '0' and colg4(3) = '0' and colg5(2) = '0' then
		winner := 2;
		else
		winner := 0;
		end if;
		if lastPlay = '1' and play ='0' then
			-- Occurs when "play" button is pressed
			case(playerCol) is
				when 3 =>
				if colg3(playerRow) = '1' and colr3(playerRow) = '1' and player = 2 then
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
				countTurn := countTurn + 1 ;
				if player = 1 then player <= 2;
				elsif player = 2 then player <= 1;
				end if;
			end if;
			
		end if;
		
		if (lastRst = '1' and rst ='0') or countTurn >8 then
		-- Occurs when "rst" button is pressed	
			colr3 <= "11111";
			colr4 <= "11111";
			colr5 <= "11111";
		
			colg3 <= "11111";
			colg4 <= "11111";
			colg5 <= "11111";
			playerRow <= 3;
			playerCol <= 4;
			countTurn := 0;

		elsif lastHor = '1' and hor ='0' then
		-- Occurs when "hor" button is pressed
			if playerCol = 5 then playerCol <= 3;
			else playerCol <= playerCol + 1;
			end if;

		elsif lastVer = '1' and ver ='0' then
		-- Occurs when "ver" button is pressed
			if playerRow = 4 then playerRow <= 2;
			else playerRow <= playerRow + 1;
			end if;	
		end if;	

		lastVer <= ver;	
		lastHor <= hor;
		lastPlay <= play;
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
