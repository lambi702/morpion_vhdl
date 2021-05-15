-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "05/15/2021 21:52:42"

-- 
-- Device: Altera 5M160ZE64C4 Package EQFP64
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	morpion IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	play : IN std_logic;
	hor : IN std_logic;
	ver : IN std_logic;
	colr : OUT std_logic_vector(1 TO 5);
	colg : OUT std_logic_vector(1 TO 5);
	row : OUT std_logic_vector(1 TO 7);
	green_led : BUFFER std_logic;
	red_led : BUFFER std_logic;
	compteur1 : OUT std_logic;
	compteur2 : OUT std_logic
	);
END morpion;

-- Design Ports Information


ARCHITECTURE structure OF morpion IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_play : std_logic;
SIGNAL ww_hor : std_logic;
SIGNAL ww_ver : std_logic;
SIGNAL ww_colr : std_logic_vector(1 TO 5);
SIGNAL ww_colg : std_logic_vector(1 TO 5);
SIGNAL ww_row : std_logic_vector(1 TO 7);
SIGNAL ww_green_led : std_logic;
SIGNAL ww_red_led : std_logic;
SIGNAL ww_compteur1 : std_logic;
SIGNAL ww_compteur2 : std_logic;
SIGNAL \lastVer~regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \ver~combout\ : std_logic;
SIGNAL \hor~combout\ : std_logic;
SIGNAL \lastHor~regout\ : std_logic;
SIGNAL \playerRow~2\ : std_logic;
SIGNAL \playerRow~5_combout\ : std_logic;
SIGNAL \playerRow[0]~3_combout\ : std_logic;
SIGNAL \colg~1_combout\ : std_logic;
SIGNAL \play~combout\ : std_logic;
SIGNAL \turn~0_combout\ : std_logic;
SIGNAL \lastPlay~regout\ : std_logic;
SIGNAL \countTurn~6_combout\ : std_logic;
SIGNAL \colr5[4]~0_combout\ : std_logic;
SIGNAL \colg5[4]~5_combout\ : std_logic;
SIGNAL \colr5[4]~1_combout\ : std_logic;
SIGNAL \colr~1_combout\ : std_logic;
SIGNAL \Decoder1~0_combout\ : std_logic;
SIGNAL \countTurn~8_combout\ : std_logic;
SIGNAL \colg~5_combout\ : std_logic;
SIGNAL \colg~3_combout\ : std_logic;
SIGNAL \colr~3_combout\ : std_logic;
SIGNAL \countTurn~7_combout\ : std_logic;
SIGNAL \countTurn~9_combout\ : std_logic;
SIGNAL \countTurn~1\ : std_logic;
SIGNAL \colr4~0_combout\ : std_logic;
SIGNAL \colr4~1_combout\ : std_logic;
SIGNAL \colr~0_combout\ : std_logic;
SIGNAL \colg~0_combout\ : std_logic;
SIGNAL \colg4[4]~5_combout\ : std_logic;
SIGNAL \countTurn~3_combout\ : std_logic;
SIGNAL \colg~2_combout\ : std_logic;
SIGNAL \colr~2_combout\ : std_logic;
SIGNAL \colg~4_combout\ : std_logic;
SIGNAL \countTurn~2_combout\ : std_logic;
SIGNAL \countTurn~4_combout\ : std_logic;
SIGNAL \countTurn~5_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \colr3[3]~1_combout\ : std_logic;
SIGNAL \colg3[4]~1_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \colr3[3]~2_combout\ : std_logic;
SIGNAL \process_2~1_combout\ : std_logic;
SIGNAL \Decoder1~1_combout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \process_2~2_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \countTurn~10_combout\ : std_logic;
SIGNAL \process_2~6_combout\ : std_logic;
SIGNAL \winner~0_combout\ : std_logic;
SIGNAL \process_2~9_combout\ : std_logic;
SIGNAL \winner~3_combout\ : std_logic;
SIGNAL \process_2~7_combout\ : std_logic;
SIGNAL \winner~1_combout\ : std_logic;
SIGNAL \process_2~8_combout\ : std_logic;
SIGNAL \winner~2_combout\ : std_logic;
SIGNAL \winner~4_combout\ : std_logic;
SIGNAL \winner~8_combout\ : std_logic;
SIGNAL \winner~9_combout\ : std_logic;
SIGNAL \winner~10_combout\ : std_logic;
SIGNAL \winner~5_combout\ : std_logic;
SIGNAL \winner~6_combout\ : std_logic;
SIGNAL \winner~7_combout\ : std_logic;
SIGNAL \countTurn~14_combout\ : std_logic;
SIGNAL \countTurn~13_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \countTurn~11_combout\ : std_logic;
SIGNAL \process_2~3_combout\ : std_logic;
SIGNAL \lastRst~regout\ : std_logic;
SIGNAL \countTurn~0_combout\ : std_logic;
SIGNAL \countTurn~12_combout\ : std_logic;
SIGNAL \process_2~4\ : std_logic;
SIGNAL \playerCol[1]~6_combout\ : std_logic;
SIGNAL \process_2~5\ : std_logic;
SIGNAL \playerCol~4_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \green_led$latch~combout\ : std_logic;
SIGNAL \red_led$latch~combout\ : std_logic;
SIGNAL \compteur1~reg0_regout\ : std_logic;
SIGNAL \compteur2~reg0_regout\ : std_logic;
SIGNAL colr3 : std_logic_vector(1 TO 5);
SIGNAL row_count : std_logic_vector(2 DOWNTO 0);
SIGNAL colg5 : std_logic_vector(1 TO 5);
SIGNAL playerRow : std_logic_vector(2 DOWNTO 0);
SIGNAL colg4 : std_logic_vector(1 TO 5);
SIGNAL playerCol : std_logic_vector(2 DOWNTO 0);
SIGNAL colr4 : std_logic_vector(1 TO 5);
SIGNAL colr5 : std_logic_vector(1 TO 5);
SIGNAL colg3 : std_logic_vector(1 TO 5);
SIGNAL clk_count : std_logic_vector(1 DOWNTO 0);
SIGNAL countTurn : std_logic_vector(3 DOWNTO 0);
SIGNAL winner : std_logic_vector(1 DOWNTO 0);
SIGNAL player : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_play <= play;
ww_hor <= hor;
ww_ver <= ver;
colr <= ww_colr;
colg <= ww_colg;
row <= ww_row;
green_led <= ww_green_led;
red_led <= ww_red_led;
compteur1 <= ww_compteur1;
compteur2 <= ww_compteur2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X6_Y2_N9
\clk_count[0]\ : maxv_lcell
-- Equation(s):
-- clk_count(0) = DFFEAS(((!clk_count(0) & ((!clk_count(1))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => clk_count(0),
	datad => clk_count(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(0));

-- Location: LC_X6_Y2_N4
\clk_count[1]\ : maxv_lcell
-- Equation(s):
-- clk_count(1) = DFFEAS(((clk_count(0) & ((!clk_count(1))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => clk_count(0),
	datad => clk_count(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(1));

-- Location: LC_X6_Y2_N0
\row_count[1]\ : maxv_lcell
-- Equation(s):
-- row_count(1) = DFFEAS(row_count(1) $ (((clk_count(1) & (!clk_count(0) & !row_count(0))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => clk_count(1),
	datab => clk_count(0),
	datac => row_count(1),
	datad => row_count(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_count(1));

-- Location: LC_X6_Y2_N3
\Equal0~0\ : maxv_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (((clk_count(1) & !clk_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => clk_count(1),
	datad => clk_count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X6_Y2_N8
\row_count[2]\ : maxv_lcell
-- Equation(s):
-- row_count(2) = DFFEAS(((row_count(0) & ((row_count(2)))) # (!row_count(0) & (!row_count(1) & !row_count(2)))), GLOBAL(\clk~combout\), VCC, , \Equal0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc03",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => row_count(0),
	datac => row_count(1),
	datad => row_count(2),
	aclr => GND,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_count(2));

-- Location: LC_X6_Y2_N2
\row_count[0]\ : maxv_lcell
-- Equation(s):
-- row_count(0) = DFFEAS(((!row_count(0) & ((!row_count(2)) # (!row_count(1))))), GLOBAL(\clk~combout\), VCC, , \Equal0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0333",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => row_count(0),
	datac => row_count(1),
	datad => row_count(2),
	aclr => GND,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_count(0));

-- Location: LC_X6_Y2_N1
\Mux4~0\ : maxv_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (((row_count(2))) # (!row_count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_count(0),
	datad => row_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ver~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ver,
	combout => \ver~combout\);

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\hor~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_hor,
	combout => \hor~combout\);

-- Location: LC_X5_Y4_N2
lastHor : maxv_lcell
-- Equation(s):
-- \process_2~5\ = ((!\hor~combout\ & (lastHor)))
-- \lastHor~regout\ = DFFEAS(\process_2~5\, GLOBAL(\clk~combout\), VCC, , , \hor~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \hor~combout\,
	datac => \hor~combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_2~5\,
	regout => \lastHor~regout\);

-- Location: LC_X5_Y4_N7
lastVer : maxv_lcell
-- Equation(s):
-- \playerRow~2\ = (\ver~combout\) # (((!\hor~combout\ & \lastHor~regout\)) # (!lastVer))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ver~combout\,
	datab => \hor~combout\,
	datac => \ver~combout\,
	datad => \lastHor~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \playerRow~2\,
	regout => \lastVer~regout\);

-- Location: LC_X3_Y3_N6
\playerRow~5\ : maxv_lcell
-- Equation(s):
-- \playerRow~5_combout\ = (playerRow(1) & (!playerRow(0) & (playerRow(2)))) # (!playerRow(1) & (playerRow(0) $ ((!playerRow(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6161",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerRow(1),
	datab => playerRow(0),
	datac => playerRow(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \playerRow~5_combout\);

-- Location: LC_X3_Y3_N0
\playerRow[2]\ : maxv_lcell
-- Equation(s):
-- playerRow(2) = DFFEAS((!\process_2~4\ & ((\playerRow~2\ & (playerRow(2))) # (!\playerRow~2\ & ((\playerRow~5_combout\))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00b8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => playerRow(2),
	datab => \playerRow~2\,
	datac => \playerRow~5_combout\,
	datad => \process_2~4\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => playerRow(2));

-- Location: LC_X3_Y3_N9
\playerRow[0]~3\ : maxv_lcell
-- Equation(s):
-- \playerRow[0]~3_combout\ = (((\process_2~4\) # (!\playerRow~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \playerRow~2\,
	datad => \process_2~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \playerRow[0]~3_combout\);

-- Location: LC_X3_Y3_N5
\playerRow[1]\ : maxv_lcell
-- Equation(s):
-- playerRow(1) = DFFEAS((!\process_2~4\ & ((playerRow(0) & (playerRow(1) & !playerRow(2))) # (!playerRow(0) & (!playerRow(1))))), GLOBAL(\clk~combout\), VCC, , \playerRow[0]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0019",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => playerRow(0),
	datab => playerRow(1),
	datac => playerRow(2),
	datad => \process_2~4\,
	aclr => GND,
	ena => \playerRow[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => playerRow(1));

-- Location: LC_X3_Y3_N7
\playerRow[0]\ : maxv_lcell
-- Equation(s):
-- playerRow(0) = DFFEAS((!\process_2~4\ & (((playerRow(1) & playerRow(2))) # (!playerRow(0)))), GLOBAL(\clk~combout\), VCC, , \playerRow[0]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00d5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => playerRow(0),
	datab => playerRow(1),
	datac => playerRow(2),
	datad => \process_2~4\,
	aclr => GND,
	ena => \playerRow[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => playerRow(0));

-- Location: LC_X3_Y2_N1
\colg~1\ : maxv_lcell
-- Equation(s):
-- \colg~1_combout\ = (!colg5(4) & (((!playerRow(0)) # (!playerRow(1))) # (!playerRow(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "070f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerRow(2),
	datab => playerRow(1),
	datac => colg5(4),
	datad => playerRow(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colg~1_combout\);

-- Location: LC_X5_Y2_N8
\player[1]\ : maxv_lcell
-- Equation(s):
-- player(1) = DFFEAS(((\countTurn~10_combout\ & (player(1))) # (!\countTurn~10_combout\ & ((!player(0))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => player(1),
	datac => player(0),
	datad => \countTurn~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => player(1));

-- Location: LC_X5_Y2_N6
\player[0]\ : maxv_lcell
-- Equation(s):
-- player(0) = DFFEAS(((\countTurn~10_combout\ & ((player(0)))) # (!\countTurn~10_combout\ & (!player(1)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f033",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => player(1),
	datac => player(0),
	datad => \countTurn~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => player(0));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\play~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_play,
	combout => \play~combout\);

-- Location: LC_X5_Y2_N0
\turn~0\ : maxv_lcell
-- Equation(s):
-- \turn~0_combout\ = ((player(0) $ (!player(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => player(0),
	datad => player(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \turn~0_combout\);

-- Location: LC_X5_Y2_N1
lastPlay : maxv_lcell
-- Equation(s):
-- \countTurn~1\ = (\play~combout\) # (((!playerCol(2) & !\turn~0_combout\)) # (!lastPlay))
-- \lastPlay~regout\ = DFFEAS(\countTurn~1\, GLOBAL(\clk~combout\), VCC, , , \play~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afbf",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \play~combout\,
	datab => playerCol(2),
	datac => \play~combout\,
	datad => \turn~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \countTurn~1\,
	regout => \lastPlay~regout\);

-- Location: LC_X5_Y2_N7
\countTurn~6\ : maxv_lcell
-- Equation(s):
-- \countTurn~6_combout\ = (((playerCol(0) & !playerCol(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => playerCol(0),
	datad => playerCol(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \countTurn~6_combout\);

-- Location: LC_X3_Y3_N3
\colr5[4]~0\ : maxv_lcell
-- Equation(s):
-- \colr5[4]~0_combout\ = (!\play~combout\ & (\countTurn~9_combout\ & (\lastPlay~regout\ & \countTurn~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \play~combout\,
	datab => \countTurn~9_combout\,
	datac => \lastPlay~regout\,
	datad => \countTurn~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colr5[4]~0_combout\);

-- Location: LC_X2_Y3_N0
\colg5[4]~5\ : maxv_lcell
-- Equation(s):
-- \colg5[4]~5_combout\ = (\process_2~4\) # ((player(0) & (player(1) & \colr5[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player(0),
	datab => player(1),
	datac => \colr5[4]~0_combout\,
	datad => \process_2~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colg5[4]~5_combout\);

-- Location: LC_X2_Y3_N8
\colg5[4]\ : maxv_lcell
-- Equation(s):
-- colg5(4) = DFFEAS((((!\colg~1_combout\ & !\process_2~4\))), GLOBAL(\clk~combout\), VCC, , \colg5[4]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \colg~1_combout\,
	datad => \process_2~4\,
	aclr => GND,
	ena => \colg5[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colg5(4));

-- Location: LC_X3_Y3_N2
\colr5[4]~1\ : maxv_lcell
-- Equation(s):
-- \colr5[4]~1_combout\ = (player(1)) # (((player(0)) # (!\colr5[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player(1),
	datac => player(0),
	datad => \colr5[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colr5[4]~1_combout\);

-- Location: LC_X4_Y2_N9
\colr~1\ : maxv_lcell
-- Equation(s):
-- \colr~1_combout\ = (!colr5(3) & ((playerRow(1)) # ((playerRow(0)) # (playerRow(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3332",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerRow(1),
	datab => colr5(3),
	datac => playerRow(0),
	datad => playerRow(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colr~1_combout\);

-- Location: LC_X2_Y3_N9
\colr5[3]\ : maxv_lcell
-- Equation(s):
-- colr5(3) = DFFEAS((!\process_2~4\ & ((\colr5[4]~1_combout\ & (colr5(3))) # (!\colr5[4]~1_combout\ & ((!\colr~1_combout\))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "008b",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => colr5(3),
	datab => \colr5[4]~1_combout\,
	datac => \colr~1_combout\,
	datad => \process_2~4\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colr5(3));

-- Location: LC_X3_Y3_N4
\Decoder1~0\ : maxv_lcell
-- Equation(s):
-- \Decoder1~0_combout\ = (playerRow(1) & (playerRow(0) & (playerRow(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerRow(1),
	datab => playerRow(0),
	datac => playerRow(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder1~0_combout\);

-- Location: LC_X2_Y3_N4
\colr5[4]\ : maxv_lcell
-- Equation(s):
-- colr5(4) = DFFEAS((!\process_2~4\ & ((colr5(4)) # ((\Decoder1~0_combout\ & !\colr5[4]~1_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0e",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => colr5(4),
	datab => \Decoder1~0_combout\,
	datac => \process_2~4\,
	datad => \colr5[4]~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colr5(4));

-- Location: LC_X2_Y3_N6
\countTurn~8\ : maxv_lcell
-- Equation(s):
-- \countTurn~8_combout\ = (playerRow(0) & ((colg5(4)) # ((colr5(4))))) # (!playerRow(0) & (((colr5(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "facc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colg5(4),
	datab => colr5(3),
	datac => colr5(4),
	datad => playerRow(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \countTurn~8_combout\);

-- Location: LC_X3_Y3_N1
\colg~5\ : maxv_lcell
-- Equation(s):
-- \colg~5_combout\ = (!colg5(2) & (((playerRow(1)) # (playerRow(2))) # (!playerRow(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerRow(0),
	datab => playerRow(1),
	datac => playerRow(2),
	datad => colg5(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colg~5_combout\);

-- Location: LC_X2_Y3_N5
\colg5[2]\ : maxv_lcell
-- Equation(s):
-- colg5(2) = DFFEAS((!\colg~5_combout\ & (((!\process_2~4\)))), GLOBAL(\clk~combout\), VCC, , \colg5[4]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \colg~5_combout\,
	datad => \process_2~4\,
	aclr => GND,
	ena => \colg5[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colg5(2));

-- Location: LC_X3_Y2_N6
\colg~3\ : maxv_lcell
-- Equation(s):
-- \colg~3_combout\ = (!colg5(3) & ((playerRow(2)) # ((playerRow(1)) # (playerRow(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerRow(2),
	datab => playerRow(1),
	datac => colg5(3),
	datad => playerRow(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colg~3_combout\);

-- Location: LC_X2_Y3_N1
\colg5[3]\ : maxv_lcell
-- Equation(s):
-- colg5(3) = DFFEAS((((!\colg~3_combout\ & !\process_2~4\))), GLOBAL(\clk~combout\), VCC, , \colg5[4]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \colg~3_combout\,
	datad => \process_2~4\,
	aclr => GND,
	ena => \colg5[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colg5(3));

-- Location: LC_X4_Y2_N4
\colr~3\ : maxv_lcell
-- Equation(s):
-- \colr~3_combout\ = (!colr5(2) & (((playerRow(1)) # (playerRow(2))) # (!playerRow(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3331",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerRow(0),
	datab => colr5(2),
	datac => playerRow(1),
	datad => playerRow(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colr~3_combout\);

-- Location: LC_X2_Y3_N7
\colr5[2]\ : maxv_lcell
-- Equation(s):
-- colr5(2) = DFFEAS((!\process_2~4\ & ((\colr5[4]~1_combout\ & ((colr5(2)))) # (!\colr5[4]~1_combout\ & (!\colr~3_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00d1",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \colr~3_combout\,
	datab => \colr5[4]~1_combout\,
	datac => colr5(2),
	datad => \process_2~4\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colr5(2));

-- Location: LC_X2_Y3_N2
\countTurn~7\ : maxv_lcell
-- Equation(s):
-- \countTurn~7_combout\ = (playerRow(0) & ((colg5(2)) # ((colr5(2))))) # (!playerRow(0) & (((colg5(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "facc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colg5(2),
	datab => colg5(3),
	datac => colr5(2),
	datad => playerRow(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \countTurn~7_combout\);

-- Location: LC_X2_Y3_N3
\countTurn~9\ : maxv_lcell
-- Equation(s):
-- \countTurn~9_combout\ = (playerRow(1) & (((!\countTurn~8_combout\)) # (!playerRow(0)))) # (!playerRow(1) & (!\countTurn~7_combout\ & ((playerRow(0)) # (!\countTurn~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c6f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerRow(0),
	datab => playerRow(1),
	datac => \countTurn~8_combout\,
	datad => \countTurn~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \countTurn~9_combout\);

-- Location: LC_X4_Y3_N7
\colr4~0\ : maxv_lcell
-- Equation(s):
-- \colr4~0_combout\ = (\lastPlay~regout\ & (!\play~combout\ & (\countTurn~4_combout\ & !playerCol(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lastPlay~regout\,
	datab => \play~combout\,
	datac => \countTurn~4_combout\,
	datad => playerCol(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colr4~0_combout\);

-- Location: LC_X4_Y3_N8
\colr4~1\ : maxv_lcell
-- Equation(s):
-- \colr4~1_combout\ = (((player(0)) # (player(1))) # (!\colr4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \colr4~0_combout\,
	datac => player(0),
	datad => player(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colr4~1_combout\);

-- Location: LC_X4_Y2_N5
\colr~0\ : maxv_lcell
-- Equation(s):
-- \colr~0_combout\ = (!colr4(3) & ((playerRow(1)) # ((playerRow(2)) # (playerRow(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerRow(1),
	datab => playerRow(2),
	datac => colr4(3),
	datad => playerRow(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colr~0_combout\);

-- Location: LC_X4_Y3_N3
\colr4[3]\ : maxv_lcell
-- Equation(s):
-- colr4(3) = DFFEAS((!\process_2~4\ & ((\colr4~1_combout\ & (colr4(3))) # (!\colr4~1_combout\ & ((!\colr~0_combout\))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "008d",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \colr4~1_combout\,
	datab => colr4(3),
	datac => \colr~0_combout\,
	datad => \process_2~4\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colr4(3));

-- Location: LC_X3_Y2_N2
\colg~0\ : maxv_lcell
-- Equation(s):
-- \colg~0_combout\ = (!colg4(4) & (((!playerRow(1)) # (!playerRow(2))) # (!playerRow(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1555",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colg4(4),
	datab => playerRow(0),
	datac => playerRow(2),
	datad => playerRow(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colg~0_combout\);

-- Location: LC_X4_Y3_N6
\colg4[4]~5\ : maxv_lcell
-- Equation(s):
-- \colg4[4]~5_combout\ = (\process_2~4\) # ((player(0) & (\colr4~0_combout\ & player(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player(0),
	datab => \colr4~0_combout\,
	datac => player(1),
	datad => \process_2~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colg4[4]~5_combout\);

-- Location: LC_X4_Y3_N2
\colg4[4]\ : maxv_lcell
-- Equation(s):
-- colg4(4) = DFFEAS((((!\colg~0_combout\ & !\process_2~4\))), GLOBAL(\clk~combout\), VCC, , \colg4[4]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \colg~0_combout\,
	datad => \process_2~4\,
	aclr => GND,
	ena => \colg4[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colg4(4));

-- Location: LC_X4_Y3_N5
\colr4[4]\ : maxv_lcell
-- Equation(s):
-- colr4(4) = DFFEAS((!\process_2~4\ & ((colr4(4)) # ((\Decoder1~0_combout\ & !\colr4~1_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2232",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => colr4(4),
	datab => \process_2~4\,
	datac => \Decoder1~0_combout\,
	datad => \colr4~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colr4(4));

-- Location: LC_X4_Y3_N9
\countTurn~3\ : maxv_lcell
-- Equation(s):
-- \countTurn~3_combout\ = (playerRow(0) & (((colg4(4)) # (colr4(4))))) # (!playerRow(0) & (colr4(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colr4(3),
	datab => colg4(4),
	datac => colr4(4),
	datad => playerRow(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \countTurn~3_combout\);

-- Location: LC_X3_Y2_N5
\colg~2\ : maxv_lcell
-- Equation(s):
-- \colg~2_combout\ = (!colg4(3) & ((playerRow(2)) # ((playerRow(0)) # (playerRow(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerRow(2),
	datab => playerRow(0),
	datac => colg4(3),
	datad => playerRow(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colg~2_combout\);

-- Location: LC_X4_Y3_N0
\colg4[3]\ : maxv_lcell
-- Equation(s):
-- colg4(3) = DFFEAS((((!\colg~2_combout\ & !\process_2~4\))), GLOBAL(\clk~combout\), VCC, , \colg4[4]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \colg~2_combout\,
	datad => \process_2~4\,
	aclr => GND,
	ena => \colg4[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colg4(3));

-- Location: LC_X4_Y2_N3
\colr~2\ : maxv_lcell
-- Equation(s):
-- \colr~2_combout\ = (!colr4(2) & ((playerRow(1)) # ((playerRow(2)) # (!playerRow(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3323",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerRow(1),
	datab => colr4(2),
	datac => playerRow(0),
	datad => playerRow(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colr~2_combout\);

-- Location: LC_X4_Y3_N4
\colr4[2]\ : maxv_lcell
-- Equation(s):
-- colr4(2) = DFFEAS((!\process_2~4\ & ((\colr4~1_combout\ & ((colr4(2)))) # (!\colr4~1_combout\ & (!\colr~2_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00b1",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \colr4~1_combout\,
	datab => \colr~2_combout\,
	datac => colr4(2),
	datad => \process_2~4\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colr4(2));

-- Location: LC_X3_Y3_N8
\colg~4\ : maxv_lcell
-- Equation(s):
-- \colg~4_combout\ = (!colg4(2) & ((playerRow(1)) # ((playerRow(2)) # (!playerRow(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5455",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colg4(2),
	datab => playerRow(1),
	datac => playerRow(2),
	datad => playerRow(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colg~4_combout\);

-- Location: LC_X4_Y3_N1
\colg4[2]\ : maxv_lcell
-- Equation(s):
-- colg4(2) = DFFEAS((((!\colg~4_combout\ & !\process_2~4\))), GLOBAL(\clk~combout\), VCC, , \colg4[4]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \colg~4_combout\,
	datad => \process_2~4\,
	aclr => GND,
	ena => \colg4[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colg4(2));

-- Location: LC_X5_Y3_N2
\countTurn~2\ : maxv_lcell
-- Equation(s):
-- \countTurn~2_combout\ = (playerRow(0) & (((colr4(2)) # (colg4(2))))) # (!playerRow(0) & (colg4(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colg4(3),
	datab => colr4(2),
	datac => colg4(2),
	datad => playerRow(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \countTurn~2_combout\);

-- Location: LC_X5_Y3_N3
\countTurn~4\ : maxv_lcell
-- Equation(s):
-- \countTurn~4_combout\ = (playerRow(1) & (((!\countTurn~3_combout\)) # (!playerRow(0)))) # (!playerRow(1) & (!\countTurn~2_combout\ & ((playerRow(0)) # (!\countTurn~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a6f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerRow(1),
	datab => playerRow(0),
	datac => \countTurn~3_combout\,
	datad => \countTurn~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \countTurn~4_combout\);

-- Location: LC_X5_Y3_N4
\countTurn~5\ : maxv_lcell
-- Equation(s):
-- \countTurn~5_combout\ = (\countTurn~1\) # ((!playerCol(0) & ((!\countTurn~4_combout\) # (!\turn~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1f5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerCol(0),
	datab => \turn~0_combout\,
	datac => \countTurn~1\,
	datad => \countTurn~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \countTurn~5_combout\);

-- Location: LC_X5_Y2_N3
\Mux16~0\ : maxv_lcell
-- Equation(s):
-- \Mux16~0_combout\ = (((playerCol(0) & playerCol(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => playerCol(0),
	datad => playerCol(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux16~0_combout\);

-- Location: LC_X6_Y3_N1
\Add4~0\ : maxv_lcell
-- Equation(s):
-- \Add4~0_combout\ = (((!playerRow(0) & !playerRow(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => playerRow(0),
	datad => playerRow(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~0_combout\);

-- Location: LC_X2_Y2_N4
\Equal9~0\ : maxv_lcell
-- Equation(s):
-- \Equal9~0_combout\ = (((player(0) & player(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => player(0),
	datad => player(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal9~0_combout\);

-- Location: LC_X4_Y2_N0
\colr3[3]~1\ : maxv_lcell
-- Equation(s):
-- \colr3[3]~1_combout\ = (!\play~combout\ & (((playerCol(2) & \lastPlay~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \play~combout\,
	datac => playerCol(2),
	datad => \lastPlay~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colr3[3]~1_combout\);

-- Location: LC_X6_Y3_N0
\colg3[4]~1\ : maxv_lcell
-- Equation(s):
-- \colg3[4]~1_combout\ = (\process_2~4\) # ((\process_2~2_combout\ & (\Equal9~0_combout\ & \colr3[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~2_combout\,
	datab => \Equal9~0_combout\,
	datac => \process_2~4\,
	datad => \colr3[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colg3[4]~1_combout\);

-- Location: LC_X6_Y3_N6
\colg3[3]\ : maxv_lcell
-- Equation(s):
-- colg3(3) = DFFEAS((!\process_2~4\ & ((colg3(3)) # ((\Add4~0_combout\ & !playerRow(2))))), GLOBAL(\clk~combout\), VCC, , \colg3[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0e",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => colg3(3),
	datab => \Add4~0_combout\,
	datac => \process_2~4\,
	datad => playerRow(2),
	aclr => GND,
	ena => \colg3[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colg3(3));

-- Location: LC_X6_Y3_N4
\colg3[4]\ : maxv_lcell
-- Equation(s):
-- colg3(4) = DFFEAS(((!\process_2~4\ & ((\Decoder1~0_combout\) # (colg3(4))))), GLOBAL(\clk~combout\), VCC, , \colg3[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Decoder1~0_combout\,
	datac => colg3(4),
	datad => \process_2~4\,
	aclr => GND,
	ena => \colg3[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colg3(4));

-- Location: LC_X2_Y2_N5
\Equal8~0\ : maxv_lcell
-- Equation(s):
-- \Equal8~0_combout\ = (((!player(0) & !player(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => player(0),
	datad => player(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal8~0_combout\);

-- Location: LC_X6_Y3_N3
\colr3[3]~2\ : maxv_lcell
-- Equation(s):
-- \colr3[3]~2_combout\ = (\process_2~4\) # ((\process_2~2_combout\ & (\Equal8~0_combout\ & \colr3[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~2_combout\,
	datab => \Equal8~0_combout\,
	datac => \process_2~4\,
	datad => \colr3[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colr3[3]~2_combout\);

-- Location: LC_X6_Y3_N2
\colr3[4]\ : maxv_lcell
-- Equation(s):
-- colr3(4) = DFFEAS(((!\process_2~4\ & ((\Decoder1~0_combout\) # (colr3(4))))), GLOBAL(\clk~combout\), VCC, , \colr3[3]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Decoder1~0_combout\,
	datab => colr3(4),
	datad => \process_2~4\,
	aclr => GND,
	ena => \colr3[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colr3(4));

-- Location: LC_X5_Y3_N5
\process_2~1\ : maxv_lcell
-- Equation(s):
-- \process_2~1_combout\ = (playerRow(0) & (((colg3(4)) # (colr3(4))))) # (!playerRow(0) & (colg3(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colg3(3),
	datab => colg3(4),
	datac => colr3(4),
	datad => playerRow(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_2~1_combout\);

-- Location: LC_X6_Y3_N5
\colr3[3]\ : maxv_lcell
-- Equation(s):
-- colr3(3) = DFFEAS((!\process_2~4\ & ((colr3(3)) # ((\Add4~0_combout\ & !playerRow(2))))), GLOBAL(\clk~combout\), VCC, , \colr3[3]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0e",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => colr3(3),
	datab => \Add4~0_combout\,
	datac => \process_2~4\,
	datad => playerRow(2),
	aclr => GND,
	ena => \colr3[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colr3(3));

-- Location: LC_X2_Y2_N0
\Decoder1~1\ : maxv_lcell
-- Equation(s):
-- \Decoder1~1_combout\ = (((playerRow(0) & !playerRow(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => playerRow(0),
	datad => playerRow(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder1~1_combout\);

-- Location: LC_X6_Y3_N9
\colg3[2]\ : maxv_lcell
-- Equation(s):
-- colg3(2) = DFFEAS((!\process_2~4\ & ((colg3(2)) # ((\Decoder1~1_combout\ & !playerRow(2))))), GLOBAL(\clk~combout\), VCC, , \colg3[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3302",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Decoder1~1_combout\,
	datab => \process_2~4\,
	datac => playerRow(2),
	datad => colg3(2),
	aclr => GND,
	ena => \colg3[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colg3(2));

-- Location: LC_X6_Y3_N7
\colr3[2]\ : maxv_lcell
-- Equation(s):
-- colr3(2) = DFFEAS((!\process_2~4\ & ((colr3(2)) # ((\Decoder1~1_combout\ & !playerRow(2))))), GLOBAL(\clk~combout\), VCC, , \colr3[3]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3302",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Decoder1~1_combout\,
	datab => \process_2~4\,
	datac => playerRow(2),
	datad => colr3(2),
	aclr => GND,
	ena => \colr3[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colr3(2));

-- Location: LC_X6_Y3_N8
\process_2~0\ : maxv_lcell
-- Equation(s):
-- \process_2~0_combout\ = (playerRow(0) & (((colg3(2)) # (colr3(2))))) # (!playerRow(0) & (colr3(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colr3(3),
	datab => colg3(2),
	datac => colr3(2),
	datad => playerRow(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_2~0_combout\);

-- Location: LC_X5_Y3_N0
\process_2~2\ : maxv_lcell
-- Equation(s):
-- \process_2~2_combout\ = (playerRow(1) & (((!\process_2~1_combout\)) # (!playerRow(0)))) # (!playerRow(1) & (!\process_2~0_combout\ & ((playerRow(0)) # (!\process_2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a6f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerRow(1),
	datab => playerRow(0),
	datac => \process_2~1_combout\,
	datad => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_2~2_combout\);

-- Location: LC_X5_Y3_N1
\Mux16~1\ : maxv_lcell
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux16~0_combout\ & ((player(0) $ (player(1))) # (!\process_2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "60f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player(0),
	datab => player(1),
	datac => \Mux16~0_combout\,
	datad => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux16~1_combout\);

-- Location: LC_X5_Y3_N6
\countTurn~10\ : maxv_lcell
-- Equation(s):
-- \countTurn~10_combout\ = (\countTurn~5_combout\) # ((\Mux16~1_combout\) # ((!\countTurn~9_combout\ & \countTurn~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \countTurn~9_combout\,
	datab => \countTurn~6_combout\,
	datac => \countTurn~5_combout\,
	datad => \Mux16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \countTurn~10_combout\);

-- Location: LC_X4_Y1_N9
\process_2~6\ : maxv_lcell
-- Equation(s):
-- \process_2~6_combout\ = (((!colr4(4)) # (!colr4(2))) # (!colr4(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => colr4(3),
	datac => colr4(2),
	datad => colr4(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_2~6_combout\);

-- Location: LC_X4_Y1_N3
\winner~0\ : maxv_lcell
-- Equation(s):
-- \winner~0_combout\ = (\process_2~6_combout\ & (((!colr3(3)) # (!colr3(4))) # (!colr3(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colr3(2),
	datab => colr3(4),
	datac => colr3(3),
	datad => \process_2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \winner~0_combout\);

-- Location: LC_X4_Y1_N0
\process_2~9\ : maxv_lcell
-- Equation(s):
-- \process_2~9_combout\ = ((colr4(3) & (colr3(4) & colr5(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => colr4(3),
	datac => colr3(4),
	datad => colr5(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_2~9_combout\);

-- Location: LC_X4_Y1_N1
\winner~3\ : maxv_lcell
-- Equation(s):
-- \winner~3_combout\ = (!\process_2~9_combout\ & (((!colr5(4)) # (!colr3(2))) # (!colr4(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "007f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colr4(3),
	datab => colr3(2),
	datac => colr5(4),
	datad => \process_2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \winner~3_combout\);

-- Location: LC_X4_Y1_N6
\process_2~7\ : maxv_lcell
-- Equation(s):
-- \process_2~7_combout\ = (((!colr4(2)) # (!colr3(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => colr3(2),
	datad => colr4(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_2~7_combout\);

-- Location: LC_X4_Y1_N7
\winner~1\ : maxv_lcell
-- Equation(s):
-- \winner~1_combout\ = ((\process_2~7_combout\ & ((!colr5(3)) # (!colr5(4))))) # (!colr5(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colr5(4),
	datab => colr5(3),
	datac => \process_2~7_combout\,
	datad => colr5(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \winner~1_combout\);

-- Location: LC_X4_Y1_N5
\process_2~8\ : maxv_lcell
-- Equation(s):
-- \process_2~8_combout\ = (((!colr3(4)) # (!colr5(4))) # (!colr4(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => colr4(4),
	datac => colr5(4),
	datad => colr3(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_2~8_combout\);

-- Location: LC_X4_Y1_N8
\winner~2\ : maxv_lcell
-- Equation(s):
-- \winner~2_combout\ = (\process_2~8_combout\ & (((!colr5(3)) # (!colr3(3))) # (!colr4(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colr4(3),
	datab => colr3(3),
	datac => \process_2~8_combout\,
	datad => colr5(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \winner~2_combout\);

-- Location: LC_X4_Y1_N4
\winner~4\ : maxv_lcell
-- Equation(s):
-- \winner~4_combout\ = (\winner~0_combout\ & (\winner~3_combout\ & (\winner~1_combout\ & \winner~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \winner~0_combout\,
	datab => \winner~3_combout\,
	datac => \winner~1_combout\,
	datad => \winner~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \winner~4_combout\);

-- Location: LC_X5_Y1_N4
\winner[0]\ : maxv_lcell
-- Equation(s):
-- winner(0) = DFFEAS((((!\winner~4_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \winner~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => winner(0));

-- Location: LC_X4_Y4_N6
\winner~8\ : maxv_lcell
-- Equation(s):
-- \winner~8_combout\ = (((colg5(2) & colg3(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => colg5(2),
	datad => colg3(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \winner~8_combout\);

-- Location: LC_X4_Y4_N1
\winner~9\ : maxv_lcell
-- Equation(s):
-- \winner~9_combout\ = (colg3(2) & ((colg5(4)) # ((colg5(3) & colg3(3))))) # (!colg3(2) & (colg5(3) & ((colg3(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colg3(2),
	datab => colg5(3),
	datac => colg5(4),
	datad => colg3(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \winner~9_combout\);

-- Location: LC_X4_Y4_N5
\winner~10\ : maxv_lcell
-- Equation(s):
-- \winner~10_combout\ = (\winner~8_combout\) # ((\winner~9_combout\) # ((colg4(4) & colg4(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \winner~8_combout\,
	datab => colg4(4),
	datac => colg4(2),
	datad => \winner~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \winner~10_combout\);

-- Location: LC_X4_Y4_N0
\winner~5\ : maxv_lcell
-- Equation(s):
-- \winner~5_combout\ = (colg4(2) & ((colg3(2)) # ((colg5(4) & colg5(3))))) # (!colg4(2) & (((colg5(4) & colg5(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colg4(2),
	datab => colg3(2),
	datac => colg5(4),
	datad => colg5(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \winner~5_combout\);

-- Location: LC_X4_Y4_N2
\winner~6\ : maxv_lcell
-- Equation(s):
-- \winner~6_combout\ = (colg3(2) & ((colg3(3)) # ((colg4(4) & colg5(4))))) # (!colg3(2) & (colg4(4) & (colg5(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colg3(2),
	datab => colg4(4),
	datac => colg5(4),
	datad => colg3(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \winner~6_combout\);

-- Location: LC_X4_Y4_N7
\winner~7\ : maxv_lcell
-- Equation(s):
-- \winner~7_combout\ = (colg5(2) & ((\winner~5_combout\) # ((colg3(4) & \winner~6_combout\)))) # (!colg5(2) & (colg3(4) & ((\winner~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colg5(2),
	datab => colg3(4),
	datac => \winner~5_combout\,
	datad => \winner~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \winner~7_combout\);

-- Location: LC_X5_Y1_N8
\winner[1]\ : maxv_lcell
-- Equation(s):
-- winner(1) = DFFEAS((\winner~4_combout\ & ((\winner~7_combout\) # ((colg4(3) & \winner~10_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => colg4(3),
	datab => \winner~4_combout\,
	datac => \winner~10_combout\,
	datad => \winner~7_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => winner(1));

-- Location: LC_X5_Y1_N2
\countTurn~14\ : maxv_lcell
-- Equation(s):
-- \countTurn~14_combout\ = (countTurn(1) & ((winner(0) $ (!winner(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a00a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => countTurn(1),
	datac => winner(0),
	datad => winner(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \countTurn~14_combout\);

-- Location: LC_X5_Y1_N1
\countTurn[0]\ : maxv_lcell
-- Equation(s):
-- countTurn(0) = DFFEAS(((!\process_2~4\ & (\countTurn~10_combout\ $ (!\countTurn~13_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \countTurn~10_combout\,
	datac => \countTurn~13_combout\,
	datad => \process_2~4\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => countTurn(0));

-- Location: LC_X5_Y1_N0
\countTurn~13\ : maxv_lcell
-- Equation(s):
-- \countTurn~13_combout\ = ((countTurn(0)) # (winner(0) $ (winner(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => countTurn(0),
	datac => winner(0),
	datad => winner(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \countTurn~13_combout\);

-- Location: LC_X5_Y1_N5
\countTurn[1]\ : maxv_lcell
-- Equation(s):
-- countTurn(1) = DFFEAS((!\process_2~4\ & (\countTurn~14_combout\ $ (((\countTurn~13_combout\ & !\countTurn~10_combout\))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a6",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \countTurn~14_combout\,
	datab => \countTurn~13_combout\,
	datac => \countTurn~10_combout\,
	datad => \process_2~4\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => countTurn(1));

-- Location: LC_X5_Y1_N7
\Add2~0\ : maxv_lcell
-- Equation(s):
-- \Add2~0_combout\ = (countTurn(1) & (countTurn(0) & (winner(0) $ (!winner(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => countTurn(1),
	datab => countTurn(0),
	datac => winner(0),
	datad => winner(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~0_combout\);

-- Location: LC_X5_Y1_N9
\countTurn[2]\ : maxv_lcell
-- Equation(s):
-- countTurn(2) = DFFEAS((!\process_2~4\ & (\countTurn~11_combout\ $ (((!\countTurn~10_combout\ & \Add2~0_combout\))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "009a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \countTurn~11_combout\,
	datab => \countTurn~10_combout\,
	datac => \Add2~0_combout\,
	datad => \process_2~4\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => countTurn(2));

-- Location: LC_X5_Y1_N6
\countTurn~11\ : maxv_lcell
-- Equation(s):
-- \countTurn~11_combout\ = ((countTurn(2) & (winner(0) $ (!winner(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c00c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => countTurn(2),
	datac => winner(0),
	datad => winner(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \countTurn~11_combout\);

-- Location: LC_X5_Y3_N9
\process_2~3\ : maxv_lcell
-- Equation(s):
-- \process_2~3_combout\ = (\countTurn~11_combout\ & (((\countTurn~10_combout\) # (!\countTurn~13_combout\)) # (!\countTurn~14_combout\))) # (!\countTurn~11_combout\ & ((\countTurn~14_combout\) # ((\countTurn~13_combout\) # (!\countTurn~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \countTurn~11_combout\,
	datab => \countTurn~14_combout\,
	datac => \countTurn~13_combout\,
	datad => \countTurn~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_2~3_combout\);

-- Location: LC_X5_Y3_N8
lastRst : maxv_lcell
-- Equation(s):
-- \process_2~4\ = (\rst~combout\ & (\countTurn~12_combout\ & ((\process_2~3_combout\)))) # (!\rst~combout\ & ((lastRst) # ((\countTurn~12_combout\ & \process_2~3_combout\))))
-- \lastRst~regout\ = DFFEAS(\process_2~4\, GLOBAL(\clk~combout\), VCC, , , \rst~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datab => \countTurn~12_combout\,
	datac => \rst~combout\,
	datad => \process_2~3_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_2~4\,
	regout => \lastRst~regout\);

-- Location: LC_X6_Y1_N1
\countTurn[3]\ : maxv_lcell
-- Equation(s):
-- countTurn(3) = DFFEAS((\countTurn~12_combout\ & (!\process_2~3_combout\ & ((\rst~combout\) # (!\lastRst~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00b0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datab => \lastRst~regout\,
	datac => \countTurn~12_combout\,
	datad => \process_2~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => countTurn(3));

-- Location: LC_X6_Y1_N3
\countTurn~0\ : maxv_lcell
-- Equation(s):
-- \countTurn~0_combout\ = ((countTurn(3)) # (winner(1) $ (winner(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => countTurn(3),
	datac => winner(1),
	datad => winner(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \countTurn~0_combout\);

-- Location: LC_X5_Y3_N7
\countTurn~12\ : maxv_lcell
-- Equation(s):
-- \countTurn~12_combout\ = \countTurn~0_combout\ $ (((\countTurn~11_combout\ & (\Add2~0_combout\ & !\countTurn~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc6c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \countTurn~11_combout\,
	datab => \countTurn~0_combout\,
	datac => \Add2~0_combout\,
	datad => \countTurn~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \countTurn~12_combout\);

-- Location: LC_X5_Y2_N5
\playerCol[1]~6\ : maxv_lcell
-- Equation(s):
-- \playerCol[1]~6_combout\ = ((\process_2~4\) # ((!\hor~combout\ & \lastHor~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \hor~combout\,
	datac => \lastHor~regout\,
	datad => \process_2~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \playerCol[1]~6_combout\);

-- Location: LC_X5_Y2_N2
\playerCol[1]\ : maxv_lcell
-- Equation(s):
-- playerCol(1) = DFFEAS(((!\process_2~4\ & (playerCol(1) $ (playerCol(0))))), GLOBAL(\clk~combout\), VCC, , \playerCol[1]~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => playerCol(1),
	datac => playerCol(0),
	datad => \process_2~4\,
	aclr => GND,
	ena => \playerCol[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => playerCol(1));

-- Location: LC_X5_Y4_N3
\playerCol~4\ : maxv_lcell
-- Equation(s):
-- \playerCol~4_combout\ = (playerCol(0) & ((playerCol(2) & (playerCol(1) & \process_2~5\)) # (!playerCol(2) & ((!\process_2~5\))))) # (!playerCol(0) & (((!playerCol(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "850f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerCol(0),
	datab => playerCol(1),
	datac => playerCol(2),
	datad => \process_2~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \playerCol~4_combout\);

-- Location: LC_X5_Y2_N9
\playerCol[2]\ : maxv_lcell
-- Equation(s):
-- playerCol(2) = DFFEAS((((!\playerCol~4_combout\ & !\process_2~4\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \playerCol~4_combout\,
	datad => \process_2~4\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => playerCol(2));

-- Location: LC_X5_Y2_N4
\playerCol[0]\ : maxv_lcell
-- Equation(s):
-- playerCol(0) = DFFEAS((!\process_2~4\ & (((!playerCol(2) & !playerCol(1))) # (!playerCol(0)))), GLOBAL(\clk~combout\), VCC, , \playerCol[1]~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "001f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => playerCol(2),
	datab => playerCol(1),
	datac => playerCol(0),
	datad => \process_2~4\,
	aclr => GND,
	ena => \playerCol[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => playerCol(0));

-- Location: LC_X4_Y2_N7
\Mux1~0\ : maxv_lcell
-- Equation(s):
-- \Mux1~0_combout\ = (!playerCol(2) & (!playerCol(1) & (playerCol(0) $ (row_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0102",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerCol(0),
	datab => playerCol(2),
	datac => playerCol(1),
	datad => row_count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X3_Y2_N4
\Mux3~2\ : maxv_lcell
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux1~0_combout\ & (playerRow(0) & (playerRow(2) & playerRow(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => playerRow(0),
	datac => playerRow(2),
	datad => playerRow(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~2_combout\);

-- Location: LC_X3_Y2_N9
\Mux3~3\ : maxv_lcell
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\) # ((row_count(0) & (colr4(4))) # (!row_count(0) & ((colr5(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eefa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => colr4(4),
	datac => colr5(4),
	datad => row_count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~3_combout\);

-- Location: LC_X5_Y4_N4
\Mux3~5\ : maxv_lcell
-- Equation(s):
-- \Mux3~5_combout\ = (playerCol(0) & (playerCol(1) & (playerCol(2) & \Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerCol(0),
	datab => playerCol(1),
	datac => playerCol(2),
	datad => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~5_combout\);

-- Location: LC_X5_Y4_N1
\Mux3~4\ : maxv_lcell
-- Equation(s):
-- \Mux3~4_combout\ = (row_count(2) & (!\Mux3~3_combout\)) # (!row_count(2) & (((!\Mux3~5_combout\ & !colr3(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4447",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => row_count(2),
	datac => \Mux3~5_combout\,
	datad => colr3(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~4_combout\);

-- Location: LC_X5_Y4_N5
\Mux2~2\ : maxv_lcell
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux16~0_combout\ & (!playerRow(2) & (playerCol(1) & \Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datab => playerRow(2),
	datac => playerCol(1),
	datad => \Add4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~2_combout\);

-- Location: LC_X4_Y2_N6
\Mux2~0\ : maxv_lcell
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux1~0_combout\ & (((!row_count(0))))) # (!\Mux1~0_combout\ & ((row_count(0) & ((!colr4(3)))) # (!row_count(0) & (!colr5(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "05bb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => colr5(3),
	datac => colr4(3),
	datad => row_count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: LC_X4_Y2_N1
\Mux2~1\ : maxv_lcell
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & (((\colr~1_combout\)) # (!\Mux1~0_combout\))) # (!\Mux2~0_combout\ & (\Mux1~0_combout\ & (\colr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux1~0_combout\,
	datac => \colr~0_combout\,
	datad => \colr~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~1_combout\);

-- Location: LC_X5_Y4_N9
\Mux2~3\ : maxv_lcell
-- Equation(s):
-- \Mux2~3_combout\ = (row_count(2) & (((\Mux2~1_combout\)))) # (!row_count(2) & (!\Mux2~2_combout\ & (!colr3(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f011",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => colr3(3),
	datac => \Mux2~1_combout\,
	datad => row_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~3_combout\);

-- Location: LC_X4_Y2_N2
\Mux1~1\ : maxv_lcell
-- Equation(s):
-- \Mux1~1_combout\ = (row_count(0) & (((!\Mux1~0_combout\ & !colr4(2))))) # (!row_count(0) & (((\Mux1~0_combout\)) # (!colr5(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "313d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colr5(2),
	datab => row_count(0),
	datac => \Mux1~0_combout\,
	datad => colr4(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~1_combout\);

-- Location: LC_X4_Y2_N8
\Mux1~2\ : maxv_lcell
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux1~1_combout\ & (((\colr~3_combout\)) # (!\Mux1~0_combout\))) # (!\Mux1~1_combout\ & (\Mux1~0_combout\ & ((\colr~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux1~0_combout\,
	datac => \colr~3_combout\,
	datad => \colr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~2_combout\);

-- Location: LC_X5_Y4_N8
\Mux1~3\ : maxv_lcell
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux16~0_combout\ & (!playerRow(2) & (playerCol(1) & \Decoder1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datab => playerRow(2),
	datac => playerCol(1),
	datad => \Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~3_combout\);

-- Location: LC_X4_Y4_N9
\Mux1~4\ : maxv_lcell
-- Equation(s):
-- \Mux1~4_combout\ = (row_count(2) & (\Mux1~2_combout\)) # (!row_count(2) & (((!\Mux1~3_combout\ & !colr3(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \Mux1~3_combout\,
	datac => colr3(2),
	datad => row_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~4_combout\);

-- Location: LC_X3_Y2_N7
\Mux8~0\ : maxv_lcell
-- Equation(s):
-- \Mux8~0_combout\ = (row_count(0) & (!colg4(4) & ((!\Mux1~0_combout\)))) # (!row_count(0) & (((\Mux1~0_combout\) # (!colg5(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3347",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colg4(4),
	datab => row_count(0),
	datac => colg5(4),
	datad => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~0_combout\);

-- Location: LC_X3_Y2_N8
\Mux8~1\ : maxv_lcell
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux1~0_combout\ & ((\Mux8~0_combout\ & (\colg~1_combout\)) # (!\Mux8~0_combout\ & ((\colg~0_combout\))))) # (!\Mux1~0_combout\ & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \colg~1_combout\,
	datac => \Mux8~0_combout\,
	datad => \colg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~1_combout\);

-- Location: LC_X5_Y4_N0
\Mux8~2\ : maxv_lcell
-- Equation(s):
-- \Mux8~2_combout\ = (row_count(2) & (((\Mux8~1_combout\)))) # (!row_count(2) & (!\Mux3~5_combout\ & ((!colg3(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0d1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~5_combout\,
	datab => row_count(2),
	datac => \Mux8~1_combout\,
	datad => colg3(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~2_combout\);

-- Location: LC_X3_Y2_N3
\Mux7~0\ : maxv_lcell
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux1~0_combout\ & (((!row_count(0))))) # (!\Mux1~0_combout\ & ((row_count(0) & (!colg4(3))) # (!row_count(0) & ((!colg5(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "11af",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => colg4(3),
	datac => colg5(3),
	datad => row_count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~0_combout\);

-- Location: LC_X3_Y2_N0
\Mux7~1\ : maxv_lcell
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & ((\colg~3_combout\) # ((!\Mux1~0_combout\)))) # (!\Mux7~0_combout\ & (((\colg~2_combout\ & \Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \colg~3_combout\,
	datac => \colg~2_combout\,
	datad => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~1_combout\);

-- Location: LC_X5_Y4_N6
\Mux7~2\ : maxv_lcell
-- Equation(s):
-- \Mux7~2_combout\ = (row_count(2) & (((\Mux7~1_combout\)))) # (!row_count(2) & (!\Mux2~2_combout\ & (!colg3(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f011",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => colg3(3),
	datac => \Mux7~1_combout\,
	datad => row_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~2_combout\);

-- Location: LC_X4_Y4_N3
\Mux6~0\ : maxv_lcell
-- Equation(s):
-- \Mux6~0_combout\ = (row_count(0) & (!colg4(2) & ((!\Mux1~0_combout\)))) # (!row_count(0) & (((\Mux1~0_combout\) # (!colg5(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f53",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colg4(2),
	datab => colg5(2),
	datac => row_count(0),
	datad => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0_combout\);

-- Location: LC_X4_Y4_N4
\Mux6~1\ : maxv_lcell
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & (((\colg~5_combout\)) # (!\Mux1~0_combout\))) # (!\Mux6~0_combout\ & (\Mux1~0_combout\ & ((\colg~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Mux1~0_combout\,
	datac => \colg~5_combout\,
	datad => \colg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~1_combout\);

-- Location: LC_X4_Y4_N8
\Mux6~2\ : maxv_lcell
-- Equation(s):
-- \Mux6~2_combout\ = (row_count(2) & (((\Mux6~1_combout\)))) # (!row_count(2) & (!colg3(2) & (!\Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f011",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colg3(2),
	datab => \Mux1~3_combout\,
	datac => \Mux6~1_combout\,
	datad => row_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~2_combout\);

-- Location: LC_X6_Y2_N6
\Decoder0~0\ : maxv_lcell
-- Equation(s):
-- \Decoder0~0_combout\ = ((!row_count(0) & (row_count(1) & row_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_count(0),
	datac => row_count(1),
	datad => row_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~0_combout\);

-- Location: LC_X6_Y2_N5
\Decoder0~1\ : maxv_lcell
-- Equation(s):
-- \Decoder0~1_combout\ = ((row_count(0) & (row_count(1) & row_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_count(0),
	datac => row_count(1),
	datad => row_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~1_combout\);

-- Location: LC_X6_Y2_N7
\Decoder0~2\ : maxv_lcell
-- Equation(s):
-- \Decoder0~2_combout\ = ((!row_count(0) & (!row_count(1) & !row_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_count(0),
	datac => row_count(1),
	datad => row_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~2_combout\);

-- Location: LC_X2_Y2_N9
\green_led$latch\ : maxv_lcell
-- Equation(s):
-- \green_led$latch~combout\ = (!\Equal8~0_combout\ & (((\Equal9~0_combout\) # (\green_led$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5550",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datac => \Equal9~0_combout\,
	datad => \green_led$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \green_led$latch~combout\);

-- Location: LC_X2_Y2_N2
\red_led$latch\ : maxv_lcell
-- Equation(s):
-- \red_led$latch~combout\ = ((!\Equal9~0_combout\ & ((\Equal8~0_combout\) # (\red_led$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datac => \Equal9~0_combout\,
	datad => \red_led$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \red_led$latch~combout\);

-- Location: LC_X5_Y1_N3
\compteur1~reg0\ : maxv_lcell
-- Equation(s):
-- \compteur1~reg0_regout\ = DFFEAS((((winner(0) & !winner(1)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => winner(0),
	datad => winner(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \compteur1~reg0_regout\);

-- Location: LC_X6_Y1_N4
\compteur2~reg0\ : maxv_lcell
-- Equation(s):
-- \compteur2~reg0_regout\ = DFFEAS((((winner(1) & !winner(0)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => winner(1),
	datad => winner(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \compteur2~reg0_regout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colr[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~0_combout\,
	oe => VCC,
	padio => ww_colr(5));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colr[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~4_combout\,
	oe => VCC,
	padio => ww_colr(4));

-- Location: PIN_46,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colr[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~3_combout\,
	oe => VCC,
	padio => ww_colr(3));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colr[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~4_combout\,
	oe => VCC,
	padio => ww_colr(2));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colr[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~0_combout\,
	oe => VCC,
	padio => ww_colr(1));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colg[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~0_combout\,
	oe => VCC,
	padio => ww_colg(5));

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colg[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux8~2_combout\,
	oe => VCC,
	padio => ww_colg(4));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colg[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux7~2_combout\,
	oe => VCC,
	padio => ww_colg(3));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colg[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~2_combout\,
	oe => VCC,
	padio => ww_colg(2));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colg[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~0_combout\,
	oe => VCC,
	padio => ww_colg(1));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_row(7));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_row(6));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Decoder0~0_combout\,
	oe => VCC,
	padio => ww_row(5));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Decoder0~1_combout\,
	oe => VCC,
	padio => ww_row(4));

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Decoder0~2_combout\,
	oe => VCC,
	padio => ww_row(3));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_row(2));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_row(1));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\green_led~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \green_led$latch~combout\,
	oe => VCC,
	padio => ww_green_led);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\red_led~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \red_led$latch~combout\,
	oe => VCC,
	padio => ww_red_led);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\compteur1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \compteur1~reg0_regout\,
	oe => VCC,
	padio => ww_compteur1);

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\compteur2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \compteur2~reg0_regout\,
	oe => VCC,
	padio => ww_compteur2);
END structure;


