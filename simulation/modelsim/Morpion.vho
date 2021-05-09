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

-- DATE "05/09/2021 16:55:47"

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
	lastPlay : BUFFER std_logic;
	hor : IN std_logic;
	ver : IN std_logic;
	colr : OUT std_logic_vector(1 TO 5);
	colg : OUT std_logic_vector(1 TO 5);
	row : OUT std_logic_vector(1 TO 7);
	green_led : BUFFER std_logic
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
SIGNAL ww_lastPlay : std_logic;
SIGNAL ww_hor : std_logic;
SIGNAL ww_ver : std_logic;
SIGNAL ww_colr : std_logic_vector(1 TO 5);
SIGNAL ww_colg : std_logic_vector(1 TO 5);
SIGNAL ww_row : std_logic_vector(1 TO 7);
SIGNAL ww_green_led : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~12COUT1_46\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~2COUT1_47\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~17COUT1_48\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~7COUT1_49\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \Add1~32\ : std_logic;
SIGNAL \Add1~32COUT1_50\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~37COUT1_51\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~42COUT1_52\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \play~combout\ : std_logic;
SIGNAL \green_led~reg0_regout\ : std_logic;
SIGNAL row_count : std_logic_vector(2 DOWNTO 0);
SIGNAL clk_count : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_play <= play;
lastPlay <= ww_lastPlay;
ww_hor <= hor;
ww_ver <= ver;
colr <= ww_colr;
colg <= ww_colg;
row <= ww_row;
green_led <= ww_green_led;
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

-- Location: LC_X4_Y2_N5
\Add1~30\ : maxv_lcell
-- Equation(s):
-- \Add1~30_combout\ = clk_count(5) $ ((((\Add1~27\))))
-- \Add1~32\ = CARRY(((!\Add1~27\)) # (!clk_count(5)))
-- \Add1~32COUT1_50\ = CARRY(((!\Add1~27\)) # (!clk_count(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(5),
	cin => \Add1~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~30_combout\,
	cout0 => \Add1~32\,
	cout1 => \Add1~32COUT1_50\);

-- Location: LC_X3_Y2_N0
\clk_count[5]\ : maxv_lcell
-- Equation(s):
-- clk_count(5) = DFFEAS((((\Add1~30_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add1~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(5));

-- Location: LC_X4_Y2_N0
\Add1~10\ : maxv_lcell
-- Equation(s):
-- \Add1~10_combout\ = ((!clk_count(0)))
-- \Add1~12\ = CARRY(((clk_count(0))))
-- \Add1~12COUT1_46\ = CARRY(((clk_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clk_count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~10_combout\,
	cout0 => \Add1~12\,
	cout1 => \Add1~12COUT1_46\);

-- Location: LC_X3_Y2_N2
\clk_count[0]\ : maxv_lcell
-- Equation(s):
-- clk_count(0) = DFFEAS((\Add1~10_combout\ & (((!\Equal0~1\) # (!clk_count(8))) # (!\Equal0~0\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~0\,
	datab => clk_count(8),
	datac => \Add1~10_combout\,
	datad => \Equal0~1\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(0));

-- Location: LC_X4_Y2_N1
\Add1~0\ : maxv_lcell
-- Equation(s):
-- \Add1~0_combout\ = (clk_count(1) $ ((\Add1~12\)))
-- \Add1~2\ = CARRY(((!\Add1~12\) # (!clk_count(1))))
-- \Add1~2COUT1_47\ = CARRY(((!\Add1~12COUT1_46\) # (!clk_count(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clk_count(1),
	cin0 => \Add1~12\,
	cin1 => \Add1~12COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\,
	cout0 => \Add1~2\,
	cout1 => \Add1~2COUT1_47\);

-- Location: LC_X3_Y2_N3
\clk_count[1]\ : maxv_lcell
-- Equation(s):
-- clk_count(1) = DFFEAS((\Add1~0_combout\ & (((!clk_count(8)) # (!\Equal0~1\)) # (!\Equal0~0\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~0\,
	datab => \Equal0~1\,
	datac => clk_count(8),
	datad => \Add1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(1));

-- Location: LC_X3_Y2_N6
\clk_count[2]\ : maxv_lcell
-- Equation(s):
-- \Equal0~0\ = (clk_count(1) & (clk_count(3) & (!clk_count[2] & !clk_count(0))))
-- clk_count(2) = DFFEAS(\Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \Add1~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => clk_count(1),
	datab => clk_count(3),
	datac => \Add1~15_combout\,
	datad => clk_count(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => clk_count(2));

-- Location: LC_X4_Y2_N2
\Add1~15\ : maxv_lcell
-- Equation(s):
-- \Add1~15_combout\ = (clk_count(2) $ ((!\Add1~2\)))
-- \Add1~17\ = CARRY(((clk_count(2) & !\Add1~2\)))
-- \Add1~17COUT1_48\ = CARRY(((clk_count(2) & !\Add1~2COUT1_47\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clk_count(2),
	cin0 => \Add1~2\,
	cin1 => \Add1~2COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~15_combout\,
	cout0 => \Add1~17\,
	cout1 => \Add1~17COUT1_48\);

-- Location: LC_X4_Y2_N3
\Add1~5\ : maxv_lcell
-- Equation(s):
-- \Add1~5_combout\ = (clk_count(3) $ ((\Add1~17\)))
-- \Add1~7\ = CARRY(((!\Add1~17\) # (!clk_count(3))))
-- \Add1~7COUT1_49\ = CARRY(((!\Add1~17COUT1_48\) # (!clk_count(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clk_count(3),
	cin0 => \Add1~17\,
	cin1 => \Add1~17COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~5_combout\,
	cout0 => \Add1~7\,
	cout1 => \Add1~7COUT1_49\);

-- Location: LC_X3_Y2_N7
\clk_count[3]\ : maxv_lcell
-- Equation(s):
-- clk_count(3) = DFFEAS((\Add1~5_combout\ & (((!\Equal0~1\) # (!clk_count(8))) # (!\Equal0~0\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~0\,
	datab => clk_count(8),
	datac => \Add1~5_combout\,
	datad => \Equal0~1\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(3));

-- Location: LC_X4_Y2_N4
\Add1~25\ : maxv_lcell
-- Equation(s):
-- \Add1~25_combout\ = clk_count(4) $ ((((!\Add1~7\))))
-- \Add1~27\ = CARRY((clk_count(4) & ((!\Add1~7COUT1_49\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(4),
	cin0 => \Add1~7\,
	cin1 => \Add1~7COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~25_combout\,
	cout => \Add1~27\);

-- Location: LC_X4_Y2_N6
\Add1~35\ : maxv_lcell
-- Equation(s):
-- \Add1~35_combout\ = (clk_count(6) $ ((!(!\Add1~27\ & \Add1~32\) # (\Add1~27\ & \Add1~32COUT1_50\))))
-- \Add1~37\ = CARRY(((clk_count(6) & !\Add1~32\)))
-- \Add1~37COUT1_51\ = CARRY(((clk_count(6) & !\Add1~32COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clk_count(6),
	cin => \Add1~27\,
	cin0 => \Add1~32\,
	cin1 => \Add1~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~35_combout\,
	cout0 => \Add1~37\,
	cout1 => \Add1~37COUT1_51\);

-- Location: LC_X4_Y2_N7
\Add1~40\ : maxv_lcell
-- Equation(s):
-- \Add1~40_combout\ = clk_count(7) $ (((((!\Add1~27\ & \Add1~37\) # (\Add1~27\ & \Add1~37COUT1_51\)))))
-- \Add1~42\ = CARRY(((!\Add1~37\)) # (!clk_count(7)))
-- \Add1~42COUT1_52\ = CARRY(((!\Add1~37COUT1_51\)) # (!clk_count(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(7),
	cin => \Add1~27\,
	cin0 => \Add1~37\,
	cin1 => \Add1~37COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~40_combout\,
	cout0 => \Add1~42\,
	cout1 => \Add1~42COUT1_52\);

-- Location: LC_X3_Y2_N1
\clk_count[7]\ : maxv_lcell
-- Equation(s):
-- clk_count(7) = DFFEAS((((\Add1~40_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add1~40_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(7));

-- Location: LC_X3_Y2_N9
\clk_count[4]\ : maxv_lcell
-- Equation(s):
-- \Equal0~1\ = (!clk_count(6) & (!clk_count(5) & (!clk_count[4] & !clk_count(7))))
-- clk_count(4) = DFFEAS(\Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \Add1~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => clk_count(6),
	datab => clk_count(5),
	datac => \Add1~25_combout\,
	datad => clk_count(7),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => clk_count(4));

-- Location: LC_X3_Y2_N4
\clk_count[6]\ : maxv_lcell
-- Equation(s):
-- clk_count(6) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add1~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add1~35_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(6));

-- Location: LC_X4_Y2_N8
\Add1~20\ : maxv_lcell
-- Equation(s):
-- \Add1~20_combout\ = (((!\Add1~27\ & \Add1~42\) # (\Add1~27\ & \Add1~42COUT1_52\) $ (!clk_count(8))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => clk_count(8),
	cin => \Add1~27\,
	cin0 => \Add1~42\,
	cin1 => \Add1~42COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~20_combout\);

-- Location: LC_X4_Y2_N9
\clk_count[8]\ : maxv_lcell
-- Equation(s):
-- clk_count(8) = DFFEAS((\Add1~20_combout\ & (((!\Equal0~0\) # (!clk_count(8))) # (!\Equal0~1\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~1\,
	datab => clk_count(8),
	datac => \Equal0~0\,
	datad => \Add1~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(8));

-- Location: LC_X3_Y2_N5
\Equal0~2\ : maxv_lcell
-- Equation(s):
-- \Equal0~2_combout\ = ((clk_count(8) & (\Equal0~0\ & \Equal0~1\)))

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
	datab => clk_count(8),
	datac => \Equal0~0\,
	datad => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2_combout\);

-- Location: LC_X3_Y4_N7
\row_count[1]\ : maxv_lcell
-- Equation(s):
-- row_count(1) = DFFEAS((row_count(1) $ (((!row_count(0) & \Equal0~2_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => row_count(0),
	datac => row_count(1),
	datad => \Equal0~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_count(1));

-- Location: LC_X3_Y2_N8
\row_count[2]\ : maxv_lcell
-- Equation(s):
-- row_count(2) = DFFEAS(row_count(2) $ (((row_count(1) & (\Equal0~2_combout\ & !row_count(0))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc6c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => row_count(1),
	datab => row_count(2),
	datac => \Equal0~2_combout\,
	datad => row_count(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_count(2));

-- Location: LC_X3_Y4_N5
\row_count[0]\ : maxv_lcell
-- Equation(s):
-- row_count(0) = DFFEAS((row_count(0) & (((!\Equal0~2_combout\)))) # (!row_count(0) & (\Equal0~2_combout\ & ((!row_count(1)) # (!row_count(2))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "15aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => row_count(0),
	datab => row_count(2),
	datac => row_count(1),
	datad => \Equal0~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_count(0));

-- Location: LC_X3_Y4_N1
\Decoder0~0\ : maxv_lcell
-- Equation(s):
-- \Decoder0~0_combout\ = (!row_count(0) & (((row_count(1) & row_count(2)))))

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
	dataa => row_count(0),
	datac => row_count(1),
	datad => row_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~0_combout\);

-- Location: LC_X3_Y4_N9
\Decoder0~1\ : maxv_lcell
-- Equation(s):
-- \Decoder0~1_combout\ = (row_count(0) & (((row_count(1) & row_count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_count(0),
	datac => row_count(1),
	datad => row_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~1_combout\);

-- Location: LC_X3_Y4_N2
\Decoder0~2\ : maxv_lcell
-- Equation(s):
-- \Decoder0~2_combout\ = (!row_count(0) & (((!row_count(1) & row_count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_count(0),
	datac => row_count(1),
	datad => row_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~2_combout\);

-- Location: LC_X3_Y4_N8
\Decoder0~3\ : maxv_lcell
-- Equation(s):
-- \Decoder0~3_combout\ = (row_count(0) & (((!row_count(1) & row_count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_count(0),
	datac => row_count(1),
	datad => row_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~3_combout\);

-- Location: LC_X3_Y4_N3
\Decoder0~4\ : maxv_lcell
-- Equation(s):
-- \Decoder0~4_combout\ = (!row_count(0) & (((row_count(1) & !row_count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_count(0),
	datac => row_count(1),
	datad => row_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~4_combout\);

-- Location: LC_X3_Y4_N6
\Decoder0~5\ : maxv_lcell
-- Equation(s):
-- \Decoder0~5_combout\ = (row_count(0) & (((row_count(1) & !row_count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_count(0),
	datac => row_count(1),
	datad => row_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~5_combout\);

-- Location: LC_X3_Y4_N0
\Decoder0~6\ : maxv_lcell
-- Equation(s):
-- \Decoder0~6_combout\ = (!row_count(0) & (((!row_count(1) & !row_count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_count(0),
	datac => row_count(1),
	datad => row_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~6_combout\);

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

-- Location: LC_X5_Y1_N2
\green_led~reg0\ : maxv_lcell
-- Equation(s):
-- \green_led~reg0_regout\ = DFFEAS((((!\green_led~reg0_regout\))), \play~combout\, VCC, , , , , , )

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
	clk => \play~combout\,
	datad => \green_led~reg0_regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \green_led~reg0_regout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst);

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lastPlay~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_lastPlay);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\hor~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_hor);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ver~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ver);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colr[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_colr(5));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colr[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_colr(4));

-- Location: PIN_46,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colr[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_colr(3));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colr[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_colr(2));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colr[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_colr(1));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colg[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_colg(5));

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colg[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_colg(4));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colg[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_colg(3));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colg[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_colg(2));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colg[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_colg(1));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Decoder0~0_combout\,
	oe => VCC,
	padio => ww_row(7));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Decoder0~1_combout\,
	oe => VCC,
	padio => ww_row(6));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Decoder0~2_combout\,
	oe => VCC,
	padio => ww_row(5));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Decoder0~3_combout\,
	oe => VCC,
	padio => ww_row(4));

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Decoder0~4_combout\,
	oe => VCC,
	padio => ww_row(3));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Decoder0~5_combout\,
	oe => VCC,
	padio => ww_row(2));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\row[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Decoder0~6_combout\,
	oe => VCC,
	padio => ww_row(1));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\green_led~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \green_led~reg0_regout\,
	oe => VCC,
	padio => ww_green_led);
END structure;


