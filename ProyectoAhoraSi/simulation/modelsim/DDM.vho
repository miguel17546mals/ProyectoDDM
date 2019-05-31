-- Copyright (C) 1991-2010 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

-- DATE "05/30/2019 14:22:15"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	DDM IS
    PORT (
	pulso : OUT std_logic;
	clk : IN std_logic;
	columnas : IN std_logic_vector(3 DOWNTO 0);
	dato : OUT std_logic_vector(3 DOWNTO 0);
	filas : OUT std_logic_vector(3 DOWNTO 0)
	);
END DDM;

-- Design Ports Information
-- columnas[3]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- columnas[2]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- columnas[1]	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- columnas[0]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pulso	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dato[3]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dato[2]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dato[1]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dato[0]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- filas[3]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- filas[2]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- filas[1]	=>  Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- filas[0]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA

ARCHITECTURE structure OF DDM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pulso : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_columnas : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dato : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_filas : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \inst2|pulso~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal9~0_combout\ : std_logic;
SIGNAL \inst2|Equal8~0_combout\ : std_logic;
SIGNAL \inst2|dato~25_combout\ : std_logic;
SIGNAL \inst2|Equal5~0_combout\ : std_logic;
SIGNAL \inst2|Equal10~0_combout\ : std_logic;
SIGNAL \inst2|Equal11~0_combout\ : std_logic;
SIGNAL \inst2|Equal7~0_combout\ : std_logic;
SIGNAL \inst2|Equal6~0_combout\ : std_logic;
SIGNAL \inst2|dato[3]~20_combout\ : std_logic;
SIGNAL \inst2|dato[3]~21_combout\ : std_logic;
SIGNAL \inst2|dato[2]~19_combout\ : std_logic;
SIGNAL \inst2|Equal4~0_combout\ : std_logic;
SIGNAL \inst2|pulso~1_combout\ : std_logic;
SIGNAL \inst2|dato~22_combout\ : std_logic;
SIGNAL \inst2|dato~23_combout\ : std_logic;
SIGNAL \inst2|dato~41_combout\ : std_logic;
SIGNAL \inst2|dato[2]~42_combout\ : std_logic;
SIGNAL \inst2|dato[3]~24_combout\ : std_logic;
SIGNAL \inst2|dato[3]~26_combout\ : std_logic;
SIGNAL \inst2|dato~30_combout\ : std_logic;
SIGNAL \inst2|dato[2]~29_combout\ : std_logic;
SIGNAL \inst2|dato~27_combout\ : std_logic;
SIGNAL \inst2|dato[2]~28_combout\ : std_logic;
SIGNAL \inst2|dato[2]~31_combout\ : std_logic;
SIGNAL \inst2|dato[1]~33_combout\ : std_logic;
SIGNAL \inst2|dato[1]~34_combout\ : std_logic;
SIGNAL \inst2|dato[1]~32_combout\ : std_logic;
SIGNAL \inst2|dato[1]~40_combout\ : std_logic;
SIGNAL \inst2|dato[1]~35_combout\ : std_logic;
SIGNAL \inst2|dato[0]~36_combout\ : std_logic;
SIGNAL \inst2|dato[0]~37_combout\ : std_logic;
SIGNAL \inst2|dato[0]~38_combout\ : std_logic;
SIGNAL \inst2|dato[0]~44_combout\ : std_logic;
SIGNAL \inst2|dato[0]~45_combout\ : std_logic;
SIGNAL \inst2|dato[0]~43_combout\ : std_logic;
SIGNAL \inst2|dato[0]~39_combout\ : std_logic;
SIGNAL \inst|count[0]~31\ : std_logic;
SIGNAL \inst|count[0]~31COUT1_46\ : std_logic;
SIGNAL \inst|count[1]~29\ : std_logic;
SIGNAL \inst|count[1]~29COUT1_48\ : std_logic;
SIGNAL \inst|count[2]~27\ : std_logic;
SIGNAL \inst|count[3]~25\ : std_logic;
SIGNAL \inst|count[3]~25COUT1_50\ : std_logic;
SIGNAL \inst|count[4]~1\ : std_logic;
SIGNAL \inst|count[4]~1COUT1_52\ : std_logic;
SIGNAL \inst|count[5]~3\ : std_logic;
SIGNAL \inst|count[5]~3COUT1_54\ : std_logic;
SIGNAL \inst|count[6]~5\ : std_logic;
SIGNAL \inst|count[6]~5COUT1_56\ : std_logic;
SIGNAL \inst|count[7]~7\ : std_logic;
SIGNAL \inst|count[8]~9\ : std_logic;
SIGNAL \inst|count[8]~9COUT1_58\ : std_logic;
SIGNAL \inst|count[9]~11\ : std_logic;
SIGNAL \inst|count[9]~11COUT1_60\ : std_logic;
SIGNAL \inst|count[10]~13\ : std_logic;
SIGNAL \inst|count[10]~13COUT1_62\ : std_logic;
SIGNAL \inst|count[11]~15\ : std_logic;
SIGNAL \inst|count[11]~15COUT1_64\ : std_logic;
SIGNAL \inst|count[12]~17\ : std_logic;
SIGNAL \inst|count[13]~19\ : std_logic;
SIGNAL \inst|count[13]~19COUT1_66\ : std_logic;
SIGNAL \inst|count[14]~21\ : std_logic;
SIGNAL \inst|count[14]~21COUT1_68\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|clk_state~regout\ : std_logic;
SIGNAL \inst2|Equal2~0\ : std_logic;
SIGNAL \inst2|Equal2~2\ : std_logic;
SIGNAL \inst2|Equal2~1\ : std_logic;
SIGNAL \inst|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|cont\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|dec_filas\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|filas\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \columnas~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ALT_INV_clk_state~regout\ : std_logic;

BEGIN

pulso <= ww_pulso;
ww_clk <= clk;
ww_columnas <= columnas;
dato <= ww_dato;
filas <= ww_filas;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_clk_state~regout\ <= NOT \inst|clk_state~regout\;

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\columnas[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_columnas(2),
	combout => \columnas~combout\(2));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\columnas[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_columnas(0),
	combout => \columnas~combout\(0));

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\columnas[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_columnas(1),
	combout => \columnas~combout\(1));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\columnas[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_columnas(3),
	combout => \columnas~combout\(3));

-- Location: LC_X7_Y1_N6
\inst2|pulso~0\ : maxii_lcell
-- Equation(s):
-- \inst2|pulso~0_combout\ = (\columnas~combout\(2) & (!\columnas~combout\(0) & (!\columnas~combout\(1) & !\columnas~combout\(3)))) # (!\columnas~combout\(2) & ((\columnas~combout\(0) & (!\columnas~combout\(1) & !\columnas~combout\(3))) # 
-- (!\columnas~combout\(0) & (\columnas~combout\(1) $ (\columnas~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0116",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \columnas~combout\(2),
	datab => \columnas~combout\(0),
	datac => \columnas~combout\(1),
	datad => \columnas~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|pulso~0_combout\);

-- Location: LC_X4_Y4_N9
\inst2|cont[0]\ : maxii_lcell
-- Equation(s):
-- \inst2|cont\(0) = DFFEAS((((!\inst2|cont\(0)))), GLOBAL(\inst|clk_state~regout\), VCC, , , , , , )

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
	clk => \inst|clk_state~regout\,
	datac => \inst2|cont\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cont\(0));

-- Location: LC_X4_Y4_N4
\inst2|cont[1]\ : maxii_lcell
-- Equation(s):
-- \inst2|cont\(1) = DFFEAS((\inst2|cont\(1) $ ((\inst2|cont\(0)))), GLOBAL(\inst|clk_state~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_state~regout\,
	datab => \inst2|cont\(1),
	datac => \inst2|cont\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cont\(1));

-- Location: LC_X4_Y4_N8
\inst2|dec_filas[3]\ : maxii_lcell
-- Equation(s):
-- \inst2|Equal2~0\ = (((\inst2|cont\(1) & \inst2|cont\(0))))
-- \inst2|dec_filas\(3) = DFFEAS(\inst2|Equal2~0\, !GLOBAL(\inst|clk_state~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_clk_state~regout\,
	datac => \inst2|cont\(1),
	datad => \inst2|cont\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|Equal2~0\,
	regout => \inst2|dec_filas\(3));

-- Location: LC_X4_Y4_N5
\inst2|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (((\inst2|cont\(1)) # (\inst2|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|cont\(1),
	datad => \inst2|cont\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|Equal0~0_combout\);

-- Location: LC_X4_Y4_N6
\inst2|dec_filas[0]\ : maxii_lcell
-- Equation(s):
-- \inst2|dec_filas\(0) = DFFEAS((((!\inst2|Equal0~0_combout\))), !GLOBAL(\inst|clk_state~regout\), VCC, , , , , , )

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
	clk => \inst|ALT_INV_clk_state~regout\,
	datad => \inst2|Equal0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|dec_filas\(0));

-- Location: LC_X4_Y4_N3
\inst2|dec_filas[1]\ : maxii_lcell
-- Equation(s):
-- \inst2|Equal2~1\ = (((!\inst2|cont\(1) & \inst2|cont\(0))))
-- \inst2|dec_filas\(1) = DFFEAS(\inst2|Equal2~1\, !GLOBAL(\inst|clk_state~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_clk_state~regout\,
	datac => \inst2|cont\(1),
	datad => \inst2|cont\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|Equal2~1\,
	regout => \inst2|dec_filas\(1));

-- Location: LC_X4_Y4_N2
\inst2|dec_filas[2]\ : maxii_lcell
-- Equation(s):
-- \inst2|Equal2~2\ = (((\inst2|cont\(1) & !\inst2|cont\(0))))
-- \inst2|dec_filas\(2) = DFFEAS(\inst2|Equal2~2\, !GLOBAL(\inst|clk_state~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_clk_state~regout\,
	datac => \inst2|cont\(1),
	datad => \inst2|cont\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|Equal2~2\,
	regout => \inst2|dec_filas\(2));

-- Location: LC_X6_Y4_N2
\inst2|Equal9~0\ : maxii_lcell
-- Equation(s):
-- \inst2|Equal9~0_combout\ = (!\inst2|dec_filas\(3) & (!\inst2|dec_filas\(0) & (!\inst2|dec_filas\(1) & \inst2|dec_filas\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dec_filas\(3),
	datab => \inst2|dec_filas\(0),
	datac => \inst2|dec_filas\(1),
	datad => \inst2|dec_filas\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|Equal9~0_combout\);

-- Location: LC_X6_Y4_N8
\inst2|Equal8~0\ : maxii_lcell
-- Equation(s):
-- \inst2|Equal8~0_combout\ = (!\columnas~combout\(1) & (!\columnas~combout\(0) & (!\columnas~combout\(2) & \columnas~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \columnas~combout\(1),
	datab => \columnas~combout\(0),
	datac => \columnas~combout\(2),
	datad => \columnas~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|Equal8~0_combout\);

-- Location: LC_X5_Y4_N2
\inst2|dato~25\ : maxii_lcell
-- Equation(s):
-- \inst2|dato~25_combout\ = (((\inst2|Equal9~0_combout\ & \inst2|Equal8~0_combout\)))

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
	datac => \inst2|Equal9~0_combout\,
	datad => \inst2|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato~25_combout\);

-- Location: LC_X6_Y4_N7
\inst2|Equal5~0\ : maxii_lcell
-- Equation(s):
-- \inst2|Equal5~0_combout\ = (!\columnas~combout\(1) & (\columnas~combout\(0) & (!\columnas~combout\(2) & !\columnas~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \columnas~combout\(1),
	datab => \columnas~combout\(0),
	datac => \columnas~combout\(2),
	datad => \columnas~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|Equal5~0_combout\);

-- Location: LC_X4_Y3_N7
\inst2|Equal10~0\ : maxii_lcell
-- Equation(s):
-- \inst2|Equal10~0_combout\ = (\inst2|dec_filas\(1) & (!\inst2|dec_filas\(0) & (!\inst2|dec_filas\(2) & !\inst2|dec_filas\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dec_filas\(1),
	datab => \inst2|dec_filas\(0),
	datac => \inst2|dec_filas\(2),
	datad => \inst2|dec_filas\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|Equal10~0_combout\);

-- Location: LC_X4_Y3_N5
\inst2|Equal11~0\ : maxii_lcell
-- Equation(s):
-- \inst2|Equal11~0_combout\ = (!\inst2|dec_filas\(1) & (\inst2|dec_filas\(0) & (!\inst2|dec_filas\(2) & !\inst2|dec_filas\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dec_filas\(1),
	datab => \inst2|dec_filas\(0),
	datac => \inst2|dec_filas\(2),
	datad => \inst2|dec_filas\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|Equal11~0_combout\);

-- Location: LC_X6_Y3_N4
\inst2|Equal7~0\ : maxii_lcell
-- Equation(s):
-- \inst2|Equal7~0_combout\ = (!\columnas~combout\(1) & (\columnas~combout\(2) & (!\columnas~combout\(0) & !\columnas~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \columnas~combout\(1),
	datab => \columnas~combout\(2),
	datac => \columnas~combout\(0),
	datad => \columnas~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|Equal7~0_combout\);

-- Location: LC_X6_Y3_N9
\inst2|Equal6~0\ : maxii_lcell
-- Equation(s):
-- \inst2|Equal6~0_combout\ = (\columnas~combout\(1) & (!\columnas~combout\(2) & (!\columnas~combout\(0) & !\columnas~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \columnas~combout\(1),
	datab => \columnas~combout\(2),
	datac => \columnas~combout\(0),
	datad => \columnas~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|Equal6~0_combout\);

-- Location: LC_X6_Y3_N7
\inst2|dato[3]~20\ : maxii_lcell
-- Equation(s):
-- \inst2|dato[3]~20_combout\ = ((!\inst2|Equal7~0_combout\ & (!\inst2|Equal6~0_combout\ & !\inst2|Equal8~0_combout\))) # (!\inst2|Equal10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f1f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal7~0_combout\,
	datab => \inst2|Equal6~0_combout\,
	datac => \inst2|Equal10~0_combout\,
	datad => \inst2|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato[3]~20_combout\);

-- Location: LC_X6_Y3_N8
\inst2|dato[3]~21\ : maxii_lcell
-- Equation(s):
-- \inst2|dato[3]~21_combout\ = (\inst2|Equal5~0_combout\ & ((\inst2|Equal11~0_combout\) # ((\inst2|Equal10~0_combout\ & \inst2|dato[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal5~0_combout\,
	datab => \inst2|Equal10~0_combout\,
	datac => \inst2|Equal11~0_combout\,
	datad => \inst2|dato[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato[3]~21_combout\);

-- Location: LC_X4_Y3_N4
\inst2|dato[2]~19\ : maxii_lcell
-- Equation(s):
-- \inst2|dato[2]~19_combout\ = ((!\inst2|Equal6~0_combout\ & (!\inst2|Equal7~0_combout\ & !\inst2|Equal8~0_combout\))) # (!\inst2|Equal11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5557",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal11~0_combout\,
	datab => \inst2|Equal6~0_combout\,
	datac => \inst2|Equal7~0_combout\,
	datad => \inst2|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato[2]~19_combout\);

-- Location: LC_X6_Y4_N3
\inst2|Equal4~0\ : maxii_lcell
-- Equation(s):
-- \inst2|Equal4~0_combout\ = (!\inst2|dec_filas\(1) & (!\inst2|dec_filas\(2) & (\inst2|dec_filas\(3) & !\inst2|dec_filas\(0))))

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
	dataa => \inst2|dec_filas\(1),
	datab => \inst2|dec_filas\(2),
	datac => \inst2|dec_filas\(3),
	datad => \inst2|dec_filas\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|Equal4~0_combout\);

-- Location: LC_X7_Y1_N7
\inst2|pulso~1\ : maxii_lcell
-- Equation(s):
-- \inst2|pulso~1_combout\ = (\columnas~combout\(3)) # ((\columnas~combout\(2)) # (\columnas~combout\(0) $ (!\columnas~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffed",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \columnas~combout\(0),
	datab => \columnas~combout\(3),
	datac => \columnas~combout\(1),
	datad => \columnas~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|pulso~1_combout\);

-- Location: LC_X6_Y4_N9
\inst2|dato~22\ : maxii_lcell
-- Equation(s):
-- \inst2|dato~22_combout\ = (\inst2|Equal8~0_combout\ & ((\inst2|Equal4~0_combout\) # ((\inst2|Equal5~0_combout\ & \inst2|Equal9~0_combout\)))) # (!\inst2|Equal8~0_combout\ & (\inst2|Equal5~0_combout\ & (\inst2|Equal9~0_combout\)))

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
	dataa => \inst2|Equal8~0_combout\,
	datab => \inst2|Equal5~0_combout\,
	datac => \inst2|Equal9~0_combout\,
	datad => \inst2|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato~22_combout\);

-- Location: LC_X6_Y4_N6
\inst2|dato~23\ : maxii_lcell
-- Equation(s):
-- \inst2|dato~23_combout\ = (\inst2|dato~22_combout\) # ((\inst2|Equal4~0_combout\ & (!\inst2|Equal7~0_combout\ & !\inst2|pulso~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal4~0_combout\,
	datab => \inst2|Equal7~0_combout\,
	datac => \inst2|pulso~1_combout\,
	datad => \inst2|dato~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato~23_combout\);

-- Location: LC_X4_Y3_N0
\inst2|dato~41\ : maxii_lcell
-- Equation(s):
-- \inst2|dato~41_combout\ = (((\inst2|Equal7~0_combout\ & \inst2|Equal9~0_combout\)))

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
	datac => \inst2|Equal7~0_combout\,
	datad => \inst2|Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato~41_combout\);

-- Location: LC_X4_Y3_N3
\inst2|dato[2]~42\ : maxii_lcell
-- Equation(s):
-- \inst2|dato[2]~42_combout\ = (((!\inst2|Equal9~0_combout\) # (!\inst2|Equal6~0_combout\)))

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
	datac => \inst2|Equal6~0_combout\,
	datad => \inst2|Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato[2]~42_combout\);

-- Location: LC_X6_Y4_N0
\inst2|dato[3]~24\ : maxii_lcell
-- Equation(s):
-- \inst2|dato[3]~24_combout\ = (\inst2|dato[3]~20_combout\ & ((\inst2|dato~23_combout\) # ((\inst2|dato~41_combout\) # (!\inst2|dato[2]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dato~23_combout\,
	datab => \inst2|dato[3]~20_combout\,
	datac => \inst2|dato~41_combout\,
	datad => \inst2|dato[2]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato[3]~24_combout\);

-- Location: LC_X6_Y4_N1
\inst2|dato[3]~26\ : maxii_lcell
-- Equation(s):
-- \inst2|dato[3]~26_combout\ = (\inst2|dato[2]~19_combout\ & ((\inst2|dato[3]~21_combout\) # ((!\inst2|dato~25_combout\ & \inst2|dato[3]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dato~25_combout\,
	datab => \inst2|dato[3]~21_combout\,
	datac => \inst2|dato[2]~19_combout\,
	datad => \inst2|dato[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato[3]~26_combout\);

-- Location: LC_X5_Y4_N1
\inst2|dato~30\ : maxii_lcell
-- Equation(s):
-- \inst2|dato~30_combout\ = (\inst2|Equal5~0_combout\ & (((\inst2|Equal11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal5~0_combout\,
	datad => \inst2|Equal11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato~30_combout\);

-- Location: LC_X6_Y3_N5
\inst2|dato[2]~29\ : maxii_lcell
-- Equation(s):
-- \inst2|dato[2]~29_combout\ = ((\inst2|dato~25_combout\ & ((!\inst2|Equal10~0_combout\) # (!\inst2|Equal5~0_combout\)))) # (!\inst2|dato[3]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal5~0_combout\,
	datab => \inst2|Equal10~0_combout\,
	datac => \inst2|dato[3]~20_combout\,
	datad => \inst2|dato~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato[2]~29_combout\);

-- Location: LC_X4_Y3_N8
\inst2|dato~27\ : maxii_lcell
-- Equation(s):
-- \inst2|dato~27_combout\ = (((\inst2|Equal5~0_combout\ & \inst2|Equal10~0_combout\)))

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
	datac => \inst2|Equal5~0_combout\,
	datad => \inst2|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato~27_combout\);

-- Location: LC_X6_Y4_N4
\inst2|dato[2]~28\ : maxii_lcell
-- Equation(s):
-- \inst2|dato[2]~28_combout\ = (\inst2|dato~23_combout\ & (\inst2|dato[2]~42_combout\ & (!\inst2|dato~41_combout\ & !\inst2|dato~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dato~23_combout\,
	datab => \inst2|dato[2]~42_combout\,
	datac => \inst2|dato~41_combout\,
	datad => \inst2|dato~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato[2]~28_combout\);

-- Location: LC_X6_Y4_N5
\inst2|dato[2]~31\ : maxii_lcell
-- Equation(s):
-- \inst2|dato[2]~31_combout\ = (!\inst2|dato~30_combout\ & (\inst2|dato[2]~19_combout\ & ((\inst2|dato[2]~29_combout\) # (\inst2|dato[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dato~30_combout\,
	datab => \inst2|dato[2]~29_combout\,
	datac => \inst2|dato[2]~19_combout\,
	datad => \inst2|dato[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato[2]~31_combout\);

-- Location: LC_X4_Y3_N9
\inst2|dato[1]~33\ : maxii_lcell
-- Equation(s):
-- \inst2|dato[1]~33_combout\ = (\inst2|Equal10~0_combout\ & (((!\inst2|Equal8~0_combout\ & !\inst2|Equal7~0_combout\)))) # (!\inst2|Equal10~0_combout\ & (((!\inst2|Equal8~0_combout\)) # (!\inst2|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "131f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal11~0_combout\,
	datab => \inst2|Equal10~0_combout\,
	datac => \inst2|Equal8~0_combout\,
	datad => \inst2|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato[1]~33_combout\);

-- Location: LC_X7_Y1_N2
\inst2|dato[1]~34\ : maxii_lcell
-- Equation(s):
-- \inst2|dato[1]~34_combout\ = (!\columnas~combout\(3) & ((\columnas~combout\(0) & (!\columnas~combout\(1) & !\columnas~combout\(2))) # (!\columnas~combout\(0) & (\columnas~combout\(1) $ (\columnas~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0016",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \columnas~combout\(0),
	datab => \columnas~combout\(1),
	datac => \columnas~combout\(2),
	datad => \columnas~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato[1]~34_combout\);

-- Location: LC_X4_Y3_N1
\inst2|dato[1]~32\ : maxii_lcell
-- Equation(s):
-- \inst2|dato[1]~32_combout\ = (\inst2|Equal8~0_combout\ & (((\inst2|Equal9~0_combout\) # (\inst2|Equal4~0_combout\)))) # (!\inst2|Equal8~0_combout\ & (\inst2|Equal6~0_combout\ & ((\inst2|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal6~0_combout\,
	datab => \inst2|Equal9~0_combout\,
	datac => \inst2|Equal8~0_combout\,
	datad => \inst2|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato[1]~32_combout\);

-- Location: LC_X4_Y3_N2
\inst2|dato[1]~40\ : maxii_lcell
-- Equation(s):
-- \inst2|dato[1]~40_combout\ = (\inst2|dato[1]~32_combout\) # ((\inst2|Equal10~0_combout\ & ((\inst2|Equal6~0_combout\) # (\inst2|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffe0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal6~0_combout\,
	datab => \inst2|Equal5~0_combout\,
	datac => \inst2|Equal10~0_combout\,
	datad => \inst2|dato[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato[1]~40_combout\);

-- Location: LC_X4_Y3_N6
\inst2|dato[1]~35\ : maxii_lcell
-- Equation(s):
-- \inst2|dato[1]~35_combout\ = (\inst2|Equal11~0_combout\ & ((\inst2|dato[1]~34_combout\) # ((\inst2|dato[1]~33_combout\ & \inst2|dato[1]~40_combout\)))) # (!\inst2|Equal11~0_combout\ & (\inst2|dato[1]~33_combout\ & ((\inst2|dato[1]~40_combout\))))

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
	dataa => \inst2|Equal11~0_combout\,
	datab => \inst2|dato[1]~33_combout\,
	datac => \inst2|dato[1]~34_combout\,
	datad => \inst2|dato[1]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato[1]~35_combout\);

-- Location: LC_X5_Y4_N7
\inst2|dato[0]~36\ : maxii_lcell
-- Equation(s):
-- \inst2|dato[0]~36_combout\ = ((\inst2|Equal8~0_combout\ & (\inst2|Equal10~0_combout\ & !\inst2|Equal11~0_combout\)) # (!\inst2|Equal8~0_combout\ & ((\inst2|Equal11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal8~0_combout\,
	datac => \inst2|Equal10~0_combout\,
	datad => \inst2|Equal11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato[0]~36_combout\);

-- Location: LC_X6_Y3_N1
\inst2|dato[0]~37\ : maxii_lcell
-- Equation(s):
-- \inst2|dato[0]~37_combout\ = ((\inst2|Equal7~0_combout\) # ((\inst2|Equal5~0_combout\ & !\inst2|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal5~0_combout\,
	datac => \inst2|Equal7~0_combout\,
	datad => \inst2|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato[0]~37_combout\);

-- Location: LC_X6_Y3_N6
\inst2|dato[0]~38\ : maxii_lcell
-- Equation(s):
-- \inst2|dato[0]~38_combout\ = (\inst2|Equal8~0_combout\ & ((\inst2|Equal10~0_combout\) # ((\inst2|Equal11~0_combout\)))) # (!\inst2|Equal8~0_combout\ & (\inst2|dato[0]~37_combout\ & ((\inst2|Equal10~0_combout\) # (\inst2|Equal11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fca8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal8~0_combout\,
	datab => \inst2|Equal10~0_combout\,
	datac => \inst2|Equal11~0_combout\,
	datad => \inst2|dato[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato[0]~38_combout\);

-- Location: LC_X7_Y1_N5
\inst2|dato[0]~44\ : maxii_lcell
-- Equation(s):
-- \inst2|dato[0]~44_combout\ = (\inst2|dec_filas\(2) & (!\columnas~combout\(0) & (\columnas~combout\(1) $ (\columnas~combout\(3))))) # (!\inst2|dec_filas\(2) & (!\columnas~combout\(1) & (\columnas~combout\(0) $ (\columnas~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1142",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \columnas~combout\(0),
	datab => \columnas~combout\(1),
	datac => \inst2|dec_filas\(2),
	datad => \columnas~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato[0]~44_combout\);

-- Location: LC_X6_Y3_N2
\inst2|dato[0]~45\ : maxii_lcell
-- Equation(s):
-- \inst2|dato[0]~45_combout\ = (\inst2|dato[0]~44_combout\ & ((\inst2|dec_filas\(2) & (!\inst2|dec_filas\(3) & !\columnas~combout\(0))) # (!\inst2|dec_filas\(2) & (\inst2|dec_filas\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4600",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dec_filas\(2),
	datab => \inst2|dec_filas\(3),
	datac => \columnas~combout\(0),
	datad => \inst2|dato[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato[0]~45_combout\);

-- Location: LC_X6_Y3_N3
\inst2|dato[0]~43\ : maxii_lcell
-- Equation(s):
-- \inst2|dato[0]~43_combout\ = (!\inst2|dec_filas\(0) & (!\inst2|dec_filas\(1) & (!\columnas~combout\(2) & \inst2|dato[0]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dec_filas\(0),
	datab => \inst2|dec_filas\(1),
	datac => \columnas~combout\(2),
	datad => \inst2|dato[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato[0]~43_combout\);

-- Location: LC_X6_Y3_N0
\inst2|dato[0]~39\ : maxii_lcell
-- Equation(s):
-- \inst2|dato[0]~39_combout\ = (\inst2|dato[0]~38_combout\ & (((!\inst2|dato[0]~36_combout\)))) # (!\inst2|dato[0]~38_combout\ & ((\inst2|dato[0]~43_combout\) # ((\inst2|Equal6~0_combout\ & \inst2|dato[0]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f38",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal6~0_combout\,
	datab => \inst2|dato[0]~36_combout\,
	datac => \inst2|dato[0]~38_combout\,
	datad => \inst2|dato[0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|dato[0]~39_combout\);

-- Location: LC_X2_Y2_N2
\inst|count[0]\ : maxii_lcell
-- Equation(s):
-- \inst|count\(0) = DFFEAS(((!\inst|count\(0))), GLOBAL(\clk~combout\), VCC, , , , , \inst|LessThan0~3_combout\, )
-- \inst|count[0]~31\ = CARRY(((\inst|count\(0))))
-- \inst|count[0]~31COUT1_46\ = CARRY(((\inst|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \inst|count\(0),
	aclr => GND,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(0),
	cout0 => \inst|count[0]~31\,
	cout1 => \inst|count[0]~31COUT1_46\);

-- Location: LC_X2_Y2_N3
\inst|count[1]\ : maxii_lcell
-- Equation(s):
-- \inst|count\(1) = DFFEAS(\inst|count\(1) $ ((((\inst|count[0]~31\)))), GLOBAL(\clk~combout\), VCC, , , , , \inst|LessThan0~3_combout\, )
-- \inst|count[1]~29\ = CARRY(((!\inst|count[0]~31\)) # (!\inst|count\(1)))
-- \inst|count[1]~29COUT1_48\ = CARRY(((!\inst|count[0]~31COUT1_46\)) # (!\inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst|count\(1),
	aclr => GND,
	sclr => \inst|LessThan0~3_combout\,
	cin0 => \inst|count[0]~31\,
	cin1 => \inst|count[0]~31COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(1),
	cout0 => \inst|count[1]~29\,
	cout1 => \inst|count[1]~29COUT1_48\);

-- Location: LC_X2_Y2_N4
\inst|count[2]\ : maxii_lcell
-- Equation(s):
-- \inst|count\(2) = DFFEAS(\inst|count\(2) $ ((((!\inst|count[1]~29\)))), GLOBAL(\clk~combout\), VCC, , , , , \inst|LessThan0~3_combout\, )
-- \inst|count[2]~27\ = CARRY((\inst|count\(2) & ((!\inst|count[1]~29COUT1_48\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst|count\(2),
	aclr => GND,
	sclr => \inst|LessThan0~3_combout\,
	cin0 => \inst|count[1]~29\,
	cin1 => \inst|count[1]~29COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(2),
	cout => \inst|count[2]~27\);

-- Location: LC_X2_Y2_N5
\inst|count[3]\ : maxii_lcell
-- Equation(s):
-- \inst|count\(3) = DFFEAS(\inst|count\(3) $ ((((\inst|count[2]~27\)))), GLOBAL(\clk~combout\), VCC, , , , , \inst|LessThan0~3_combout\, )
-- \inst|count[3]~25\ = CARRY(((!\inst|count[2]~27\)) # (!\inst|count\(3)))
-- \inst|count[3]~25COUT1_50\ = CARRY(((!\inst|count[2]~27\)) # (!\inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst|count\(3),
	aclr => GND,
	sclr => \inst|LessThan0~3_combout\,
	cin => \inst|count[2]~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(3),
	cout0 => \inst|count[3]~25\,
	cout1 => \inst|count[3]~25COUT1_50\);

-- Location: LC_X2_Y2_N6
\inst|count[4]\ : maxii_lcell
-- Equation(s):
-- \inst|count\(4) = DFFEAS((\inst|count\(4) $ ((!(!\inst|count[2]~27\ & \inst|count[3]~25\) # (\inst|count[2]~27\ & \inst|count[3]~25COUT1_50\)))), GLOBAL(\clk~combout\), VCC, , , , , \inst|LessThan0~3_combout\, )
-- \inst|count[4]~1\ = CARRY(((\inst|count\(4) & !\inst|count[3]~25\)))
-- \inst|count[4]~1COUT1_52\ = CARRY(((\inst|count\(4) & !\inst|count[3]~25COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \inst|count\(4),
	aclr => GND,
	sclr => \inst|LessThan0~3_combout\,
	cin => \inst|count[2]~27\,
	cin0 => \inst|count[3]~25\,
	cin1 => \inst|count[3]~25COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(4),
	cout0 => \inst|count[4]~1\,
	cout1 => \inst|count[4]~1COUT1_52\);

-- Location: LC_X2_Y2_N7
\inst|count[5]\ : maxii_lcell
-- Equation(s):
-- \inst|count\(5) = DFFEAS(\inst|count\(5) $ (((((!\inst|count[2]~27\ & \inst|count[4]~1\) # (\inst|count[2]~27\ & \inst|count[4]~1COUT1_52\))))), GLOBAL(\clk~combout\), VCC, , , , , \inst|LessThan0~3_combout\, )
-- \inst|count[5]~3\ = CARRY(((!\inst|count[4]~1\)) # (!\inst|count\(5)))
-- \inst|count[5]~3COUT1_54\ = CARRY(((!\inst|count[4]~1COUT1_52\)) # (!\inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst|count\(5),
	aclr => GND,
	sclr => \inst|LessThan0~3_combout\,
	cin => \inst|count[2]~27\,
	cin0 => \inst|count[4]~1\,
	cin1 => \inst|count[4]~1COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(5),
	cout0 => \inst|count[5]~3\,
	cout1 => \inst|count[5]~3COUT1_54\);

-- Location: LC_X2_Y2_N8
\inst|count[6]\ : maxii_lcell
-- Equation(s):
-- \inst|count\(6) = DFFEAS(\inst|count\(6) $ ((((!(!\inst|count[2]~27\ & \inst|count[5]~3\) # (\inst|count[2]~27\ & \inst|count[5]~3COUT1_54\))))), GLOBAL(\clk~combout\), VCC, , , , , \inst|LessThan0~3_combout\, )
-- \inst|count[6]~5\ = CARRY((\inst|count\(6) & ((!\inst|count[5]~3\))))
-- \inst|count[6]~5COUT1_56\ = CARRY((\inst|count\(6) & ((!\inst|count[5]~3COUT1_54\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst|count\(6),
	aclr => GND,
	sclr => \inst|LessThan0~3_combout\,
	cin => \inst|count[2]~27\,
	cin0 => \inst|count[5]~3\,
	cin1 => \inst|count[5]~3COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(6),
	cout0 => \inst|count[6]~5\,
	cout1 => \inst|count[6]~5COUT1_56\);

-- Location: LC_X2_Y2_N9
\inst|count[7]\ : maxii_lcell
-- Equation(s):
-- \inst|count\(7) = DFFEAS((\inst|count\(7) $ (((!\inst|count[2]~27\ & \inst|count[6]~5\) # (\inst|count[2]~27\ & \inst|count[6]~5COUT1_56\)))), GLOBAL(\clk~combout\), VCC, , , , , \inst|LessThan0~3_combout\, )
-- \inst|count[7]~7\ = CARRY(((!\inst|count[6]~5COUT1_56\) # (!\inst|count\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \inst|count\(7),
	aclr => GND,
	sclr => \inst|LessThan0~3_combout\,
	cin => \inst|count[2]~27\,
	cin0 => \inst|count[6]~5\,
	cin1 => \inst|count[6]~5COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(7),
	cout => \inst|count[7]~7\);

-- Location: LC_X3_Y2_N0
\inst|count[8]\ : maxii_lcell
-- Equation(s):
-- \inst|count\(8) = DFFEAS((\inst|count\(8) $ ((!\inst|count[7]~7\))), GLOBAL(\clk~combout\), VCC, , , , , \inst|LessThan0~3_combout\, )
-- \inst|count[8]~9\ = CARRY(((\inst|count\(8) & !\inst|count[7]~7\)))
-- \inst|count[8]~9COUT1_58\ = CARRY(((\inst|count\(8) & !\inst|count[7]~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \inst|count\(8),
	aclr => GND,
	sclr => \inst|LessThan0~3_combout\,
	cin => \inst|count[7]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(8),
	cout0 => \inst|count[8]~9\,
	cout1 => \inst|count[8]~9COUT1_58\);

-- Location: LC_X3_Y2_N1
\inst|count[9]\ : maxii_lcell
-- Equation(s):
-- \inst|count\(9) = DFFEAS((\inst|count\(9) $ (((!\inst|count[7]~7\ & \inst|count[8]~9\) # (\inst|count[7]~7\ & \inst|count[8]~9COUT1_58\)))), GLOBAL(\clk~combout\), VCC, , , , , \inst|LessThan0~3_combout\, )
-- \inst|count[9]~11\ = CARRY(((!\inst|count[8]~9\) # (!\inst|count\(9))))
-- \inst|count[9]~11COUT1_60\ = CARRY(((!\inst|count[8]~9COUT1_58\) # (!\inst|count\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \inst|count\(9),
	aclr => GND,
	sclr => \inst|LessThan0~3_combout\,
	cin => \inst|count[7]~7\,
	cin0 => \inst|count[8]~9\,
	cin1 => \inst|count[8]~9COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(9),
	cout0 => \inst|count[9]~11\,
	cout1 => \inst|count[9]~11COUT1_60\);

-- Location: LC_X3_Y2_N2
\inst|count[10]\ : maxii_lcell
-- Equation(s):
-- \inst|count\(10) = DFFEAS((\inst|count\(10) $ ((!(!\inst|count[7]~7\ & \inst|count[9]~11\) # (\inst|count[7]~7\ & \inst|count[9]~11COUT1_60\)))), GLOBAL(\clk~combout\), VCC, , , , , \inst|LessThan0~3_combout\, )
-- \inst|count[10]~13\ = CARRY(((\inst|count\(10) & !\inst|count[9]~11\)))
-- \inst|count[10]~13COUT1_62\ = CARRY(((\inst|count\(10) & !\inst|count[9]~11COUT1_60\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \inst|count\(10),
	aclr => GND,
	sclr => \inst|LessThan0~3_combout\,
	cin => \inst|count[7]~7\,
	cin0 => \inst|count[9]~11\,
	cin1 => \inst|count[9]~11COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(10),
	cout0 => \inst|count[10]~13\,
	cout1 => \inst|count[10]~13COUT1_62\);

-- Location: LC_X3_Y2_N3
\inst|count[11]\ : maxii_lcell
-- Equation(s):
-- \inst|count\(11) = DFFEAS(\inst|count\(11) $ (((((!\inst|count[7]~7\ & \inst|count[10]~13\) # (\inst|count[7]~7\ & \inst|count[10]~13COUT1_62\))))), GLOBAL(\clk~combout\), VCC, , , , , \inst|LessThan0~3_combout\, )
-- \inst|count[11]~15\ = CARRY(((!\inst|count[10]~13\)) # (!\inst|count\(11)))
-- \inst|count[11]~15COUT1_64\ = CARRY(((!\inst|count[10]~13COUT1_62\)) # (!\inst|count\(11)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst|count\(11),
	aclr => GND,
	sclr => \inst|LessThan0~3_combout\,
	cin => \inst|count[7]~7\,
	cin0 => \inst|count[10]~13\,
	cin1 => \inst|count[10]~13COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(11),
	cout0 => \inst|count[11]~15\,
	cout1 => \inst|count[11]~15COUT1_64\);

-- Location: LC_X3_Y2_N4
\inst|count[12]\ : maxii_lcell
-- Equation(s):
-- \inst|count\(12) = DFFEAS(\inst|count\(12) $ ((((!(!\inst|count[7]~7\ & \inst|count[11]~15\) # (\inst|count[7]~7\ & \inst|count[11]~15COUT1_64\))))), GLOBAL(\clk~combout\), VCC, , , , , \inst|LessThan0~3_combout\, )
-- \inst|count[12]~17\ = CARRY((\inst|count\(12) & ((!\inst|count[11]~15COUT1_64\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst|count\(12),
	aclr => GND,
	sclr => \inst|LessThan0~3_combout\,
	cin => \inst|count[7]~7\,
	cin0 => \inst|count[11]~15\,
	cin1 => \inst|count[11]~15COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(12),
	cout => \inst|count[12]~17\);

-- Location: LC_X3_Y2_N5
\inst|count[13]\ : maxii_lcell
-- Equation(s):
-- \inst|count\(13) = DFFEAS(\inst|count\(13) $ ((((\inst|count[12]~17\)))), GLOBAL(\clk~combout\), VCC, , , , , \inst|LessThan0~3_combout\, )
-- \inst|count[13]~19\ = CARRY(((!\inst|count[12]~17\)) # (!\inst|count\(13)))
-- \inst|count[13]~19COUT1_66\ = CARRY(((!\inst|count[12]~17\)) # (!\inst|count\(13)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst|count\(13),
	aclr => GND,
	sclr => \inst|LessThan0~3_combout\,
	cin => \inst|count[12]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(13),
	cout0 => \inst|count[13]~19\,
	cout1 => \inst|count[13]~19COUT1_66\);

-- Location: LC_X3_Y2_N6
\inst|count[14]\ : maxii_lcell
-- Equation(s):
-- \inst|count\(14) = DFFEAS(\inst|count\(14) $ ((((!(!\inst|count[12]~17\ & \inst|count[13]~19\) # (\inst|count[12]~17\ & \inst|count[13]~19COUT1_66\))))), GLOBAL(\clk~combout\), VCC, , , , , \inst|LessThan0~3_combout\, )
-- \inst|count[14]~21\ = CARRY((\inst|count\(14) & ((!\inst|count[13]~19\))))
-- \inst|count[14]~21COUT1_68\ = CARRY((\inst|count\(14) & ((!\inst|count[13]~19COUT1_66\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst|count\(14),
	aclr => GND,
	sclr => \inst|LessThan0~3_combout\,
	cin => \inst|count[12]~17\,
	cin0 => \inst|count[13]~19\,
	cin1 => \inst|count[13]~19COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(14),
	cout0 => \inst|count[14]~21\,
	cout1 => \inst|count[14]~21COUT1_68\);

-- Location: LC_X3_Y2_N7
\inst|count[15]\ : maxii_lcell
-- Equation(s):
-- \inst|count\(15) = DFFEAS((\inst|count\(15) $ (((!\inst|count[12]~17\ & \inst|count[14]~21\) # (\inst|count[12]~17\ & \inst|count[14]~21COUT1_68\)))), GLOBAL(\clk~combout\), VCC, , , , , \inst|LessThan0~3_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \inst|count\(15),
	aclr => GND,
	sclr => \inst|LessThan0~3_combout\,
	cin => \inst|count[12]~17\,
	cin0 => \inst|count[14]~21\,
	cin1 => \inst|count[14]~21COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(15));

-- Location: LC_X3_Y2_N9
\inst|LessThan0~2\ : maxii_lcell
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (!\inst|count\(13) & (!\inst|count\(10) & (!\inst|count\(12) & !\inst|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(13),
	datab => \inst|count\(10),
	datac => \inst|count\(12),
	datad => \inst|count\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|LessThan0~2_combout\);

-- Location: LC_X2_Y2_N1
\inst|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (((!\inst|count\(5) & !\inst|count\(4))) # (!\inst|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(5),
	datac => \inst|count\(4),
	datad => \inst|count\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|LessThan0~0_combout\);

-- Location: LC_X3_Y2_N8
\inst|LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (((!\inst|count\(7) & \inst|LessThan0~0_combout\)) # (!\inst|count\(8))) # (!\inst|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "73ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(7),
	datab => \inst|count\(9),
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|count\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|LessThan0~1_combout\);

-- Location: LC_X2_Y2_N0
\inst|LessThan0~3\ : maxii_lcell
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|count\(15) & (\inst|count\(14) & ((!\inst|LessThan0~1_combout\) # (!\inst|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(15),
	datab => \inst|LessThan0~2_combout\,
	datac => \inst|count\(14),
	datad => \inst|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|LessThan0~3_combout\);

-- Location: LC_X3_Y3_N2
\inst|clk_state\ : maxii_lcell
-- Equation(s):
-- \inst|clk_state~regout\ = DFFEAS((\inst|clk_state~regout\ $ (((\inst|LessThan0~3_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \inst|clk_state~regout\,
	datad => \inst|LessThan0~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|clk_state~regout\);

-- Location: LC_X2_Y4_N6
\inst2|filas[3]\ : maxii_lcell
-- Equation(s):
-- \inst2|filas\(3) = DFFEAS(GND, !GLOBAL(\inst|clk_state~regout\), VCC, , , \inst2|Equal2~0\, , , VCC)

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
	clk => \inst|ALT_INV_clk_state~regout\,
	datac => \inst2|Equal2~0\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|filas\(3));

-- Location: LC_X4_Y4_N1
\inst2|filas[2]\ : maxii_lcell
-- Equation(s):
-- \inst2|filas\(2) = DFFEAS((((\inst2|Equal2~2\))), !GLOBAL(\inst|clk_state~regout\), VCC, , , , , , )

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
	clk => \inst|ALT_INV_clk_state~regout\,
	datad => \inst2|Equal2~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|filas\(2));

-- Location: LC_X4_Y4_N0
\inst2|filas[1]\ : maxii_lcell
-- Equation(s):
-- \inst2|filas\(1) = DFFEAS((((\inst2|Equal2~1\))), !GLOBAL(\inst|clk_state~regout\), VCC, , , , , , )

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
	clk => \inst|ALT_INV_clk_state~regout\,
	datad => \inst2|Equal2~1\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|filas\(1));

-- Location: LC_X4_Y4_N7
\inst2|filas[0]\ : maxii_lcell
-- Equation(s):
-- \inst2|filas\(0) = DFFEAS((((!\inst2|Equal0~0_combout\))), !GLOBAL(\inst|clk_state~regout\), VCC, , , , , , )

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
	clk => \inst|ALT_INV_clk_state~regout\,
	datac => \inst2|Equal0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|filas\(0));

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pulso~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|pulso~0_combout\,
	oe => VCC,
	padio => ww_pulso);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dato[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|dato[3]~26_combout\,
	oe => VCC,
	padio => ww_dato(3));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dato[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|dato[2]~31_combout\,
	oe => VCC,
	padio => ww_dato(2));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dato[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|dato[1]~35_combout\,
	oe => VCC,
	padio => ww_dato(1));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dato[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|dato[0]~39_combout\,
	oe => VCC,
	padio => ww_dato(0));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\filas[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|filas\(3),
	oe => VCC,
	padio => ww_filas(3));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\filas[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|filas\(2),
	oe => VCC,
	padio => ww_filas(2));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\filas[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|filas\(1),
	oe => VCC,
	padio => ww_filas(1));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\filas[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|filas\(0),
	oe => VCC,
	padio => ww_filas(0));
END structure;


