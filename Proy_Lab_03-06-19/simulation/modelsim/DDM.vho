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

-- DATE "06/03/2019 15:25:41"

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
	data : OUT std_logic_vector(4 DOWNTO 0);
	debug : OUT std_logic_vector(3 DOWNTO 0)
	);
END DDM;

-- Design Ports Information
-- magna	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- premium	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fila[0]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fila[1]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fila[2]	=>  Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fila[3]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dato	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- salidaMagna	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- salidaPremium	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- columna[3]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- columna[2]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- columna[1]	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- columna[0]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data[4]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
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
SIGNAL ww_data : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_debug : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
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
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|count[14]~21\ : std_logic;
SIGNAL \inst|count[14]~21COUT1_68\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|clk_state~regout\ : std_logic;
SIGNAL \inst1|pr_state.s1~regout\ : std_logic;
SIGNAL \inst1|pr_state.s2~regout\ : std_logic;
SIGNAL \inst1|pr_state.s3~regout\ : std_logic;
SIGNAL \inst1|pr_state.s0~regout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Selector4~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|Selector6~0\ : std_logic;
SIGNAL \inst1|Selector7~0\ : std_logic;
SIGNAL \inst2|process_1~0_combout\ : std_logic;
SIGNAL \inst2|process_1~1_combout\ : std_logic;
SIGNAL \inst1|Selector7~1_combout\ : std_logic;
SIGNAL \inst2|Equal11~0_combout\ : std_logic;
SIGNAL \inst2|estado_pr.S1~regout\ : std_logic;
SIGNAL \inst2|estado_pr.S0~regout\ : std_logic;
SIGNAL \inst|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \fila~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_pr_state.s0~regout\ : std_logic;
SIGNAL \inst2|ALT_INV_estado_pr.S1~regout\ : std_logic;

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
\inst1|ALT_INV_Mux5~0_combout\ <= NOT \inst1|Mux5~0_combout\;
\inst1|ALT_INV_pr_state.s0~regout\ <= NOT \inst1|pr_state.s0~regout\;
\inst2|ALT_INV_estado_pr.S1~regout\ <= NOT \inst2|estado_pr.S1~regout\;

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

-- Location: LC_X7_Y4_N7
\inst1|Mux5~0\ : maxii_lcell
-- Equation(s):
-- \inst1|Mux5~0_combout\ = (\fila~combout\(3) & ((\fila~combout\(0)) # ((\fila~combout\(2)) # (\fila~combout\(1))))) # (!\fila~combout\(3) & ((\fila~combout\(0) & ((\fila~combout\(2)) # (\fila~combout\(1)))) # (!\fila~combout\(0) & (\fila~combout\(2) $ 
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
	dataa => \fila~combout\(3),
	datab => \fila~combout\(0),
	datac => \fila~combout\(2),
	datad => \fila~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|Mux5~0_combout\);

-- Location: LC_X2_Y3_N2
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

-- Location: LC_X2_Y3_N3
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

-- Location: LC_X2_Y3_N4
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

-- Location: LC_X2_Y3_N5
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

-- Location: LC_X2_Y3_N6
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

-- Location: LC_X2_Y3_N7
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

-- Location: LC_X2_Y3_N8
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

-- Location: LC_X2_Y3_N9
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

-- Location: LC_X3_Y3_N0
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

-- Location: LC_X3_Y3_N1
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

-- Location: LC_X3_Y3_N2
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

-- Location: LC_X3_Y3_N3
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

-- Location: LC_X3_Y3_N4
\inst|count[12]\ : maxii_lcell
-- Equation(s):
-- \inst|count\(12) = DFFEAS((\inst|count\(12) $ ((!(!\inst|count[7]~7\ & \inst|count[11]~15\) # (\inst|count[7]~7\ & \inst|count[11]~15COUT1_64\)))), GLOBAL(\clk~combout\), VCC, , , , , \inst|LessThan0~3_combout\, )
-- \inst|count[12]~17\ = CARRY(((\inst|count\(12) & !\inst|count[11]~15COUT1_64\)))

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
	datab => \inst|count\(12),
	aclr => GND,
	sclr => \inst|LessThan0~3_combout\,
	cin => \inst|count[7]~7\,
	cin0 => \inst|count[11]~15\,
	cin1 => \inst|count[11]~15COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(12),
	cout => \inst|count[12]~17\);

-- Location: LC_X3_Y3_N5
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

-- Location: LC_X3_Y3_N6
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

-- Location: LC_X3_Y3_N9
\inst|LessThan0~2\ : maxii_lcell
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (!\inst|count\(12) & (!\inst|count\(10) & (!\inst|count\(13) & !\inst|count\(11))))

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
	dataa => \inst|count\(12),
	datab => \inst|count\(10),
	datac => \inst|count\(13),
	datad => \inst|count\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|LessThan0~2_combout\);

-- Location: LC_X3_Y3_N7
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

-- Location: LC_X2_Y3_N1
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

-- Location: LC_X2_Y3_N0
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

-- Location: LC_X3_Y3_N8
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

-- Location: LC_X5_Y3_N2
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

-- Location: LC_X6_Y1_N8
\inst1|pr_state.s1\ : maxii_lcell
-- Equation(s):
-- \inst1|pr_state.s1~regout\ = DFFEAS((((!\inst1|pr_state.s0~regout\))), GLOBAL(\inst|clk_state~regout\), VCC, , \inst1|Mux5~0_combout\, , , , )

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
	datad => \inst1|pr_state.s0~regout\,
	aclr => GND,
	ena => \inst1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|pr_state.s1~regout\);

-- Location: LC_X7_Y4_N5
\inst1|pr_state.s2\ : maxii_lcell
-- Equation(s):
-- \inst1|Selector7~0\ = ((!\inst1|Mux5~0_combout\ & (!C1_pr_state.s2 & \inst1|pr_state.s0~regout\)))
-- \inst1|pr_state.s2~regout\ = DFFEAS(\inst1|Selector7~0\, GLOBAL(\inst|clk_state~regout\), VCC, , \inst1|Mux5~0_combout\, \inst1|pr_state.s1~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_state~regout\,
	datab => \inst1|Mux5~0_combout\,
	datac => \inst1|pr_state.s1~regout\,
	datad => \inst1|pr_state.s0~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|Selector7~0\,
	regout => \inst1|pr_state.s2~regout\);

-- Location: LC_X7_Y4_N8
\inst1|pr_state.s3\ : maxii_lcell
-- Equation(s):
-- \inst1|Selector6~0\ = ((\inst1|pr_state.s0~regout\ & (!C1_pr_state.s3 & !\inst1|Mux5~0_combout\)))
-- \inst1|pr_state.s3~regout\ = DFFEAS(\inst1|Selector6~0\, GLOBAL(\inst|clk_state~regout\), VCC, , \inst1|Mux5~0_combout\, \inst1|pr_state.s2~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_state~regout\,
	datab => \inst1|pr_state.s0~regout\,
	datac => \inst1|pr_state.s2~regout\,
	datad => \inst1|Mux5~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|Selector6~0\,
	regout => \inst1|pr_state.s3~regout\);

-- Location: LC_X7_Y4_N9
\inst1|pr_state.s0\ : maxii_lcell
-- Equation(s):
-- \inst1|pr_state.s0~regout\ = DFFEAS((((!\inst1|pr_state.s3~regout\))), GLOBAL(\inst|clk_state~regout\), VCC, , \inst1|Mux5~0_combout\, , , , )

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
	datad => \inst1|pr_state.s3~regout\,
	aclr => GND,
	ena => \inst1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|pr_state.s0~regout\);

-- Location: LC_X6_Y1_N5
\inst1|Mux3~0\ : maxii_lcell
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (!\fila~combout\(3) & (!\fila~combout\(2) & (\fila~combout\(1) $ (\fila~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0006",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fila~combout\(1),
	datab => \fila~combout\(0),
	datac => \fila~combout\(3),
	datad => \fila~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|Mux3~0_combout\);

-- Location: LC_X6_Y1_N1
\inst1|Mux1~0\ : maxii_lcell
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (!\fila~combout\(0) & (!\fila~combout\(3) & (\fila~combout\(1) $ (\fila~combout\(2)))))

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
	dataa => \fila~combout\(1),
	datab => \fila~combout\(0),
	datac => \fila~combout\(3),
	datad => \fila~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|Mux1~0_combout\);

-- Location: LC_X6_Y1_N0
\inst1|Selector4~0\ : maxii_lcell
-- Equation(s):
-- \inst1|Selector4~0_combout\ = ((\inst1|pr_state.s0~regout\ & (\inst1|Mux3~0_combout\)) # (!\inst1|pr_state.s0~regout\ & ((\inst1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pr_state.s0~regout\,
	datac => \inst1|Mux3~0_combout\,
	datad => \inst1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|Selector4~0_combout\);

-- Location: LC_X7_Y4_N0
\inst1|Mux4~0\ : maxii_lcell
-- Equation(s):
-- \inst1|Mux4~0_combout\ = ((\fila~combout\(3) & ((\inst1|pr_state.s0~regout\) # (!\fila~combout\(1)))) # (!\fila~combout\(3) & ((\fila~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pr_state.s0~regout\,
	datac => \fila~combout\(3),
	datad => \fila~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|Mux4~0_combout\);

-- Location: LC_X7_Y4_N1
\inst1|Mux4~1\ : maxii_lcell
-- Equation(s):
-- \inst1|Mux4~1_combout\ = (\inst1|pr_state.s0~regout\ & (!\inst1|Mux4~0_combout\ & (\fila~combout\(0) $ (\fila~combout\(2))))) # (!\inst1|pr_state.s0~regout\ & (!\fila~combout\(0) & (!\fila~combout\(2) & \inst1|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0148",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fila~combout\(0),
	datab => \inst1|pr_state.s0~regout\,
	datac => \fila~combout\(2),
	datad => \inst1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|Mux4~1_combout\);

-- Location: LC_X7_Y4_N2
\inst2|process_1~0\ : maxii_lcell
-- Equation(s):
-- \inst2|process_1~0_combout\ = (\inst1|pr_state.s0~regout\ & (\inst1|Mux3~0_combout\ & ((\inst1|Mux4~1_combout\) # (!\inst1|pr_state.s3~regout\)))) # (!\inst1|pr_state.s0~regout\ & (((\inst1|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f520",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pr_state.s0~regout\,
	datab => \inst1|pr_state.s3~regout\,
	datac => \inst1|Mux3~0_combout\,
	datad => \inst1|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|process_1~0_combout\);

-- Location: LC_X7_Y4_N3
\inst2|process_1~1\ : maxii_lcell
-- Equation(s):
-- \inst2|process_1~1_combout\ = (!\inst1|Mux5~0_combout\ & (\inst2|process_1~0_combout\ $ (((\inst1|pr_state.s0~regout\) # (\inst1|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0154",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux5~0_combout\,
	datab => \inst1|pr_state.s0~regout\,
	datac => \inst1|Mux1~0_combout\,
	datad => \inst2|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|process_1~1_combout\);

-- Location: LC_X6_Y1_N7
\inst1|Selector7~1\ : maxii_lcell
-- Equation(s):
-- \inst1|Selector7~1_combout\ = ((!\inst1|Mux5~0_combout\ & ((\inst1|pr_state.s0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux5~0_combout\,
	datad => \inst1|pr_state.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|Selector7~1_combout\);

-- Location: LC_X6_Y1_N2
\inst2|Equal11~0\ : maxii_lcell
-- Equation(s):
-- \inst2|Equal11~0_combout\ = (\inst1|Mux4~1_combout\ & (\inst1|Selector7~1_combout\ & (\inst1|Selector4~0_combout\ & \inst1|pr_state.s3~regout\)))

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
	dataa => \inst1|Mux4~1_combout\,
	datab => \inst1|Selector7~1_combout\,
	datac => \inst1|Selector4~0_combout\,
	datad => \inst1|pr_state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|Equal11~0_combout\);

-- Location: LC_X7_Y4_N6
\inst2|estado_pr.S1\ : maxii_lcell
-- Equation(s):
-- \inst2|estado_pr.S1~regout\ = DFFEAS(((\inst2|estado_pr.S1~regout\) # ((!\inst2|estado_pr.S0~regout\ & \inst2|process_1~1_combout\))), GLOBAL(\inst|clk_state~regout\), !GLOBAL(\inst2|Equal11~0_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_state~regout\,
	datab => \inst2|estado_pr.S1~regout\,
	datac => \inst2|estado_pr.S0~regout\,
	datad => \inst2|process_1~1_combout\,
	aclr => \inst2|Equal11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|estado_pr.S1~regout\);

-- Location: LC_X7_Y4_N4
\inst2|estado_pr.S0\ : maxii_lcell
-- Equation(s):
-- \inst2|estado_pr.S0~regout\ = DFFEAS(((\inst2|estado_pr.S1~regout\) # ((\inst2|process_1~1_combout\))), GLOBAL(\inst|clk_state~regout\), !GLOBAL(\inst2|Equal11~0_combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_state~regout\,
	datab => \inst2|estado_pr.S1~regout\,
	datad => \inst2|process_1~1_combout\,
	aclr => \inst2|Equal11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|estado_pr.S0~regout\);

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dato~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALT_INV_Mux5~0_combout\,
	oe => VCC,
	padio => ww_dato);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salidaMagna~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_salidaMagna);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\magna~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_magna);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\premium~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_premium);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salidaPremium~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_salidaPremium);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\columna[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALT_INV_pr_state.s0~regout\,
	oe => VCC,
	padio => ww_columna(3));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\columna[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|pr_state.s1~regout\,
	oe => VCC,
	padio => ww_columna(2));

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\columna[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|pr_state.s2~regout\,
	oe => VCC,
	padio => ww_columna(1));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\columna[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|pr_state.s3~regout\,
	oe => VCC,
	padio => ww_columna(0));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|Mux5~0_combout\,
	oe => VCC,
	padio => ww_data(4));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|Selector4~0_combout\,
	oe => VCC,
	padio => ww_data(3));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|Mux4~1_combout\,
	oe => VCC,
	padio => ww_data(2));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|Selector6~0\,
	oe => VCC,
	padio => ww_data(1));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|Selector7~0\,
	oe => VCC,
	padio => ww_data(0));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\debug[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_debug(3));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\debug[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_debug(2));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\debug[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|estado_pr.S0~regout\,
	oe => VCC,
	padio => ww_debug(1));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\debug[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|ALT_INV_estado_pr.S1~regout\,
	oe => VCC,
	padio => ww_debug(0));
END structure;


