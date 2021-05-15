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
        colg : out std_logic_vector (1 to 5):="11111";
        row : out std_logic_vector (1 to 7):="1111111";
		green_led : buffer std_logic := '0';
		red_led : buffer std_logic := '0';
		compteur1 : out std_logic := '0';
		compteur2 : out std_logic := '0'
    );
end morpion;

architecture rtl of morpion is

signal clk_count : integer range 0 to 2 :=0; --index pour le raffraichissement de la matrice de led
signal row_count : integer range 3 to 5 :=3; --index de la ligne allumée
signal lastPlay : std_logic :='0'; --valeur du signal "play" au tour de clk précédent (utile pour debouncer le bouton)
signal lastHor : std_logic := '0';	--valeur du signal "hor" au tour de clk précédent (utile pour debouncer le bouton)
signal lastVer : std_logic := '0';	--valeur du signal "ver" au tour de clk précédent (utile pour debouncer le bouton)
signal lastRst : std_logic := '0';	--valeur du signal "rst" au tour de clk précédent (utile pour debouncer le bouton)
 
signal colr3 : std_logic_vector(1 to 5):="11111"; --permet de garder en mémoire l'état d'une ligne. Un vecteur par ligne et par couleur
signal colr4 : std_logic_vector(1 to 5):="11111"; --ils sont initialisés pour être éteint.
signal colr5 : std_logic_vector(1 to 5):="11111";
 
signal colg3 : std_logic_vector(1 to 5):="11111";
signal colg4 : std_logic_vector(1 to 5):="11111";
signal colg5 : std_logic_vector(1 to 5):="11111";
 
signal playerCol : integer range 3 to 5 := 4; --garde l'index du curseur
signal playerRow : integer range 2 to 4 := 3; 
signal player : integer range 1 to 2 :=1; --garde en mémoire le joueur qui joue
begin
scanning : process(clk)  --mise a jour de la ligne allumée
	begin
		if rising_edge(clk) then
			if clk_count = 2 then --la ligne ce met a jour tous les 3 tours de clocks
				clk_count<=0; 
				if row_count = 5 then -- block pour incrémenter de cette manière : 3 -> 4 -> 5 -> 3 -> ..
					row_count <= 3;
				else 
					row_count <= row_count+1; 
				end if;
			else 
				clk_count <= clk_count+1;
			end if;
		end if;
end process;

row_on : process(row_count) --allume la ligne row_count et allume le curseur
	begin
		row <= (others => '0'); --on allume seulement la ligne voulue 
		row(row_count) <= '1';
		case(row_count) is --permet de placer le vecteur correspondant a la ligne a allumer et le curseur sur l'écran
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


button_and_turn : process (clk) --gère un tour complet et l'action des buttons
variable turn : boolean := true; --boolean vrai si le tour n'est pas fini
variable winner : integer range 0 to 2 :=0; -- 0 si pas de gagnan, 1 si le joueru 1 gagne, 2 si je joueur 2 gagne
variable countTurn : integer range 0 to 9 :=0; -- compte le nombre de jetons placés
	begin
		if rising_edge(clk) then 
			compteur1 <= '0'; 				-- permet d'envoyer une impulsion au compteur décodeur du gagnant pour l'incrémenter
			compteur2 <= '0';				--|
			if (winner = 1) then			--|
				countTurn := 9;				--|
				compteur1 <= '1';			--|
			elsif (winner = 2) then			--|
				countTurn := 9;				--|
				compteur2 <= '1';			--|
			end if;	
			if colr3(2) = '0' and colr3(3) = '0' and colr3(4) = '0' then 		-- ce gros block if else if verifie si il y a 
				winner := 1;													-- une combinaison gagnante sur la grille et
			elsif colr4(2) = '0' and colr4(3) = '0' and colr4(4) = '0' then		-- met a jour la variable winner	 
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
			if lastPlay = '1' and play ='0' then -- gère l'appui du bouton play, la condition permet le debouncing
				case(playerCol) is --met a jour le vecteur correspondant a ligne du curseur si la position du curseur n'a pas encore été joué.
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
				if turn = false then -- on rentre dans la boucle si un jeton a été placé
					countTurn := countTurn + 1 ;
					if player = 1 then player <= 2; -- on change de joueur
					elsif player = 2 then player <= 1;
					end if;
				end if;
				
			end if;
			
			if (lastRst = '1' and rst ='0') or countTurn = 9 then 	--gère l'appui du bouton reset, reinitialise la grille aussi si la grille est pleine.
				colr3 <= "11111";									--(il n'y a pas de reset des compteurs car cela est géré du coté hardware)
				colr4 <= "11111";
				colr5 <= "11111";
			
				colg3 <= "11111";
				colg4 <= "11111";
				colg5 <= "11111";
				playerRow <= 3; --mise au centre du curseur et remise a zero du nombre de jetons
				playerCol <= 4;
				countTurn := 0;

			elsif lastHor = '1' and hor ='0' then 		--gère l'appui du bouton horizontal. 
				if playerCol = 5 then playerCol <= 3;	--incrémente la colonne en effectuant la rotation suivante: 3 -> 4 -> 5 -> 3 -> 4 ..
				else playerCol <= playerCol + 1;
				end if;

			elsif lastVer = '1' and ver ='0' then		--gère l'appui du bouton vertical.
				if playerRow = 4 then playerRow <= 2;	--incrémente la ligne en effectuant la rotation suivante: 2 -> 3 -> 4 -> 2 ..
				else playerRow <= playerRow + 1;
				end if;	
			end if;	

			lastVer <= ver;	-- permet de debouncer les boutons
			lastHor <= hor;
			lastPlay <= play;
			lastRst <= rst;
		end if;
end process;

led_player : process (player) -- mise a jour de la led du joueur
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
