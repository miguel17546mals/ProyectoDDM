-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "05/27/2019 12:53:35"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Prueba2 IS
    PORT (
	bombaM : OUT std_logic;
	clk : IN std_logic;
	magna : IN std_logic;
	premium : IN std_logic;
	columnas : IN std_logic_vector(3 DOWNTO 0);
	bombaP : OUT std_logic;
	filas : OUT std_logic_vector(3 DOWNTO 0)
	);
END Prueba2;

-- Design Ports Information
-- bombaM	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bombaP	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- filas[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- filas[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- filas[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- filas[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- magna	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- premium	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- columnas[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- columnas[2]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- columnas[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- columnas[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Prueba2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_bombaM : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_magna : std_logic;
SIGNAL ww_premium : std_logic;
SIGNAL ww_columnas : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_bombaP : std_logic;
SIGNAL ww_filas : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|pulso~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|WideOr0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \bombaM~output_o\ : std_logic;
SIGNAL \bombaP~output_o\ : std_logic;
SIGNAL \filas[3]~output_o\ : std_logic;
SIGNAL \filas[2]~output_o\ : std_logic;
SIGNAL \filas[1]~output_o\ : std_logic;
SIGNAL \filas[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|contador~1_combout\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|contador~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|Add0~15\ : std_logic;
SIGNAL \inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst3|contador~3_combout\ : std_logic;
SIGNAL \inst3|Add0~17\ : std_logic;
SIGNAL \inst3|Add0~18_combout\ : std_logic;
SIGNAL \inst3|Add0~19\ : std_logic;
SIGNAL \inst3|Add0~20_combout\ : std_logic;
SIGNAL \inst3|Add0~21\ : std_logic;
SIGNAL \inst3|Add0~22_combout\ : std_logic;
SIGNAL \inst3|Add0~23\ : std_logic;
SIGNAL \inst3|Add0~24_combout\ : std_logic;
SIGNAL \inst3|Add0~25\ : std_logic;
SIGNAL \inst3|Add0~26_combout\ : std_logic;
SIGNAL \inst3|contador~4_combout\ : std_logic;
SIGNAL \inst3|Add0~27\ : std_logic;
SIGNAL \inst3|Add0~28_combout\ : std_logic;
SIGNAL \inst3|contador~5_combout\ : std_logic;
SIGNAL \inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|Equal0~3_combout\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|contador~2_combout\ : std_logic;
SIGNAL \inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|pulso~0_combout\ : std_logic;
SIGNAL \inst3|pulso~feeder_combout\ : std_logic;
SIGNAL \inst3|pulso~q\ : std_logic;
SIGNAL \inst3|pulso~clkctrl_outclk\ : std_logic;
SIGNAL \columnas[1]~input_o\ : std_logic;
SIGNAL \columnas[3]~input_o\ : std_logic;
SIGNAL \inst|Equal6~0_combout\ : std_logic;
SIGNAL \columnas[2]~input_o\ : std_logic;
SIGNAL \columnas[0]~input_o\ : std_logic;
SIGNAL \inst|Equal7~0_combout\ : std_logic;
SIGNAL \inst|cont[0]~1_combout\ : std_logic;
SIGNAL \inst|cont[1]~0_combout\ : std_logic;
SIGNAL \inst|dec_dato[1]~9_combout\ : std_logic;
SIGNAL \inst|dec_dato[1]~10_combout\ : std_logic;
SIGNAL \inst|dec_dato[1]~11_combout\ : std_logic;
SIGNAL \inst|Equal6~1_combout\ : std_logic;
SIGNAL \inst|Equal8~0_combout\ : std_logic;
SIGNAL \inst|Equal9~0_combout\ : std_logic;
SIGNAL \inst|c0~1_combout\ : std_logic;
SIGNAL \inst|c1~2_combout\ : std_logic;
SIGNAL \inst|c1~4_combout\ : std_logic;
SIGNAL \inst|process_1~0_combout\ : std_logic;
SIGNAL \inst|c1~3_combout\ : std_logic;
SIGNAL \inst|c1~q\ : std_logic;
SIGNAL \inst|c0~2_combout\ : std_logic;
SIGNAL \inst|Equal7~1_combout\ : std_logic;
SIGNAL \inst|c3~0_combout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|c3~1_combout\ : std_logic;
SIGNAL \inst|c3~2_combout\ : std_logic;
SIGNAL \inst|c3~q\ : std_logic;
SIGNAL \inst|c2~2_combout\ : std_logic;
SIGNAL \inst|c2~4_combout\ : std_logic;
SIGNAL \inst|c2~3_combout\ : std_logic;
SIGNAL \inst|c2~q\ : std_logic;
SIGNAL \inst|process_2~2_combout\ : std_logic;
SIGNAL \inst|c0~0_combout\ : std_logic;
SIGNAL \inst|c0~3_combout\ : std_logic;
SIGNAL \inst|c0~q\ : std_logic;
SIGNAL \inst|process_2~0_combout\ : std_logic;
SIGNAL \inst|process_2~1_combout\ : std_logic;
SIGNAL \inst|dec_dato[0]~7_combout\ : std_logic;
SIGNAL \inst|dec_dato[0]~6_combout\ : std_logic;
SIGNAL \inst|dec_dato[0]~8_combout\ : std_logic;
SIGNAL \inst|dec_dato[3]~0_combout\ : std_logic;
SIGNAL \inst|dec_dato[3]~1_combout\ : std_logic;
SIGNAL \inst|dec_dato[3]~2_combout\ : std_logic;
SIGNAL \inst|dec_dato[2]~4_combout\ : std_logic;
SIGNAL \inst|dec_dato[2]~3_combout\ : std_logic;
SIGNAL \inst|dec_dato[2]~5_combout\ : std_logic;
SIGNAL \inst4|Equal1~2_combout\ : std_logic;
SIGNAL \inst4|Selector14~0_combout\ : std_logic;
SIGNAL \inst4|estado_sig.S7_664~combout\ : std_logic;
SIGNAL \inst4|Equal1~0_combout\ : std_logic;
SIGNAL \inst4|estado_pr.S7~q\ : std_logic;
SIGNAL \inst4|Selector9~0_combout\ : std_logic;
SIGNAL \inst4|Equal1~3_combout\ : std_logic;
SIGNAL \inst4|estado_sig~0_combout\ : std_logic;
SIGNAL \inst4|process_1~0_combout\ : std_logic;
SIGNAL \inst4|Selector3~0_combout\ : std_logic;
SIGNAL \inst4|Selector3~1_combout\ : std_logic;
SIGNAL \inst4|estado_sig.S1_712~combout\ : std_logic;
SIGNAL \inst4|estado_pr.S1~q\ : std_logic;
SIGNAL \inst4|Selector5~0_combout\ : std_logic;
SIGNAL \inst4|Selector5~1_combout\ : std_logic;
SIGNAL \inst4|estado_sig.S2_704~combout\ : std_logic;
SIGNAL \inst4|estado_pr.S2~q\ : std_logic;
SIGNAL \inst4|Selector7~0_combout\ : std_logic;
SIGNAL \inst4|Selector7~1_combout\ : std_logic;
SIGNAL \inst4|estado_sig.S3_696~combout\ : std_logic;
SIGNAL \inst4|estado_pr.S3~q\ : std_logic;
SIGNAL \inst4|Selector11~0_combout\ : std_logic;
SIGNAL \inst4|Selector11~1_combout\ : std_logic;
SIGNAL \inst4|estado_sig.S5_680~combout\ : std_logic;
SIGNAL \inst4|estado_pr.S5~q\ : std_logic;
SIGNAL \inst4|Equal1~1_combout\ : std_logic;
SIGNAL \inst4|Selector16~0_combout\ : std_logic;
SIGNAL \inst4|estado_sig.S8_656~combout\ : std_logic;
SIGNAL \inst4|estado_pr.S8~q\ : std_logic;
SIGNAL \inst4|Selector17~0_combout\ : std_logic;
SIGNAL \inst4|estado_sig.S9_648~combout\ : std_logic;
SIGNAL \inst4|estado_pr.S9~q\ : std_logic;
SIGNAL \inst4|WideOr0~combout\ : std_logic;
SIGNAL \inst4|WideOr0~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|Selector9~1_combout\ : std_logic;
SIGNAL \inst4|estado_sig.S4_688~combout\ : std_logic;
SIGNAL \inst4|estado_pr.S4~q\ : std_logic;
SIGNAL \inst4|Selector13~0_combout\ : std_logic;
SIGNAL \inst4|estado_sig.S6_672~combout\ : std_logic;
SIGNAL \inst4|estado_pr.S6~q\ : std_logic;
SIGNAL \magna~input_o\ : std_logic;
SIGNAL \inst4|bombaMagna~2_combout\ : std_logic;
SIGNAL \premium~input_o\ : std_logic;
SIGNAL \inst4|bombaPremium~2_combout\ : std_logic;
SIGNAL \inst|Equal2~1_combout\ : std_logic;
SIGNAL \inst|Equal2~2_combout\ : std_logic;
SIGNAL \inst|Equal4~0_combout\ : std_logic;
SIGNAL \inst|cont\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|contador\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst|dato\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_pulso~clkctrl_outclk\ : std_logic;

BEGIN

bombaM <= ww_bombaM;
ww_clk <= clk;
ww_magna <= magna;
ww_premium <= premium;
ww_columnas <= columnas;
bombaP <= ww_bombaP;
filas <= ww_filas;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst3|pulso~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|pulso~q\);

\inst4|WideOr0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|WideOr0~combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst4|ALT_INV_Equal1~0_combout\ <= NOT \inst4|Equal1~0_combout\;
\inst|ALT_INV_Equal4~0_combout\ <= NOT \inst|Equal4~0_combout\;
\inst3|ALT_INV_pulso~clkctrl_outclk\ <= NOT \inst3|pulso~clkctrl_outclk\;

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N30
\bombaM~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|bombaMagna~2_combout\,
	devoe => ww_devoe,
	o => \bombaM~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\bombaP~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|bombaPremium~2_combout\,
	devoe => ww_devoe,
	o => \bombaP~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\filas[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \filas[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\filas[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal2~1_combout\,
	devoe => ww_devoe,
	o => \filas[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\filas[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal2~2_combout\,
	devoe => ww_devoe,
	o => \filas[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\filas[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal4~0_combout\,
	devoe => ww_devoe,
	o => \filas[0]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X71_Y46_N0
\inst3|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = \inst3|contador\(0) $ (VCC)
-- \inst3|Add0~1\ = CARRY(\inst3|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|contador\(0),
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

-- Location: FF_X71_Y46_N1
\inst3|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|contador\(0));

-- Location: LCCOMB_X71_Y46_N2
\inst3|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst3|contador\(1) & (!\inst3|Add0~1\)) # (!\inst3|contador\(1) & ((\inst3|Add0~1\) # (GND)))
-- \inst3|Add0~3\ = CARRY((!\inst3|Add0~1\) # (!\inst3|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|contador\(1),
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: FF_X71_Y46_N3
\inst3|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|contador\(1));

-- Location: LCCOMB_X71_Y46_N4
\inst3|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = (\inst3|contador\(2) & (\inst3|Add0~3\ $ (GND))) # (!\inst3|contador\(2) & (!\inst3|Add0~3\ & VCC))
-- \inst3|Add0~5\ = CARRY((\inst3|contador\(2) & !\inst3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|contador\(2),
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: FF_X71_Y46_N5
\inst3|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|contador\(2));

-- Location: LCCOMB_X71_Y46_N6
\inst3|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst3|contador\(3) & (!\inst3|Add0~5\)) # (!\inst3|contador\(3) & ((\inst3|Add0~5\) # (GND)))
-- \inst3|Add0~7\ = CARRY((!\inst3|Add0~5\) # (!\inst3|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|contador\(3),
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: LCCOMB_X71_Y46_N8
\inst3|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = (\inst3|contador\(4) & (\inst3|Add0~7\ $ (GND))) # (!\inst3|contador\(4) & (!\inst3|Add0~7\ & VCC))
-- \inst3|Add0~9\ = CARRY((\inst3|contador\(4) & !\inst3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|contador\(4),
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: FF_X71_Y46_N9
\inst3|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|contador\(4));

-- Location: LCCOMB_X71_Y46_N10
\inst3|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst3|contador\(5) & (!\inst3|Add0~9\)) # (!\inst3|contador\(5) & ((\inst3|Add0~9\) # (GND)))
-- \inst3|Add0~11\ = CARRY((!\inst3|Add0~9\) # (!\inst3|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|contador\(5),
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: LCCOMB_X71_Y46_N30
\inst3|contador~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|contador~1_combout\ = (\inst3|Add0~10_combout\ & (((!\inst3|Equal0~3_combout\) # (!\inst3|Equal0~1_combout\)) # (!\inst3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~0_combout\,
	datab => \inst3|Equal0~1_combout\,
	datac => \inst3|Equal0~3_combout\,
	datad => \inst3|Add0~10_combout\,
	combout => \inst3|contador~1_combout\);

-- Location: FF_X71_Y46_N31
\inst3|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|contador\(5));

-- Location: LCCOMB_X71_Y46_N12
\inst3|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = (\inst3|contador\(6) & (\inst3|Add0~11\ $ (GND))) # (!\inst3|contador\(6) & (!\inst3|Add0~11\ & VCC))
-- \inst3|Add0~13\ = CARRY((\inst3|contador\(6) & !\inst3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|contador\(6),
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: FF_X71_Y46_N13
\inst3|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|contador\(6));

-- Location: LCCOMB_X71_Y46_N14
\inst3|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = (\inst3|contador\(7) & (!\inst3|Add0~13\)) # (!\inst3|contador\(7) & ((\inst3|Add0~13\) # (GND)))
-- \inst3|Add0~15\ = CARRY((!\inst3|Add0~13\) # (!\inst3|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|contador\(7),
	datad => VCC,
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\,
	cout => \inst3|Add0~15\);

-- Location: LCCOMB_X70_Y46_N16
\inst3|contador~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|contador~0_combout\ = (\inst3|Add0~14_combout\ & (((!\inst3|Equal0~1_combout\) # (!\inst3|Equal0~0_combout\)) # (!\inst3|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~3_combout\,
	datab => \inst3|Equal0~0_combout\,
	datac => \inst3|Add0~14_combout\,
	datad => \inst3|Equal0~1_combout\,
	combout => \inst3|contador~0_combout\);

-- Location: FF_X70_Y46_N17
\inst3|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|contador\(7));

-- Location: LCCOMB_X70_Y46_N22
\inst3|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (\inst3|contador\(5) & (!\inst3|contador\(6) & (!\inst3|contador\(4) & \inst3|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|contador\(5),
	datab => \inst3|contador\(6),
	datac => \inst3|contador\(4),
	datad => \inst3|contador\(7),
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X71_Y46_N16
\inst3|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~16_combout\ = (\inst3|contador\(8) & (\inst3|Add0~15\ $ (GND))) # (!\inst3|contador\(8) & (!\inst3|Add0~15\ & VCC))
-- \inst3|Add0~17\ = CARRY((\inst3|contador\(8) & !\inst3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|contador\(8),
	datad => VCC,
	cin => \inst3|Add0~15\,
	combout => \inst3|Add0~16_combout\,
	cout => \inst3|Add0~17\);

-- Location: LCCOMB_X70_Y46_N14
\inst3|contador~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|contador~3_combout\ = (\inst3|Add0~16_combout\ & (((!\inst3|Equal0~0_combout\) # (!\inst3|Equal0~1_combout\)) # (!\inst3|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~3_combout\,
	datab => \inst3|Equal0~1_combout\,
	datac => \inst3|Equal0~0_combout\,
	datad => \inst3|Add0~16_combout\,
	combout => \inst3|contador~3_combout\);

-- Location: FF_X70_Y46_N15
\inst3|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|contador\(8));

-- Location: LCCOMB_X71_Y46_N18
\inst3|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~18_combout\ = (\inst3|contador\(9) & (!\inst3|Add0~17\)) # (!\inst3|contador\(9) & ((\inst3|Add0~17\) # (GND)))
-- \inst3|Add0~19\ = CARRY((!\inst3|Add0~17\) # (!\inst3|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|contador\(9),
	datad => VCC,
	cin => \inst3|Add0~17\,
	combout => \inst3|Add0~18_combout\,
	cout => \inst3|Add0~19\);

-- Location: FF_X71_Y46_N19
\inst3|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|contador\(9));

-- Location: LCCOMB_X71_Y46_N20
\inst3|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~20_combout\ = (\inst3|contador\(10) & (\inst3|Add0~19\ $ (GND))) # (!\inst3|contador\(10) & (!\inst3|Add0~19\ & VCC))
-- \inst3|Add0~21\ = CARRY((\inst3|contador\(10) & !\inst3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|contador\(10),
	datad => VCC,
	cin => \inst3|Add0~19\,
	combout => \inst3|Add0~20_combout\,
	cout => \inst3|Add0~21\);

-- Location: FF_X71_Y46_N21
\inst3|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|contador\(10));

-- Location: LCCOMB_X71_Y46_N22
\inst3|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~22_combout\ = (\inst3|contador\(11) & (!\inst3|Add0~21\)) # (!\inst3|contador\(11) & ((\inst3|Add0~21\) # (GND)))
-- \inst3|Add0~23\ = CARRY((!\inst3|Add0~21\) # (!\inst3|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|contador\(11),
	datad => VCC,
	cin => \inst3|Add0~21\,
	combout => \inst3|Add0~22_combout\,
	cout => \inst3|Add0~23\);

-- Location: FF_X71_Y46_N23
\inst3|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|contador\(11));

-- Location: LCCOMB_X71_Y46_N24
\inst3|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~24_combout\ = (\inst3|contador\(12) & (\inst3|Add0~23\ $ (GND))) # (!\inst3|contador\(12) & (!\inst3|Add0~23\ & VCC))
-- \inst3|Add0~25\ = CARRY((\inst3|contador\(12) & !\inst3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|contador\(12),
	datad => VCC,
	cin => \inst3|Add0~23\,
	combout => \inst3|Add0~24_combout\,
	cout => \inst3|Add0~25\);

-- Location: FF_X71_Y46_N25
\inst3|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|contador\(12));

-- Location: LCCOMB_X71_Y46_N26
\inst3|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~26_combout\ = (\inst3|contador\(13) & (!\inst3|Add0~25\)) # (!\inst3|contador\(13) & ((\inst3|Add0~25\) # (GND)))
-- \inst3|Add0~27\ = CARRY((!\inst3|Add0~25\) # (!\inst3|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|contador\(13),
	datad => VCC,
	cin => \inst3|Add0~25\,
	combout => \inst3|Add0~26_combout\,
	cout => \inst3|Add0~27\);

-- Location: LCCOMB_X70_Y46_N18
\inst3|contador~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|contador~4_combout\ = (\inst3|Add0~26_combout\ & (((!\inst3|Equal0~0_combout\) # (!\inst3|Equal0~1_combout\)) # (!\inst3|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~3_combout\,
	datab => \inst3|Equal0~1_combout\,
	datac => \inst3|Equal0~0_combout\,
	datad => \inst3|Add0~26_combout\,
	combout => \inst3|contador~4_combout\);

-- Location: FF_X70_Y46_N19
\inst3|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|contador\(13));

-- Location: LCCOMB_X71_Y46_N28
\inst3|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Add0~28_combout\ = \inst3|Add0~27\ $ (!\inst3|contador\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|contador\(14),
	cin => \inst3|Add0~27\,
	combout => \inst3|Add0~28_combout\);

-- Location: LCCOMB_X70_Y46_N26
\inst3|contador~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|contador~5_combout\ = (\inst3|Add0~28_combout\ & (((!\inst3|Equal0~0_combout\) # (!\inst3|Equal0~1_combout\)) # (!\inst3|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~3_combout\,
	datab => \inst3|Equal0~1_combout\,
	datac => \inst3|Equal0~0_combout\,
	datad => \inst3|Add0~28_combout\,
	combout => \inst3|contador~5_combout\);

-- Location: FF_X70_Y46_N27
\inst3|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|contador\(14));

-- Location: LCCOMB_X70_Y46_N0
\inst3|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Equal0~2_combout\ = (\inst3|contador\(8) & (!\inst3|contador\(9) & (!\inst3|contador\(10) & !\inst3|contador\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|contador\(8),
	datab => \inst3|contador\(9),
	datac => \inst3|contador\(10),
	datad => \inst3|contador\(11),
	combout => \inst3|Equal0~2_combout\);

-- Location: LCCOMB_X70_Y46_N10
\inst3|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Equal0~3_combout\ = (\inst3|contador\(14) & (\inst3|contador\(13) & (!\inst3|contador\(12) & \inst3|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|contador\(14),
	datab => \inst3|contador\(13),
	datac => \inst3|contador\(12),
	datad => \inst3|Equal0~2_combout\,
	combout => \inst3|Equal0~3_combout\);

-- Location: LCCOMB_X70_Y46_N6
\inst3|contador~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|contador~2_combout\ = (\inst3|Add0~6_combout\ & (((!\inst3|Equal0~0_combout\) # (!\inst3|Equal0~1_combout\)) # (!\inst3|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~3_combout\,
	datab => \inst3|Equal0~1_combout\,
	datac => \inst3|Equal0~0_combout\,
	datad => \inst3|Add0~6_combout\,
	combout => \inst3|contador~2_combout\);

-- Location: FF_X70_Y46_N7
\inst3|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|contador\(3));

-- Location: LCCOMB_X70_Y46_N24
\inst3|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Equal0~1_combout\ = (\inst3|contador\(1) & (\inst3|contador\(0) & (\inst3|contador\(2) & !\inst3|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|contador\(1),
	datab => \inst3|contador\(0),
	datac => \inst3|contador\(2),
	datad => \inst3|contador\(3),
	combout => \inst3|Equal0~1_combout\);

-- Location: LCCOMB_X70_Y46_N28
\inst3|pulso~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|pulso~0_combout\ = \inst3|pulso~q\ $ (((\inst3|Equal0~1_combout\ & (\inst3|Equal0~0_combout\ & \inst3|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pulso~q\,
	datab => \inst3|Equal0~1_combout\,
	datac => \inst3|Equal0~0_combout\,
	datad => \inst3|Equal0~3_combout\,
	combout => \inst3|pulso~0_combout\);

-- Location: LCCOMB_X70_Y46_N20
\inst3|pulso~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|pulso~feeder_combout\ = \inst3|pulso~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pulso~0_combout\,
	combout => \inst3|pulso~feeder_combout\);

-- Location: FF_X70_Y46_N21
\inst3|pulso\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pulso~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pulso~q\);

-- Location: CLKCTRL_G8
\inst3|pulso~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|pulso~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|pulso~clkctrl_outclk\);

-- Location: IOIBUF_X49_Y54_N8
\columnas[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_columnas(1),
	o => \columnas[1]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\columnas[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_columnas(3),
	o => \columnas[3]~input_o\);

-- Location: LCCOMB_X49_Y51_N8
\inst|Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal6~0_combout\ = (!\columnas[1]~input_o\ & !\columnas[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \columnas[1]~input_o\,
	datac => \columnas[3]~input_o\,
	combout => \inst|Equal6~0_combout\);

-- Location: IOIBUF_X49_Y54_N22
\columnas[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_columnas(2),
	o => \columnas[2]~input_o\);

-- Location: IOIBUF_X49_Y54_N15
\columnas[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_columnas(0),
	o => \columnas[0]~input_o\);

-- Location: LCCOMB_X49_Y51_N10
\inst|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal7~0_combout\ = (!\columnas[2]~input_o\ & !\columnas[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \columnas[2]~input_o\,
	datac => \columnas[0]~input_o\,
	combout => \inst|Equal7~0_combout\);

-- Location: LCCOMB_X49_Y51_N20
\inst|cont[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cont[0]~1_combout\ = !\inst|cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cont\(0),
	combout => \inst|cont[0]~1_combout\);

-- Location: FF_X49_Y51_N21
\inst|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulso~clkctrl_outclk\,
	d => \inst|cont[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cont\(0));

-- Location: LCCOMB_X49_Y51_N26
\inst|cont[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|cont[1]~0_combout\ = \inst|cont\(1) $ (\inst|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cont\(1),
	datad => \inst|cont\(0),
	combout => \inst|cont[1]~0_combout\);

-- Location: FF_X49_Y51_N27
\inst|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulso~clkctrl_outclk\,
	d => \inst|cont[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cont\(1));

-- Location: LCCOMB_X49_Y51_N28
\inst|dec_dato[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dec_dato[1]~9_combout\ = (\columnas[3]~input_o\ & (!\columnas[1]~input_o\ & (\inst|cont\(1)))) # (!\columnas[3]~input_o\ & (\columnas[1]~input_o\ & ((\inst|cont\(0)) # (!\inst|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \columnas[3]~input_o\,
	datab => \columnas[1]~input_o\,
	datac => \inst|cont\(1),
	datad => \inst|cont\(0),
	combout => \inst|dec_dato[1]~9_combout\);

-- Location: LCCOMB_X49_Y51_N14
\inst|dec_dato[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dec_dato[1]~10_combout\ = (!\inst|cont\(1) & ((\columnas[0]~input_o\ & (!\columnas[2]~input_o\)) # (!\columnas[0]~input_o\ & (\columnas[2]~input_o\ & !\inst|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \columnas[0]~input_o\,
	datab => \columnas[2]~input_o\,
	datac => \inst|cont\(1),
	datad => \inst|cont\(0),
	combout => \inst|dec_dato[1]~10_combout\);

-- Location: LCCOMB_X47_Y51_N6
\inst|dec_dato[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dec_dato[1]~11_combout\ = (\inst|Equal6~0_combout\ & ((\inst|dec_dato[1]~10_combout\) # ((\inst|Equal7~0_combout\ & \inst|dec_dato[1]~9_combout\)))) # (!\inst|Equal6~0_combout\ & (\inst|Equal7~0_combout\ & (\inst|dec_dato[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal6~0_combout\,
	datab => \inst|Equal7~0_combout\,
	datac => \inst|dec_dato[1]~9_combout\,
	datad => \inst|dec_dato[1]~10_combout\,
	combout => \inst|dec_dato[1]~11_combout\);

-- Location: LCCOMB_X49_Y51_N0
\inst|Equal6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal6~1_combout\ = (\columnas[0]~input_o\ & (!\columnas[1]~input_o\ & (!\columnas[2]~input_o\ & !\columnas[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \columnas[0]~input_o\,
	datab => \columnas[1]~input_o\,
	datac => \columnas[2]~input_o\,
	datad => \columnas[3]~input_o\,
	combout => \inst|Equal6~1_combout\);

-- Location: LCCOMB_X49_Y51_N4
\inst|Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal8~0_combout\ = (!\columnas[0]~input_o\ & (!\columnas[1]~input_o\ & (\columnas[2]~input_o\ & !\columnas[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \columnas[0]~input_o\,
	datab => \columnas[1]~input_o\,
	datac => \columnas[2]~input_o\,
	datad => \columnas[3]~input_o\,
	combout => \inst|Equal8~0_combout\);

-- Location: LCCOMB_X49_Y51_N18
\inst|Equal9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal9~0_combout\ = (!\columnas[0]~input_o\ & (!\columnas[1]~input_o\ & (!\columnas[2]~input_o\ & \columnas[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \columnas[0]~input_o\,
	datab => \columnas[1]~input_o\,
	datac => \columnas[2]~input_o\,
	datad => \columnas[3]~input_o\,
	combout => \inst|Equal9~0_combout\);

-- Location: LCCOMB_X49_Y51_N2
\inst|c0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|c0~1_combout\ = (\inst|c0~q\ & ((\inst|Equal8~0_combout\) # (\inst|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal8~0_combout\,
	datac => \inst|c0~q\,
	datad => \inst|Equal9~0_combout\,
	combout => \inst|c0~1_combout\);

-- Location: LCCOMB_X47_Y52_N4
\inst|c1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|c1~2_combout\ = (\columnas[1]~input_o\ & (!\columnas[2]~input_o\ & (!\columnas[3]~input_o\))) # (!\columnas[1]~input_o\ & (\inst|c1~q\ & (\columnas[2]~input_o\ $ (\columnas[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \columnas[2]~input_o\,
	datab => \columnas[3]~input_o\,
	datac => \columnas[1]~input_o\,
	datad => \inst|c1~q\,
	combout => \inst|c1~2_combout\);

-- Location: LCCOMB_X47_Y52_N30
\inst|c1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|c1~4_combout\ = (!\columnas[0]~input_o\ & \inst|c1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \columnas[0]~input_o\,
	datac => \inst|c1~2_combout\,
	combout => \inst|c1~4_combout\);

-- Location: LCCOMB_X50_Y51_N16
\inst|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|process_1~0_combout\ = (\inst|process_2~2_combout\ & (\inst|cont\(0) & \inst|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_2~2_combout\,
	datab => \inst|cont\(0),
	datac => \inst|cont\(1),
	combout => \inst|process_1~0_combout\);

-- Location: LCCOMB_X47_Y51_N4
\inst|c1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|c1~3_combout\ = (\inst|c1~4_combout\) # ((\inst|c1~q\ & ((\inst|Equal6~1_combout\) # (!\inst|process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal6~1_combout\,
	datab => \inst|c1~4_combout\,
	datac => \inst|c1~q\,
	datad => \inst|process_1~0_combout\,
	combout => \inst|c1~3_combout\);

-- Location: FF_X47_Y51_N5
\inst|c1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulso~clkctrl_outclk\,
	d => \inst|c1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|c1~q\);

-- Location: LCCOMB_X47_Y52_N10
\inst|c0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|c0~2_combout\ = (\columnas[0]~input_o\) # ((\columnas[2]~input_o\ & ((\columnas[3]~input_o\) # (\columnas[1]~input_o\))) # (!\columnas[2]~input_o\ & (\columnas[3]~input_o\ $ (!\columnas[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \columnas[2]~input_o\,
	datab => \columnas[3]~input_o\,
	datac => \columnas[0]~input_o\,
	datad => \columnas[1]~input_o\,
	combout => \inst|c0~2_combout\);

-- Location: LCCOMB_X47_Y52_N8
\inst|Equal7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal7~1_combout\ = (!\columnas[2]~input_o\ & (!\columnas[3]~input_o\ & (!\columnas[0]~input_o\ & \columnas[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \columnas[2]~input_o\,
	datab => \columnas[3]~input_o\,
	datac => \columnas[0]~input_o\,
	datad => \columnas[1]~input_o\,
	combout => \inst|Equal7~1_combout\);

-- Location: LCCOMB_X45_Y51_N20
\inst|c3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|c3~0_combout\ = (\inst|c3~q\) # ((!\inst|Equal6~1_combout\ & (!\inst|Equal8~0_combout\ & !\inst|Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal6~1_combout\,
	datab => \inst|Equal8~0_combout\,
	datac => \inst|Equal7~1_combout\,
	datad => \inst|c3~q\,
	combout => \inst|c3~0_combout\);

-- Location: LCCOMB_X50_Y51_N28
\inst|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = (\inst|cont\(1) & \inst|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cont\(1),
	datad => \inst|cont\(0),
	combout => \inst|Equal2~0_combout\);

-- Location: LCCOMB_X45_Y51_N12
\inst|c3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|c3~1_combout\ = (\inst|Equal6~1_combout\) # ((\inst|c3~q\ & ((!\inst|Equal2~0_combout\) # (!\inst|process_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|c3~q\,
	datab => \inst|Equal6~1_combout\,
	datac => \inst|process_2~2_combout\,
	datad => \inst|Equal2~0_combout\,
	combout => \inst|c3~1_combout\);

-- Location: LCCOMB_X47_Y51_N20
\inst|c3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|c3~2_combout\ = (\inst|c3~0_combout\ & ((\inst|c3~1_combout\) # (!\inst|c0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|c0~2_combout\,
	datac => \inst|c3~0_combout\,
	datad => \inst|c3~1_combout\,
	combout => \inst|c3~2_combout\);

-- Location: FF_X47_Y51_N21
\inst|c3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulso~clkctrl_outclk\,
	d => \inst|c3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|c3~q\);

-- Location: LCCOMB_X47_Y52_N12
\inst|c2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|c2~2_combout\ = (\columnas[2]~input_o\ & (!\columnas[1]~input_o\ & (!\columnas[3]~input_o\))) # (!\columnas[2]~input_o\ & (\inst|c2~q\ & (\columnas[1]~input_o\ $ (\columnas[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \columnas[1]~input_o\,
	datab => \columnas[3]~input_o\,
	datac => \inst|c2~q\,
	datad => \columnas[2]~input_o\,
	combout => \inst|c2~2_combout\);

-- Location: LCCOMB_X47_Y52_N22
\inst|c2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|c2~4_combout\ = (!\columnas[0]~input_o\ & \inst|c2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \columnas[0]~input_o\,
	datad => \inst|c2~2_combout\,
	combout => \inst|c2~4_combout\);

-- Location: LCCOMB_X47_Y51_N26
\inst|c2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|c2~3_combout\ = (\inst|c2~4_combout\) # ((\inst|c2~q\ & ((\inst|Equal6~1_combout\) # (!\inst|process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal6~1_combout\,
	datab => \inst|process_1~0_combout\,
	datac => \inst|c2~q\,
	datad => \inst|c2~4_combout\,
	combout => \inst|c2~3_combout\);

-- Location: FF_X47_Y51_N27
\inst|c2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulso~clkctrl_outclk\,
	d => \inst|c2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|c2~q\);

-- Location: LCCOMB_X47_Y51_N24
\inst|process_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|process_2~2_combout\ = (\inst|c0~q\) # ((\inst|c1~q\) # ((\inst|c3~q\) # (\inst|c2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|c0~q\,
	datab => \inst|c1~q\,
	datac => \inst|c3~q\,
	datad => \inst|c2~q\,
	combout => \inst|process_2~2_combout\);

-- Location: LCCOMB_X50_Y51_N14
\inst|c0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|c0~0_combout\ = (\inst|c0~q\ & (((\inst|Equal7~1_combout\) # (!\inst|Equal2~0_combout\)) # (!\inst|process_2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_2~2_combout\,
	datab => \inst|Equal2~0_combout\,
	datac => \inst|c0~q\,
	datad => \inst|Equal7~1_combout\,
	combout => \inst|c0~0_combout\);

-- Location: LCCOMB_X47_Y51_N30
\inst|c0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|c0~3_combout\ = (\inst|c0~1_combout\) # ((\inst|c0~0_combout\) # ((\inst|Equal6~1_combout\ & \inst|c0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal6~1_combout\,
	datab => \inst|c0~1_combout\,
	datac => \inst|c0~0_combout\,
	datad => \inst|c0~2_combout\,
	combout => \inst|c0~3_combout\);

-- Location: FF_X47_Y51_N31
\inst|c0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulso~clkctrl_outclk\,
	d => \inst|c0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|c0~q\);

-- Location: LCCOMB_X47_Y51_N18
\inst|process_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|process_2~0_combout\ = (\inst|c1~q\) # ((\inst|c2~q\) # (\inst|c3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|c1~q\,
	datac => \inst|c2~q\,
	datad => \inst|c3~q\,
	combout => \inst|process_2~0_combout\);

-- Location: LCCOMB_X47_Y51_N28
\inst|process_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|process_2~1_combout\ = (\inst|c0~q\ & (((!\inst|Equal7~0_combout\)) # (!\inst|Equal6~0_combout\))) # (!\inst|c0~q\ & (\inst|process_2~0_combout\ & ((!\inst|Equal7~0_combout\) # (!\inst|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|c0~q\,
	datab => \inst|Equal6~0_combout\,
	datac => \inst|Equal7~0_combout\,
	datad => \inst|process_2~0_combout\,
	combout => \inst|process_2~1_combout\);

-- Location: FF_X47_Y51_N7
\inst|dato[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_pulso~clkctrl_outclk\,
	d => \inst|dec_dato[1]~11_combout\,
	ena => \inst|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dato\(1));

-- Location: LCCOMB_X49_Y51_N30
\inst|dec_dato[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dec_dato[0]~7_combout\ = (\inst|cont\(0) & ((\columnas[0]~input_o\ & (!\columnas[2]~input_o\)) # (!\columnas[0]~input_o\ & (\columnas[2]~input_o\ & !\inst|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \columnas[0]~input_o\,
	datab => \columnas[2]~input_o\,
	datac => \inst|cont\(1),
	datad => \inst|cont\(0),
	combout => \inst|dec_dato[0]~7_combout\);

-- Location: LCCOMB_X49_Y51_N16
\inst|dec_dato[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dec_dato[0]~6_combout\ = (\columnas[3]~input_o\ & (!\columnas[1]~input_o\ & ((\inst|cont\(1)) # (!\inst|cont\(0))))) # (!\columnas[3]~input_o\ & (\columnas[1]~input_o\ & ((!\inst|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \columnas[3]~input_o\,
	datab => \columnas[1]~input_o\,
	datac => \inst|cont\(1),
	datad => \inst|cont\(0),
	combout => \inst|dec_dato[0]~6_combout\);

-- Location: LCCOMB_X47_Y51_N0
\inst|dec_dato[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dec_dato[0]~8_combout\ = (\inst|Equal6~0_combout\ & ((\inst|dec_dato[0]~7_combout\) # ((\inst|Equal7~0_combout\ & \inst|dec_dato[0]~6_combout\)))) # (!\inst|Equal6~0_combout\ & (\inst|Equal7~0_combout\ & ((\inst|dec_dato[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal6~0_combout\,
	datab => \inst|Equal7~0_combout\,
	datac => \inst|dec_dato[0]~7_combout\,
	datad => \inst|dec_dato[0]~6_combout\,
	combout => \inst|dec_dato[0]~8_combout\);

-- Location: FF_X47_Y51_N1
\inst|dato[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_pulso~clkctrl_outclk\,
	d => \inst|dec_dato[0]~8_combout\,
	ena => \inst|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dato\(0));

-- Location: LCCOMB_X49_Y51_N12
\inst|dec_dato[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dec_dato[3]~0_combout\ = (\columnas[0]~input_o\ & (!\columnas[1]~input_o\)) # (!\columnas[0]~input_o\ & (\inst|cont\(1) & ((\columnas[1]~input_o\) # (!\inst|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \columnas[0]~input_o\,
	datab => \columnas[1]~input_o\,
	datac => \inst|cont\(1),
	datad => \inst|cont\(0),
	combout => \inst|dec_dato[3]~0_combout\);

-- Location: LCCOMB_X49_Y51_N22
\inst|dec_dato[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dec_dato[3]~1_combout\ = (\columnas[0]~input_o\ & (!\columnas[1]~input_o\)) # (!\columnas[0]~input_o\ & (\inst|cont\(1) & ((\columnas[1]~input_o\) # (\inst|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \columnas[0]~input_o\,
	datab => \columnas[1]~input_o\,
	datac => \inst|cont\(1),
	datad => \inst|cont\(0),
	combout => \inst|dec_dato[3]~1_combout\);

-- Location: LCCOMB_X47_Y51_N8
\inst|dec_dato[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dec_dato[3]~2_combout\ = (\columnas[3]~input_o\ & (!\columnas[2]~input_o\ & (!\inst|dec_dato[3]~0_combout\ & \inst|dec_dato[3]~1_combout\))) # (!\columnas[3]~input_o\ & (\inst|dec_dato[3]~0_combout\ & (\columnas[2]~input_o\ $ 
-- (\inst|dec_dato[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \columnas[3]~input_o\,
	datab => \columnas[2]~input_o\,
	datac => \inst|dec_dato[3]~0_combout\,
	datad => \inst|dec_dato[3]~1_combout\,
	combout => \inst|dec_dato[3]~2_combout\);

-- Location: FF_X47_Y51_N9
\inst|dato[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_pulso~clkctrl_outclk\,
	d => \inst|dec_dato[3]~2_combout\,
	ena => \inst|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dato\(3));

-- Location: LCCOMB_X49_Y51_N6
\inst|dec_dato[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dec_dato[2]~4_combout\ = (\columnas[1]~input_o\ & (!\columnas[0]~input_o\ & (!\columnas[3]~input_o\ & \inst|cont\(0)))) # (!\columnas[1]~input_o\ & (\columnas[0]~input_o\ $ ((\columnas[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \columnas[0]~input_o\,
	datab => \columnas[1]~input_o\,
	datac => \columnas[3]~input_o\,
	datad => \inst|cont\(0),
	combout => \inst|dec_dato[2]~4_combout\);

-- Location: LCCOMB_X49_Y51_N24
\inst|dec_dato[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dec_dato[2]~3_combout\ = (!\columnas[1]~input_o\ & (\columnas[3]~input_o\ $ (((\columnas[0]~input_o\) # (\inst|cont\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \columnas[0]~input_o\,
	datab => \columnas[1]~input_o\,
	datac => \columnas[3]~input_o\,
	datad => \inst|cont\(0),
	combout => \inst|dec_dato[2]~3_combout\);

-- Location: LCCOMB_X47_Y51_N14
\inst|dec_dato[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dec_dato[2]~5_combout\ = (\columnas[2]~input_o\ & (!\inst|cont\(1) & (!\inst|dec_dato[2]~4_combout\ & \inst|dec_dato[2]~3_combout\))) # (!\columnas[2]~input_o\ & (\inst|dec_dato[2]~4_combout\ & ((\inst|cont\(1)) # (!\inst|dec_dato[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cont\(1),
	datab => \columnas[2]~input_o\,
	datac => \inst|dec_dato[2]~4_combout\,
	datad => \inst|dec_dato[2]~3_combout\,
	combout => \inst|dec_dato[2]~5_combout\);

-- Location: FF_X47_Y51_N15
\inst|dato[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_pulso~clkctrl_outclk\,
	d => \inst|dec_dato[2]~5_combout\,
	ena => \inst|process_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dato\(2));

-- Location: LCCOMB_X47_Y51_N2
\inst4|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal1~2_combout\ = (\inst|dato\(1) & (!\inst|dato\(0) & (\inst|dato\(3) & \inst|dato\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dato\(1),
	datab => \inst|dato\(0),
	datac => \inst|dato\(3),
	datad => \inst|dato\(2),
	combout => \inst4|Equal1~2_combout\);

-- Location: LCCOMB_X46_Y51_N26
\inst4|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector14~0_combout\ = (\inst4|estado_pr.S4~q\ & \inst4|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|estado_pr.S4~q\,
	datad => \inst4|Equal1~2_combout\,
	combout => \inst4|Selector14~0_combout\);

-- Location: LCCOMB_X46_Y51_N0
\inst4|estado_sig.S7_664\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|estado_sig.S7_664~combout\ = (GLOBAL(\inst4|WideOr0~clkctrl_outclk\) & (\inst4|estado_sig.S7_664~combout\)) # (!GLOBAL(\inst4|WideOr0~clkctrl_outclk\) & ((\inst4|Selector14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|estado_sig.S7_664~combout\,
	datac => \inst4|WideOr0~clkctrl_outclk\,
	datad => \inst4|Selector14~0_combout\,
	combout => \inst4|estado_sig.S7_664~combout\);

-- Location: LCCOMB_X47_Y51_N12
\inst4|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal1~0_combout\ = (\inst|dato\(0) & (\inst|dato\(2) & (\inst|dato\(3) & !\inst|dato\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dato\(0),
	datab => \inst|dato\(2),
	datac => \inst|dato\(3),
	datad => \inst|dato\(1),
	combout => \inst4|Equal1~0_combout\);

-- Location: FF_X46_Y51_N27
\inst4|estado_pr.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulso~q\,
	asdata => \inst4|estado_sig.S7_664~combout\,
	clrn => \inst4|ALT_INV_Equal1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|estado_pr.S7~q\);

-- Location: LCCOMB_X47_Y51_N16
\inst4|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector9~0_combout\ = ((\inst|dato\(1) & (\inst|dato\(0))) # (!\inst|dato\(1) & ((!\inst|dato\(2)) # (!\inst|dato\(0))))) # (!\inst|dato\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dato\(1),
	datab => \inst|dato\(3),
	datac => \inst|dato\(0),
	datad => \inst|dato\(2),
	combout => \inst4|Selector9~0_combout\);

-- Location: LCCOMB_X47_Y51_N22
\inst4|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal1~3_combout\ = (\inst|dato\(1) & (\inst|dato\(2) & (\inst|dato\(3) & \inst|dato\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dato\(1),
	datab => \inst|dato\(2),
	datac => \inst|dato\(3),
	datad => \inst|dato\(0),
	combout => \inst4|Equal1~3_combout\);

-- Location: LCCOMB_X47_Y51_N10
\inst4|estado_sig~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|estado_sig~0_combout\ = (\inst|dato\(3) & (\inst|dato\(2) & (\inst|dato\(1) $ (\inst|dato\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dato\(1),
	datab => \inst|dato\(0),
	datac => \inst|dato\(3),
	datad => \inst|dato\(2),
	combout => \inst4|estado_sig~0_combout\);

-- Location: LCCOMB_X46_Y51_N18
\inst4|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|process_1~0_combout\ = ((!\inst|dato\(2) & !\inst|dato\(1))) # (!\inst|dato\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dato\(3),
	datac => \inst|dato\(2),
	datad => \inst|dato\(1),
	combout => \inst4|process_1~0_combout\);

-- Location: LCCOMB_X46_Y51_N6
\inst4|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector3~0_combout\ = (!\inst4|estado_pr.S4~q\ & (!\inst4|estado_pr.S5~q\ & (!\inst4|estado_pr.S2~q\ & !\inst4|estado_pr.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|estado_pr.S4~q\,
	datab => \inst4|estado_pr.S5~q\,
	datac => \inst4|estado_pr.S2~q\,
	datad => \inst4|estado_pr.S3~q\,
	combout => \inst4|Selector3~0_combout\);

-- Location: LCCOMB_X46_Y51_N24
\inst4|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector3~1_combout\ = (\inst4|process_1~0_combout\ & (!\inst4|estado_pr.S1~q\ & \inst4|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_1~0_combout\,
	datab => \inst4|estado_pr.S1~q\,
	datad => \inst4|Selector3~0_combout\,
	combout => \inst4|Selector3~1_combout\);

-- Location: LCCOMB_X46_Y51_N10
\inst4|estado_sig.S1_712\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|estado_sig.S1_712~combout\ = (GLOBAL(\inst4|WideOr0~clkctrl_outclk\) & (\inst4|estado_sig.S1_712~combout\)) # (!GLOBAL(\inst4|WideOr0~clkctrl_outclk\) & ((\inst4|Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|estado_sig.S1_712~combout\,
	datac => \inst4|WideOr0~clkctrl_outclk\,
	datad => \inst4|Selector3~1_combout\,
	combout => \inst4|estado_sig.S1_712~combout\);

-- Location: FF_X46_Y51_N11
\inst4|estado_pr.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulso~clkctrl_outclk\,
	d => \inst4|estado_sig.S1_712~combout\,
	clrn => \inst4|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|estado_pr.S1~q\);

-- Location: LCCOMB_X46_Y51_N14
\inst4|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector5~0_combout\ = (\inst|dato\(3) & ((\inst|dato\(1) & (!\inst|dato\(2))) # (!\inst|dato\(1) & (\inst|dato\(2) & !\inst|dato\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dato\(1),
	datab => \inst|dato\(3),
	datac => \inst|dato\(2),
	datad => \inst|dato\(0),
	combout => \inst4|Selector5~0_combout\);

-- Location: LCCOMB_X46_Y51_N16
\inst4|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector5~1_combout\ = (\inst4|estado_pr.S2~q\ & ((\inst4|Selector5~0_combout\) # ((\inst4|estado_pr.S1~q\ & \inst4|process_1~0_combout\)))) # (!\inst4|estado_pr.S2~q\ & (\inst4|estado_pr.S1~q\ & ((\inst4|process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|estado_pr.S2~q\,
	datab => \inst4|estado_pr.S1~q\,
	datac => \inst4|Selector5~0_combout\,
	datad => \inst4|process_1~0_combout\,
	combout => \inst4|Selector5~1_combout\);

-- Location: LCCOMB_X46_Y51_N30
\inst4|estado_sig.S2_704\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|estado_sig.S2_704~combout\ = (GLOBAL(\inst4|WideOr0~clkctrl_outclk\) & (\inst4|estado_sig.S2_704~combout\)) # (!GLOBAL(\inst4|WideOr0~clkctrl_outclk\) & ((\inst4|Selector5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|estado_sig.S2_704~combout\,
	datac => \inst4|WideOr0~clkctrl_outclk\,
	datad => \inst4|Selector5~1_combout\,
	combout => \inst4|estado_sig.S2_704~combout\);

-- Location: FF_X46_Y51_N31
\inst4|estado_pr.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulso~clkctrl_outclk\,
	d => \inst4|estado_sig.S2_704~combout\,
	clrn => \inst4|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|estado_pr.S2~q\);

-- Location: LCCOMB_X45_Y51_N16
\inst4|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector7~0_combout\ = (\inst4|estado_pr.S2~q\ & (((!\inst|dato\(2) & !\inst|dato\(1))) # (!\inst|dato\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dato\(2),
	datab => \inst|dato\(3),
	datac => \inst4|estado_pr.S2~q\,
	datad => \inst|dato\(1),
	combout => \inst4|Selector7~0_combout\);

-- Location: LCCOMB_X45_Y51_N2
\inst4|Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector7~1_combout\ = (\inst4|Selector7~0_combout\) # ((!\inst4|Equal1~3_combout\ & (\inst4|estado_pr.S3~q\ & !\inst4|estado_sig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal1~3_combout\,
	datab => \inst4|estado_pr.S3~q\,
	datac => \inst4|estado_sig~0_combout\,
	datad => \inst4|Selector7~0_combout\,
	combout => \inst4|Selector7~1_combout\);

-- Location: LCCOMB_X45_Y51_N14
\inst4|estado_sig.S3_696\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|estado_sig.S3_696~combout\ = (GLOBAL(\inst4|WideOr0~clkctrl_outclk\) & (\inst4|estado_sig.S3_696~combout\)) # (!GLOBAL(\inst4|WideOr0~clkctrl_outclk\) & ((\inst4|Selector7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|estado_sig.S3_696~combout\,
	datac => \inst4|WideOr0~clkctrl_outclk\,
	datad => \inst4|Selector7~1_combout\,
	combout => \inst4|estado_sig.S3_696~combout\);

-- Location: FF_X45_Y51_N15
\inst4|estado_pr.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulso~clkctrl_outclk\,
	d => \inst4|estado_sig.S3_696~combout\,
	clrn => \inst4|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|estado_pr.S3~q\);

-- Location: LCCOMB_X45_Y51_N18
\inst4|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector11~0_combout\ = (\inst4|estado_pr.S3~q\) # ((\inst4|estado_pr.S2~q\ & !\inst4|process_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|estado_pr.S3~q\,
	datac => \inst4|estado_pr.S2~q\,
	datad => \inst4|process_1~0_combout\,
	combout => \inst4|Selector11~0_combout\);

-- Location: LCCOMB_X45_Y51_N6
\inst4|Selector11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector11~1_combout\ = (\inst4|estado_pr.S5~q\ & ((\inst4|Selector9~0_combout\) # ((\inst4|Equal1~2_combout\ & \inst4|Selector11~0_combout\)))) # (!\inst4|estado_pr.S5~q\ & (\inst4|Equal1~2_combout\ & ((\inst4|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|estado_pr.S5~q\,
	datab => \inst4|Equal1~2_combout\,
	datac => \inst4|Selector9~0_combout\,
	datad => \inst4|Selector11~0_combout\,
	combout => \inst4|Selector11~1_combout\);

-- Location: LCCOMB_X45_Y51_N28
\inst4|estado_sig.S5_680\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|estado_sig.S5_680~combout\ = (GLOBAL(\inst4|WideOr0~clkctrl_outclk\) & (\inst4|estado_sig.S5_680~combout\)) # (!GLOBAL(\inst4|WideOr0~clkctrl_outclk\) & ((\inst4|Selector11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|estado_sig.S5_680~combout\,
	datac => \inst4|WideOr0~clkctrl_outclk\,
	datad => \inst4|Selector11~1_combout\,
	combout => \inst4|estado_sig.S5_680~combout\);

-- Location: FF_X46_Y51_N23
\inst4|estado_pr.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulso~clkctrl_outclk\,
	asdata => \inst4|estado_sig.S5_680~combout\,
	clrn => \inst4|ALT_INV_Equal1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|estado_pr.S5~q\);

-- Location: LCCOMB_X46_Y51_N4
\inst4|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal1~1_combout\ = (!\inst|dato\(2) & (\inst|dato\(3) & (!\inst|dato\(0) & \inst|dato\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dato\(2),
	datab => \inst|dato\(3),
	datac => \inst|dato\(0),
	datad => \inst|dato\(1),
	combout => \inst4|Equal1~1_combout\);

-- Location: LCCOMB_X46_Y51_N20
\inst4|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector16~0_combout\ = (\inst4|estado_pr.S5~q\ & \inst4|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|estado_pr.S5~q\,
	datab => \inst4|Equal1~1_combout\,
	combout => \inst4|Selector16~0_combout\);

-- Location: LCCOMB_X46_Y51_N2
\inst4|estado_sig.S8_656\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|estado_sig.S8_656~combout\ = (GLOBAL(\inst4|WideOr0~clkctrl_outclk\) & (\inst4|estado_sig.S8_656~combout\)) # (!GLOBAL(\inst4|WideOr0~clkctrl_outclk\) & ((\inst4|Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|estado_sig.S8_656~combout\,
	datac => \inst4|WideOr0~clkctrl_outclk\,
	datad => \inst4|Selector16~0_combout\,
	combout => \inst4|estado_sig.S8_656~combout\);

-- Location: FF_X46_Y51_N25
\inst4|estado_pr.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulso~q\,
	asdata => \inst4|estado_sig.S8_656~combout\,
	clrn => \inst4|ALT_INV_Equal1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|estado_pr.S8~q\);

-- Location: LCCOMB_X46_Y51_N28
\inst4|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector17~0_combout\ = (\inst4|estado_pr.S5~q\ & \inst4|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|estado_pr.S5~q\,
	datad => \inst4|Equal1~2_combout\,
	combout => \inst4|Selector17~0_combout\);

-- Location: LCCOMB_X46_Y51_N12
\inst4|estado_sig.S9_648\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|estado_sig.S9_648~combout\ = (GLOBAL(\inst4|WideOr0~clkctrl_outclk\) & ((\inst4|estado_sig.S9_648~combout\))) # (!GLOBAL(\inst4|WideOr0~clkctrl_outclk\) & (\inst4|Selector17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr0~clkctrl_outclk\,
	datac => \inst4|Selector17~0_combout\,
	datad => \inst4|estado_sig.S9_648~combout\,
	combout => \inst4|estado_sig.S9_648~combout\);

-- Location: FF_X46_Y51_N29
\inst4|estado_pr.S9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulso~q\,
	asdata => \inst4|estado_sig.S9_648~combout\,
	clrn => \inst4|ALT_INV_Equal1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|estado_pr.S9~q\);

-- Location: LCCOMB_X46_Y51_N8
\inst4|WideOr0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|WideOr0~combout\ = (\inst4|estado_pr.S7~q\) # ((\inst4|estado_pr.S6~q\) # ((\inst4|estado_pr.S8~q\) # (\inst4|estado_pr.S9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|estado_pr.S7~q\,
	datab => \inst4|estado_pr.S6~q\,
	datac => \inst4|estado_pr.S8~q\,
	datad => \inst4|estado_pr.S9~q\,
	combout => \inst4|WideOr0~combout\);

-- Location: CLKCTRL_G13
\inst4|WideOr0~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|WideOr0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|WideOr0~clkctrl_outclk\);

-- Location: LCCOMB_X45_Y51_N24
\inst4|Selector9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector9~1_combout\ = (\inst4|estado_pr.S4~q\ & ((\inst4|Selector9~0_combout\) # ((\inst4|Equal1~3_combout\ & \inst4|Selector11~0_combout\)))) # (!\inst4|estado_pr.S4~q\ & (\inst4|Equal1~3_combout\ & ((\inst4|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|estado_pr.S4~q\,
	datab => \inst4|Equal1~3_combout\,
	datac => \inst4|Selector9~0_combout\,
	datad => \inst4|Selector11~0_combout\,
	combout => \inst4|Selector9~1_combout\);

-- Location: LCCOMB_X45_Y51_N22
\inst4|estado_sig.S4_688\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|estado_sig.S4_688~combout\ = (GLOBAL(\inst4|WideOr0~clkctrl_outclk\) & (\inst4|estado_sig.S4_688~combout\)) # (!GLOBAL(\inst4|WideOr0~clkctrl_outclk\) & ((\inst4|Selector9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|estado_sig.S4_688~combout\,
	datac => \inst4|WideOr0~clkctrl_outclk\,
	datad => \inst4|Selector9~1_combout\,
	combout => \inst4|estado_sig.S4_688~combout\);

-- Location: FF_X46_Y51_N21
\inst4|estado_pr.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulso~clkctrl_outclk\,
	asdata => \inst4|estado_sig.S4_688~combout\,
	clrn => \inst4|ALT_INV_Equal1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|estado_pr.S4~q\);

-- Location: LCCOMB_X45_Y51_N30
\inst4|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Selector13~0_combout\ = (\inst4|estado_pr.S4~q\ & \inst4|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|estado_pr.S4~q\,
	datad => \inst4|Equal1~1_combout\,
	combout => \inst4|Selector13~0_combout\);

-- Location: LCCOMB_X45_Y51_N0
\inst4|estado_sig.S6_672\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|estado_sig.S6_672~combout\ = (GLOBAL(\inst4|WideOr0~clkctrl_outclk\) & (\inst4|estado_sig.S6_672~combout\)) # (!GLOBAL(\inst4|WideOr0~clkctrl_outclk\) & ((\inst4|Selector13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|estado_sig.S6_672~combout\,
	datac => \inst4|Selector13~0_combout\,
	datad => \inst4|WideOr0~clkctrl_outclk\,
	combout => \inst4|estado_sig.S6_672~combout\);

-- Location: FF_X45_Y51_N1
\inst4|estado_pr.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulso~clkctrl_outclk\,
	d => \inst4|estado_sig.S6_672~combout\,
	clrn => \inst4|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|estado_pr.S6~q\);

-- Location: IOIBUF_X46_Y54_N1
\magna~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_magna,
	o => \magna~input_o\);

-- Location: LCCOMB_X46_Y51_N22
\inst4|bombaMagna~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|bombaMagna~2_combout\ = (\magna~input_o\ & ((\inst4|estado_pr.S6~q\) # (\inst4|estado_pr.S8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|estado_pr.S6~q\,
	datab => \magna~input_o\,
	datad => \inst4|estado_pr.S8~q\,
	combout => \inst4|bombaMagna~2_combout\);

-- Location: IOIBUF_X46_Y54_N22
\premium~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_premium,
	o => \premium~input_o\);

-- Location: LCCOMB_X45_Y51_N26
\inst4|bombaPremium~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|bombaPremium~2_combout\ = (\premium~input_o\ & ((\inst4|estado_pr.S9~q\) # (\inst4|estado_pr.S7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \premium~input_o\,
	datac => \inst4|estado_pr.S9~q\,
	datad => \inst4|estado_pr.S7~q\,
	combout => \inst4|bombaPremium~2_combout\);

-- Location: LCCOMB_X50_Y53_N24
\inst|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal2~1_combout\ = (!\inst|cont\(0) & \inst|cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cont\(0),
	datad => \inst|cont\(1),
	combout => \inst|Equal2~1_combout\);

-- Location: LCCOMB_X49_Y53_N4
\inst|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal2~2_combout\ = (\inst|cont\(0) & !\inst|cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cont\(0),
	datad => \inst|cont\(1),
	combout => \inst|Equal2~2_combout\);

-- Location: LCCOMB_X50_Y53_N26
\inst|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal4~0_combout\ = (\inst|cont\(0)) # (\inst|cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cont\(0),
	datad => \inst|cont\(1),
	combout => \inst|Equal4~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_bombaM <= \bombaM~output_o\;

ww_bombaP <= \bombaP~output_o\;

ww_filas(3) <= \filas[3]~output_o\;

ww_filas(2) <= \filas[2]~output_o\;

ww_filas(1) <= \filas[1]~output_o\;

ww_filas(0) <= \filas[0]~output_o\;
END structure;


