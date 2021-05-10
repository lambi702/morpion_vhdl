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

-- DATE "05/10/2021 15:36:45"

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
	red_led : BUFFER std_logic
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
SIGNAL \lastVer~regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~27COUT1_50\ : std_logic;
SIGNAL \Add1~32\ : std_logic;
SIGNAL \Add1~32COUT1_51\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~37COUT1_52\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~2COUT1_46\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~7COUT1_47\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~12COUT1_48\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~17COUT1_49\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \hor~combout\ : std_logic;
SIGNAL \process_3~0\ : std_logic;
SIGNAL \lastHor~regout\ : std_logic;
SIGNAL \playerCol~0_combout\ : std_logic;
SIGNAL \ver~combout\ : std_logic;
SIGNAL \process_4~0\ : std_logic;
SIGNAL \Decoder1~0_combout\ : std_logic;
SIGNAL \play~combout\ : std_logic;
SIGNAL \player[0]~7\ : std_logic;
SIGNAL \Decoder1~2_combout\ : std_logic;
SIGNAL \player[0]~6_combout\ : std_logic;
SIGNAL \colr4[4]~10_combout\ : std_logic;
SIGNAL \Decoder1~1_combout\ : std_logic;
SIGNAL \colr4[4]~3_combout\ : std_logic;
SIGNAL \colr4[4]~4_combout\ : std_logic;
SIGNAL \colr4[4]~5_combout\ : std_logic;
SIGNAL \colr4[4]~6_combout\ : std_logic;
SIGNAL \process_2~6_combout\ : std_logic;
SIGNAL \colg5[4]~0_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \colr5[4]~1_combout\ : std_logic;
SIGNAL \process_2~4_combout\ : std_logic;
SIGNAL \process_2~3_combout\ : std_logic;
SIGNAL \process_2~5_combout\ : std_logic;
SIGNAL \colr5[4]~0_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \colg3[4]~0_combout\ : std_logic;
SIGNAL \process_2~1_combout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \process_2~2_combout\ : std_logic;
SIGNAL \player[0]~4_combout\ : std_logic;
SIGNAL \player[0]~5_combout\ : std_logic;
SIGNAL \lastPlay~regout\ : std_logic;
SIGNAL \colr4[4]~2_combout\ : std_logic;
SIGNAL \colr3[4]~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \green_led$latch~combout\ : std_logic;
SIGNAL \red_led$latch~combout\ : std_logic;
SIGNAL row_count : std_logic_vector(2 DOWNTO 0);
SIGNAL colg3 : std_logic_vector(1 TO 5);
SIGNAL playerCol : std_logic_vector(2 DOWNTO 0);
SIGNAL colg4 : std_logic_vector(1 TO 5);
SIGNAL playerRow : std_logic_vector(2 DOWNTO 0);
SIGNAL colr3 : std_logic_vector(1 TO 5);
SIGNAL colr4 : std_logic_vector(1 TO 5);
SIGNAL colr5 : std_logic_vector(1 TO 5);
SIGNAL colg5 : std_logic_vector(1 TO 5);
SIGNAL clk_count : std_logic_vector(8 DOWNTO 0);
SIGNAL player : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;

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

-- Location: LC_X3_Y3_N5
\Add1~25\ : maxv_lcell
-- Equation(s):
-- \Add1~25_combout\ = clk_count(5) $ ((((\Add1~22\))))
-- \Add1~27\ = CARRY(((!\Add1~22\)) # (!clk_count(5)))
-- \Add1~27COUT1_50\ = CARRY(((!\Add1~22\)) # (!clk_count(5)))

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
	cin => \Add1~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~25_combout\,
	cout0 => \Add1~27\,
	cout1 => \Add1~27COUT1_50\);

-- Location: LC_X4_Y3_N1
\clk_count[5]\ : maxv_lcell
-- Equation(s):
-- clk_count(5) = DFFEAS((((\Add1~25_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \Add1~25_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(5));

-- Location: LC_X3_Y3_N6
\Add1~30\ : maxv_lcell
-- Equation(s):
-- \Add1~30_combout\ = clk_count(6) $ ((((!(!\Add1~22\ & \Add1~27\) # (\Add1~22\ & \Add1~27COUT1_50\)))))
-- \Add1~32\ = CARRY((clk_count(6) & ((!\Add1~27\))))
-- \Add1~32COUT1_51\ = CARRY((clk_count(6) & ((!\Add1~27COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(6),
	cin => \Add1~22\,
	cin0 => \Add1~27\,
	cin1 => \Add1~27COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~30_combout\,
	cout0 => \Add1~32\,
	cout1 => \Add1~32COUT1_51\);

-- Location: LC_X3_Y3_N7
\Add1~35\ : maxv_lcell
-- Equation(s):
-- \Add1~35_combout\ = (clk_count(7) $ (((!\Add1~22\ & \Add1~32\) # (\Add1~22\ & \Add1~32COUT1_51\))))
-- \Add1~37\ = CARRY(((!\Add1~32\) # (!clk_count(7))))
-- \Add1~37COUT1_52\ = CARRY(((!\Add1~32COUT1_51\) # (!clk_count(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => clk_count(7),
	cin => \Add1~22\,
	cin0 => \Add1~32\,
	cin1 => \Add1~32COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~35_combout\,
	cout0 => \Add1~37\,
	cout1 => \Add1~37COUT1_52\);

-- Location: LC_X3_Y3_N9
\clk_count[7]\ : maxv_lcell
-- Equation(s):
-- clk_count(7) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add1~35_combout\, , , VCC)

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
	regout => clk_count(7));

-- Location: LC_X3_Y3_N8
\Add1~40\ : maxv_lcell
-- Equation(s):
-- \Add1~40_combout\ = (((!\Add1~22\ & \Add1~37\) # (\Add1~22\ & \Add1~37COUT1_52\) $ (!clk_count(8))))

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
	cin => \Add1~22\,
	cin0 => \Add1~37\,
	cin1 => \Add1~37COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~40_combout\);

-- Location: LC_X4_Y3_N9
\clk_count[0]\ : maxv_lcell
-- Equation(s):
-- \Equal0~0\ = (!clk_count(1) & (!clk_count(2) & (clk_count[0] & !clk_count(3))))
-- clk_count(0) = DFFEAS(\Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \Add1~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => clk_count(1),
	datab => clk_count(2),
	datac => \Add1~0_combout\,
	datad => clk_count(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => clk_count(0));

-- Location: LC_X3_Y3_N0
\Add1~0\ : maxv_lcell
-- Equation(s):
-- \Add1~0_combout\ = ((!clk_count(0)))
-- \Add1~2\ = CARRY(((clk_count(0))))
-- \Add1~2COUT1_46\ = CARRY(((clk_count(0))))

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
	combout => \Add1~0_combout\,
	cout0 => \Add1~2\,
	cout1 => \Add1~2COUT1_46\);

-- Location: LC_X4_Y3_N5
\clk_count[8]\ : maxv_lcell
-- Equation(s):
-- \Equal0~2\ = ((\Equal0~1\ & (!clk_count[8] & \Equal0~0\)))
-- clk_count(8) = DFFEAS(\Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \Add1~40_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Equal0~1\,
	datac => \Add1~40_combout\,
	datad => \Equal0~0\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2\,
	regout => clk_count(8));

-- Location: LC_X3_Y3_N1
\Add1~5\ : maxv_lcell
-- Equation(s):
-- \Add1~5_combout\ = (clk_count(1) $ ((\Add1~2\)))
-- \Add1~7\ = CARRY(((!\Add1~2\) # (!clk_count(1))))
-- \Add1~7COUT1_47\ = CARRY(((!\Add1~2COUT1_46\) # (!clk_count(1))))

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
	cin0 => \Add1~2\,
	cin1 => \Add1~2COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~5_combout\,
	cout0 => \Add1~7\,
	cout1 => \Add1~7COUT1_47\);

-- Location: LC_X4_Y3_N8
\clk_count[1]\ : maxv_lcell
-- Equation(s):
-- clk_count(1) = DFFEAS((\Add1~5_combout\ & ((clk_count(8)) # ((!\Equal0~0\) # (!\Equal0~1\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => clk_count(8),
	datab => \Equal0~1\,
	datac => \Add1~5_combout\,
	datad => \Equal0~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(1));

-- Location: LC_X3_Y3_N2
\Add1~10\ : maxv_lcell
-- Equation(s):
-- \Add1~10_combout\ = (clk_count(2) $ ((!\Add1~7\)))
-- \Add1~12\ = CARRY(((clk_count(2) & !\Add1~7\)))
-- \Add1~12COUT1_48\ = CARRY(((clk_count(2) & !\Add1~7COUT1_47\)))

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
	cin0 => \Add1~7\,
	cin1 => \Add1~7COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~10_combout\,
	cout0 => \Add1~12\,
	cout1 => \Add1~12COUT1_48\);

-- Location: LC_X4_Y3_N2
\clk_count[2]\ : maxv_lcell
-- Equation(s):
-- clk_count(2) = DFFEAS((((\Add1~10_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \Add1~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(2));

-- Location: LC_X3_Y3_N3
\Add1~15\ : maxv_lcell
-- Equation(s):
-- \Add1~15_combout\ = (clk_count(3) $ ((\Add1~12\)))
-- \Add1~17\ = CARRY(((!\Add1~12\) # (!clk_count(3))))
-- \Add1~17COUT1_49\ = CARRY(((!\Add1~12COUT1_48\) # (!clk_count(3))))

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
	cin0 => \Add1~12\,
	cin1 => \Add1~12COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~15_combout\,
	cout0 => \Add1~17\,
	cout1 => \Add1~17COUT1_49\);

-- Location: LC_X2_Y3_N4
\clk_count[3]\ : maxv_lcell
-- Equation(s):
-- clk_count(3) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add1~15_combout\, , , VCC)

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
	datac => \Add1~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(3));

-- Location: LC_X3_Y3_N4
\Add1~20\ : maxv_lcell
-- Equation(s):
-- \Add1~20_combout\ = clk_count(4) $ ((((!\Add1~17\))))
-- \Add1~22\ = CARRY((clk_count(4) & ((!\Add1~17COUT1_49\))))

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
	cin0 => \Add1~17\,
	cin1 => \Add1~17COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~20_combout\,
	cout => \Add1~22\);

-- Location: LC_X4_Y3_N0
\clk_count[4]\ : maxv_lcell
-- Equation(s):
-- \Equal0~1\ = (!clk_count(6) & (!clk_count(5) & (!clk_count[4] & !clk_count(7))))
-- clk_count(4) = DFFEAS(\Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \Add1~20_combout\, , , VCC)

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
	datac => \Add1~20_combout\,
	datad => clk_count(7),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => clk_count(4));

-- Location: LC_X4_Y3_N3
\clk_count[6]\ : maxv_lcell
-- Equation(s):
-- clk_count(6) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add1~30_combout\, , , VCC)

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
	datac => \Add1~30_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_count(6));

-- Location: LC_X4_Y3_N4
\row_count[2]\ : maxv_lcell
-- Equation(s):
-- row_count(2) = DFFEAS((row_count(2) & (((row_count(0))))) # (!row_count(2) & (row_count(1) & (!row_count(0)))), GLOBAL(\clk~combout\), VCC, , \Equal0~2\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a4a4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => row_count(2),
	datab => row_count(1),
	datac => row_count(0),
	aclr => GND,
	ena => \Equal0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_count(2));

-- Location: LC_X4_Y3_N6
\row_count[0]\ : maxv_lcell
-- Equation(s):
-- row_count(0) = DFFEAS((!row_count(0) & (((row_count(1))) # (!row_count(2)))), GLOBAL(\clk~combout\), VCC, , \Equal0~2\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d0d",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => row_count(2),
	datab => row_count(1),
	datac => row_count(0),
	aclr => GND,
	ena => \Equal0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_count(0));

-- Location: LC_X4_Y3_N7
\row_count[1]\ : maxv_lcell
-- Equation(s):
-- row_count(1) = DFFEAS(row_count(1) $ (((!row_count(0) & (\Equal0~2\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9c9c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => row_count(0),
	datab => row_count(1),
	datac => \Equal0~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_count(1));

-- Location: LC_X4_Y4_N9
\Mux4~0\ : maxv_lcell
-- Equation(s):
-- \Mux4~0_combout\ = ((!row_count(1) & (row_count(0) & !row_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_count(1),
	datac => row_count(0),
	datad => row_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

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

-- Location: LC_X2_Y3_N9
lastHor : maxv_lcell
-- Equation(s):
-- \process_3~0\ = (((lastHor & !\hor~combout\)))
-- \lastHor~regout\ = DFFEAS(\process_3~0\, GLOBAL(\clk~combout\), VCC, , , \hor~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \hor~combout\,
	datad => \hor~combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_3~0\,
	regout => \lastHor~regout\);

-- Location: LC_X2_Y3_N8
\playerCol[2]\ : maxv_lcell
-- Equation(s):
-- playerCol(2) = DFFEAS(((playerCol(0) & ((!playerCol(2)) # (!playerCol(1)))) # (!playerCol(0) & ((playerCol(2))))), GLOBAL(\clk~combout\), VCC, , \process_3~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ff0",
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
	datad => playerCol(2),
	aclr => GND,
	ena => \process_3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => playerCol(2));

-- Location: LC_X2_Y3_N6
\playerCol[0]\ : maxv_lcell
-- Equation(s):
-- playerCol(0) = DFFEAS((((!playerCol(1) & !playerCol(2))) # (!playerCol(0))), GLOBAL(\clk~combout\), VCC, , \process_3~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f3f",
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
	datad => playerCol(2),
	aclr => GND,
	ena => \process_3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => playerCol(0));

-- Location: LC_X2_Y3_N7
\playerCol[1]\ : maxv_lcell
-- Equation(s):
-- playerCol(1) = DFFEAS(playerCol(1) $ (((playerCol(0) & (\lastHor~regout\ & !\hor~combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f078",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => playerCol(0),
	datab => \lastHor~regout\,
	datac => playerCol(1),
	datad => \hor~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => playerCol(1));

-- Location: LC_X2_Y3_N5
\playerCol~0\ : maxv_lcell
-- Equation(s):
-- \playerCol~0_combout\ = ((playerCol(1) & (playerCol(0) & playerCol(2))))

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
	datab => playerCol(1),
	datac => playerCol(0),
	datad => playerCol(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \playerCol~0_combout\);

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

-- Location: LC_X3_Y1_N3
lastVer : maxv_lcell
-- Equation(s):
-- \process_4~0\ = (((lastVer & !\ver~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ver~combout\,
	datad => \ver~combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_4~0\,
	regout => \lastVer~regout\);

-- Location: LC_X5_Y3_N8
\playerRow[0]\ : maxv_lcell
-- Equation(s):
-- playerRow(0) = DFFEAS((((playerRow(1) & playerRow(2))) # (!playerRow(0))), GLOBAL(\clk~combout\), VCC, , \process_4~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => playerRow(1),
	datac => playerRow(2),
	datad => playerRow(0),
	aclr => GND,
	ena => \process_4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => playerRow(0));

-- Location: LC_X5_Y3_N5
\playerRow[1]\ : maxv_lcell
-- Equation(s):
-- playerRow(1) = DFFEAS((playerRow(1) & (((!playerRow(2) & playerRow(0))))) # (!playerRow(1) & (((!playerRow(0))))), GLOBAL(\clk~combout\), VCC, , \process_4~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a55",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => playerRow(1),
	datac => playerRow(2),
	datad => playerRow(0),
	aclr => GND,
	ena => \process_4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => playerRow(1));

-- Location: LC_X5_Y4_N3
\playerRow[2]\ : maxv_lcell
-- Equation(s):
-- playerRow(2) = DFFEAS((playerRow(2) & (playerRow(1) $ (((playerRow(0)))))) # (!playerRow(2) & (!playerRow(1) & ((!playerRow(0))))), GLOBAL(\clk~combout\), VCC, , \process_4~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2299",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => playerRow(2),
	datab => playerRow(1),
	datad => playerRow(0),
	aclr => GND,
	ena => \process_4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => playerRow(2));

-- Location: LC_X5_Y4_N5
\Decoder1~0\ : maxv_lcell
-- Equation(s):
-- \Decoder1~0_combout\ = (playerRow(2) & (playerRow(1) & ((playerRow(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerRow(2),
	datab => playerRow(1),
	datad => playerRow(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder1~0_combout\);

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

-- Location: LC_X5_Y1_N3
lastPlay : maxv_lcell
-- Equation(s):
-- \player[0]~7\ = (!\play~combout\ & (lastPlay & (player(1) $ (!player(0)))))
-- \lastPlay~regout\ = DFFEAS(\player[0]~7\, GLOBAL(\clk~combout\), VCC, , , \play~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => player(1),
	datab => \play~combout\,
	datac => \play~combout\,
	datad => player(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player[0]~7\,
	regout => \lastPlay~regout\);

-- Location: LC_X5_Y4_N7
\Decoder1~2\ : maxv_lcell
-- Equation(s):
-- \Decoder1~2_combout\ = (!playerRow(2) & (!playerRow(1) & ((playerRow(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerRow(2),
	datab => playerRow(1),
	datad => playerRow(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder1~2_combout\);

-- Location: LC_X5_Y3_N4
\player[0]~6\ : maxv_lcell
-- Equation(s):
-- \player[0]~6_combout\ = ((player(0) & (player(1) & \colr4[4]~6_combout\)))

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
	datab => player(0),
	datac => player(1),
	datad => \colr4[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player[0]~6_combout\);

-- Location: LC_X5_Y3_N9
\colg4[2]\ : maxv_lcell
-- Equation(s):
-- colg4(2) = DFFEAS((colg4(2)) # ((\Decoder1~2_combout\ & (\colr4[4]~2_combout\ & \player[0]~6_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => colg4(2),
	datab => \Decoder1~2_combout\,
	datac => \colr4[4]~2_combout\,
	datad => \player[0]~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colg4(2));

-- Location: LC_X6_Y3_N8
\colr4[4]~10\ : maxv_lcell
-- Equation(s):
-- \colr4[4]~10_combout\ = (!player(1) & (!player(0) & ((\colr4[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player(1),
	datab => player(0),
	datad => \colr4[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colr4[4]~10_combout\);

-- Location: LC_X6_Y3_N2
\colr4[2]\ : maxv_lcell
-- Equation(s):
-- colr4(2) = DFFEAS((colr4(2)) # ((\Decoder1~2_combout\ & (\colr4[4]~2_combout\ & \colr4[4]~10_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => colr4(2),
	datab => \Decoder1~2_combout\,
	datac => \colr4[4]~2_combout\,
	datad => \colr4[4]~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colr4(2));

-- Location: LC_X5_Y4_N1
\Decoder1~1\ : maxv_lcell
-- Equation(s):
-- \Decoder1~1_combout\ = (!playerRow(2) & (!playerRow(1) & ((!playerRow(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerRow(2),
	datab => playerRow(1),
	datad => playerRow(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder1~1_combout\);

-- Location: LC_X6_Y3_N1
\colg4[3]\ : maxv_lcell
-- Equation(s):
-- colg4(3) = DFFEAS((colg4(3)) # ((\colr4[4]~2_combout\ & (\Decoder1~1_combout\ & \player[0]~6_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => colg4(3),
	datab => \colr4[4]~2_combout\,
	datac => \Decoder1~1_combout\,
	datad => \player[0]~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colg4(3));

-- Location: LC_X5_Y3_N6
\colr4[4]~3\ : maxv_lcell
-- Equation(s):
-- \colr4[4]~3_combout\ = (playerRow(0) & ((colg4(2)) # ((colr4(2))))) # (!playerRow(0) & (((colg4(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fda8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerRow(0),
	datab => colg4(2),
	datac => colr4(2),
	datad => colg4(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colr4[4]~3_combout\);

-- Location: LC_X6_Y3_N6
\colr4[4]\ : maxv_lcell
-- Equation(s):
-- colr4(4) = DFFEAS((colr4(4)) # ((\Decoder1~0_combout\ & (\colr4[4]~2_combout\ & \colr4[4]~10_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Decoder1~0_combout\,
	datab => colr4(4),
	datac => \colr4[4]~2_combout\,
	datad => \colr4[4]~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colr4(4));

-- Location: LC_X5_Y3_N0
\colg4[4]\ : maxv_lcell
-- Equation(s):
-- colg4(4) = DFFEAS((colg4(4)) # ((\colr4[4]~2_combout\ & (\Decoder1~0_combout\ & \player[0]~6_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \colr4[4]~2_combout\,
	datab => colg4(4),
	datac => \Decoder1~0_combout\,
	datad => \player[0]~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colg4(4));

-- Location: LC_X5_Y3_N7
\colr4[3]\ : maxv_lcell
-- Equation(s):
-- colr4(3) = DFFEAS((colr4(3)) # ((\Decoder1~1_combout\ & (\colr4[4]~2_combout\ & \colr4[4]~10_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Decoder1~1_combout\,
	datab => colr4(3),
	datac => \colr4[4]~2_combout\,
	datad => \colr4[4]~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colr4(3));

-- Location: LC_X5_Y3_N1
\colr4[4]~4\ : maxv_lcell
-- Equation(s):
-- \colr4[4]~4_combout\ = ((playerRow(0) & (colg4(4))) # (!playerRow(0) & ((colr4(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => colg4(4),
	datac => colr4(3),
	datad => playerRow(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colr4[4]~4_combout\);

-- Location: LC_X5_Y3_N2
\colr4[4]~5\ : maxv_lcell
-- Equation(s):
-- \colr4[4]~5_combout\ = (playerRow(1) & (playerRow(0) & ((colr4(4)) # (\colr4[4]~4_combout\)))) # (!playerRow(1) & (!playerRow(0) & ((\colr4[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9980",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerRow(1),
	datab => playerRow(0),
	datac => colr4(4),
	datad => \colr4[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colr4[4]~5_combout\);

-- Location: LC_X5_Y3_N3
\colr4[4]~6\ : maxv_lcell
-- Equation(s):
-- \colr4[4]~6_combout\ = (!playerCol(0) & (!\colr4[4]~5_combout\ & ((playerRow(1)) # (!\colr4[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0023",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerRow(1),
	datab => playerCol(0),
	datac => \colr4[4]~3_combout\,
	datad => \colr4[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colr4[4]~6_combout\);

-- Location: LC_X4_Y1_N4
\process_2~6\ : maxv_lcell
-- Equation(s):
-- \process_2~6_combout\ = (((!\process_2~5_combout\)) # (!player(0))) # (!player(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => player(1),
	datab => player(0),
	datad => \process_2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_2~6_combout\);

-- Location: LC_X4_Y1_N8
\colg5[4]~0\ : maxv_lcell
-- Equation(s):
-- \colg5[4]~0_combout\ = (!playerCol(2) & (\colr4[4]~2_combout\ & (playerCol(0) & !\process_2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerCol(2),
	datab => \colr4[4]~2_combout\,
	datac => playerCol(0),
	datad => \process_2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colg5[4]~0_combout\);

-- Location: LC_X4_Y1_N0
\colg5[2]\ : maxv_lcell
-- Equation(s):
-- colg5(2) = DFFEAS(((colg5(2)) # ((\Decoder1~2_combout\ & \colg5[4]~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Decoder1~2_combout\,
	datac => colg5(2),
	datad => \colg5[4]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colg5(2));

-- Location: LC_X4_Y1_N5
\Equal6~0\ : maxv_lcell
-- Equation(s):
-- \Equal6~0_combout\ = (((!player(1) & !player(0))))

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
	datac => player(1),
	datad => player(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal6~0_combout\);

-- Location: LC_X4_Y1_N3
\colr5[4]~1\ : maxv_lcell
-- Equation(s):
-- \colr5[4]~1_combout\ = (\Equal6~0_combout\ & (\colr4[4]~2_combout\ & (\colr5[4]~0_combout\ & \process_2~6_combout\)))

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
	dataa => \Equal6~0_combout\,
	datab => \colr4[4]~2_combout\,
	datac => \colr5[4]~0_combout\,
	datad => \process_2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colr5[4]~1_combout\);

-- Location: LC_X4_Y1_N2
\colr5[2]\ : maxv_lcell
-- Equation(s):
-- colr5(2) = DFFEAS((colr5(2)) # ((\Decoder1~2_combout\ & ((\colr5[4]~1_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eecc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Decoder1~2_combout\,
	datab => colr5(2),
	datad => \colr5[4]~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colr5(2));

-- Location: LC_X4_Y1_N1
\colr5[4]\ : maxv_lcell
-- Equation(s):
-- colr5(4) = DFFEAS(((colr5(4)) # ((\Decoder1~0_combout\ & \colr5[4]~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Decoder1~0_combout\,
	datac => colr5(4),
	datad => \colr5[4]~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colr5(4));

-- Location: LC_X5_Y1_N4
\process_2~4\ : maxv_lcell
-- Equation(s):
-- \process_2~4_combout\ = (playerRow(1) & (((colr5(4))))) # (!playerRow(1) & ((colg5(2)) # ((colr5(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colg5(2),
	datab => colr5(2),
	datac => colr5(4),
	datad => playerRow(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_2~4_combout\);

-- Location: LC_X4_Y1_N9
\colg5[4]\ : maxv_lcell
-- Equation(s):
-- colg5(4) = DFFEAS(((colg5(4)) # ((\Decoder1~0_combout\ & \colg5[4]~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Decoder1~0_combout\,
	datac => colg5(4),
	datad => \colg5[4]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colg5(4));

-- Location: LC_X4_Y1_N7
\colg5[3]\ : maxv_lcell
-- Equation(s):
-- colg5(3) = DFFEAS(((colg5(3)) # ((\Decoder1~1_combout\ & \colg5[4]~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => colg5(3),
	datac => \Decoder1~1_combout\,
	datad => \colg5[4]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colg5(3));

-- Location: LC_X4_Y1_N6
\colr5[3]\ : maxv_lcell
-- Equation(s):
-- colr5(3) = DFFEAS((colr5(3)) # ((\Decoder1~1_combout\ & ((\colr5[4]~1_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => colr5(3),
	datab => \Decoder1~1_combout\,
	datad => \colr5[4]~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colr5(3));

-- Location: LC_X5_Y1_N1
\process_2~3\ : maxv_lcell
-- Equation(s):
-- \process_2~3_combout\ = (playerRow(1) & (colg5(4))) # (!playerRow(1) & (((colg5(3)) # (colr5(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aafc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colg5(4),
	datab => colg5(3),
	datac => colr5(3),
	datad => playerRow(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_2~3_combout\);

-- Location: LC_X5_Y1_N8
\process_2~5\ : maxv_lcell
-- Equation(s):
-- \process_2~5_combout\ = (playerRow(0) & (!\process_2~4_combout\ & ((!\process_2~3_combout\) # (!playerRow(1))))) # (!playerRow(0) & ((playerRow(1)) # ((!\process_2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "263f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerRow(1),
	datab => playerRow(0),
	datac => \process_2~4_combout\,
	datad => \process_2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_2~5_combout\);

-- Location: LC_X5_Y1_N0
\colr5[4]~0\ : maxv_lcell
-- Equation(s):
-- \colr5[4]~0_combout\ = ((!playerCol(2) & (playerCol(0) & \process_2~5_combout\)))

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
	datab => playerCol(2),
	datac => playerCol(0),
	datad => \process_2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colr5[4]~0_combout\);

-- Location: LC_X6_Y2_N3
\Equal7~0\ : maxv_lcell
-- Equation(s):
-- \Equal7~0_combout\ = (((player(1) & player(0))))

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
	datac => player(1),
	datad => player(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal7~0_combout\);

-- Location: LC_X6_Y1_N8
\colg3[4]~0\ : maxv_lcell
-- Equation(s):
-- \colg3[4]~0_combout\ = (playerCol(2) & (\process_2~2_combout\ & (\colr4[4]~2_combout\ & \Equal7~0_combout\)))

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
	dataa => playerCol(2),
	datab => \process_2~2_combout\,
	datac => \colr4[4]~2_combout\,
	datad => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colg3[4]~0_combout\);

-- Location: LC_X6_Y1_N7
\colg3[4]\ : maxv_lcell
-- Equation(s):
-- colg3(4) = DFFEAS((colg3(4)) # ((\Decoder1~0_combout\ & ((\colg3[4]~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eecc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Decoder1~0_combout\,
	datab => colg3(4),
	datad => \colg3[4]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colg3(4));

-- Location: LC_X6_Y1_N9
\colr3[3]\ : maxv_lcell
-- Equation(s):
-- colr3(3) = DFFEAS(((colr3(3)) # ((\Decoder1~1_combout\ & \colr3[4]~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => colr3(3),
	datac => \Decoder1~1_combout\,
	datad => \colr3[4]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colr3(3));

-- Location: LC_X6_Y1_N4
\process_2~1\ : maxv_lcell
-- Equation(s):
-- \process_2~1_combout\ = (playerRow(0) & ((colr3(4)) # ((colg3(4))))) # (!playerRow(0) & (((colr3(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eef0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colr3(4),
	datab => colg3(4),
	datac => colr3(3),
	datad => playerRow(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_2~1_combout\);

-- Location: LC_X6_Y1_N5
\colr3[2]\ : maxv_lcell
-- Equation(s):
-- colr3(2) = DFFEAS(((colr3(2)) # ((\Decoder1~2_combout\ & \colr3[4]~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Decoder1~2_combout\,
	datac => colr3(2),
	datad => \colr3[4]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colr3(2));

-- Location: LC_X6_Y1_N2
\colg3[3]\ : maxv_lcell
-- Equation(s):
-- colg3(3) = DFFEAS(((colg3(3)) # ((\Decoder1~1_combout\ & \colg3[4]~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => colg3(3),
	datac => \Decoder1~1_combout\,
	datad => \colg3[4]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colg3(3));

-- Location: LC_X6_Y1_N6
\colg3[2]\ : maxv_lcell
-- Equation(s):
-- colg3(2) = DFFEAS(((colg3(2)) # ((\Decoder1~2_combout\ & \colg3[4]~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Decoder1~2_combout\,
	datac => colg3(2),
	datad => \colg3[4]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colg3(2));

-- Location: LC_X6_Y1_N0
\process_2~0\ : maxv_lcell
-- Equation(s):
-- \process_2~0_combout\ = (playerRow(0) & ((colr3(2)) # ((colg3(2))))) # (!playerRow(0) & (((colg3(3)))))

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
	dataa => colr3(2),
	datab => colg3(3),
	datac => colg3(2),
	datad => playerRow(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_2~0_combout\);

-- Location: LC_X6_Y1_N1
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

-- Location: LC_X5_Y1_N6
\player[0]~4\ : maxv_lcell
-- Equation(s):
-- \player[0]~4_combout\ = ((playerCol(2) & (playerCol(0) & \process_2~2_combout\)))

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
	datab => playerCol(2),
	datac => playerCol(0),
	datad => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player[0]~4_combout\);

-- Location: LC_X5_Y1_N7
\player[0]~5\ : maxv_lcell
-- Equation(s):
-- \player[0]~5_combout\ = (\player[0]~7\ & ((\colr4[4]~6_combout\) # ((\colr5[4]~0_combout\) # (\player[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \player[0]~7\,
	datab => \colr4[4]~6_combout\,
	datac => \colr5[4]~0_combout\,
	datad => \player[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \player[0]~5_combout\);

-- Location: LC_X5_Y1_N2
\player[0]\ : maxv_lcell
-- Equation(s):
-- player(0) = DFFEAS((((!player(1)))), GLOBAL(\clk~combout\), VCC, , \player[0]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => player(1),
	aclr => GND,
	ena => \player[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => player(0));

-- Location: LC_X5_Y1_N5
\player[1]\ : maxv_lcell
-- Equation(s):
-- player(1) = DFFEAS((((!player(0)))), GLOBAL(\clk~combout\), VCC, , \player[0]~5_combout\, , , , )

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
	datad => player(0),
	aclr => GND,
	ena => \player[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => player(1));

-- Location: LC_X5_Y1_N9
\colr4[4]~2\ : maxv_lcell
-- Equation(s):
-- \colr4[4]~2_combout\ = (\lastPlay~regout\ & (((!\play~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lastPlay~regout\,
	datac => \play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colr4[4]~2_combout\);

-- Location: LC_X7_Y1_N4
\colr3[4]~0\ : maxv_lcell
-- Equation(s):
-- \colr3[4]~0_combout\ = (playerCol(2) & (\colr4[4]~2_combout\ & (\process_2~2_combout\ & \Equal6~0_combout\)))

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
	dataa => playerCol(2),
	datab => \colr4[4]~2_combout\,
	datac => \process_2~2_combout\,
	datad => \Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \colr3[4]~0_combout\);

-- Location: LC_X6_Y1_N3
\colr3[4]\ : maxv_lcell
-- Equation(s):
-- colr3(4) = DFFEAS((colr3(4)) # (((\Decoder1~0_combout\ & \colr3[4]~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => colr3(4),
	datac => \Decoder1~0_combout\,
	datad => \colr3[4]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => colr3(4));

-- Location: LC_X5_Y2_N1
\Mux3~0\ : maxv_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (row_count(1) & (!colr3(4) & ((!\Decoder1~0_combout\) # (!\playerCol~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "020a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_count(1),
	datab => \playerCol~0_combout\,
	datac => colr3(4),
	datad => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X2_Y3_N0
\Mux3~1\ : maxv_lcell
-- Equation(s):
-- \Mux3~1_combout\ = (!playerCol(2) & (!playerCol(1) & (playerCol(0) $ (row_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerCol(2),
	datab => playerCol(1),
	datac => playerCol(0),
	datad => row_count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~1_combout\);

-- Location: LC_X5_Y4_N8
\Mux3~2\ : maxv_lcell
-- Equation(s):
-- \Mux3~2_combout\ = (playerRow(0) & (playerRow(1) & (\Mux3~1_combout\ & playerRow(2))))

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
	dataa => playerRow(0),
	datab => playerRow(1),
	datac => \Mux3~1_combout\,
	datad => playerRow(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~2_combout\);

-- Location: LC_X5_Y2_N0
\Mux3~3\ : maxv_lcell
-- Equation(s):
-- \Mux3~3_combout\ = (!\Mux3~2_combout\ & ((row_count(0) & ((!colr4(4)))) # (!row_count(0) & (!colr5(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0123",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_count(0),
	datab => \Mux3~2_combout\,
	datac => colr5(4),
	datad => colr4(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~3_combout\);

-- Location: LC_X5_Y4_N4
\Mux3~4\ : maxv_lcell
-- Equation(s):
-- \Mux3~4_combout\ = ((row_count(2) & ((!row_count(1)))) # (!row_count(2) & (!row_count(0) & row_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_count(0),
	datac => row_count(2),
	datad => row_count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~4_combout\);

-- Location: LC_X5_Y2_N4
\Mux3~5\ : maxv_lcell
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux3~0_combout\) # (((!row_count(1) & \Mux3~3_combout\)) # (!\Mux3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dcff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_count(1),
	datab => \Mux3~0_combout\,
	datac => \Mux3~3_combout\,
	datad => \Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~5_combout\);

-- Location: LC_X5_Y4_N2
\Mux2~1\ : maxv_lcell
-- Equation(s):
-- \Mux2~1_combout\ = (!playerRow(0) & (!playerRow(1) & (\Mux3~1_combout\ & !playerRow(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => playerRow(0),
	datab => playerRow(1),
	datac => \Mux3~1_combout\,
	datad => playerRow(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~1_combout\);

-- Location: LC_X5_Y2_N9
\Mux2~2\ : maxv_lcell
-- Equation(s):
-- \Mux2~2_combout\ = (!\Mux2~1_combout\ & ((row_count(0) & (!colr4(3))) # (!row_count(0) & ((!colr5(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0207",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_count(0),
	datab => colr4(3),
	datac => \Mux2~1_combout\,
	datad => colr5(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~2_combout\);

-- Location: LC_X5_Y2_N7
\Mux2~0\ : maxv_lcell
-- Equation(s):
-- \Mux2~0_combout\ = (row_count(1) & (!colr3(3) & ((!\Decoder1~1_combout\) # (!\playerCol~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "020a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_count(1),
	datab => \playerCol~0_combout\,
	datac => colr3(3),
	datad => \Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: LC_X5_Y2_N3
\Mux2~3\ : maxv_lcell
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~0_combout\) # (((!row_count(1) & \Mux2~2_combout\)) # (!\Mux3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_count(1),
	datab => \Mux2~2_combout\,
	datac => \Mux2~0_combout\,
	datad => \Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~3_combout\);

-- Location: LC_X5_Y4_N0
\Mux1~1\ : maxv_lcell
-- Equation(s):
-- \Mux1~1_combout\ = (playerRow(0) & (!playerRow(1) & (\Mux3~1_combout\ & !playerRow(2))))

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
	dataa => playerRow(0),
	datab => playerRow(1),
	datac => \Mux3~1_combout\,
	datad => playerRow(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~1_combout\);

-- Location: LC_X7_Y1_N6
\Mux1~2\ : maxv_lcell
-- Equation(s):
-- \Mux1~2_combout\ = (!\Mux1~1_combout\ & ((row_count(0) & ((!colr4(2)))) # (!row_count(0) & (!colr5(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "001d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => colr5(2),
	datab => row_count(0),
	datac => colr4(2),
	datad => \Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~2_combout\);

-- Location: LC_X7_Y1_N8
\Mux1~0\ : maxv_lcell
-- Equation(s):
-- \Mux1~0_combout\ = (row_count(1) & (!colr3(2) & ((!\Decoder1~2_combout\) # (!\playerCol~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "004c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \playerCol~0_combout\,
	datab => row_count(1),
	datac => \Decoder1~2_combout\,
	datad => colr3(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X7_Y1_N9
\Mux1~3\ : maxv_lcell
-- Equation(s):
-- \Mux1~3_combout\ = ((\Mux1~0_combout\) # ((\Mux1~2_combout\ & !row_count(1)))) # (!\Mux3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff2f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => row_count(1),
	datac => \Mux3~4_combout\,
	datad => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~3_combout\);

-- Location: LC_X5_Y2_N2
\Mux8~0\ : maxv_lcell
-- Equation(s):
-- \Mux8~0_combout\ = (row_count(1) & (!colg3(4) & ((!\Decoder1~0_combout\) # (!\playerCol~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "020a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_count(1),
	datab => \playerCol~0_combout\,
	datac => colg3(4),
	datad => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~0_combout\);

-- Location: LC_X5_Y2_N6
\Mux8~1\ : maxv_lcell
-- Equation(s):
-- \Mux8~1_combout\ = (!\Mux3~2_combout\ & ((row_count(0) & (!colg4(4))) # (!row_count(0) & ((!colg5(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0027",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_count(0),
	datab => colg4(4),
	datac => colg5(4),
	datad => \Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~1_combout\);

-- Location: LC_X5_Y2_N8
\Mux8~2\ : maxv_lcell
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux8~0_combout\) # (((!row_count(1) & \Mux8~1_combout\)) # (!\Mux3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dcff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_count(1),
	datab => \Mux8~0_combout\,
	datac => \Mux8~1_combout\,
	datad => \Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~2_combout\);

-- Location: LC_X5_Y2_N5
\Mux7~1\ : maxv_lcell
-- Equation(s):
-- \Mux7~1_combout\ = (!\Mux2~1_combout\ & ((row_count(0) & (!colg4(3))) # (!row_count(0) & ((!colg5(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0027",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => row_count(0),
	datab => colg4(3),
	datac => colg5(3),
	datad => \Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~1_combout\);

-- Location: LC_X7_Y1_N3
\Mux7~0\ : maxv_lcell
-- Equation(s):
-- \Mux7~0_combout\ = (!colg3(3) & (row_count(1) & ((!\Decoder1~1_combout\) # (!\playerCol~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \playerCol~0_combout\,
	datab => colg3(3),
	datac => \Decoder1~1_combout\,
	datad => row_count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~0_combout\);

-- Location: LC_X7_Y1_N2
\Mux7~2\ : maxv_lcell
-- Equation(s):
-- \Mux7~2_combout\ = ((\Mux7~0_combout\) # ((!row_count(1) & \Mux7~1_combout\))) # (!\Mux3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff75",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => row_count(1),
	datac => \Mux7~1_combout\,
	datad => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~2_combout\);

-- Location: LC_X7_Y1_N5
\Mux6~1\ : maxv_lcell
-- Equation(s):
-- \Mux6~1_combout\ = (!\Mux1~1_combout\ & ((row_count(0) & (!colg4(2))) # (!row_count(0) & ((!colg5(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0053",
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
	datad => \Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~1_combout\);

-- Location: LC_X7_Y1_N1
\Mux6~0\ : maxv_lcell
-- Equation(s):
-- \Mux6~0_combout\ = (row_count(1) & (!colg3(2) & ((!\playerCol~0_combout\) # (!\Decoder1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "040c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~2_combout\,
	datab => row_count(1),
	datac => colg3(2),
	datad => \playerCol~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0_combout\);

-- Location: LC_X7_Y1_N7
\Mux6~2\ : maxv_lcell
-- Equation(s):
-- \Mux6~2_combout\ = ((\Mux6~0_combout\) # ((\Mux6~1_combout\ & !row_count(1)))) # (!\Mux3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff2f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => row_count(1),
	datac => \Mux3~4_combout\,
	datad => \Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~2_combout\);

-- Location: LC_X4_Y4_N4
\Decoder0~0\ : maxv_lcell
-- Equation(s):
-- \Decoder0~0_combout\ = ((row_count(1) & (!row_count(0) & row_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_count(1),
	datac => row_count(0),
	datad => row_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~0_combout\);

-- Location: LC_X4_Y4_N2
\Decoder0~1\ : maxv_lcell
-- Equation(s):
-- \Decoder0~1_combout\ = ((row_count(1) & (row_count(0) & row_count(2))))

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
	datab => row_count(1),
	datac => row_count(0),
	datad => row_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~1_combout\);

-- Location: LC_X4_Y4_N6
\Decoder0~2\ : maxv_lcell
-- Equation(s):
-- \Decoder0~2_combout\ = ((!row_count(1) & (!row_count(0) & row_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_count(1),
	datac => row_count(0),
	datad => row_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~2_combout\);

-- Location: LC_X5_Y4_N6
\Decoder0~3\ : maxv_lcell
-- Equation(s):
-- \Decoder0~3_combout\ = ((row_count(0) & (row_count(2) & !row_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_count(0),
	datac => row_count(2),
	datad => row_count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~3_combout\);

-- Location: LC_X4_Y4_N8
\Decoder0~4\ : maxv_lcell
-- Equation(s):
-- \Decoder0~4_combout\ = ((row_count(1) & (!row_count(0) & !row_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_count(1),
	datac => row_count(0),
	datad => row_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~4_combout\);

-- Location: LC_X5_Y4_N9
\Decoder0~5\ : maxv_lcell
-- Equation(s):
-- \Decoder0~5_combout\ = ((row_count(0) & (!row_count(2) & row_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => row_count(0),
	datac => row_count(2),
	datad => row_count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~5_combout\);

-- Location: LC_X4_Y4_N1
\Decoder0~6\ : maxv_lcell
-- Equation(s):
-- \Decoder0~6_combout\ = ((!row_count(1) & (!row_count(0) & !row_count(2))))

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
	datab => row_count(1),
	datac => row_count(0),
	datad => row_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~6_combout\);

-- Location: LC_X3_Y4_N2
\green_led$latch\ : maxv_lcell
-- Equation(s):
-- \green_led$latch~combout\ = ((!\Equal6~0_combout\ & ((\Equal7~0_combout\) # (\green_led$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Equal6~0_combout\,
	datac => \Equal7~0_combout\,
	datad => \green_led$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \green_led$latch~combout\);

-- Location: LC_X3_Y4_N3
\red_led$latch\ : maxv_lcell
-- Equation(s):
-- \red_led$latch~combout\ = ((!\Equal7~0_combout\ & ((\Equal6~0_combout\) # (\red_led$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Equal6~0_combout\,
	datac => \Equal7~0_combout\,
	datad => \red_led$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \red_led$latch~combout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colr[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_colr(5));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colr[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~5_combout\,
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
	datain => \Mux1~3_combout\,
	oe => VCC,
	padio => ww_colr(2));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colr[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_colr(1));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\colg[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux4~0_combout\,
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
	datain => \ALT_INV_Mux4~0_combout\,
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
END structure;


