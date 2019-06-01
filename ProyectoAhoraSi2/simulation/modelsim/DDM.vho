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

-- DATE "05/31/2019 19:35:17"

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
	dato : OUT std_logic;
	clk : IN std_logic;
	fila : IN std_logic_vector(3 DOWNTO 0);
	salidaMagna : OUT std_logic;
	magna : IN std_logic;
	premium : IN std_logic;
	salidaPremium : OUT std_logic;
	columna : OUT std_logic_vector(3 DOWNTO 0);
	data : OUT std_logic_vector(3 DOWNTO 0);
	debug : OUT std_logic_vector(3 DOWNTO 0)
	);
END DDM;

-- Design Ports Information
-- fila[0]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fila[1]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fila[2]	=>  Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fila[3]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- magna	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- premium	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dato	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- salidaMagna	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- salidaPremium	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- columna[3]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- columna[2]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- columna[1]	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- columna[0]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data[3]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data[2]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data[1]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data[0]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- debug[3]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- debug[2]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- debug[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- debug[0]	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA

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
SIGNAL ww_dato : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_fila : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_salidaMagna : std_logic;
SIGNAL ww_magna : std_logic;
SIGNAL ww_premium : std_logic;
SIGNAL ww_salidaPremium : std_logic;
SIGNAL ww_columna : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_data : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|clk_state~regout\ : std_logic;
SIGNAL \inst|count[4]~1\ : std_logic;
SIGNAL \inst|count[4]~1COUT1_52\ : std_logic;
SIGNAL \inst|count[5]~3\ : std_logic;
SIGNAL \inst|count[5]~3COUT1_54\ : std_logic;
SIGNAL \inst|count[6]~5\ : std_logic;
SIGNAL \inst|count[6]~5COUT1_56\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|count[7]~7\ : std_logic;
SIGNAL \inst|count[8]~9\ : std_logic;
SIGNAL \inst|count[8]~9COUT1_58\ : std_logic;
SIGNAL \inst|count[9]~11\ : std_logic;
SIGNAL \inst|count[9]~11COUT1_60\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|count[10]~13\ : std_logic;
SIGNAL \inst|count[10]~13COUT1_62\ : std_logic;
SIGNAL \inst|count[11]~15\ : std_logic;
SIGNAL \inst|count[11]~15COUT1_64\ : std_logic;
SIGNAL \inst|count[12]~17\ : std_logic;
SIGNAL \inst|count[13]~19\ : std_logic;
SIGNAL \inst|count[13]~19COUT1_66\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|count[14]~21\ : std_logic;
SIGNAL \inst|count[14]~21COUT1_68\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|count[3]~25\ : std_logic;
SIGNAL \inst|count[3]~25COUT1_50\ : std_logic;
SIGNAL \inst|count[2]~27\ : std_logic;
SIGNAL \inst|count[1]~29\ : std_logic;
SIGNAL \inst|count[1]~29COUT1_48\ : std_logic;
SIGNAL \inst|count[0]~31\ : std_logic;
SIGNAL \inst|count[0]~31COUT1_46\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \inst8|Mux4~0_combout\ : std_logic;
SIGNAL \inst8|pr_state.s1~regout\ : std_logic;
SIGNAL \inst8|pr_state.s2~regout\ : std_logic;
SIGNAL \inst8|pr_state.s3~regout\ : std_logic;
SIGNAL \inst8|pr_state.s0~regout\ : std_logic;
SIGNAL \inst8|Selector7~0\ : std_logic;
SIGNAL \inst8|Mux2~0_combout\ : std_logic;
SIGNAL \inst8|Mux3~0_combout\ : std_logic;
SIGNAL \inst8|Mux3~1_combout\ : std_logic;
SIGNAL \inst8|Selector6~0\ : std_logic;
SIGNAL \inst17|estado_sig~4_combout\ : std_logic;
SIGNAL \inst17|process_1~4_combout\ : std_logic;
SIGNAL \inst8|Mux2~1_combout\ : std_logic;
SIGNAL \inst17|process_1~2_combout\ : std_logic;
SIGNAL \inst17|Equal10~2_combout\ : std_logic;
SIGNAL \inst17|estado_sig~3_combout\ : std_logic;
SIGNAL \inst17|Equal10~1_combout\ : std_logic;
SIGNAL \inst17|estado_pr.S5~regout\ : std_logic;
SIGNAL \inst17|Selector0~1_combout\ : std_logic;
SIGNAL \inst17|Equal10~3_combout\ : std_logic;
SIGNAL \inst17|Selector0~2_combout\ : std_logic;
SIGNAL \inst17|process_1~3_combout\ : std_logic;
SIGNAL \inst17|Selector0~0_combout\ : std_logic;
SIGNAL \inst17|estado_pr.S0~regout\ : std_logic;
SIGNAL \inst17|estado_pr.S1~regout\ : std_logic;
SIGNAL \inst17|Selector2~0_combout\ : std_logic;
SIGNAL \inst17|estado_pr.S2~regout\ : std_logic;
SIGNAL \inst17|estado_sig~2_combout\ : std_logic;
SIGNAL \inst17|estado_pr.S3~regout\ : std_logic;
SIGNAL \inst17|Selector5~0_combout\ : std_logic;
SIGNAL \inst17|Selector4~0_combout\ : std_logic;
SIGNAL \inst17|estado_pr.S4~regout\ : std_logic;
SIGNAL \inst17|Equal10~0_combout\ : std_logic;
SIGNAL \inst17|estado_pr.S6~regout\ : std_logic;
SIGNAL \inst17|estado_pr.S8~regout\ : std_logic;
SIGNAL \magna~combout\ : std_logic;
SIGNAL \inst17|bombaMagna~0_combout\ : std_logic;
SIGNAL \inst17|estado_pr.S9~regout\ : std_logic;
SIGNAL \inst17|estado_pr.S7~regout\ : std_logic;
SIGNAL \premium~combout\ : std_logic;
SIGNAL \inst17|bombaPremium~0_combout\ : std_logic;
SIGNAL \inst17|WideOr0~combout\ : std_logic;
SIGNAL \inst17|WideOr1~combout\ : std_logic;
SIGNAL \inst17|WideOr2~0_combout\ : std_logic;
SIGNAL \inst17|WideOr2~combout\ : std_logic;
SIGNAL \inst17|WideOr3~combout\ : std_logic;
SIGNAL \inst|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \fila~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_pr_state.s0~regout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_WideOr2~combout\ : std_logic;

BEGIN

dato <= ww_dato;
ww_clk <= clk;
ww_fila <= fila;
salidaMagna <= ww_salidaMagna;
ww_magna <= magna;
ww_premium <= premium;
salidaPremium <= ww_salidaPremium;
columna <= ww_columna;
data <= ww_data;
debug <= ww_debug;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst8|ALT_INV_Mux4~0_combout\ <= NOT \inst8|Mux4~0_combout\;
\inst8|ALT_INV_pr_state.s0~regout\ <= NOT \inst8|pr_state.s0~regout\;
\inst8|ALT_INV_Mux3~1_combout\ <= NOT \inst8|Mux3~1_combout\;
\inst17|ALT_INV_WideOr2~combout\ <= NOT \inst17|WideOr2~combout\;

-- Location: LC_X2_Y3_N2
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

-- Location: LC_X3_Y3_N6
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

-- Location: LC_X3_Y3_N7
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

-- Location: LC_X3_Y3_N8
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

-- Location: LC_X3_Y3_N1
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

-- Location: LC_X3_Y3_N9
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

-- Location: LC_X4_Y3_N0
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

-- Location: LC_X4_Y3_N1
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

-- Location: LC_X3_Y3_N0
\inst|LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (((!\inst|count\(7) & \inst|LessThan0~0_combout\)) # (!\inst|count\(8))) # (!\inst|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f5f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(9),
	datab => \inst|count\(7),
	datac => \inst|count\(8),
	datad => \inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|LessThan0~1_combout\);

-- Location: LC_X4_Y3_N2
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

-- Location: LC_X4_Y3_N3
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

-- Location: LC_X4_Y3_N4
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

-- Location: LC_X4_Y3_N5
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

-- Location: LC_X4_Y3_N9
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

-- Location: LC_X4_Y3_N6
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

-- Location: LC_X4_Y3_N7
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

-- Location: LC_X4_Y3_N8
\inst|LessThan0~3\ : maxii_lcell
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|count\(14) & (\inst|count\(15) & ((!\inst|LessThan0~1_combout\) # (!\inst|LessThan0~2_combout\))))

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
	dataa => \inst|count\(14),
	datab => \inst|LessThan0~2_combout\,
	datac => \inst|count\(15),
	datad => \inst|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|LessThan0~3_combout\);

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

-- Location: LC_X3_Y3_N5
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

-- Location: LC_X3_Y3_N4
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

-- Location: LC_X3_Y3_N3
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

-- Location: LC_X3_Y3_N2
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

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fila[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_fila(0),
	combout => \fila~combout\(0));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fila[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_fila(3),
	combout => \fila~combout\(3));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fila[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_fila(2),
	combout => \fila~combout\(2));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fila[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_fila(1),
	combout => \fila~combout\(1));

-- Location: LC_X7_Y4_N6
\inst8|Mux4~0\ : maxii_lcell
-- Equation(s):
-- \inst8|Mux4~0_combout\ = (\fila~combout\(0) & ((\fila~combout\(3)) # ((\fila~combout\(2)) # (\fila~combout\(1))))) # (!\fila~combout\(0) & ((\fila~combout\(3) & ((\fila~combout\(2)) # (\fila~combout\(1)))) # (!\fila~combout\(3) & (\fila~combout\(2) $ 
-- (!\fila~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fee9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fila~combout\(0),
	datab => \fila~combout\(3),
	datac => \fila~combout\(2),
	datad => \fila~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst8|Mux4~0_combout\);

-- Location: LC_X6_Y4_N6
\inst8|pr_state.s1\ : maxii_lcell
-- Equation(s):
-- \inst8|pr_state.s1~regout\ = DFFEAS((((!\inst8|pr_state.s0~regout\))), GLOBAL(\inst|clk_state~regout\), VCC, , \inst8|Mux4~0_combout\, , , , )

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
	clk => \inst|clk_state~regout\,
	datad => \inst8|pr_state.s0~regout\,
	aclr => GND,
	ena => \inst8|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|pr_state.s1~regout\);

-- Location: LC_X7_Y4_N9
\inst8|pr_state.s2\ : maxii_lcell
-- Equation(s):
-- \inst8|Selector7~0\ = (\inst8|pr_state.s0~regout\ & (((!C1_pr_state.s2 & !\inst8|Mux4~0_combout\))))
-- \inst8|pr_state.s2~regout\ = DFFEAS(\inst8|Selector7~0\, GLOBAL(\inst|clk_state~regout\), VCC, , \inst8|Mux4~0_combout\, \inst8|pr_state.s1~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_state~regout\,
	dataa => \inst8|pr_state.s0~regout\,
	datac => \inst8|pr_state.s1~regout\,
	datad => \inst8|Mux4~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst8|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst8|Selector7~0\,
	regout => \inst8|pr_state.s2~regout\);

-- Location: LC_X7_Y4_N7
\inst8|pr_state.s3\ : maxii_lcell
-- Equation(s):
-- \inst8|Selector6~0\ = (\inst8|pr_state.s0~regout\ & (((!C1_pr_state.s3 & !\inst8|Mux4~0_combout\))))
-- \inst8|pr_state.s3~regout\ = DFFEAS(\inst8|Selector6~0\, GLOBAL(\inst|clk_state~regout\), VCC, , \inst8|Mux4~0_combout\, \inst8|pr_state.s2~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_state~regout\,
	dataa => \inst8|pr_state.s0~regout\,
	datac => \inst8|pr_state.s2~regout\,
	datad => \inst8|Mux4~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst8|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst8|Selector6~0\,
	regout => \inst8|pr_state.s3~regout\);

-- Location: LC_X7_Y4_N5
\inst8|pr_state.s0\ : maxii_lcell
-- Equation(s):
-- \inst8|pr_state.s0~regout\ = DFFEAS((((!\inst8|pr_state.s3~regout\))), GLOBAL(\inst|clk_state~regout\), VCC, , \inst8|Mux4~0_combout\, , , , )

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
	datac => \inst8|pr_state.s3~regout\,
	aclr => GND,
	ena => \inst8|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|pr_state.s0~regout\);

-- Location: LC_X7_Y4_N0
\inst8|Mux2~0\ : maxii_lcell
-- Equation(s):
-- \inst8|Mux2~0_combout\ = (\inst8|pr_state.s0~regout\ & (!\fila~combout\(0) & (\fila~combout\(3) $ (\fila~combout\(2))))) # (!\inst8|pr_state.s0~regout\ & (!\fila~combout\(2) & (\fila~combout\(0) $ (\fila~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1046",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fila~combout\(0),
	datab => \fila~combout\(3),
	datac => \inst8|pr_state.s0~regout\,
	datad => \fila~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst8|Mux2~0_combout\);

-- Location: LC_X7_Y4_N2
\inst8|Mux3~0\ : maxii_lcell
-- Equation(s):
-- \inst8|Mux3~0_combout\ = ((\fila~combout\(2) & ((\inst8|pr_state.s0~regout\) # (!\fila~combout\(0)))) # (!\fila~combout\(2) & ((\fila~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \fila~combout\(2),
	datac => \inst8|pr_state.s0~regout\,
	datad => \fila~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst8|Mux3~0_combout\);

-- Location: LC_X7_Y4_N3
\inst8|Mux3~1\ : maxii_lcell
-- Equation(s):
-- \inst8|Mux3~1_combout\ = (\inst8|pr_state.s0~regout\ & (!\inst8|Mux3~0_combout\ & (\fila~combout\(1) $ (\fila~combout\(3))))) # (!\inst8|pr_state.s0~regout\ & (!\fila~combout\(1) & (!\fila~combout\(3) & \inst8|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0160",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fila~combout\(1),
	datab => \fila~combout\(3),
	datac => \inst8|pr_state.s0~regout\,
	datad => \inst8|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst8|Mux3~1_combout\);

-- Location: LC_X6_Y4_N9
\inst17|estado_sig~4\ : maxii_lcell
-- Equation(s):
-- \inst17|estado_sig~4_combout\ = (!\inst8|Mux3~1_combout\ & (\inst8|Selector6~0\ & ((\fila~combout\(1)) # (!\inst8|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux2~0_combout\,
	datab => \fila~combout\(1),
	datac => \inst8|Mux3~1_combout\,
	datad => \inst8|Selector6~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|estado_sig~4_combout\);

-- Location: LC_X7_Y4_N4
\inst17|process_1~4\ : maxii_lcell
-- Equation(s):
-- \inst17|process_1~4_combout\ = (\fila~combout\(1) & (((!\inst8|Selector6~0\ & \inst8|Mux3~1_combout\)))) # (!\fila~combout\(1) & ((\inst8|Mux2~0_combout\) # ((!\inst8|Selector6~0\ & \inst8|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fila~combout\(1),
	datab => \inst8|Mux2~0_combout\,
	datac => \inst8|Selector6~0\,
	datad => \inst8|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|process_1~4_combout\);

-- Location: LC_X7_Y4_N1
\inst8|Mux2~1\ : maxii_lcell
-- Equation(s):
-- \inst8|Mux2~1_combout\ = (((\fila~combout\(1)) # (!\inst8|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \fila~combout\(1),
	datad => \inst8|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst8|Mux2~1_combout\);

-- Location: LC_X6_Y4_N7
\inst17|process_1~2\ : maxii_lcell
-- Equation(s):
-- \inst17|process_1~2_combout\ = (\inst8|Mux2~1_combout\ & (((\inst8|Mux3~1_combout\ & !\inst8|Selector6~0\)))) # (!\inst8|Mux2~1_combout\ & ((\inst8|Selector7~0\) # ((\inst8|Selector6~0\) # (!\inst8|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55e5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux2~1_combout\,
	datab => \inst8|Selector7~0\,
	datac => \inst8|Mux3~1_combout\,
	datad => \inst8|Selector6~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|process_1~2_combout\);

-- Location: LC_X3_Y4_N8
\inst17|Equal10~2\ : maxii_lcell
-- Equation(s):
-- \inst17|Equal10~2_combout\ = (!\inst8|Mux3~1_combout\ & (\inst8|Selector6~0\ & (\inst8|Mux2~1_combout\ & !\inst8|Selector7~0\)))

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
	dataa => \inst8|Mux3~1_combout\,
	datab => \inst8|Selector6~0\,
	datac => \inst8|Mux2~1_combout\,
	datad => \inst8|Selector7~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|Equal10~2_combout\);

-- Location: LC_X3_Y4_N7
\inst17|estado_sig~3\ : maxii_lcell
-- Equation(s):
-- \inst17|estado_sig~3_combout\ = (\inst8|Mux2~1_combout\ & ((\inst8|Selector6~0\ & ((!\inst8|Selector7~0\))) # (!\inst8|Selector6~0\ & (!\inst8|Mux3~1_combout\ & \inst8|Selector7~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "10c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux3~1_combout\,
	datab => \inst8|Selector6~0\,
	datac => \inst8|Mux2~1_combout\,
	datad => \inst8|Selector7~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|estado_sig~3_combout\);

-- Location: LC_X6_Y4_N5
\inst17|Equal10~1\ : maxii_lcell
-- Equation(s):
-- \inst17|Equal10~1_combout\ = (\inst8|Selector7~0\ & (!\inst8|Mux3~1_combout\ & (\inst8|Mux2~1_combout\ & !\inst8|Selector6~0\)))

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
	dataa => \inst8|Selector7~0\,
	datab => \inst8|Mux3~1_combout\,
	datac => \inst8|Mux2~1_combout\,
	datad => \inst8|Selector6~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|Equal10~1_combout\);

-- Location: LC_X3_Y4_N5
\inst17|estado_pr.S5\ : maxii_lcell
-- Equation(s):
-- \inst17|estado_pr.S5~regout\ = DFFEAS((\inst17|estado_pr.S5~regout\ & (((\inst17|Equal10~2_combout\ & \inst17|Selector5~0_combout\)) # (!\inst17|estado_sig~3_combout\))) # (!\inst17|estado_pr.S5~regout\ & (\inst17|Equal10~2_combout\ & 
-- (\inst17|Selector5~0_combout\))), GLOBAL(\inst|clk_state~regout\), !GLOBAL(\inst17|Equal10~1_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_state~regout\,
	dataa => \inst17|estado_pr.S5~regout\,
	datab => \inst17|Equal10~2_combout\,
	datac => \inst17|Selector5~0_combout\,
	datad => \inst17|estado_sig~3_combout\,
	aclr => \inst17|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|estado_pr.S5~regout\);

-- Location: LC_X5_Y4_N4
\inst17|Selector0~1\ : maxii_lcell
-- Equation(s):
-- \inst17|Selector0~1_combout\ = ((!\inst17|estado_pr.S4~regout\ & (!\inst17|estado_pr.S5~regout\ & !\inst17|estado_pr.S3~regout\)))

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
	datab => \inst17|estado_pr.S4~regout\,
	datac => \inst17|estado_pr.S5~regout\,
	datad => \inst17|estado_pr.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|Selector0~1_combout\);

-- Location: LC_X2_Y4_N3
\inst17|Equal10~3\ : maxii_lcell
-- Equation(s):
-- \inst17|Equal10~3_combout\ = (!\inst8|Mux3~1_combout\ & (!\inst8|Selector7~0\ & (!\inst8|Selector6~0\ & \inst8|Mux2~1_combout\)))

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
	dataa => \inst8|Mux3~1_combout\,
	datab => \inst8|Selector7~0\,
	datac => \inst8|Selector6~0\,
	datad => \inst8|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|Equal10~3_combout\);

-- Location: LC_X2_Y4_N0
\inst17|Selector0~2\ : maxii_lcell
-- Equation(s):
-- \inst17|Selector0~2_combout\ = (\inst17|Selector0~1_combout\ & ((\inst17|process_1~4_combout\ $ (!\inst17|Equal10~3_combout\)) # (!\inst17|estado_pr.S1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a22a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Selector0~1_combout\,
	datab => \inst17|estado_pr.S1~regout\,
	datac => \inst17|process_1~4_combout\,
	datad => \inst17|Equal10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|Selector0~2_combout\);

-- Location: LC_X7_Y4_N8
\inst17|process_1~3\ : maxii_lcell
-- Equation(s):
-- \inst17|process_1~3_combout\ = (\inst8|Mux2~1_combout\ & ((\inst8|Mux3~1_combout\ & ((\inst8|Selector6~0\))) # (!\inst8|Mux3~1_combout\ & (!\inst8|Selector7~0\ & !\inst8|Selector6~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux3~1_combout\,
	datab => \inst8|Selector7~0\,
	datac => \inst8|Selector6~0\,
	datad => \inst8|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|process_1~3_combout\);

-- Location: LC_X2_Y4_N1
\inst17|Selector0~0\ : maxii_lcell
-- Equation(s):
-- \inst17|Selector0~0_combout\ = ((!\inst17|process_1~3_combout\ & (!\inst17|process_1~4_combout\ & !\inst17|estado_sig~4_combout\))) # (!\inst17|estado_pr.S2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3337",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|process_1~3_combout\,
	datab => \inst17|estado_pr.S2~regout\,
	datac => \inst17|process_1~4_combout\,
	datad => \inst17|estado_sig~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|Selector0~0_combout\);

-- Location: LC_X2_Y4_N2
\inst17|estado_pr.S0\ : maxii_lcell
-- Equation(s):
-- \inst17|estado_pr.S0~regout\ = DFFEAS((((!\inst17|estado_pr.S0~regout\ & \inst17|process_1~2_combout\)) # (!\inst17|Selector0~0_combout\)) # (!\inst17|Selector0~2_combout\), GLOBAL(\inst|clk_state~regout\), !GLOBAL(\inst17|Equal10~1_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4fff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_state~regout\,
	dataa => \inst17|estado_pr.S0~regout\,
	datab => \inst17|process_1~2_combout\,
	datac => \inst17|Selector0~2_combout\,
	datad => \inst17|Selector0~0_combout\,
	aclr => \inst17|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|estado_pr.S0~regout\);

-- Location: LC_X6_Y4_N8
\inst17|estado_pr.S1\ : maxii_lcell
-- Equation(s):
-- \inst17|estado_pr.S1~regout\ = DFFEAS((\inst17|estado_pr.S1~regout\ & ((\inst17|Equal10~3_combout\) # ((\inst17|process_1~2_combout\ & !\inst17|estado_pr.S0~regout\)))) # (!\inst17|estado_pr.S1~regout\ & (\inst17|process_1~2_combout\ & 
-- (!\inst17|estado_pr.S0~regout\))), GLOBAL(\inst|clk_state~regout\), !GLOBAL(\inst17|Equal10~1_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_state~regout\,
	dataa => \inst17|estado_pr.S1~regout\,
	datab => \inst17|process_1~2_combout\,
	datac => \inst17|estado_pr.S0~regout\,
	datad => \inst17|Equal10~3_combout\,
	aclr => \inst17|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|estado_pr.S1~regout\);

-- Location: LC_X6_Y4_N3
\inst17|Selector2~0\ : maxii_lcell
-- Equation(s):
-- \inst17|Selector2~0_combout\ = (\inst17|estado_pr.S2~regout\ & (((\inst17|process_1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|estado_pr.S2~regout\,
	datac => \inst17|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|Selector2~0_combout\);

-- Location: LC_X6_Y4_N4
\inst17|estado_pr.S2\ : maxii_lcell
-- Equation(s):
-- \inst17|estado_pr.S2~regout\ = DFFEAS((\inst17|process_1~4_combout\ & (\inst17|estado_pr.S1~regout\)) # (!\inst17|process_1~4_combout\ & (((!\inst17|estado_sig~4_combout\ & \inst17|Selector2~0_combout\)))), GLOBAL(\inst|clk_state~regout\), 
-- !GLOBAL(\inst17|Equal10~1_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a3a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_state~regout\,
	dataa => \inst17|estado_pr.S1~regout\,
	datab => \inst17|estado_sig~4_combout\,
	datac => \inst17|process_1~4_combout\,
	datad => \inst17|Selector2~0_combout\,
	aclr => \inst17|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|estado_pr.S2~regout\);

-- Location: LC_X3_Y4_N3
\inst17|estado_sig~2\ : maxii_lcell
-- Equation(s):
-- \inst17|estado_sig~2_combout\ = (\inst8|Mux2~1_combout\ & (!\inst8|Mux3~1_combout\ & ((\inst8|Selector6~0\) # (\inst8|Selector7~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux2~1_combout\,
	datab => \inst8|Selector6~0\,
	datac => \inst8|Selector7~0\,
	datad => \inst8|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|estado_sig~2_combout\);

-- Location: LC_X3_Y4_N4
\inst17|estado_pr.S3\ : maxii_lcell
-- Equation(s):
-- \inst17|estado_pr.S3~regout\ = DFFEAS((\inst17|process_1~4_combout\ & ((\inst17|estado_pr.S2~regout\) # ((\inst17|estado_pr.S3~regout\ & !\inst17|estado_sig~2_combout\)))) # (!\inst17|process_1~4_combout\ & (\inst17|estado_pr.S3~regout\ & 
-- ((!\inst17|estado_sig~2_combout\)))), GLOBAL(\inst|clk_state~regout\), !GLOBAL(\inst17|Equal10~1_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_state~regout\,
	dataa => \inst17|process_1~4_combout\,
	datab => \inst17|estado_pr.S3~regout\,
	datac => \inst17|estado_pr.S2~regout\,
	datad => \inst17|estado_sig~2_combout\,
	aclr => \inst17|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|estado_pr.S3~regout\);

-- Location: LC_X3_Y4_N6
\inst17|Selector5~0\ : maxii_lcell
-- Equation(s):
-- \inst17|Selector5~0_combout\ = (\inst17|estado_pr.S3~regout\) # (((\inst17|estado_pr.S2~regout\ & !\inst17|process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|estado_pr.S3~regout\,
	datac => \inst17|estado_pr.S2~regout\,
	datad => \inst17|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|Selector5~0_combout\);

-- Location: LC_X2_Y4_N6
\inst17|Selector4~0\ : maxii_lcell
-- Equation(s):
-- \inst17|Selector4~0_combout\ = (((\inst17|estado_pr.S4~regout\ & !\inst17|estado_sig~3_combout\)))

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
	datac => \inst17|estado_pr.S4~regout\,
	datad => \inst17|estado_sig~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|Selector4~0_combout\);

-- Location: LC_X2_Y4_N7
\inst17|estado_pr.S4\ : maxii_lcell
-- Equation(s):
-- \inst17|estado_pr.S4~regout\ = DFFEAS((\inst17|Selector4~0_combout\) # ((\inst8|Selector7~0\ & (\inst17|estado_sig~4_combout\ & \inst17|Selector5~0_combout\))), GLOBAL(\inst|clk_state~regout\), !GLOBAL(\inst17|Equal10~1_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_state~regout\,
	dataa => \inst8|Selector7~0\,
	datab => \inst17|estado_sig~4_combout\,
	datac => \inst17|Selector5~0_combout\,
	datad => \inst17|Selector4~0_combout\,
	aclr => \inst17|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|estado_pr.S4~regout\);

-- Location: LC_X6_Y4_N1
\inst17|Equal10~0\ : maxii_lcell
-- Equation(s):
-- \inst17|Equal10~0_combout\ = (!\inst8|pr_state.s3~regout\ & (\inst8|pr_state.s0~regout\ & (!\inst8|Mux4~0_combout\ & \inst8|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|pr_state.s3~regout\,
	datab => \inst8|pr_state.s0~regout\,
	datac => \inst8|Mux4~0_combout\,
	datad => \inst8|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|Equal10~0_combout\);

-- Location: LC_X3_Y4_N2
\inst17|estado_pr.S6\ : maxii_lcell
-- Equation(s):
-- \inst17|estado_pr.S6~regout\ = DFFEAS((\inst17|estado_pr.S4~regout\ & (\inst8|Mux3~1_combout\ & (!\inst8|Selector7~0\ & \inst17|Equal10~0_combout\))), GLOBAL(\inst|clk_state~regout\), !GLOBAL(\inst17|Equal10~1_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_state~regout\,
	dataa => \inst17|estado_pr.S4~regout\,
	datab => \inst8|Mux3~1_combout\,
	datac => \inst8|Selector7~0\,
	datad => \inst17|Equal10~0_combout\,
	aclr => \inst17|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|estado_pr.S6~regout\);

-- Location: LC_X2_Y4_N4
\inst17|estado_pr.S8\ : maxii_lcell
-- Equation(s):
-- \inst17|estado_pr.S8~regout\ = DFFEAS((\inst8|Mux3~1_combout\ & (!\inst8|Selector7~0\ & (\inst17|estado_pr.S5~regout\ & \inst17|Equal10~0_combout\))), GLOBAL(\inst|clk_state~regout\), !GLOBAL(\inst17|Equal10~1_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_state~regout\,
	dataa => \inst8|Mux3~1_combout\,
	datab => \inst8|Selector7~0\,
	datac => \inst17|estado_pr.S5~regout\,
	datad => \inst17|Equal10~0_combout\,
	aclr => \inst17|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|estado_pr.S8~regout\);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\magna~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_magna,
	combout => \magna~combout\);

-- Location: LC_X3_Y4_N1
\inst17|bombaMagna~0\ : maxii_lcell
-- Equation(s):
-- \inst17|bombaMagna~0_combout\ = ((\magna~combout\ & ((\inst17|estado_pr.S6~regout\) # (\inst17|estado_pr.S8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst17|estado_pr.S6~regout\,
	datac => \inst17|estado_pr.S8~regout\,
	datad => \magna~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|bombaMagna~0_combout\);

-- Location: LC_X5_Y4_N5
\inst17|estado_pr.S9\ : maxii_lcell
-- Equation(s):
-- \inst17|estado_pr.S9~regout\ = DFFEAS((((\inst17|estado_pr.S5~regout\ & \inst17|Equal10~2_combout\))), GLOBAL(\inst|clk_state~regout\), !GLOBAL(\inst17|Equal10~1_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_state~regout\,
	datac => \inst17|estado_pr.S5~regout\,
	datad => \inst17|Equal10~2_combout\,
	aclr => \inst17|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|estado_pr.S9~regout\);

-- Location: LC_X3_Y4_N9
\inst17|estado_pr.S7\ : maxii_lcell
-- Equation(s):
-- \inst17|estado_pr.S7~regout\ = DFFEAS((\inst17|estado_pr.S4~regout\ & (((\inst17|Equal10~2_combout\)))), GLOBAL(\inst|clk_state~regout\), !GLOBAL(\inst17|Equal10~1_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_state~regout\,
	dataa => \inst17|estado_pr.S4~regout\,
	datad => \inst17|Equal10~2_combout\,
	aclr => \inst17|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|estado_pr.S7~regout\);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\premium~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_premium,
	combout => \premium~combout\);

-- Location: LC_X5_Y4_N2
\inst17|bombaPremium~0\ : maxii_lcell
-- Equation(s):
-- \inst17|bombaPremium~0_combout\ = ((\premium~combout\ & ((\inst17|estado_pr.S9~regout\) # (\inst17|estado_pr.S7~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|estado_pr.S9~regout\,
	datac => \inst17|estado_pr.S7~regout\,
	datad => \premium~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|bombaPremium~0_combout\);

-- Location: LC_X5_Y4_N6
\inst17|WideOr0\ : maxii_lcell
-- Equation(s):
-- \inst17|WideOr0~combout\ = (\inst17|estado_pr.S9~regout\) # (((\inst17|estado_pr.S7~regout\) # (\inst17|estado_pr.S8~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|estado_pr.S9~regout\,
	datac => \inst17|estado_pr.S7~regout\,
	datad => \inst17|estado_pr.S8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|WideOr0~combout\);

-- Location: LC_X3_Y4_N0
\inst17|WideOr1\ : maxii_lcell
-- Equation(s):
-- \inst17|WideOr1~combout\ = (\inst17|estado_pr.S5~regout\) # ((\inst17|estado_pr.S6~regout\) # ((\inst17|estado_pr.S3~regout\) # (\inst17|estado_pr.S4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|estado_pr.S5~regout\,
	datab => \inst17|estado_pr.S6~regout\,
	datac => \inst17|estado_pr.S3~regout\,
	datad => \inst17|estado_pr.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|WideOr1~combout\);

-- Location: LC_X2_Y4_N9
\inst17|WideOr2~0\ : maxii_lcell
-- Equation(s):
-- \inst17|WideOr2~0_combout\ = (!\inst17|estado_pr.S8~regout\ & (\inst17|estado_pr.S0~regout\ & (!\inst17|estado_pr.S4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|estado_pr.S8~regout\,
	datab => \inst17|estado_pr.S0~regout\,
	datac => \inst17|estado_pr.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|WideOr2~0_combout\);

-- Location: LC_X2_Y4_N8
\inst17|WideOr2\ : maxii_lcell
-- Equation(s):
-- \inst17|WideOr2~combout\ = ((\inst17|estado_pr.S7~regout\) # ((\inst17|estado_pr.S3~regout\) # (!\inst17|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst17|estado_pr.S7~regout\,
	datac => \inst17|estado_pr.S3~regout\,
	datad => \inst17|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|WideOr2~combout\);

-- Location: LC_X2_Y4_N5
\inst17|WideOr3\ : maxii_lcell
-- Equation(s):
-- \inst17|WideOr3~combout\ = ((\inst17|estado_pr.S2~regout\) # ((\inst17|estado_pr.S6~regout\) # (!\inst17|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst17|estado_pr.S2~regout\,
	datac => \inst17|estado_pr.S6~regout\,
	datad => \inst17|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|WideOr3~combout\);

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dato~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst8|ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_dato);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salidaMagna~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst17|bombaMagna~0_combout\,
	oe => VCC,
	padio => ww_salidaMagna);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salidaPremium~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst17|bombaPremium~0_combout\,
	oe => VCC,
	padio => ww_salidaPremium);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\columna[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst8|ALT_INV_pr_state.s0~regout\,
	oe => VCC,
	padio => ww_columna(3));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\columna[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst8|pr_state.s1~regout\,
	oe => VCC,
	padio => ww_columna(2));

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\columna[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst8|pr_state.s2~regout\,
	oe => VCC,
	padio => ww_columna(1));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\columna[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst8|pr_state.s3~regout\,
	oe => VCC,
	padio => ww_columna(0));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst8|Mux2~1_combout\,
	oe => VCC,
	padio => ww_data(3));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst8|ALT_INV_Mux3~1_combout\,
	oe => VCC,
	padio => ww_data(2));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst8|Selector6~0\,
	oe => VCC,
	padio => ww_data(1));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst8|Selector7~0\,
	oe => VCC,
	padio => ww_data(0));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\debug[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst17|WideOr0~combout\,
	oe => VCC,
	padio => ww_debug(3));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\debug[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst17|WideOr1~combout\,
	oe => VCC,
	padio => ww_debug(2));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\debug[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst17|ALT_INV_WideOr2~combout\,
	oe => VCC,
	padio => ww_debug(1));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\debug[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst17|WideOr3~combout\,
	oe => VCC,
	padio => ww_debug(0));
END structure;


