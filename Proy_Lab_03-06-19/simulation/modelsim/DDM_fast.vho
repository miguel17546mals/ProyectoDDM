-- Copyright (C) 1991-2013 Altera Corporation
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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/03/2019 11:05:39"

-- 
-- Device: Altera EP2C5T144C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

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
-- dato	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salidaMagna	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salidaPremium	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- columna[3]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- columna[2]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- columna[1]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- columna[0]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[3]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[2]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[1]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[0]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug[3]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug[2]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug[1]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug[0]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- fila[0]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fila[1]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fila[2]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fila[3]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- magna	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- premium	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \inst17|WideOr9~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst17|Selector34~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|clk_state~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst17|clk_state~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst17|cont[4]~15_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|count[0]~16_combout\ : std_logic;
SIGNAL \inst|count[0]~17\ : std_logic;
SIGNAL \inst|count[1]~18_combout\ : std_logic;
SIGNAL \inst|count[1]~19\ : std_logic;
SIGNAL \inst|count[2]~20_combout\ : std_logic;
SIGNAL \inst|count[2]~21\ : std_logic;
SIGNAL \inst|count[3]~22_combout\ : std_logic;
SIGNAL \inst|count[3]~23\ : std_logic;
SIGNAL \inst|count[4]~24_combout\ : std_logic;
SIGNAL \inst|count[4]~25\ : std_logic;
SIGNAL \inst|count[5]~26_combout\ : std_logic;
SIGNAL \inst|count[5]~27\ : std_logic;
SIGNAL \inst|count[6]~28_combout\ : std_logic;
SIGNAL \inst|count[6]~29\ : std_logic;
SIGNAL \inst|count[7]~30_combout\ : std_logic;
SIGNAL \inst|count[7]~31\ : std_logic;
SIGNAL \inst|count[8]~32_combout\ : std_logic;
SIGNAL \inst|count[8]~33\ : std_logic;
SIGNAL \inst|count[9]~34_combout\ : std_logic;
SIGNAL \inst|count[9]~35\ : std_logic;
SIGNAL \inst|count[10]~36_combout\ : std_logic;
SIGNAL \inst|count[10]~37\ : std_logic;
SIGNAL \inst|count[11]~38_combout\ : std_logic;
SIGNAL \inst|count[11]~39\ : std_logic;
SIGNAL \inst|count[12]~40_combout\ : std_logic;
SIGNAL \inst|count[12]~41\ : std_logic;
SIGNAL \inst|count[13]~42_combout\ : std_logic;
SIGNAL \inst|count[13]~43\ : std_logic;
SIGNAL \inst|count[14]~44_combout\ : std_logic;
SIGNAL \inst|count[14]~45\ : std_logic;
SIGNAL \inst|count[15]~46_combout\ : std_logic;
SIGNAL \inst17|i[0]~26_combout\ : std_logic;
SIGNAL \inst17|i[0]~27\ : std_logic;
SIGNAL \inst17|i[1]~28_combout\ : std_logic;
SIGNAL \inst17|i[1]~29\ : std_logic;
SIGNAL \inst17|i[2]~30_combout\ : std_logic;
SIGNAL \inst17|i[2]~31\ : std_logic;
SIGNAL \inst17|i[3]~32_combout\ : std_logic;
SIGNAL \inst17|i[3]~33\ : std_logic;
SIGNAL \inst17|i[4]~34_combout\ : std_logic;
SIGNAL \inst17|i[4]~35\ : std_logic;
SIGNAL \inst17|i[5]~36_combout\ : std_logic;
SIGNAL \inst17|i[5]~37\ : std_logic;
SIGNAL \inst17|i[6]~38_combout\ : std_logic;
SIGNAL \inst17|i[6]~39\ : std_logic;
SIGNAL \inst17|i[7]~40_combout\ : std_logic;
SIGNAL \inst17|i[7]~41\ : std_logic;
SIGNAL \inst17|i[8]~42_combout\ : std_logic;
SIGNAL \inst17|i[8]~43\ : std_logic;
SIGNAL \inst17|i[9]~44_combout\ : std_logic;
SIGNAL \inst17|i[9]~45\ : std_logic;
SIGNAL \inst17|i[10]~46_combout\ : std_logic;
SIGNAL \inst17|i[10]~47\ : std_logic;
SIGNAL \inst17|i[11]~48_combout\ : std_logic;
SIGNAL \inst17|i[11]~49\ : std_logic;
SIGNAL \inst17|i[12]~50_combout\ : std_logic;
SIGNAL \inst17|i[12]~51\ : std_logic;
SIGNAL \inst17|i[13]~52_combout\ : std_logic;
SIGNAL \inst17|i[13]~53\ : std_logic;
SIGNAL \inst17|i[14]~54_combout\ : std_logic;
SIGNAL \inst17|i[14]~55\ : std_logic;
SIGNAL \inst17|i[15]~56_combout\ : std_logic;
SIGNAL \inst17|i[15]~57\ : std_logic;
SIGNAL \inst17|i[16]~58_combout\ : std_logic;
SIGNAL \inst17|i[16]~59\ : std_logic;
SIGNAL \inst17|i[17]~60_combout\ : std_logic;
SIGNAL \inst17|i[17]~61\ : std_logic;
SIGNAL \inst17|i[18]~62_combout\ : std_logic;
SIGNAL \inst17|i[18]~63\ : std_logic;
SIGNAL \inst17|i[19]~64_combout\ : std_logic;
SIGNAL \inst17|i[19]~65\ : std_logic;
SIGNAL \inst17|i[20]~66_combout\ : std_logic;
SIGNAL \inst17|i[20]~67\ : std_logic;
SIGNAL \inst17|i[21]~68_combout\ : std_logic;
SIGNAL \inst17|i[21]~69\ : std_logic;
SIGNAL \inst17|i[22]~70_combout\ : std_logic;
SIGNAL \inst17|i[22]~71\ : std_logic;
SIGNAL \inst17|i[23]~72_combout\ : std_logic;
SIGNAL \inst17|i[23]~73\ : std_logic;
SIGNAL \inst17|i[24]~74_combout\ : std_logic;
SIGNAL \inst17|i[24]~75\ : std_logic;
SIGNAL \inst17|i[25]~76_combout\ : std_logic;
SIGNAL \inst17|Add1~2_combout\ : std_logic;
SIGNAL \inst17|Add0~2_combout\ : std_logic;
SIGNAL \inst17|Add0~4_combout\ : std_logic;
SIGNAL \inst17|Add0~8_combout\ : std_logic;
SIGNAL \inst17|Add0~12_combout\ : std_logic;
SIGNAL \inst|clk_state~regout\ : std_logic;
SIGNAL \inst17|clk_state~regout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|clk_state~0_combout\ : std_logic;
SIGNAL \inst17|LessThan0~0_combout\ : std_logic;
SIGNAL \inst17|LessThan0~1_combout\ : std_logic;
SIGNAL \inst17|LessThan0~2_combout\ : std_logic;
SIGNAL \inst17|LessThan0~3_combout\ : std_logic;
SIGNAL \inst17|LessThan0~4_combout\ : std_logic;
SIGNAL \inst17|LessThan0~5_combout\ : std_logic;
SIGNAL \inst17|clk_state~0_combout\ : std_logic;
SIGNAL \inst17|Selector19~0_combout\ : std_logic;
SIGNAL \inst17|Selector20~0_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[18]~57_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[17]~59_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[16]~61_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \inst17|Selector1~2_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[21]~67_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[20]~69_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[27]~71_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[26]~72_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[25]~75_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[31]~79_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[30]~80_combout\ : std_logic;
SIGNAL \inst17|Selector5~2_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[36]~85_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[35]~87_combout\ : std_logic;
SIGNAL \inst17|Selector7~0_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[43]~88_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[42]~89_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[41]~90_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[41]~91_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[40]~92_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[40]~93_combout\ : std_logic;
SIGNAL \inst17|Selector7~1_combout\ : std_logic;
SIGNAL \inst17|LessThan0~6_combout\ : std_logic;
SIGNAL \inst17|Selector30~0_combout\ : std_logic;
SIGNAL \inst17|Selector28~0_combout\ : std_logic;
SIGNAL \inst17|Selector28~1_combout\ : std_logic;
SIGNAL \inst17|Selector25~0_combout\ : std_logic;
SIGNAL \inst17|Selector23~1_combout\ : std_logic;
SIGNAL \inst17|Selector1~3_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[28]~94_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[33]~95_combout\ : std_logic;
SIGNAL \inst17|Selector5~3_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[38]~96_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[43]~97_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[23]~98_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[32]~101_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[37]~102_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[42]~103_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \inst|clk_state~clkctrl_outclk\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst17|clk_state~clkctrl_outclk\ : std_logic;
SIGNAL \inst8|Mux4~0_combout\ : std_logic;
SIGNAL \inst17|cont[0]~7_combout\ : std_logic;
SIGNAL \inst8|pr_state.s3~regout\ : std_logic;
SIGNAL \inst8|pr_state.s0~0_combout\ : std_logic;
SIGNAL \inst8|pr_state.s0~regout\ : std_logic;
SIGNAL \inst8|pr_state.s1~0_combout\ : std_logic;
SIGNAL \inst8|pr_state.s1~regout\ : std_logic;
SIGNAL \inst8|pr_state.s2~regout\ : std_logic;
SIGNAL \inst8|Selector7~0_combout\ : std_logic;
SIGNAL \inst8|Mux3~0_combout\ : std_logic;
SIGNAL \inst8|Mux3~1_combout\ : std_logic;
SIGNAL \inst8|Mux2~0_combout\ : std_logic;
SIGNAL \inst8|Mux2~1_combout\ : std_logic;
SIGNAL \inst17|Equal10~4_combout\ : std_logic;
SIGNAL \inst17|estado_sig~1_combout\ : std_logic;
SIGNAL \inst17|Selector16~0_combout\ : std_logic;
SIGNAL \inst17|Equal10~2_combout\ : std_logic;
SIGNAL \inst17|estado_pr.S4~regout\ : std_logic;
SIGNAL \inst17|Equal10~3_combout\ : std_logic;
SIGNAL \inst17|estado_sig.S7~0_combout\ : std_logic;
SIGNAL \inst17|estado_pr.S7~regout\ : std_logic;
SIGNAL \inst17|Selector17~0_combout\ : std_logic;
SIGNAL \inst17|estado_pr.S5~regout\ : std_logic;
SIGNAL \inst17|estado_sig.S9~0_combout\ : std_logic;
SIGNAL \inst17|estado_pr.S9~regout\ : std_logic;
SIGNAL \inst8|Selector6~0_combout\ : std_logic;
SIGNAL \inst17|Equal10~1_combout\ : std_logic;
SIGNAL \inst17|estado_sig.S8~0_combout\ : std_logic;
SIGNAL \inst17|estado_pr.S8~regout\ : std_logic;
SIGNAL \inst17|WideOr9~combout\ : std_logic;
SIGNAL \inst17|WideOr9~clkctrl_outclk\ : std_logic;
SIGNAL \inst17|process_1~3_combout\ : std_logic;
SIGNAL \inst17|estado_sig~0_combout\ : std_logic;
SIGNAL \inst17|process_1~2_combout\ : std_logic;
SIGNAL \inst17|Equal10~0_combout\ : std_logic;
SIGNAL \inst17|Selector14~0_combout\ : std_logic;
SIGNAL \inst17|estado_pr.S1~regout\ : std_logic;
SIGNAL \inst17|Selector15~0_combout\ : std_logic;
SIGNAL \inst17|estado_pr.S3~regout\ : std_logic;
SIGNAL \inst17|Selector13~0_combout\ : std_logic;
SIGNAL \inst17|Selector13~1_combout\ : std_logic;
SIGNAL \inst17|Selector13~2_combout\ : std_logic;
SIGNAL \inst17|estado_pr.S0~regout\ : std_logic;
SIGNAL \inst17|Selector34~0_combout\ : std_logic;
SIGNAL \inst17|Selector34~0clkctrl_outclk\ : std_logic;
SIGNAL \inst17|Add0~25_combout\ : std_logic;
SIGNAL \inst17|Add0~27_combout\ : std_logic;
SIGNAL \inst17|Add0~3\ : std_logic;
SIGNAL \inst17|Add0~5\ : std_logic;
SIGNAL \inst17|Add0~6_combout\ : std_logic;
SIGNAL \inst17|Add0~28_combout\ : std_logic;
SIGNAL \inst17|Add0~26_combout\ : std_logic;
SIGNAL \inst17|Add1~1\ : std_logic;
SIGNAL \inst17|Add1~3\ : std_logic;
SIGNAL \inst17|Add1~5\ : std_logic;
SIGNAL \inst17|Add1~7\ : std_logic;
SIGNAL \inst17|Add1~8_combout\ : std_logic;
SIGNAL \inst17|Add1~6_combout\ : std_logic;
SIGNAL \inst17|Add1~4_combout\ : std_logic;
SIGNAL \inst17|Add0~7\ : std_logic;
SIGNAL \inst17|Add0~9\ : std_logic;
SIGNAL \inst17|Add0~11\ : std_logic;
SIGNAL \inst17|Add0~13\ : std_logic;
SIGNAL \inst17|Add0~14_combout\ : std_logic;
SIGNAL \inst17|Add0~16_combout\ : std_logic;
SIGNAL \inst17|Selector18~0_combout\ : std_logic;
SIGNAL \inst17|Add0~23_combout\ : std_logic;
SIGNAL \inst17|Add0~10_combout\ : std_logic;
SIGNAL \inst17|Add0~24_combout\ : std_logic;
SIGNAL \inst17|Add1~9\ : std_logic;
SIGNAL \inst17|Add1~10_combout\ : std_logic;
SIGNAL \inst17|Add0~15\ : std_logic;
SIGNAL \inst17|Add0~17_combout\ : std_logic;
SIGNAL \inst17|Add0~19_combout\ : std_logic;
SIGNAL \inst17|Add1~11\ : std_logic;
SIGNAL \inst17|Add1~12_combout\ : std_logic;
SIGNAL \inst17|Add0~18\ : std_logic;
SIGNAL \inst17|Add0~20_combout\ : std_logic;
SIGNAL \inst17|Add0~22_combout\ : std_logic;
SIGNAL \inst17|Selector32~0_combout\ : std_logic;
SIGNAL \inst17|Selector32~1_combout\ : std_logic;
SIGNAL \inst17|Selector23~0_combout\ : std_logic;
SIGNAL \inst17|Selector0~2_combout\ : std_logic;
SIGNAL \inst17|Selector0~3_combout\ : std_logic;
SIGNAL \inst17|cont[0]~8\ : std_logic;
SIGNAL \inst17|cont[1]~9_combout\ : std_logic;
SIGNAL \inst17|cont[1]~10\ : std_logic;
SIGNAL \inst17|cont[2]~12\ : std_logic;
SIGNAL \inst17|cont[3]~14\ : std_logic;
SIGNAL \inst17|cont[4]~16\ : std_logic;
SIGNAL \inst17|cont[5]~17_combout\ : std_logic;
SIGNAL \inst17|Selector30~1_combout\ : std_logic;
SIGNAL \inst17|Selector3~2_combout\ : std_logic;
SIGNAL \inst17|Selector3~3_combout\ : std_logic;
SIGNAL \inst17|Selector29~0_combout\ : std_logic;
SIGNAL \inst17|Selector29~1_combout\ : std_logic;
SIGNAL \inst17|Selector4~2_combout\ : std_logic;
SIGNAL \inst17|Selector4~3_combout\ : std_logic;
SIGNAL \inst17|cont[2]~11_combout\ : std_logic;
SIGNAL \inst17|Selector31~0_combout\ : std_logic;
SIGNAL \inst17|Selector31~1_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[17]~58_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[16]~60_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[15]~62_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[18]~56_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[22]~99_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[20]~68_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[26]~73_combout\ : std_logic;
SIGNAL \inst17|Selector27~0_combout\ : std_logic;
SIGNAL \inst17|Selector27~1_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[25]~74_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[28]~70_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[27]~100_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[32]~77_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[31]~78_combout\ : std_logic;
SIGNAL \inst17|Selector26~0_combout\ : std_logic;
SIGNAL \inst17|Add1~0_combout\ : std_logic;
SIGNAL \inst17|Selector26~1_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[30]~81_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[33]~76_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[38]~82_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[37]~83_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[36]~84_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|StageOut[35]~86_combout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst17|Selector6~0_combout\ : std_logic;
SIGNAL \inst17|Selector6~1_combout\ : std_logic;
SIGNAL \inst17|LessThan1~1_cout\ : std_logic;
SIGNAL \inst17|LessThan1~3_cout\ : std_logic;
SIGNAL \inst17|LessThan1~5_cout\ : std_logic;
SIGNAL \inst17|LessThan1~7_cout\ : std_logic;
SIGNAL \inst17|LessThan1~9_cout\ : std_logic;
SIGNAL \inst17|LessThan1~11_cout\ : std_logic;
SIGNAL \inst17|LessThan1~12_combout\ : std_logic;
SIGNAL \inst17|LessThan1~14_combout\ : std_logic;
SIGNAL \inst17|cont[3]~13_combout\ : std_logic;
SIGNAL \inst17|Equal15~0_combout\ : std_logic;
SIGNAL \inst17|cont[5]~18\ : std_logic;
SIGNAL \inst17|cont[6]~19_combout\ : std_logic;
SIGNAL \inst17|Equal15~1_combout\ : std_logic;
SIGNAL \inst17|estado_sig.S6~0_combout\ : std_logic;
SIGNAL \inst17|estado_pr.S6~regout\ : std_logic;
SIGNAL \magna~combout\ : std_logic;
SIGNAL \inst17|Selector11~0_combout\ : std_logic;
SIGNAL \inst17|Selector11~1_combout\ : std_logic;
SIGNAL \premium~combout\ : std_logic;
SIGNAL \inst17|Selector12~0_combout\ : std_logic;
SIGNAL \inst17|Selector12~1_combout\ : std_logic;
SIGNAL \inst17|Selector8~0_combout\ : std_logic;
SIGNAL \inst17|Selector9~0_combout\ : std_logic;
SIGNAL \inst17|Selector10~0_combout\ : std_logic;
SIGNAL \inst17|Selector10~1_combout\ : std_logic;
SIGNAL \inst17|WideOr6~0_combout\ : std_logic;
SIGNAL \inst17|precio\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst17|litros\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst17|i\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst17|contador\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst17|cont\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fila~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst8|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_pr_state.s0~regout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux4~0_combout\ : std_logic;

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

\inst17|WideOr9~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst17|WideOr9~combout\);

\inst17|Selector34~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst17|Selector34~0_combout\);

\inst|clk_state~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst|clk_state~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\inst17|clk_state~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst17|clk_state~regout\);
\inst8|ALT_INV_Mux3~1_combout\ <= NOT \inst8|Mux3~1_combout\;
\inst8|ALT_INV_pr_state.s0~regout\ <= NOT \inst8|pr_state.s0~regout\;
\inst8|ALT_INV_Mux4~0_combout\ <= NOT \inst8|Mux4~0_combout\;

-- Location: LCFF_X18_Y8_N13
\inst17|cont[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|clk_state~clkctrl_outclk\,
	datain => \inst17|cont[4]~15_combout\,
	sclr => \inst17|LessThan1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cont\(4));

-- Location: LCCOMB_X18_Y8_N12
\inst17|cont[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cont[4]~15_combout\ = (\inst17|cont\(4) & (\inst17|cont[3]~14\ $ (GND))) # (!\inst17|cont\(4) & (!\inst17|cont[3]~14\ & VCC))
-- \inst17|cont[4]~16\ = CARRY((\inst17|cont\(4) & !\inst17|cont[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cont\(4),
	datad => VCC,
	cin => \inst17|cont[3]~14\,
	combout => \inst17|cont[4]~15_combout\,
	cout => \inst17|cont[4]~16\);

-- Location: LCFF_X2_Y11_N29
\inst|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|count[14]~44_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(14));

-- Location: LCFF_X2_Y11_N31
\inst|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|count[15]~46_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(15));

-- Location: LCFF_X2_Y11_N21
\inst|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|count[10]~36_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(10));

-- Location: LCFF_X2_Y11_N23
\inst|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|count[11]~38_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(11));

-- Location: LCFF_X2_Y11_N25
\inst|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|count[12]~40_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(12));

-- Location: LCFF_X2_Y11_N27
\inst|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|count[13]~42_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(13));

-- Location: LCFF_X1_Y11_N31
\inst|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|count[8]~32_combout\,
	sclr => \inst|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(8));

-- Location: LCFF_X1_Y11_N23
\inst|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|count[9]~34_combout\,
	sclr => \inst|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(9));

-- Location: LCFF_X1_Y11_N29
\inst|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|count[4]~24_combout\,
	sclr => \inst|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(4));

-- Location: LCFF_X1_Y11_N21
\inst|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|count[5]~26_combout\,
	sclr => \inst|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(5));

-- Location: LCFF_X1_Y11_N27
\inst|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|count[6]~28_combout\,
	sclr => \inst|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(6));

-- Location: LCFF_X1_Y11_N13
\inst|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|count[7]~30_combout\,
	sclr => \inst|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(7));

-- Location: LCFF_X1_Y5_N25
\inst17|i[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|i[25]~76_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(25));

-- Location: LCFF_X1_Y5_N23
\inst17|i[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|i[24]~74_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(24));

-- Location: LCFF_X1_Y5_N13
\inst17|i[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|i[19]~64_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(19));

-- Location: LCFF_X1_Y5_N15
\inst17|i[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|i[20]~66_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(20));

-- Location: LCFF_X1_Y5_N17
\inst17|i[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|i[21]~68_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(21));

-- Location: LCFF_X1_Y5_N19
\inst17|i[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|i[22]~70_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(22));

-- Location: LCFF_X1_Y5_N21
\inst17|i[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|i[23]~72_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(23));

-- Location: LCFF_X1_Y6_N31
\inst17|i[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|i[12]~50_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(12));

-- Location: LCFF_X2_Y6_N13
\inst17|i[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	sdata => \inst17|i[13]~52_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(13));

-- Location: LCFF_X2_Y6_N27
\inst17|i[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	sdata => \inst17|i[14]~54_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(14));

-- Location: LCFF_X2_Y6_N17
\inst17|i[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	sdata => \inst17|i[15]~56_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(15));

-- Location: LCFF_X1_Y6_N21
\inst17|i[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|i[7]~40_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(7));

-- Location: LCFF_X1_Y6_N23
\inst17|i[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|i[8]~42_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(8));

-- Location: LCFF_X1_Y6_N25
\inst17|i[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|i[9]~44_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(9));

-- Location: LCFF_X1_Y6_N27
\inst17|i[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|i[10]~46_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(10));

-- Location: LCFF_X1_Y6_N29
\inst17|i[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|i[11]~48_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(11));

-- Location: LCFF_X2_Y6_N7
\inst17|i[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	sdata => \inst17|i[16]~58_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(16));

-- Location: LCFF_X1_Y5_N9
\inst17|i[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|i[17]~60_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(17));

-- Location: LCFF_X1_Y5_N11
\inst17|i[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|i[18]~62_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(18));

-- Location: LCCOMB_X19_Y9_N20
\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst17|precio\(7) $ (VCC)
-- \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst17|precio\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|precio\(7),
	datad => VCC,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X19_Y9_N22
\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst17|precio\(8) & (\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst17|precio\(8) & 
-- (!\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst17|precio\(8) & !\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|precio\(8),
	datad => VCC,
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X19_Y9_N24
\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst17|precio\(9) & (\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst17|precio\(9) & 
-- (!\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst17|precio\(9) & !\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|precio\(9),
	datad => VCC,
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X20_Y9_N20
\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst17|Div0|auto_generated|divider|divider|StageOut[15]~63_combout\) # (\inst17|Div0|auto_generated|divider|divider|StageOut[15]~62_combout\)))
-- \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst17|Div0|auto_generated|divider|divider|StageOut[15]~63_combout\) # (\inst17|Div0|auto_generated|divider|divider|StageOut[15]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[15]~62_combout\,
	datad => VCC,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X20_Y9_N22
\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst17|Div0|auto_generated|divider|divider|StageOut[16]~61_combout\) # 
-- (\inst17|Div0|auto_generated|divider|divider|StageOut[16]~60_combout\)))) # (!\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst17|Div0|auto_generated|divider|divider|StageOut[16]~61_combout\ & 
-- (!\inst17|Div0|auto_generated|divider|divider|StageOut[16]~60_combout\)))
-- \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst17|Div0|auto_generated|divider|divider|StageOut[16]~61_combout\ & (!\inst17|Div0|auto_generated|divider|divider|StageOut[16]~60_combout\ & 
-- !\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[16]~61_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[16]~60_combout\,
	datad => VCC,
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X21_Y9_N2
\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst17|Div0|auto_generated|divider|divider|StageOut[21]~67_combout\) # 
-- (\inst17|Div0|auto_generated|divider|divider|StageOut[21]~66_combout\)))) # (!\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst17|Div0|auto_generated|divider|divider|StageOut[21]~67_combout\ & 
-- (!\inst17|Div0|auto_generated|divider|divider|StageOut[21]~66_combout\)))
-- \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst17|Div0|auto_generated|divider|divider|StageOut[21]~67_combout\ & (!\inst17|Div0|auto_generated|divider|divider|StageOut[21]~66_combout\ & 
-- !\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[21]~67_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datad => VCC,
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X21_Y6_N6
\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst17|Div0|auto_generated|divider|divider|StageOut[25]~75_combout\) # (\inst17|Div0|auto_generated|divider|divider|StageOut[25]~74_combout\)))
-- \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst17|Div0|auto_generated|divider|divider|StageOut[25]~75_combout\) # (\inst17|Div0|auto_generated|divider|divider|StageOut[25]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[25]~75_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datad => VCC,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X21_Y6_N16
\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\inst17|Div0|auto_generated|divider|divider|StageOut[30]~80_combout\) # (\inst17|Div0|auto_generated|divider|divider|StageOut[30]~81_combout\)))
-- \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\inst17|Div0|auto_generated|divider|divider|StageOut[30]~80_combout\) # (\inst17|Div0|auto_generated|divider|divider|StageOut[30]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[30]~80_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[30]~81_combout\,
	datad => VCC,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X20_Y6_N0
\inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\inst17|Div0|auto_generated|divider|divider|StageOut[35]~87_combout\) # (\inst17|Div0|auto_generated|divider|divider|StageOut[35]~86_combout\)))
-- \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\inst17|Div0|auto_generated|divider|divider|StageOut[35]~87_combout\) # (\inst17|Div0|auto_generated|divider|divider|StageOut[35]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[35]~86_combout\,
	datad => VCC,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X20_Y6_N2
\inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\inst17|Div0|auto_generated|divider|divider|StageOut[36]~85_combout\) # 
-- (\inst17|Div0|auto_generated|divider|divider|StageOut[36]~84_combout\)))) # (!\inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\inst17|Div0|auto_generated|divider|divider|StageOut[36]~85_combout\ & 
-- (!\inst17|Div0|auto_generated|divider|divider|StageOut[36]~84_combout\)))
-- \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\inst17|Div0|auto_generated|divider|divider|StageOut[36]~85_combout\ & (!\inst17|Div0|auto_generated|divider|divider|StageOut[36]~84_combout\ & 
-- !\inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[36]~85_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[36]~84_combout\,
	datad => VCC,
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X20_Y6_N4
\inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\inst17|Div0|auto_generated|divider|divider|StageOut[37]~102_combout\) # 
-- (\inst17|Div0|auto_generated|divider|divider|StageOut[37]~83_combout\)))) # (!\inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\inst17|Div0|auto_generated|divider|divider|StageOut[37]~102_combout\) # 
-- (\inst17|Div0|auto_generated|divider|divider|StageOut[37]~83_combout\)))))
-- \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\inst17|Div0|auto_generated|divider|divider|StageOut[37]~102_combout\) # 
-- (\inst17|Div0|auto_generated|divider|divider|StageOut[37]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[37]~102_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[37]~83_combout\,
	datad => VCC,
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X19_Y6_N2
\inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\ = CARRY((\inst17|Div0|auto_generated|divider|divider|StageOut[40]~92_combout\) # (\inst17|Div0|auto_generated|divider|divider|StageOut[40]~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[40]~92_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[40]~93_combout\,
	datad => VCC,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\);

-- Location: LCCOMB_X19_Y6_N4
\inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ = CARRY((!\inst17|Div0|auto_generated|divider|divider|StageOut[41]~90_combout\ & (!\inst17|Div0|auto_generated|divider|divider|StageOut[41]~91_combout\ & 
-- !\inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[41]~90_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[41]~91_combout\,
	datad => VCC,
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1_cout\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\);

-- Location: LCCOMB_X19_Y6_N6
\inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\ = CARRY((!\inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\ & ((\inst17|Div0|auto_generated|divider|divider|StageOut[42]~89_combout\) # 
-- (\inst17|Div0|auto_generated|divider|divider|StageOut[42]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[42]~89_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[42]~103_combout\,
	datad => VCC,
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3_cout\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\);

-- Location: LCCOMB_X19_Y6_N8
\inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\ = CARRY((!\inst17|Div0|auto_generated|divider|divider|StageOut[43]~88_combout\ & (!\inst17|Div0|auto_generated|divider|divider|StageOut[43]~97_combout\ & 
-- !\inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[43]~88_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[43]~97_combout\,
	datad => VCC,
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5_cout\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\);

-- Location: LCCOMB_X19_Y6_N10
\inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = \inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7_cout\,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\);

-- Location: LCFF_X2_Y11_N7
\inst|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|count[3]~22_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(3));

-- Location: LCFF_X2_Y11_N5
\inst|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|count[2]~20_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(2));

-- Location: LCFF_X2_Y11_N3
\inst|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|count[1]~18_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(1));

-- Location: LCFF_X2_Y11_N1
\inst|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|count[0]~16_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(0));

-- Location: LCCOMB_X2_Y11_N0
\inst|count[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[0]~16_combout\ = \inst|count\(0) $ (VCC)
-- \inst|count[0]~17\ = CARRY(\inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(0),
	datad => VCC,
	combout => \inst|count[0]~16_combout\,
	cout => \inst|count[0]~17\);

-- Location: LCCOMB_X2_Y11_N2
\inst|count[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[1]~18_combout\ = (\inst|count\(1) & (!\inst|count[0]~17\)) # (!\inst|count\(1) & ((\inst|count[0]~17\) # (GND)))
-- \inst|count[1]~19\ = CARRY((!\inst|count[0]~17\) # (!\inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(1),
	datad => VCC,
	cin => \inst|count[0]~17\,
	combout => \inst|count[1]~18_combout\,
	cout => \inst|count[1]~19\);

-- Location: LCCOMB_X2_Y11_N4
\inst|count[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[2]~20_combout\ = (\inst|count\(2) & (\inst|count[1]~19\ $ (GND))) # (!\inst|count\(2) & (!\inst|count[1]~19\ & VCC))
-- \inst|count[2]~21\ = CARRY((\inst|count\(2) & !\inst|count[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(2),
	datad => VCC,
	cin => \inst|count[1]~19\,
	combout => \inst|count[2]~20_combout\,
	cout => \inst|count[2]~21\);

-- Location: LCCOMB_X2_Y11_N6
\inst|count[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[3]~22_combout\ = (\inst|count\(3) & (!\inst|count[2]~21\)) # (!\inst|count\(3) & ((\inst|count[2]~21\) # (GND)))
-- \inst|count[3]~23\ = CARRY((!\inst|count[2]~21\) # (!\inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(3),
	datad => VCC,
	cin => \inst|count[2]~21\,
	combout => \inst|count[3]~22_combout\,
	cout => \inst|count[3]~23\);

-- Location: LCCOMB_X2_Y11_N8
\inst|count[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[4]~24_combout\ = (\inst|count\(4) & (\inst|count[3]~23\ $ (GND))) # (!\inst|count\(4) & (!\inst|count[3]~23\ & VCC))
-- \inst|count[4]~25\ = CARRY((\inst|count\(4) & !\inst|count[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(4),
	datad => VCC,
	cin => \inst|count[3]~23\,
	combout => \inst|count[4]~24_combout\,
	cout => \inst|count[4]~25\);

-- Location: LCCOMB_X2_Y11_N10
\inst|count[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[5]~26_combout\ = (\inst|count\(5) & (!\inst|count[4]~25\)) # (!\inst|count\(5) & ((\inst|count[4]~25\) # (GND)))
-- \inst|count[5]~27\ = CARRY((!\inst|count[4]~25\) # (!\inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(5),
	datad => VCC,
	cin => \inst|count[4]~25\,
	combout => \inst|count[5]~26_combout\,
	cout => \inst|count[5]~27\);

-- Location: LCCOMB_X2_Y11_N12
\inst|count[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[6]~28_combout\ = (\inst|count\(6) & (\inst|count[5]~27\ $ (GND))) # (!\inst|count\(6) & (!\inst|count[5]~27\ & VCC))
-- \inst|count[6]~29\ = CARRY((\inst|count\(6) & !\inst|count[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(6),
	datad => VCC,
	cin => \inst|count[5]~27\,
	combout => \inst|count[6]~28_combout\,
	cout => \inst|count[6]~29\);

-- Location: LCCOMB_X2_Y11_N14
\inst|count[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[7]~30_combout\ = (\inst|count\(7) & (!\inst|count[6]~29\)) # (!\inst|count\(7) & ((\inst|count[6]~29\) # (GND)))
-- \inst|count[7]~31\ = CARRY((!\inst|count[6]~29\) # (!\inst|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(7),
	datad => VCC,
	cin => \inst|count[6]~29\,
	combout => \inst|count[7]~30_combout\,
	cout => \inst|count[7]~31\);

-- Location: LCCOMB_X2_Y11_N16
\inst|count[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[8]~32_combout\ = (\inst|count\(8) & (\inst|count[7]~31\ $ (GND))) # (!\inst|count\(8) & (!\inst|count[7]~31\ & VCC))
-- \inst|count[8]~33\ = CARRY((\inst|count\(8) & !\inst|count[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(8),
	datad => VCC,
	cin => \inst|count[7]~31\,
	combout => \inst|count[8]~32_combout\,
	cout => \inst|count[8]~33\);

-- Location: LCCOMB_X2_Y11_N18
\inst|count[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[9]~34_combout\ = (\inst|count\(9) & (!\inst|count[8]~33\)) # (!\inst|count\(9) & ((\inst|count[8]~33\) # (GND)))
-- \inst|count[9]~35\ = CARRY((!\inst|count[8]~33\) # (!\inst|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(9),
	datad => VCC,
	cin => \inst|count[8]~33\,
	combout => \inst|count[9]~34_combout\,
	cout => \inst|count[9]~35\);

-- Location: LCCOMB_X2_Y11_N20
\inst|count[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[10]~36_combout\ = (\inst|count\(10) & (\inst|count[9]~35\ $ (GND))) # (!\inst|count\(10) & (!\inst|count[9]~35\ & VCC))
-- \inst|count[10]~37\ = CARRY((\inst|count\(10) & !\inst|count[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(10),
	datad => VCC,
	cin => \inst|count[9]~35\,
	combout => \inst|count[10]~36_combout\,
	cout => \inst|count[10]~37\);

-- Location: LCCOMB_X2_Y11_N22
\inst|count[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[11]~38_combout\ = (\inst|count\(11) & (!\inst|count[10]~37\)) # (!\inst|count\(11) & ((\inst|count[10]~37\) # (GND)))
-- \inst|count[11]~39\ = CARRY((!\inst|count[10]~37\) # (!\inst|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(11),
	datad => VCC,
	cin => \inst|count[10]~37\,
	combout => \inst|count[11]~38_combout\,
	cout => \inst|count[11]~39\);

-- Location: LCCOMB_X2_Y11_N24
\inst|count[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[12]~40_combout\ = (\inst|count\(12) & (\inst|count[11]~39\ $ (GND))) # (!\inst|count\(12) & (!\inst|count[11]~39\ & VCC))
-- \inst|count[12]~41\ = CARRY((\inst|count\(12) & !\inst|count[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(12),
	datad => VCC,
	cin => \inst|count[11]~39\,
	combout => \inst|count[12]~40_combout\,
	cout => \inst|count[12]~41\);

-- Location: LCCOMB_X2_Y11_N26
\inst|count[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[13]~42_combout\ = (\inst|count\(13) & (!\inst|count[12]~41\)) # (!\inst|count\(13) & ((\inst|count[12]~41\) # (GND)))
-- \inst|count[13]~43\ = CARRY((!\inst|count[12]~41\) # (!\inst|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(13),
	datad => VCC,
	cin => \inst|count[12]~41\,
	combout => \inst|count[13]~42_combout\,
	cout => \inst|count[13]~43\);

-- Location: LCCOMB_X2_Y11_N28
\inst|count[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[14]~44_combout\ = (\inst|count\(14) & (\inst|count[13]~43\ $ (GND))) # (!\inst|count\(14) & (!\inst|count[13]~43\ & VCC))
-- \inst|count[14]~45\ = CARRY((\inst|count\(14) & !\inst|count[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(14),
	datad => VCC,
	cin => \inst|count[13]~43\,
	combout => \inst|count[14]~44_combout\,
	cout => \inst|count[14]~45\);

-- Location: LCCOMB_X2_Y11_N30
\inst|count[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[15]~46_combout\ = \inst|count[14]~45\ $ (\inst|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|count\(15),
	cin => \inst|count[14]~45\,
	combout => \inst|count[15]~46_combout\);

-- Location: LCFF_X1_Y6_N19
\inst17|i[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|i[6]~38_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(6));

-- Location: LCFF_X1_Y6_N17
\inst17|i[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|i[5]~36_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(5));

-- Location: LCFF_X1_Y6_N15
\inst17|i[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|i[4]~34_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(4));

-- Location: LCFF_X1_Y6_N13
\inst17|i[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|i[3]~32_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(3));

-- Location: LCFF_X1_Y6_N11
\inst17|i[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|i[2]~30_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(2));

-- Location: LCFF_X1_Y6_N9
\inst17|i[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|i[1]~28_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(1));

-- Location: LCFF_X1_Y6_N7
\inst17|i[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|i[0]~26_combout\,
	sclr => \inst17|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|i\(0));

-- Location: LCCOMB_X1_Y6_N6
\inst17|i[0]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[0]~26_combout\ = \inst17|i\(0) $ (VCC)
-- \inst17|i[0]~27\ = CARRY(\inst17|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|i\(0),
	datad => VCC,
	combout => \inst17|i[0]~26_combout\,
	cout => \inst17|i[0]~27\);

-- Location: LCCOMB_X1_Y6_N8
\inst17|i[1]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[1]~28_combout\ = (\inst17|i\(1) & (!\inst17|i[0]~27\)) # (!\inst17|i\(1) & ((\inst17|i[0]~27\) # (GND)))
-- \inst17|i[1]~29\ = CARRY((!\inst17|i[0]~27\) # (!\inst17|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|i\(1),
	datad => VCC,
	cin => \inst17|i[0]~27\,
	combout => \inst17|i[1]~28_combout\,
	cout => \inst17|i[1]~29\);

-- Location: LCCOMB_X1_Y6_N10
\inst17|i[2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[2]~30_combout\ = (\inst17|i\(2) & (\inst17|i[1]~29\ $ (GND))) # (!\inst17|i\(2) & (!\inst17|i[1]~29\ & VCC))
-- \inst17|i[2]~31\ = CARRY((\inst17|i\(2) & !\inst17|i[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|i\(2),
	datad => VCC,
	cin => \inst17|i[1]~29\,
	combout => \inst17|i[2]~30_combout\,
	cout => \inst17|i[2]~31\);

-- Location: LCCOMB_X1_Y6_N12
\inst17|i[3]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[3]~32_combout\ = (\inst17|i\(3) & (!\inst17|i[2]~31\)) # (!\inst17|i\(3) & ((\inst17|i[2]~31\) # (GND)))
-- \inst17|i[3]~33\ = CARRY((!\inst17|i[2]~31\) # (!\inst17|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|i\(3),
	datad => VCC,
	cin => \inst17|i[2]~31\,
	combout => \inst17|i[3]~32_combout\,
	cout => \inst17|i[3]~33\);

-- Location: LCCOMB_X1_Y6_N14
\inst17|i[4]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[4]~34_combout\ = (\inst17|i\(4) & (\inst17|i[3]~33\ $ (GND))) # (!\inst17|i\(4) & (!\inst17|i[3]~33\ & VCC))
-- \inst17|i[4]~35\ = CARRY((\inst17|i\(4) & !\inst17|i[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|i\(4),
	datad => VCC,
	cin => \inst17|i[3]~33\,
	combout => \inst17|i[4]~34_combout\,
	cout => \inst17|i[4]~35\);

-- Location: LCCOMB_X1_Y6_N16
\inst17|i[5]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[5]~36_combout\ = (\inst17|i\(5) & (!\inst17|i[4]~35\)) # (!\inst17|i\(5) & ((\inst17|i[4]~35\) # (GND)))
-- \inst17|i[5]~37\ = CARRY((!\inst17|i[4]~35\) # (!\inst17|i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|i\(5),
	datad => VCC,
	cin => \inst17|i[4]~35\,
	combout => \inst17|i[5]~36_combout\,
	cout => \inst17|i[5]~37\);

-- Location: LCCOMB_X1_Y6_N18
\inst17|i[6]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[6]~38_combout\ = (\inst17|i\(6) & (\inst17|i[5]~37\ $ (GND))) # (!\inst17|i\(6) & (!\inst17|i[5]~37\ & VCC))
-- \inst17|i[6]~39\ = CARRY((\inst17|i\(6) & !\inst17|i[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|i\(6),
	datad => VCC,
	cin => \inst17|i[5]~37\,
	combout => \inst17|i[6]~38_combout\,
	cout => \inst17|i[6]~39\);

-- Location: LCCOMB_X1_Y6_N20
\inst17|i[7]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[7]~40_combout\ = (\inst17|i\(7) & (!\inst17|i[6]~39\)) # (!\inst17|i\(7) & ((\inst17|i[6]~39\) # (GND)))
-- \inst17|i[7]~41\ = CARRY((!\inst17|i[6]~39\) # (!\inst17|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|i\(7),
	datad => VCC,
	cin => \inst17|i[6]~39\,
	combout => \inst17|i[7]~40_combout\,
	cout => \inst17|i[7]~41\);

-- Location: LCCOMB_X1_Y6_N22
\inst17|i[8]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[8]~42_combout\ = (\inst17|i\(8) & (\inst17|i[7]~41\ $ (GND))) # (!\inst17|i\(8) & (!\inst17|i[7]~41\ & VCC))
-- \inst17|i[8]~43\ = CARRY((\inst17|i\(8) & !\inst17|i[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|i\(8),
	datad => VCC,
	cin => \inst17|i[7]~41\,
	combout => \inst17|i[8]~42_combout\,
	cout => \inst17|i[8]~43\);

-- Location: LCCOMB_X1_Y6_N24
\inst17|i[9]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[9]~44_combout\ = (\inst17|i\(9) & (!\inst17|i[8]~43\)) # (!\inst17|i\(9) & ((\inst17|i[8]~43\) # (GND)))
-- \inst17|i[9]~45\ = CARRY((!\inst17|i[8]~43\) # (!\inst17|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|i\(9),
	datad => VCC,
	cin => \inst17|i[8]~43\,
	combout => \inst17|i[9]~44_combout\,
	cout => \inst17|i[9]~45\);

-- Location: LCCOMB_X1_Y6_N26
\inst17|i[10]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[10]~46_combout\ = (\inst17|i\(10) & (\inst17|i[9]~45\ $ (GND))) # (!\inst17|i\(10) & (!\inst17|i[9]~45\ & VCC))
-- \inst17|i[10]~47\ = CARRY((\inst17|i\(10) & !\inst17|i[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|i\(10),
	datad => VCC,
	cin => \inst17|i[9]~45\,
	combout => \inst17|i[10]~46_combout\,
	cout => \inst17|i[10]~47\);

-- Location: LCCOMB_X1_Y6_N28
\inst17|i[11]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[11]~48_combout\ = (\inst17|i\(11) & (!\inst17|i[10]~47\)) # (!\inst17|i\(11) & ((\inst17|i[10]~47\) # (GND)))
-- \inst17|i[11]~49\ = CARRY((!\inst17|i[10]~47\) # (!\inst17|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|i\(11),
	datad => VCC,
	cin => \inst17|i[10]~47\,
	combout => \inst17|i[11]~48_combout\,
	cout => \inst17|i[11]~49\);

-- Location: LCCOMB_X1_Y6_N30
\inst17|i[12]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[12]~50_combout\ = (\inst17|i\(12) & (\inst17|i[11]~49\ $ (GND))) # (!\inst17|i\(12) & (!\inst17|i[11]~49\ & VCC))
-- \inst17|i[12]~51\ = CARRY((\inst17|i\(12) & !\inst17|i[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|i\(12),
	datad => VCC,
	cin => \inst17|i[11]~49\,
	combout => \inst17|i[12]~50_combout\,
	cout => \inst17|i[12]~51\);

-- Location: LCCOMB_X1_Y5_N0
\inst17|i[13]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[13]~52_combout\ = (\inst17|i\(13) & (!\inst17|i[12]~51\)) # (!\inst17|i\(13) & ((\inst17|i[12]~51\) # (GND)))
-- \inst17|i[13]~53\ = CARRY((!\inst17|i[12]~51\) # (!\inst17|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|i\(13),
	datad => VCC,
	cin => \inst17|i[12]~51\,
	combout => \inst17|i[13]~52_combout\,
	cout => \inst17|i[13]~53\);

-- Location: LCCOMB_X1_Y5_N2
\inst17|i[14]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[14]~54_combout\ = (\inst17|i\(14) & (\inst17|i[13]~53\ $ (GND))) # (!\inst17|i\(14) & (!\inst17|i[13]~53\ & VCC))
-- \inst17|i[14]~55\ = CARRY((\inst17|i\(14) & !\inst17|i[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|i\(14),
	datad => VCC,
	cin => \inst17|i[13]~53\,
	combout => \inst17|i[14]~54_combout\,
	cout => \inst17|i[14]~55\);

-- Location: LCCOMB_X1_Y5_N4
\inst17|i[15]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[15]~56_combout\ = (\inst17|i\(15) & (!\inst17|i[14]~55\)) # (!\inst17|i\(15) & ((\inst17|i[14]~55\) # (GND)))
-- \inst17|i[15]~57\ = CARRY((!\inst17|i[14]~55\) # (!\inst17|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|i\(15),
	datad => VCC,
	cin => \inst17|i[14]~55\,
	combout => \inst17|i[15]~56_combout\,
	cout => \inst17|i[15]~57\);

-- Location: LCCOMB_X1_Y5_N6
\inst17|i[16]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[16]~58_combout\ = (\inst17|i\(16) & (\inst17|i[15]~57\ $ (GND))) # (!\inst17|i\(16) & (!\inst17|i[15]~57\ & VCC))
-- \inst17|i[16]~59\ = CARRY((\inst17|i\(16) & !\inst17|i[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|i\(16),
	datad => VCC,
	cin => \inst17|i[15]~57\,
	combout => \inst17|i[16]~58_combout\,
	cout => \inst17|i[16]~59\);

-- Location: LCCOMB_X1_Y5_N8
\inst17|i[17]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[17]~60_combout\ = (\inst17|i\(17) & (!\inst17|i[16]~59\)) # (!\inst17|i\(17) & ((\inst17|i[16]~59\) # (GND)))
-- \inst17|i[17]~61\ = CARRY((!\inst17|i[16]~59\) # (!\inst17|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|i\(17),
	datad => VCC,
	cin => \inst17|i[16]~59\,
	combout => \inst17|i[17]~60_combout\,
	cout => \inst17|i[17]~61\);

-- Location: LCCOMB_X1_Y5_N10
\inst17|i[18]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[18]~62_combout\ = (\inst17|i\(18) & (\inst17|i[17]~61\ $ (GND))) # (!\inst17|i\(18) & (!\inst17|i[17]~61\ & VCC))
-- \inst17|i[18]~63\ = CARRY((\inst17|i\(18) & !\inst17|i[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|i\(18),
	datad => VCC,
	cin => \inst17|i[17]~61\,
	combout => \inst17|i[18]~62_combout\,
	cout => \inst17|i[18]~63\);

-- Location: LCCOMB_X1_Y5_N12
\inst17|i[19]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[19]~64_combout\ = (\inst17|i\(19) & (!\inst17|i[18]~63\)) # (!\inst17|i\(19) & ((\inst17|i[18]~63\) # (GND)))
-- \inst17|i[19]~65\ = CARRY((!\inst17|i[18]~63\) # (!\inst17|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|i\(19),
	datad => VCC,
	cin => \inst17|i[18]~63\,
	combout => \inst17|i[19]~64_combout\,
	cout => \inst17|i[19]~65\);

-- Location: LCCOMB_X1_Y5_N14
\inst17|i[20]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[20]~66_combout\ = (\inst17|i\(20) & (\inst17|i[19]~65\ $ (GND))) # (!\inst17|i\(20) & (!\inst17|i[19]~65\ & VCC))
-- \inst17|i[20]~67\ = CARRY((\inst17|i\(20) & !\inst17|i[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|i\(20),
	datad => VCC,
	cin => \inst17|i[19]~65\,
	combout => \inst17|i[20]~66_combout\,
	cout => \inst17|i[20]~67\);

-- Location: LCCOMB_X1_Y5_N16
\inst17|i[21]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[21]~68_combout\ = (\inst17|i\(21) & (!\inst17|i[20]~67\)) # (!\inst17|i\(21) & ((\inst17|i[20]~67\) # (GND)))
-- \inst17|i[21]~69\ = CARRY((!\inst17|i[20]~67\) # (!\inst17|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|i\(21),
	datad => VCC,
	cin => \inst17|i[20]~67\,
	combout => \inst17|i[21]~68_combout\,
	cout => \inst17|i[21]~69\);

-- Location: LCCOMB_X1_Y5_N18
\inst17|i[22]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[22]~70_combout\ = (\inst17|i\(22) & (\inst17|i[21]~69\ $ (GND))) # (!\inst17|i\(22) & (!\inst17|i[21]~69\ & VCC))
-- \inst17|i[22]~71\ = CARRY((\inst17|i\(22) & !\inst17|i[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|i\(22),
	datad => VCC,
	cin => \inst17|i[21]~69\,
	combout => \inst17|i[22]~70_combout\,
	cout => \inst17|i[22]~71\);

-- Location: LCCOMB_X1_Y5_N20
\inst17|i[23]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[23]~72_combout\ = (\inst17|i\(23) & (!\inst17|i[22]~71\)) # (!\inst17|i\(23) & ((\inst17|i[22]~71\) # (GND)))
-- \inst17|i[23]~73\ = CARRY((!\inst17|i[22]~71\) # (!\inst17|i\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|i\(23),
	datad => VCC,
	cin => \inst17|i[22]~71\,
	combout => \inst17|i[23]~72_combout\,
	cout => \inst17|i[23]~73\);

-- Location: LCCOMB_X1_Y5_N22
\inst17|i[24]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[24]~74_combout\ = (\inst17|i\(24) & (\inst17|i[23]~73\ $ (GND))) # (!\inst17|i\(24) & (!\inst17|i[23]~73\ & VCC))
-- \inst17|i[24]~75\ = CARRY((\inst17|i\(24) & !\inst17|i[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|i\(24),
	datad => VCC,
	cin => \inst17|i[23]~73\,
	combout => \inst17|i[24]~74_combout\,
	cout => \inst17|i[24]~75\);

-- Location: LCCOMB_X1_Y5_N24
\inst17|i[25]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|i[25]~76_combout\ = \inst17|i\(25) $ (\inst17|i[24]~75\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|i\(25),
	cin => \inst17|i[24]~75\,
	combout => \inst17|i[25]~76_combout\);

-- Location: LCCOMB_X20_Y5_N6
\inst17|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add1~2_combout\ = (\inst17|contador\(1) & ((\inst17|contador\(3) & (\inst17|Add1~1\ & VCC)) # (!\inst17|contador\(3) & (!\inst17|Add1~1\)))) # (!\inst17|contador\(1) & ((\inst17|contador\(3) & (!\inst17|Add1~1\)) # (!\inst17|contador\(3) & 
-- ((\inst17|Add1~1\) # (GND)))))
-- \inst17|Add1~3\ = CARRY((\inst17|contador\(1) & (!\inst17|contador\(3) & !\inst17|Add1~1\)) # (!\inst17|contador\(1) & ((!\inst17|Add1~1\) # (!\inst17|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|contador\(1),
	datab => \inst17|contador\(3),
	datad => VCC,
	cin => \inst17|Add1~1\,
	combout => \inst17|Add1~2_combout\,
	cout => \inst17|Add1~3\);

-- Location: LCCOMB_X19_Y5_N14
\inst17|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add0~2_combout\ = (\inst17|contador\(0) & (\inst8|Selector6~0_combout\ $ (VCC))) # (!\inst17|contador\(0) & (\inst8|Selector6~0_combout\ & VCC))
-- \inst17|Add0~3\ = CARRY((\inst17|contador\(0) & \inst8|Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|contador\(0),
	datab => \inst8|Selector6~0_combout\,
	datad => VCC,
	combout => \inst17|Add0~2_combout\,
	cout => \inst17|Add0~3\);

-- Location: LCCOMB_X19_Y5_N16
\inst17|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add0~4_combout\ = (\inst8|Mux3~1_combout\ & ((\inst17|contador\(1) & (!\inst17|Add0~3\)) # (!\inst17|contador\(1) & ((\inst17|Add0~3\) # (GND))))) # (!\inst8|Mux3~1_combout\ & ((\inst17|contador\(1) & (\inst17|Add0~3\ & VCC)) # 
-- (!\inst17|contador\(1) & (!\inst17|Add0~3\))))
-- \inst17|Add0~5\ = CARRY((\inst8|Mux3~1_combout\ & ((!\inst17|Add0~3\) # (!\inst17|contador\(1)))) # (!\inst8|Mux3~1_combout\ & (!\inst17|contador\(1) & !\inst17|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux3~1_combout\,
	datab => \inst17|contador\(1),
	datad => VCC,
	cin => \inst17|Add0~3\,
	combout => \inst17|Add0~4_combout\,
	cout => \inst17|Add0~5\);

-- Location: LCCOMB_X19_Y5_N20
\inst17|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add0~8_combout\ = (\inst17|Add1~2_combout\ & (!\inst17|Add0~7\)) # (!\inst17|Add1~2_combout\ & ((\inst17|Add0~7\) # (GND)))
-- \inst17|Add0~9\ = CARRY((!\inst17|Add0~7\) # (!\inst17|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Add1~2_combout\,
	datad => VCC,
	cin => \inst17|Add0~7\,
	combout => \inst17|Add0~8_combout\,
	cout => \inst17|Add0~9\);

-- Location: LCCOMB_X19_Y5_N24
\inst17|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add0~12_combout\ = (\inst17|Add1~6_combout\ & (!\inst17|Add0~11\)) # (!\inst17|Add1~6_combout\ & ((\inst17|Add0~11\) # (GND)))
-- \inst17|Add0~13\ = CARRY((!\inst17|Add0~11\) # (!\inst17|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|Add1~6_combout\,
	datad => VCC,
	cin => \inst17|Add0~11\,
	combout => \inst17|Add0~12_combout\,
	cout => \inst17|Add0~13\);

-- Location: LCFF_X1_Y11_N25
\inst|clk_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|clk_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|clk_state~regout\);

-- Location: LCFF_X1_Y6_N5
\inst17|clk_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|clk_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|clk_state~regout\);

-- Location: LCCOMB_X1_Y11_N18
\inst|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|count\(13) & (!\inst|count\(12) & (!\inst|count\(11) & !\inst|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(13),
	datab => \inst|count\(12),
	datac => \inst|count\(11),
	datad => \inst|count\(10),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y11_N16
\inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (!\inst|count\(7) & (((!\inst|count\(5) & !\inst|count\(4))) # (!\inst|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(7),
	datab => \inst|count\(6),
	datac => \inst|count\(5),
	datad => \inst|count\(4),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y11_N4
\inst|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (\inst|count\(8) & (!\inst|LessThan0~1_combout\ & \inst|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(8),
	datac => \inst|LessThan0~1_combout\,
	datad => \inst|count\(9),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X1_Y11_N14
\inst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|count\(15) & (\inst|count\(14) & ((\inst|LessThan0~2_combout\) # (!\inst|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(15),
	datab => \inst|count\(14),
	datac => \inst|LessThan0~2_combout\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X1_Y11_N24
\inst|clk_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|clk_state~0_combout\ = \inst|LessThan0~3_combout\ $ (\inst|clk_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan0~3_combout\,
	datac => \inst|clk_state~regout\,
	combout => \inst|clk_state~0_combout\);

-- Location: LCCOMB_X1_Y5_N30
\inst17|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan0~0_combout\ = (((!\inst17|i\(19)) # (!\inst17|i\(20))) # (!\inst17|i\(22))) # (!\inst17|i\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|i\(21),
	datab => \inst17|i\(22),
	datac => \inst17|i\(20),
	datad => \inst17|i\(19),
	combout => \inst17|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y5_N28
\inst17|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan0~1_combout\ = (\inst17|LessThan0~0_combout\) # (!\inst17|i\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|i\(23),
	datad => \inst17|LessThan0~0_combout\,
	combout => \inst17|LessThan0~1_combout\);

-- Location: LCCOMB_X2_Y6_N28
\inst17|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan0~2_combout\ = (((!\inst17|i\(13)) # (!\inst17|i\(12))) # (!\inst17|i\(14))) # (!\inst17|i\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|i\(15),
	datab => \inst17|i\(14),
	datac => \inst17|i\(12),
	datad => \inst17|i\(13),
	combout => \inst17|LessThan0~2_combout\);

-- Location: LCCOMB_X2_Y6_N30
\inst17|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan0~3_combout\ = (!\inst17|i\(9) & (!\inst17|i\(8) & (!\inst17|i\(7) & !\inst17|i\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|i\(9),
	datab => \inst17|i\(8),
	datac => \inst17|i\(7),
	datad => \inst17|i\(10),
	combout => \inst17|LessThan0~3_combout\);

-- Location: LCCOMB_X2_Y6_N24
\inst17|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan0~4_combout\ = (!\inst17|i\(16) & ((\inst17|LessThan0~2_combout\) # ((!\inst17|i\(11) & \inst17|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|i\(16),
	datab => \inst17|i\(11),
	datac => \inst17|LessThan0~2_combout\,
	datad => \inst17|LessThan0~3_combout\,
	combout => \inst17|LessThan0~4_combout\);

-- Location: LCCOMB_X1_Y6_N0
\inst17|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan0~5_combout\ = (\inst17|LessThan0~1_combout\) # ((!\inst17|i\(18) & ((\inst17|LessThan0~4_combout\) # (!\inst17|i\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|i\(17),
	datab => \inst17|i\(18),
	datac => \inst17|LessThan0~1_combout\,
	datad => \inst17|LessThan0~4_combout\,
	combout => \inst17|LessThan0~5_combout\);

-- Location: LCCOMB_X1_Y6_N4
\inst17|clk_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|clk_state~0_combout\ = \inst17|clk_state~regout\ $ (((\inst17|i\(25) & ((\inst17|i\(24)) # (!\inst17|LessThan0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|i\(25),
	datab => \inst17|i\(24),
	datac => \inst17|clk_state~regout\,
	datad => \inst17|LessThan0~5_combout\,
	combout => \inst17|clk_state~0_combout\);

-- Location: LCCOMB_X18_Y5_N16
\inst17|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector19~0_combout\ = (\inst17|contador\(8) & ((\inst17|estado_pr.S8~regout\) # (\inst17|estado_pr.S9~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|contador\(8),
	datac => \inst17|estado_pr.S8~regout\,
	datad => \inst17|estado_pr.S9~regout\,
	combout => \inst17|Selector19~0_combout\);

-- Location: LCCOMB_X18_Y5_N30
\inst17|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector20~0_combout\ = (\inst17|contador\(9) & ((\inst17|estado_pr.S8~regout\) # (\inst17|estado_pr.S9~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|contador\(9),
	datab => \inst17|estado_pr.S8~regout\,
	datad => \inst17|estado_pr.S9~regout\,
	combout => \inst17|Selector20~0_combout\);

-- Location: LCCOMB_X20_Y9_N16
\inst17|Div0|auto_generated|divider|divider|StageOut[18]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[18]~57_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[18]~57_combout\);

-- Location: LCCOMB_X19_Y9_N14
\inst17|Div0|auto_generated|divider|divider|StageOut[17]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[17]~59_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[17]~59_combout\);

-- Location: LCCOMB_X19_Y9_N30
\inst17|Div0|auto_generated|divider|divider|StageOut[16]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[16]~61_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[16]~61_combout\);

-- Location: LCCOMB_X20_Y9_N10
\inst17|Div0|auto_generated|divider|divider|StageOut[15]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[15]~63_combout\ = (\inst17|precio\(6) & !\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|precio\(6),
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[15]~63_combout\);

-- Location: LCCOMB_X18_Y7_N28
\inst17|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector1~2_combout\ = (\inst17|Selector23~0_combout\ & ((\inst17|estado_pr.S7~regout\ & (!\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\inst17|estado_pr.S7~regout\ & ((\inst17|precio\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst17|precio\(8),
	datac => \inst17|estado_pr.S7~regout\,
	datad => \inst17|Selector23~0_combout\,
	combout => \inst17|Selector1~2_combout\);

-- Location: LCCOMB_X20_Y9_N30
\inst17|Div0|auto_generated|divider|divider|StageOut[22]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X20_Y9_N12
\inst17|Div0|auto_generated|divider|divider|StageOut[21]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[21]~67_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[21]~67_combout\);

-- Location: LCCOMB_X20_Y9_N14
\inst17|Div0|auto_generated|divider|divider|StageOut[20]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[20]~69_combout\ = (\inst17|precio\(5) & !\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|precio\(5),
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[20]~69_combout\);

-- Location: LCCOMB_X21_Y9_N20
\inst17|Div0|auto_generated|divider|divider|StageOut[27]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[27]~71_combout\ = (!\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[27]~71_combout\);

-- Location: LCCOMB_X21_Y9_N10
\inst17|Div0|auto_generated|divider|divider|StageOut[26]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[26]~72_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst17|precio\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst17|precio\(5),
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[26]~72_combout\);

-- Location: LCCOMB_X21_Y9_N16
\inst17|Div0|auto_generated|divider|divider|StageOut[25]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[25]~75_combout\ = (!\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst17|precio\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst17|precio\(4),
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[25]~75_combout\);

-- Location: LCCOMB_X21_Y6_N30
\inst17|Div0|auto_generated|divider|divider|StageOut[31]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[31]~79_combout\ = (!\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[31]~79_combout\);

-- Location: LCCOMB_X21_Y6_N4
\inst17|Div0|auto_generated|divider|divider|StageOut[30]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[30]~80_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst17|precio\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst17|precio\(3),
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[30]~80_combout\);

-- Location: LCCOMB_X19_Y8_N2
\inst17|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector5~2_combout\ = (\inst17|Selector23~0_combout\ & ((\inst17|estado_pr.S7~regout\ & (!\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\inst17|estado_pr.S7~regout\ & ((\inst17|precio\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \inst17|precio\(5),
	datac => \inst17|estado_pr.S7~regout\,
	datad => \inst17|Selector23~0_combout\,
	combout => \inst17|Selector5~2_combout\);

-- Location: LCCOMB_X20_Y6_N16
\inst17|Div0|auto_generated|divider|divider|StageOut[36]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[36]~85_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[36]~85_combout\);

-- Location: LCCOMB_X20_Y6_N12
\inst17|Div0|auto_generated|divider|divider|StageOut[35]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[35]~87_combout\ = (\inst17|precio\(2) & !\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|precio\(2),
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[35]~87_combout\);

-- Location: LCCOMB_X19_Y6_N24
\inst17|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector7~0_combout\ = (\inst17|Selector23~0_combout\ & (!\inst17|estado_pr.S7~regout\ & (\inst17|precio\(3)))) # (!\inst17|Selector23~0_combout\ & (((\inst17|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|estado_pr.S7~regout\,
	datab => \inst17|precio\(3),
	datac => \inst17|contador\(0),
	datad => \inst17|Selector23~0_combout\,
	combout => \inst17|Selector7~0_combout\);

-- Location: LCCOMB_X19_Y6_N22
\inst17|Div0|auto_generated|divider|divider|StageOut[43]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[43]~88_combout\ = (!\inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[43]~88_combout\);

-- Location: LCCOMB_X19_Y6_N16
\inst17|Div0|auto_generated|divider|divider|StageOut[42]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[42]~89_combout\ = (!\inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[42]~89_combout\);

-- Location: LCCOMB_X20_Y6_N26
\inst17|Div0|auto_generated|divider|divider|StageOut[41]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[41]~90_combout\ = (\inst17|precio\(2) & \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|precio\(2),
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[41]~90_combout\);

-- Location: LCCOMB_X19_Y6_N26
\inst17|Div0|auto_generated|divider|divider|StageOut[41]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[41]~91_combout\ = (!\inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[41]~91_combout\);

-- Location: LCCOMB_X19_Y6_N12
\inst17|Div0|auto_generated|divider|divider|StageOut[40]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[40]~92_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \inst17|precio\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \inst17|precio\(1),
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[40]~92_combout\);

-- Location: LCCOMB_X19_Y6_N30
\inst17|Div0|auto_generated|divider|divider|StageOut[40]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[40]~93_combout\ = (!\inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & \inst17|precio\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \inst17|precio\(1),
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[40]~93_combout\);

-- Location: LCCOMB_X19_Y6_N0
\inst17|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector7~1_combout\ = (\inst17|Selector7~0_combout\) # ((\inst17|estado_pr.S7~regout\ & (\inst17|Selector23~0_combout\ & !\inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|estado_pr.S7~regout\,
	datab => \inst17|Selector23~0_combout\,
	datac => \inst17|Selector7~0_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \inst17|Selector7~1_combout\);

-- Location: LCCOMB_X1_Y6_N2
\inst17|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan0~6_combout\ = (\inst17|i\(25) & ((\inst17|i\(24)) # (!\inst17|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|i\(24),
	datac => \inst17|i\(25),
	datad => \inst17|LessThan0~5_combout\,
	combout => \inst17|LessThan0~6_combout\);

-- Location: LCCOMB_X19_Y9_N10
\inst17|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector30~0_combout\ = (!\inst17|estado_pr.S9~regout\ & ((\inst17|estado_pr.S8~regout\ & (\inst17|contador\(4))) # (!\inst17|estado_pr.S8~regout\ & ((\inst17|contador\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|contador\(4),
	datab => \inst17|contador\(7),
	datac => \inst17|estado_pr.S9~regout\,
	datad => \inst17|estado_pr.S8~regout\,
	combout => \inst17|Selector30~0_combout\);

-- Location: LCCOMB_X21_Y5_N12
\inst17|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector28~0_combout\ = (!\inst17|estado_pr.S9~regout\ & ((\inst17|estado_pr.S8~regout\ & (\inst17|contador\(2))) # (!\inst17|estado_pr.S8~regout\ & ((\inst17|contador\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|contador\(2),
	datab => \inst17|contador\(5),
	datac => \inst17|estado_pr.S8~regout\,
	datad => \inst17|estado_pr.S9~regout\,
	combout => \inst17|Selector28~0_combout\);

-- Location: LCCOMB_X21_Y5_N14
\inst17|Selector28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector28~1_combout\ = (\inst17|Selector28~0_combout\) # ((\inst17|estado_pr.S9~regout\ & \inst17|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Selector28~0_combout\,
	datab => \inst17|estado_pr.S9~regout\,
	datad => \inst17|Add1~4_combout\,
	combout => \inst17|Selector28~1_combout\);

-- Location: LCCOMB_X20_Y8_N10
\inst17|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector25~0_combout\ = (\inst17|estado_pr.S9~regout\ & (((\inst17|contador\(1))))) # (!\inst17|estado_pr.S9~regout\ & (\inst17|contador\(2) & ((!\inst17|estado_pr.S8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|contador\(2),
	datab => \inst17|contador\(1),
	datac => \inst17|estado_pr.S9~regout\,
	datad => \inst17|estado_pr.S8~regout\,
	combout => \inst17|Selector25~0_combout\);

-- Location: LCCOMB_X20_Y8_N16
\inst17|Selector23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector23~1_combout\ = (\inst17|estado_pr.S9~regout\ & (\inst17|contador\(0))) # (!\inst17|estado_pr.S9~regout\ & (((\inst17|contador\(1) & !\inst17|estado_pr.S8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|contador\(0),
	datab => \inst17|contador\(1),
	datac => \inst17|estado_pr.S9~regout\,
	datad => \inst17|estado_pr.S8~regout\,
	combout => \inst17|Selector23~1_combout\);

-- Location: LCCOMB_X18_Y7_N20
\inst17|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector1~3_combout\ = (\inst17|Selector1~2_combout\) # ((\inst17|contador\(5) & ((\inst17|estado_pr.S9~regout\) # (\inst17|estado_pr.S8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|contador\(5),
	datab => \inst17|estado_pr.S9~regout\,
	datac => \inst17|estado_pr.S8~regout\,
	datad => \inst17|Selector1~2_combout\,
	combout => \inst17|Selector1~3_combout\);

-- Location: LCCOMB_X21_Y9_N26
\inst17|Div0|auto_generated|divider|divider|StageOut[28]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[28]~94_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst17|Div0|auto_generated|divider|divider|StageOut[22]~99_combout\) # 
-- ((\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[22]~99_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[28]~94_combout\);

-- Location: LCCOMB_X22_Y6_N4
\inst17|Div0|auto_generated|divider|divider|StageOut[33]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[33]~95_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst17|Div0|auto_generated|divider|divider|StageOut[27]~100_combout\) # 
-- ((\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[27]~100_combout\,
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[33]~95_combout\);

-- Location: LCCOMB_X19_Y8_N10
\inst17|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector5~3_combout\ = (\inst17|Selector5~2_combout\) # ((\inst17|contador\(2) & ((\inst17|estado_pr.S8~regout\) # (\inst17|estado_pr.S9~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|estado_pr.S8~regout\,
	datab => \inst17|estado_pr.S9~regout\,
	datac => \inst17|contador\(2),
	datad => \inst17|Selector5~2_combout\,
	combout => \inst17|Selector5~3_combout\);

-- Location: LCCOMB_X20_Y6_N24
\inst17|Div0|auto_generated|divider|divider|StageOut[38]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[38]~96_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst17|Div0|auto_generated|divider|divider|StageOut[32]~101_combout\) # 
-- ((!\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[32]~101_combout\,
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[38]~96_combout\);

-- Location: LCCOMB_X19_Y6_N14
\inst17|Div0|auto_generated|divider|divider|StageOut[43]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[43]~97_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\inst17|Div0|auto_generated|divider|divider|StageOut[37]~102_combout\) # 
-- ((\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|StageOut[37]~102_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[43]~97_combout\);

-- Location: LCCOMB_X21_Y9_N24
\inst17|Div0|auto_generated|divider|divider|StageOut[23]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[23]~98_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\inst17|precio\(8))) # (!\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|precio\(8),
	datab => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[23]~98_combout\);

-- Location: LCCOMB_X20_Y6_N30
\inst17|Div0|auto_generated|divider|divider|StageOut[32]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[32]~101_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\inst17|precio\(5))) # (!\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|precio\(5),
	datab => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[32]~101_combout\);

-- Location: LCCOMB_X20_Y6_N20
\inst17|Div0|auto_generated|divider|divider|StageOut[37]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[37]~102_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\inst17|precio\(4)))) # (!\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \inst17|precio\(4),
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[37]~102_combout\);

-- Location: LCCOMB_X20_Y6_N10
\inst17|Div0|auto_generated|divider|divider|StageOut[42]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[42]~103_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\inst17|precio\(3)))) # (!\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datab => \inst17|precio\(3),
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[42]~103_combout\);

-- Location: LCCOMB_X18_Y5_N10
\inst17|litros[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|litros\(9) = (GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & ((\inst17|Selector20~0_combout\))) # (!GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & (\inst17|litros\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|litros\(9),
	datab => \inst17|Selector20~0_combout\,
	datac => \inst17|WideOr9~clkctrl_outclk\,
	combout => \inst17|litros\(9));

-- Location: LCCOMB_X18_Y7_N24
\inst17|litros[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|litros\(5) = (GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & ((\inst17|Selector1~3_combout\))) # (!GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & (\inst17|litros\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|litros\(5),
	datac => \inst17|Selector1~3_combout\,
	datad => \inst17|WideOr9~clkctrl_outclk\,
	combout => \inst17|litros\(5));

-- Location: LCCOMB_X19_Y8_N16
\inst17|litros[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|litros\(2) = (GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & ((\inst17|Selector5~3_combout\))) # (!GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & (\inst17|litros\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|litros\(2),
	datac => \inst17|WideOr9~clkctrl_outclk\,
	datad => \inst17|Selector5~3_combout\,
	combout => \inst17|litros\(2));

-- Location: LCCOMB_X19_Y6_N20
\inst17|litros[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|litros\(0) = (GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & ((\inst17|Selector7~1_combout\))) # (!GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & (\inst17|litros\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|litros\(0),
	datac => \inst17|WideOr9~clkctrl_outclk\,
	datad => \inst17|Selector7~1_combout\,
	combout => \inst17|litros\(0));

-- Location: LCCOMB_X21_Y5_N4
\inst17|precio[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|precio\(5) = (GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & ((\inst17|Selector28~1_combout\))) # (!GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & (\inst17|precio\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|precio\(5),
	datac => \inst17|Selector28~1_combout\,
	datad => \inst17|WideOr9~clkctrl_outclk\,
	combout => \inst17|precio\(5));

-- Location: LCCOMB_X20_Y8_N28
\inst17|precio[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|precio\(1) = (GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & ((\inst17|Selector23~1_combout\))) # (!GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & (\inst17|precio\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|precio\(1),
	datac => \inst17|Selector23~1_combout\,
	datad => \inst17|WideOr9~clkctrl_outclk\,
	combout => \inst17|precio\(1));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G1
\inst|clk_state~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|clk_state~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|clk_state~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: CLKCTRL_G3
\inst17|clk_state~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst17|clk_state~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst17|clk_state~clkctrl_outclk\);

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fila[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_fila(1),
	combout => \fila~combout\(1));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fila[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_fila(3),
	combout => \fila~combout\(3));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fila[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_fila(2),
	combout => \fila~combout\(2));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fila[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_fila(0),
	combout => \fila~combout\(0));

-- Location: LCCOMB_X20_Y7_N28
\inst8|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux4~0_combout\ = (\fila~combout\(1) & ((\fila~combout\(3)) # ((\fila~combout\(2)) # (\fila~combout\(0))))) # (!\fila~combout\(1) & ((\fila~combout\(3) & ((\fila~combout\(2)) # (\fila~combout\(0)))) # (!\fila~combout\(3) & (\fila~combout\(2) $ 
-- (!\fila~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fila~combout\(1),
	datab => \fila~combout\(3),
	datac => \fila~combout\(2),
	datad => \fila~combout\(0),
	combout => \inst8|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y8_N4
\inst17|cont[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cont[0]~7_combout\ = \inst17|cont\(0) $ (VCC)
-- \inst17|cont[0]~8\ = CARRY(\inst17|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cont\(0),
	datad => VCC,
	combout => \inst17|cont[0]~7_combout\,
	cout => \inst17|cont[0]~8\);

-- Location: LCFF_X20_Y7_N7
\inst8|pr_state.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~regout\,
	sdata => \inst8|pr_state.s2~regout\,
	sload => VCC,
	ena => \inst8|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|pr_state.s3~regout\);

-- Location: LCCOMB_X20_Y7_N16
\inst8|pr_state.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|pr_state.s0~0_combout\ = !\inst8|pr_state.s3~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|pr_state.s3~regout\,
	combout => \inst8|pr_state.s0~0_combout\);

-- Location: LCFF_X20_Y7_N17
\inst8|pr_state.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~regout\,
	datain => \inst8|pr_state.s0~0_combout\,
	ena => \inst8|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|pr_state.s0~regout\);

-- Location: LCCOMB_X21_Y7_N10
\inst8|pr_state.s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|pr_state.s1~0_combout\ = !\inst8|pr_state.s0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|pr_state.s0~regout\,
	combout => \inst8|pr_state.s1~0_combout\);

-- Location: LCFF_X21_Y7_N11
\inst8|pr_state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst8|pr_state.s1~0_combout\,
	ena => \inst8|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|pr_state.s1~regout\);

-- Location: LCFF_X20_Y7_N15
\inst8|pr_state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~regout\,
	sdata => \inst8|pr_state.s1~regout\,
	sload => VCC,
	ena => \inst8|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|pr_state.s2~regout\);

-- Location: LCCOMB_X20_Y7_N14
\inst8|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector7~0_combout\ = (\inst8|pr_state.s0~regout\ & (!\inst8|pr_state.s2~regout\ & !\inst8|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|pr_state.s0~regout\,
	datac => \inst8|pr_state.s2~regout\,
	datad => \inst8|Mux4~0_combout\,
	combout => \inst8|Selector7~0_combout\);

-- Location: LCCOMB_X20_Y7_N0
\inst8|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux3~0_combout\ = (\fila~combout\(2) & ((\inst8|pr_state.s0~regout\) # (!\fila~combout\(0)))) # (!\fila~combout\(2) & ((\fila~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fila~combout\(2),
	datac => \inst8|pr_state.s0~regout\,
	datad => \fila~combout\(0),
	combout => \inst8|Mux3~0_combout\);

-- Location: LCCOMB_X20_Y7_N26
\inst8|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux3~1_combout\ = (\inst8|pr_state.s0~regout\ & (!\inst8|Mux3~0_combout\ & (\fila~combout\(1) $ (\fila~combout\(3))))) # (!\inst8|pr_state.s0~regout\ & (!\fila~combout\(1) & (!\fila~combout\(3) & \inst8|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fila~combout\(1),
	datab => \fila~combout\(3),
	datac => \inst8|pr_state.s0~regout\,
	datad => \inst8|Mux3~0_combout\,
	combout => \inst8|Mux3~1_combout\);

-- Location: LCCOMB_X20_Y7_N12
\inst8|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux2~0_combout\ = (\inst8|pr_state.s0~regout\ & (!\fila~combout\(0) & (\fila~combout\(2) $ (\fila~combout\(3))))) # (!\inst8|pr_state.s0~regout\ & (!\fila~combout\(2) & (\fila~combout\(3) $ (\fila~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fila~combout\(2),
	datab => \fila~combout\(3),
	datac => \inst8|pr_state.s0~regout\,
	datad => \fila~combout\(0),
	combout => \inst8|Mux2~0_combout\);

-- Location: LCCOMB_X20_Y7_N18
\inst8|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux2~1_combout\ = (\fila~combout\(1)) # (!\inst8|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fila~combout\(1),
	datad => \inst8|Mux2~0_combout\,
	combout => \inst8|Mux2~1_combout\);

-- Location: LCCOMB_X19_Y7_N8
\inst17|Equal10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Equal10~4_combout\ = (\inst8|Selector6~0_combout\ & (\inst8|Selector7~0_combout\ & (!\inst8|Mux3~1_combout\ & \inst8|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Selector6~0_combout\,
	datab => \inst8|Selector7~0_combout\,
	datac => \inst8|Mux3~1_combout\,
	datad => \inst8|Mux2~1_combout\,
	combout => \inst17|Equal10~4_combout\);

-- Location: LCCOMB_X19_Y7_N26
\inst17|estado_sig~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|estado_sig~1_combout\ = (\inst8|Mux2~1_combout\ & ((\inst8|Selector6~0_combout\ & (!\inst8|Selector7~0_combout\)) # (!\inst8|Selector6~0_combout\ & (\inst8|Selector7~0_combout\ & !\inst8|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Selector6~0_combout\,
	datab => \inst8|Selector7~0_combout\,
	datac => \inst8|Mux3~1_combout\,
	datad => \inst8|Mux2~1_combout\,
	combout => \inst17|estado_sig~1_combout\);

-- Location: LCCOMB_X19_Y7_N28
\inst17|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector16~0_combout\ = (\inst17|estado_pr.S3~regout\ & ((\inst17|Equal10~4_combout\) # ((\inst17|estado_pr.S4~regout\ & !\inst17|estado_sig~1_combout\)))) # (!\inst17|estado_pr.S3~regout\ & (((\inst17|estado_pr.S4~regout\ & 
-- !\inst17|estado_sig~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|estado_pr.S3~regout\,
	datab => \inst17|Equal10~4_combout\,
	datac => \inst17|estado_pr.S4~regout\,
	datad => \inst17|estado_sig~1_combout\,
	combout => \inst17|Selector16~0_combout\);

-- Location: LCCOMB_X20_Y7_N30
\inst17|Equal10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Equal10~2_combout\ = (!\inst8|Selector6~0_combout\ & (!\inst8|Mux3~1_combout\ & (\inst8|Selector7~0_combout\ & \inst8|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Selector6~0_combout\,
	datab => \inst8|Mux3~1_combout\,
	datac => \inst8|Selector7~0_combout\,
	datad => \inst8|Mux2~1_combout\,
	combout => \inst17|Equal10~2_combout\);

-- Location: LCFF_X19_Y7_N29
\inst17|estado_pr.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|Selector16~0_combout\,
	aclr => \inst17|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|estado_pr.S4~regout\);

-- Location: LCCOMB_X20_Y7_N24
\inst17|Equal10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Equal10~3_combout\ = (\inst8|Selector6~0_combout\ & (\inst8|Mux2~1_combout\ & (!\inst8|Mux3~1_combout\ & !\inst8|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Selector6~0_combout\,
	datab => \inst8|Mux2~1_combout\,
	datac => \inst8|Mux3~1_combout\,
	datad => \inst8|Selector7~0_combout\,
	combout => \inst17|Equal10~3_combout\);

-- Location: LCCOMB_X19_Y7_N22
\inst17|estado_sig.S7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|estado_sig.S7~0_combout\ = (\inst17|estado_pr.S4~regout\ & \inst17|Equal10~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|estado_pr.S4~regout\,
	datad => \inst17|Equal10~3_combout\,
	combout => \inst17|estado_sig.S7~0_combout\);

-- Location: LCFF_X19_Y7_N23
\inst17|estado_pr.S7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~regout\,
	datain => \inst17|estado_sig.S7~0_combout\,
	aclr => \inst17|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|estado_pr.S7~regout\);

-- Location: LCCOMB_X19_Y7_N18
\inst17|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector17~0_combout\ = (\inst17|estado_pr.S3~regout\ & ((\inst17|Equal10~3_combout\) # ((\inst17|estado_pr.S5~regout\ & !\inst17|estado_sig~1_combout\)))) # (!\inst17|estado_pr.S3~regout\ & (((\inst17|estado_pr.S5~regout\ & 
-- !\inst17|estado_sig~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|estado_pr.S3~regout\,
	datab => \inst17|Equal10~3_combout\,
	datac => \inst17|estado_pr.S5~regout\,
	datad => \inst17|estado_sig~1_combout\,
	combout => \inst17|Selector17~0_combout\);

-- Location: LCFF_X19_Y7_N19
\inst17|estado_pr.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|Selector17~0_combout\,
	aclr => \inst17|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|estado_pr.S5~regout\);

-- Location: LCCOMB_X20_Y7_N4
\inst17|estado_sig.S9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|estado_sig.S9~0_combout\ = (\inst17|Equal10~3_combout\ & \inst17|estado_pr.S5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Equal10~3_combout\,
	datad => \inst17|estado_pr.S5~regout\,
	combout => \inst17|estado_sig.S9~0_combout\);

-- Location: LCFF_X20_Y7_N5
\inst17|estado_pr.S9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~regout\,
	datain => \inst17|estado_sig.S9~0_combout\,
	aclr => \inst17|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|estado_pr.S9~regout\);

-- Location: LCCOMB_X20_Y7_N6
\inst8|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Selector6~0_combout\ = (\inst8|pr_state.s0~regout\ & (!\inst8|pr_state.s3~regout\ & !\inst8|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|pr_state.s0~regout\,
	datac => \inst8|pr_state.s3~regout\,
	datad => \inst8|Mux4~0_combout\,
	combout => \inst8|Selector6~0_combout\);

-- Location: LCCOMB_X20_Y7_N20
\inst17|Equal10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Equal10~1_combout\ = (!\inst8|Selector7~0_combout\ & (\inst8|Mux2~1_combout\ & (\inst8|Mux3~1_combout\ & \inst8|Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Selector7~0_combout\,
	datab => \inst8|Mux2~1_combout\,
	datac => \inst8|Mux3~1_combout\,
	datad => \inst8|Selector6~0_combout\,
	combout => \inst17|Equal10~1_combout\);

-- Location: LCCOMB_X20_Y7_N8
\inst17|estado_sig.S8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|estado_sig.S8~0_combout\ = (\inst17|estado_pr.S5~regout\ & \inst17|Equal10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|estado_pr.S5~regout\,
	datad => \inst17|Equal10~1_combout\,
	combout => \inst17|estado_sig.S8~0_combout\);

-- Location: LCFF_X20_Y7_N9
\inst17|estado_pr.S8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~regout\,
	datain => \inst17|estado_sig.S8~0_combout\,
	aclr => \inst17|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|estado_pr.S8~regout\);

-- Location: LCCOMB_X21_Y7_N18
\inst17|WideOr9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|WideOr9~combout\ = (\inst17|estado_pr.S6~regout\) # ((\inst17|estado_pr.S7~regout\) # ((\inst17|estado_pr.S9~regout\) # (\inst17|estado_pr.S8~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|estado_pr.S6~regout\,
	datab => \inst17|estado_pr.S7~regout\,
	datac => \inst17|estado_pr.S9~regout\,
	datad => \inst17|estado_pr.S8~regout\,
	combout => \inst17|WideOr9~combout\);

-- Location: CLKCTRL_G6
\inst17|WideOr9~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst17|WideOr9~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst17|WideOr9~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y5_N28
\inst17|litros[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|litros\(8) = (GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & (\inst17|Selector19~0_combout\)) # (!GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & ((\inst17|litros\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Selector19~0_combout\,
	datab => \inst17|litros\(8),
	datac => \inst17|WideOr9~clkctrl_outclk\,
	combout => \inst17|litros\(8));

-- Location: LCCOMB_X19_Y7_N30
\inst17|process_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|process_1~3_combout\ = (\fila~combout\(1) & (((\inst8|Mux3~1_combout\ & !\inst8|Selector6~0_combout\)))) # (!\fila~combout\(1) & ((\inst8|Mux2~0_combout\) # ((\inst8|Mux3~1_combout\ & !\inst8|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fila~combout\(1),
	datab => \inst8|Mux2~0_combout\,
	datac => \inst8|Mux3~1_combout\,
	datad => \inst8|Selector6~0_combout\,
	combout => \inst17|process_1~3_combout\);

-- Location: LCCOMB_X19_Y7_N0
\inst17|estado_sig~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|estado_sig~0_combout\ = (!\inst8|Mux3~1_combout\ & (\inst8|Mux2~1_combout\ & ((\inst8|Selector6~0_combout\) # (\inst8|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Selector6~0_combout\,
	datab => \inst8|Selector7~0_combout\,
	datac => \inst8|Mux3~1_combout\,
	datad => \inst8|Mux2~1_combout\,
	combout => \inst17|estado_sig~0_combout\);

-- Location: LCCOMB_X20_Y7_N2
\inst17|process_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|process_1~2_combout\ = (\inst8|Selector6~0_combout\ & (((!\inst8|Mux2~1_combout\)))) # (!\inst8|Selector6~0_combout\ & ((\inst8|Mux3~1_combout\ & ((\inst8|Selector7~0_combout\) # (\inst8|Mux2~1_combout\))) # (!\inst8|Mux3~1_combout\ & 
-- ((!\inst8|Mux2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Selector6~0_combout\,
	datab => \inst8|Mux3~1_combout\,
	datac => \inst8|Selector7~0_combout\,
	datad => \inst8|Mux2~1_combout\,
	combout => \inst17|process_1~2_combout\);

-- Location: LCCOMB_X19_Y7_N20
\inst17|Equal10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Equal10~0_combout\ = (!\inst8|Mux3~1_combout\ & (\inst8|Mux2~1_combout\ & (!\inst8|Selector7~0_combout\ & !\inst8|Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux3~1_combout\,
	datab => \inst8|Mux2~1_combout\,
	datac => \inst8|Selector7~0_combout\,
	datad => \inst8|Selector6~0_combout\,
	combout => \inst17|Equal10~0_combout\);

-- Location: LCCOMB_X20_Y7_N10
\inst17|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector14~0_combout\ = (\inst17|estado_pr.S0~regout\ & (((\inst17|estado_pr.S1~regout\ & \inst17|Equal10~0_combout\)))) # (!\inst17|estado_pr.S0~regout\ & ((\inst17|process_1~2_combout\) # ((\inst17|estado_pr.S1~regout\ & 
-- \inst17|Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|estado_pr.S0~regout\,
	datab => \inst17|process_1~2_combout\,
	datac => \inst17|estado_pr.S1~regout\,
	datad => \inst17|Equal10~0_combout\,
	combout => \inst17|Selector14~0_combout\);

-- Location: LCFF_X20_Y7_N11
\inst17|estado_pr.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~regout\,
	datain => \inst17|Selector14~0_combout\,
	aclr => \inst17|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|estado_pr.S1~regout\);

-- Location: LCCOMB_X19_Y7_N16
\inst17|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector15~0_combout\ = (\inst17|process_1~3_combout\ & ((\inst17|estado_pr.S1~regout\) # ((!\inst17|estado_sig~0_combout\ & \inst17|estado_pr.S3~regout\)))) # (!\inst17|process_1~3_combout\ & (!\inst17|estado_sig~0_combout\ & 
-- (\inst17|estado_pr.S3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|process_1~3_combout\,
	datab => \inst17|estado_sig~0_combout\,
	datac => \inst17|estado_pr.S3~regout\,
	datad => \inst17|estado_pr.S1~regout\,
	combout => \inst17|Selector15~0_combout\);

-- Location: LCFF_X19_Y7_N17
\inst17|estado_pr.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|Selector15~0_combout\,
	aclr => \inst17|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|estado_pr.S3~regout\);

-- Location: LCCOMB_X19_Y7_N14
\inst17|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector13~0_combout\ = (!\inst17|estado_pr.S5~regout\ & (!\inst17|estado_pr.S3~regout\ & !\inst17|estado_pr.S4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|estado_pr.S5~regout\,
	datac => \inst17|estado_pr.S3~regout\,
	datad => \inst17|estado_pr.S4~regout\,
	combout => \inst17|Selector13~0_combout\);

-- Location: LCCOMB_X19_Y7_N10
\inst17|Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector13~1_combout\ = (\inst17|Equal10~0_combout\ $ (!\inst17|process_1~3_combout\)) # (!\inst17|estado_pr.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|estado_pr.S1~regout\,
	datac => \inst17|Equal10~0_combout\,
	datad => \inst17|process_1~3_combout\,
	combout => \inst17|Selector13~1_combout\);

-- Location: LCCOMB_X19_Y7_N24
\inst17|Selector13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector13~2_combout\ = (((\inst17|process_1~2_combout\ & !\inst17|estado_pr.S0~regout\)) # (!\inst17|Selector13~1_combout\)) # (!\inst17|Selector13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|process_1~2_combout\,
	datab => \inst17|Selector13~0_combout\,
	datac => \inst17|estado_pr.S0~regout\,
	datad => \inst17|Selector13~1_combout\,
	combout => \inst17|Selector13~2_combout\);

-- Location: LCFF_X19_Y7_N25
\inst17|estado_pr.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~regout\,
	datain => \inst17|Selector13~2_combout\,
	aclr => \inst17|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|estado_pr.S0~regout\);

-- Location: LCCOMB_X19_Y7_N12
\inst17|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector34~0_combout\ = (\inst17|Selector10~0_combout\ & ((\inst17|process_1~3_combout\) # ((!\inst17|estado_pr.S0~regout\ & \inst17|process_1~2_combout\)))) # (!\inst17|Selector10~0_combout\ & (((!\inst17|estado_pr.S0~regout\ & 
-- \inst17|process_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Selector10~0_combout\,
	datab => \inst17|process_1~3_combout\,
	datac => \inst17|estado_pr.S0~regout\,
	datad => \inst17|process_1~2_combout\,
	combout => \inst17|Selector34~0_combout\);

-- Location: CLKCTRL_G4
\inst17|Selector34~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst17|Selector34~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst17|Selector34~0clkctrl_outclk\);

-- Location: LCCOMB_X19_Y5_N0
\inst17|Add0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add0~25_combout\ = (\inst17|Add0~8_combout\ & \inst17|estado_pr.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Add0~8_combout\,
	datac => \inst17|estado_pr.S1~regout\,
	combout => \inst17|Add0~25_combout\);

-- Location: LCCOMB_X20_Y5_N0
\inst17|contador[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|contador\(4) = (GLOBAL(\inst17|Selector34~0clkctrl_outclk\) & ((\inst17|Add0~25_combout\))) # (!GLOBAL(\inst17|Selector34~0clkctrl_outclk\) & (\inst17|contador\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|contador\(4),
	datac => \inst17|Add0~25_combout\,
	datad => \inst17|Selector34~0clkctrl_outclk\,
	combout => \inst17|contador\(4));

-- Location: LCCOMB_X19_Y5_N8
\inst17|Add0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add0~27_combout\ = (\inst17|estado_pr.S1~regout\ & (\inst17|Add0~2_combout\)) # (!\inst17|estado_pr.S1~regout\ & ((\inst8|Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Add0~2_combout\,
	datac => \inst17|estado_pr.S1~regout\,
	datad => \inst8|Selector6~0_combout\,
	combout => \inst17|Add0~27_combout\);

-- Location: LCCOMB_X20_Y5_N20
\inst17|contador[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|contador\(1) = (GLOBAL(\inst17|Selector34~0clkctrl_outclk\) & ((\inst17|Add0~27_combout\))) # (!GLOBAL(\inst17|Selector34~0clkctrl_outclk\) & (\inst17|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|contador\(1),
	datac => \inst17|Add0~27_combout\,
	datad => \inst17|Selector34~0clkctrl_outclk\,
	combout => \inst17|contador\(1));

-- Location: LCCOMB_X19_Y5_N18
\inst17|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add0~6_combout\ = ((\inst17|Add1~0_combout\ $ (\inst8|Mux2~1_combout\ $ (!\inst17|Add0~5\)))) # (GND)
-- \inst17|Add0~7\ = CARRY((\inst17|Add1~0_combout\ & ((\inst8|Mux2~1_combout\) # (!\inst17|Add0~5\))) # (!\inst17|Add1~0_combout\ & (\inst8|Mux2~1_combout\ & !\inst17|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Add1~0_combout\,
	datab => \inst8|Mux2~1_combout\,
	datad => VCC,
	cin => \inst17|Add0~5\,
	combout => \inst17|Add0~6_combout\,
	cout => \inst17|Add0~7\);

-- Location: LCCOMB_X19_Y5_N10
\inst17|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add0~28_combout\ = (\inst17|estado_pr.S1~regout\ & (((\inst17|Add0~6_combout\)))) # (!\inst17|estado_pr.S1~regout\ & ((\fila~combout\(1)) # ((!\inst8|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fila~combout\(1),
	datab => \inst17|estado_pr.S1~regout\,
	datac => \inst8|Mux2~0_combout\,
	datad => \inst17|Add0~6_combout\,
	combout => \inst17|Add0~28_combout\);

-- Location: LCCOMB_X20_Y5_N28
\inst17|contador[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|contador\(3) = (GLOBAL(\inst17|Selector34~0clkctrl_outclk\) & ((\inst17|Add0~28_combout\))) # (!GLOBAL(\inst17|Selector34~0clkctrl_outclk\) & (\inst17|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|contador\(3),
	datac => \inst17|Selector34~0clkctrl_outclk\,
	datad => \inst17|Add0~28_combout\,
	combout => \inst17|contador\(3));

-- Location: LCCOMB_X19_Y5_N6
\inst17|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add0~26_combout\ = (\inst17|estado_pr.S1~regout\ & (\inst17|Add0~4_combout\)) # (!\inst17|estado_pr.S1~regout\ & ((!\inst8|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Add0~4_combout\,
	datac => \inst8|Mux3~1_combout\,
	datad => \inst17|estado_pr.S1~regout\,
	combout => \inst17|Add0~26_combout\);

-- Location: LCCOMB_X20_Y5_N22
\inst17|contador[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|contador\(2) = (GLOBAL(\inst17|Selector34~0clkctrl_outclk\) & ((\inst17|Add0~26_combout\))) # (!GLOBAL(\inst17|Selector34~0clkctrl_outclk\) & (\inst17|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|contador\(2),
	datac => \inst17|Add0~26_combout\,
	datad => \inst17|Selector34~0clkctrl_outclk\,
	combout => \inst17|contador\(2));

-- Location: LCCOMB_X20_Y5_N4
\inst17|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add1~0_combout\ = (\inst17|contador\(0) & (\inst17|contador\(2) $ (VCC))) # (!\inst17|contador\(0) & (\inst17|contador\(2) & VCC))
-- \inst17|Add1~1\ = CARRY((\inst17|contador\(0) & \inst17|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|contador\(0),
	datab => \inst17|contador\(2),
	datad => VCC,
	combout => \inst17|Add1~0_combout\,
	cout => \inst17|Add1~1\);

-- Location: LCCOMB_X20_Y5_N8
\inst17|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add1~4_combout\ = ((\inst17|contador\(2) $ (\inst17|contador\(4) $ (!\inst17|Add1~3\)))) # (GND)
-- \inst17|Add1~5\ = CARRY((\inst17|contador\(2) & ((\inst17|contador\(4)) # (!\inst17|Add1~3\))) # (!\inst17|contador\(2) & (\inst17|contador\(4) & !\inst17|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|contador\(2),
	datab => \inst17|contador\(4),
	datad => VCC,
	cin => \inst17|Add1~3\,
	combout => \inst17|Add1~4_combout\,
	cout => \inst17|Add1~5\);

-- Location: LCCOMB_X20_Y5_N10
\inst17|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add1~6_combout\ = (\inst17|contador\(5) & ((\inst17|contador\(3) & (\inst17|Add1~5\ & VCC)) # (!\inst17|contador\(3) & (!\inst17|Add1~5\)))) # (!\inst17|contador\(5) & ((\inst17|contador\(3) & (!\inst17|Add1~5\)) # (!\inst17|contador\(3) & 
-- ((\inst17|Add1~5\) # (GND)))))
-- \inst17|Add1~7\ = CARRY((\inst17|contador\(5) & (!\inst17|contador\(3) & !\inst17|Add1~5\)) # (!\inst17|contador\(5) & ((!\inst17|Add1~5\) # (!\inst17|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|contador\(5),
	datab => \inst17|contador\(3),
	datad => VCC,
	cin => \inst17|Add1~5\,
	combout => \inst17|Add1~6_combout\,
	cout => \inst17|Add1~7\);

-- Location: LCCOMB_X20_Y5_N12
\inst17|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add1~8_combout\ = ((\inst17|contador\(6) $ (\inst17|contador\(4) $ (!\inst17|Add1~7\)))) # (GND)
-- \inst17|Add1~9\ = CARRY((\inst17|contador\(6) & ((\inst17|contador\(4)) # (!\inst17|Add1~7\))) # (!\inst17|contador\(6) & (\inst17|contador\(4) & !\inst17|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|contador\(6),
	datab => \inst17|contador\(4),
	datad => VCC,
	cin => \inst17|Add1~7\,
	combout => \inst17|Add1~8_combout\,
	cout => \inst17|Add1~9\);

-- Location: LCCOMB_X19_Y5_N22
\inst17|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add0~10_combout\ = (\inst17|Add1~4_combout\ & (\inst17|Add0~9\ $ (GND))) # (!\inst17|Add1~4_combout\ & (!\inst17|Add0~9\ & VCC))
-- \inst17|Add0~11\ = CARRY((\inst17|Add1~4_combout\ & !\inst17|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|Add1~4_combout\,
	datad => VCC,
	cin => \inst17|Add0~9\,
	combout => \inst17|Add0~10_combout\,
	cout => \inst17|Add0~11\);

-- Location: LCCOMB_X19_Y5_N26
\inst17|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add0~14_combout\ = (\inst17|Add1~8_combout\ & (\inst17|Add0~13\ $ (GND))) # (!\inst17|Add1~8_combout\ & (!\inst17|Add0~13\ & VCC))
-- \inst17|Add0~15\ = CARRY((\inst17|Add1~8_combout\ & !\inst17|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|Add1~8_combout\,
	datad => VCC,
	cin => \inst17|Add0~13\,
	combout => \inst17|Add0~14_combout\,
	cout => \inst17|Add0~15\);

-- Location: LCCOMB_X18_Y5_N12
\inst17|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add0~16_combout\ = (\inst17|estado_pr.S1~regout\ & \inst17|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|estado_pr.S1~regout\,
	datac => \inst17|Add0~14_combout\,
	combout => \inst17|Add0~16_combout\);

-- Location: LCCOMB_X18_Y5_N20
\inst17|contador[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|contador\(7) = (GLOBAL(\inst17|Selector34~0clkctrl_outclk\) & ((\inst17|Add0~16_combout\))) # (!GLOBAL(\inst17|Selector34~0clkctrl_outclk\) & (\inst17|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|contador\(7),
	datac => \inst17|Selector34~0clkctrl_outclk\,
	datad => \inst17|Add0~16_combout\,
	combout => \inst17|contador\(7));

-- Location: LCCOMB_X19_Y8_N26
\inst17|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector18~0_combout\ = (\inst17|contador\(7) & ((\inst17|estado_pr.S8~regout\) # (\inst17|estado_pr.S9~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|estado_pr.S8~regout\,
	datac => \inst17|contador\(7),
	datad => \inst17|estado_pr.S9~regout\,
	combout => \inst17|Selector18~0_combout\);

-- Location: LCCOMB_X19_Y8_N8
\inst17|litros[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|litros\(7) = (GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & (\inst17|Selector18~0_combout\)) # (!GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & ((\inst17|litros\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|Selector18~0_combout\,
	datac => \inst17|litros\(7),
	datad => \inst17|WideOr9~clkctrl_outclk\,
	combout => \inst17|litros\(7));

-- Location: LCCOMB_X19_Y5_N2
\inst17|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add0~23_combout\ = (\inst17|Add0~12_combout\ & \inst17|estado_pr.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Add0~12_combout\,
	datac => \inst17|estado_pr.S1~regout\,
	combout => \inst17|Add0~23_combout\);

-- Location: LCCOMB_X19_Y5_N4
\inst17|contador[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|contador\(6) = (GLOBAL(\inst17|Selector34~0clkctrl_outclk\) & (\inst17|Add0~23_combout\)) # (!GLOBAL(\inst17|Selector34~0clkctrl_outclk\) & ((\inst17|contador\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|Add0~23_combout\,
	datac => \inst17|Selector34~0clkctrl_outclk\,
	datad => \inst17|contador\(6),
	combout => \inst17|contador\(6));

-- Location: LCCOMB_X18_Y5_N14
\inst17|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add0~24_combout\ = (\inst17|estado_pr.S1~regout\ & \inst17|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|estado_pr.S1~regout\,
	datad => \inst17|Add0~10_combout\,
	combout => \inst17|Add0~24_combout\);

-- Location: LCCOMB_X18_Y5_N22
\inst17|contador[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|contador\(5) = (GLOBAL(\inst17|Selector34~0clkctrl_outclk\) & ((\inst17|Add0~24_combout\))) # (!GLOBAL(\inst17|Selector34~0clkctrl_outclk\) & (\inst17|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|contador\(5),
	datac => \inst17|Add0~24_combout\,
	datad => \inst17|Selector34~0clkctrl_outclk\,
	combout => \inst17|contador\(5));

-- Location: LCCOMB_X20_Y5_N14
\inst17|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add1~10_combout\ = (\inst17|contador\(7) & ((\inst17|contador\(5) & (\inst17|Add1~9\ & VCC)) # (!\inst17|contador\(5) & (!\inst17|Add1~9\)))) # (!\inst17|contador\(7) & ((\inst17|contador\(5) & (!\inst17|Add1~9\)) # (!\inst17|contador\(5) & 
-- ((\inst17|Add1~9\) # (GND)))))
-- \inst17|Add1~11\ = CARRY((\inst17|contador\(7) & (!\inst17|contador\(5) & !\inst17|Add1~9\)) # (!\inst17|contador\(7) & ((!\inst17|Add1~9\) # (!\inst17|contador\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|contador\(7),
	datab => \inst17|contador\(5),
	datad => VCC,
	cin => \inst17|Add1~9\,
	combout => \inst17|Add1~10_combout\,
	cout => \inst17|Add1~11\);

-- Location: LCCOMB_X19_Y5_N28
\inst17|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add0~17_combout\ = (\inst17|Add1~10_combout\ & (!\inst17|Add0~15\)) # (!\inst17|Add1~10_combout\ & ((\inst17|Add0~15\) # (GND)))
-- \inst17|Add0~18\ = CARRY((!\inst17|Add0~15\) # (!\inst17|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|Add1~10_combout\,
	datad => VCC,
	cin => \inst17|Add0~15\,
	combout => \inst17|Add0~17_combout\,
	cout => \inst17|Add0~18\);

-- Location: LCCOMB_X18_Y5_N26
\inst17|Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add0~19_combout\ = (\inst17|estado_pr.S1~regout\ & \inst17|Add0~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|estado_pr.S1~regout\,
	datad => \inst17|Add0~17_combout\,
	combout => \inst17|Add0~19_combout\);

-- Location: LCCOMB_X18_Y5_N18
\inst17|contador[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|contador\(8) = (GLOBAL(\inst17|Selector34~0clkctrl_outclk\) & ((\inst17|Add0~19_combout\))) # (!GLOBAL(\inst17|Selector34~0clkctrl_outclk\) & (\inst17|contador\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|contador\(8),
	datac => \inst17|Selector34~0clkctrl_outclk\,
	datad => \inst17|Add0~19_combout\,
	combout => \inst17|contador\(8));

-- Location: LCCOMB_X20_Y5_N16
\inst17|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add1~12_combout\ = \inst17|contador\(6) $ (\inst17|Add1~11\ $ (!\inst17|contador\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|contador\(6),
	datad => \inst17|contador\(8),
	cin => \inst17|Add1~11\,
	combout => \inst17|Add1~12_combout\);

-- Location: LCCOMB_X19_Y5_N30
\inst17|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add0~20_combout\ = \inst17|Add0~18\ $ (!\inst17|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst17|Add1~12_combout\,
	cin => \inst17|Add0~18\,
	combout => \inst17|Add0~20_combout\);

-- Location: LCCOMB_X18_Y5_N0
\inst17|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Add0~22_combout\ = (\inst17|estado_pr.S1~regout\ & \inst17|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|estado_pr.S1~regout\,
	datad => \inst17|Add0~20_combout\,
	combout => \inst17|Add0~22_combout\);

-- Location: LCCOMB_X18_Y5_N24
\inst17|contador[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|contador\(9) = (GLOBAL(\inst17|Selector34~0clkctrl_outclk\) & ((\inst17|Add0~22_combout\))) # (!GLOBAL(\inst17|Selector34~0clkctrl_outclk\) & (\inst17|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|contador\(9),
	datac => \inst17|Selector34~0clkctrl_outclk\,
	datad => \inst17|Add0~22_combout\,
	combout => \inst17|contador\(9));

-- Location: LCCOMB_X19_Y9_N12
\inst17|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector32~0_combout\ = (!\inst17|estado_pr.S9~regout\ & ((\inst17|estado_pr.S8~regout\ & (\inst17|contador\(6))) # (!\inst17|estado_pr.S8~regout\ & ((\inst17|contador\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|contador\(6),
	datab => \inst17|estado_pr.S9~regout\,
	datac => \inst17|contador\(9),
	datad => \inst17|estado_pr.S8~regout\,
	combout => \inst17|Selector32~0_combout\);

-- Location: LCCOMB_X19_Y9_N6
\inst17|Selector32~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector32~1_combout\ = (\inst17|Selector32~0_combout\) # ((\inst17|estado_pr.S9~regout\ & \inst17|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|estado_pr.S9~regout\,
	datac => \inst17|Add1~12_combout\,
	datad => \inst17|Selector32~0_combout\,
	combout => \inst17|Selector32~1_combout\);

-- Location: LCCOMB_X19_Y9_N2
\inst17|precio[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|precio\(9) = (GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & ((\inst17|Selector32~1_combout\))) # (!GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & (\inst17|precio\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|precio\(9),
	datac => \inst17|WideOr9~clkctrl_outclk\,
	datad => \inst17|Selector32~1_combout\,
	combout => \inst17|precio\(9));

-- Location: LCCOMB_X20_Y7_N22
\inst17|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector23~0_combout\ = (!\inst17|estado_pr.S9~regout\ & !\inst17|estado_pr.S8~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|estado_pr.S9~regout\,
	datad => \inst17|estado_pr.S8~regout\,
	combout => \inst17|Selector23~0_combout\);

-- Location: LCCOMB_X19_Y8_N28
\inst17|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector0~2_combout\ = (\inst17|Selector23~0_combout\ & ((\inst17|estado_pr.S7~regout\ & (!\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # (!\inst17|estado_pr.S7~regout\ & ((\inst17|precio\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst17|precio\(9),
	datac => \inst17|estado_pr.S7~regout\,
	datad => \inst17|Selector23~0_combout\,
	combout => \inst17|Selector0~2_combout\);

-- Location: LCCOMB_X19_Y8_N20
\inst17|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector0~3_combout\ = (\inst17|Selector0~2_combout\) # ((\inst17|contador\(6) & ((\inst17|estado_pr.S8~regout\) # (\inst17|estado_pr.S9~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|estado_pr.S8~regout\,
	datab => \inst17|estado_pr.S9~regout\,
	datac => \inst17|contador\(6),
	datad => \inst17|Selector0~2_combout\,
	combout => \inst17|Selector0~3_combout\);

-- Location: LCCOMB_X19_Y8_N30
\inst17|litros[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|litros\(6) = (GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & ((\inst17|Selector0~3_combout\))) # (!GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & (\inst17|litros\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|litros\(6),
	datac => \inst17|Selector0~3_combout\,
	datad => \inst17|WideOr9~clkctrl_outclk\,
	combout => \inst17|litros\(6));

-- Location: LCCOMB_X18_Y8_N6
\inst17|cont[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cont[1]~9_combout\ = (\inst17|cont\(1) & (!\inst17|cont[0]~8\)) # (!\inst17|cont\(1) & ((\inst17|cont[0]~8\) # (GND)))
-- \inst17|cont[1]~10\ = CARRY((!\inst17|cont[0]~8\) # (!\inst17|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cont\(1),
	datad => VCC,
	cin => \inst17|cont[0]~8\,
	combout => \inst17|cont[1]~9_combout\,
	cout => \inst17|cont[1]~10\);

-- Location: LCFF_X18_Y8_N7
\inst17|cont[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|clk_state~clkctrl_outclk\,
	datain => \inst17|cont[1]~9_combout\,
	sclr => \inst17|LessThan1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cont\(1));

-- Location: LCCOMB_X18_Y8_N8
\inst17|cont[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cont[2]~11_combout\ = (\inst17|cont\(2) & (\inst17|cont[1]~10\ $ (GND))) # (!\inst17|cont\(2) & (!\inst17|cont[1]~10\ & VCC))
-- \inst17|cont[2]~12\ = CARRY((\inst17|cont\(2) & !\inst17|cont[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cont\(2),
	datad => VCC,
	cin => \inst17|cont[1]~10\,
	combout => \inst17|cont[2]~11_combout\,
	cout => \inst17|cont[2]~12\);

-- Location: LCCOMB_X18_Y8_N10
\inst17|cont[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cont[3]~13_combout\ = (\inst17|cont\(3) & (!\inst17|cont[2]~12\)) # (!\inst17|cont\(3) & ((\inst17|cont[2]~12\) # (GND)))
-- \inst17|cont[3]~14\ = CARRY((!\inst17|cont[2]~12\) # (!\inst17|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cont\(3),
	datad => VCC,
	cin => \inst17|cont[2]~12\,
	combout => \inst17|cont[3]~13_combout\,
	cout => \inst17|cont[3]~14\);

-- Location: LCCOMB_X18_Y8_N14
\inst17|cont[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cont[5]~17_combout\ = (\inst17|cont\(5) & (!\inst17|cont[4]~16\)) # (!\inst17|cont\(5) & ((\inst17|cont[4]~16\) # (GND)))
-- \inst17|cont[5]~18\ = CARRY((!\inst17|cont[4]~16\) # (!\inst17|cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cont\(5),
	datad => VCC,
	cin => \inst17|cont[4]~16\,
	combout => \inst17|cont[5]~17_combout\,
	cout => \inst17|cont[5]~18\);

-- Location: LCFF_X18_Y8_N15
\inst17|cont[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|clk_state~clkctrl_outclk\,
	datain => \inst17|cont[5]~17_combout\,
	sclr => \inst17|LessThan1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cont\(5));

-- Location: LCCOMB_X19_Y9_N16
\inst17|Selector30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector30~1_combout\ = (\inst17|Selector30~0_combout\) # ((\inst17|estado_pr.S9~regout\ & \inst17|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Selector30~0_combout\,
	datab => \inst17|estado_pr.S9~regout\,
	datad => \inst17|Add1~8_combout\,
	combout => \inst17|Selector30~1_combout\);

-- Location: LCCOMB_X19_Y9_N18
\inst17|precio[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|precio\(7) = (GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & ((\inst17|Selector30~1_combout\))) # (!GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & (\inst17|precio\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|precio\(7),
	datac => \inst17|Selector30~1_combout\,
	datad => \inst17|WideOr9~clkctrl_outclk\,
	combout => \inst17|precio\(7));

-- Location: LCCOMB_X20_Y8_N12
\inst17|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector3~2_combout\ = (\inst17|Selector23~0_combout\ & ((\inst17|estado_pr.S7~regout\ & (!\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\inst17|estado_pr.S7~regout\ & ((\inst17|precio\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst17|precio\(7),
	datac => \inst17|estado_pr.S7~regout\,
	datad => \inst17|Selector23~0_combout\,
	combout => \inst17|Selector3~2_combout\);

-- Location: LCCOMB_X20_Y8_N14
\inst17|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector3~3_combout\ = (\inst17|Selector3~2_combout\) # ((\inst17|contador\(4) & ((\inst17|estado_pr.S8~regout\) # (\inst17|estado_pr.S9~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|estado_pr.S8~regout\,
	datab => \inst17|estado_pr.S9~regout\,
	datac => \inst17|contador\(4),
	datad => \inst17|Selector3~2_combout\,
	combout => \inst17|Selector3~3_combout\);

-- Location: LCCOMB_X20_Y8_N8
\inst17|litros[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|litros\(4) = (GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & ((\inst17|Selector3~3_combout\))) # (!GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & (\inst17|litros\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|litros\(4),
	datac => \inst17|Selector3~3_combout\,
	datad => \inst17|WideOr9~clkctrl_outclk\,
	combout => \inst17|litros\(4));

-- Location: LCCOMB_X20_Y5_N24
\inst17|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector29~0_combout\ = (!\inst17|estado_pr.S9~regout\ & ((\inst17|estado_pr.S8~regout\ & (\inst17|contador\(3))) # (!\inst17|estado_pr.S8~regout\ & ((\inst17|contador\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|contador\(3),
	datab => \inst17|contador\(6),
	datac => \inst17|estado_pr.S9~regout\,
	datad => \inst17|estado_pr.S8~regout\,
	combout => \inst17|Selector29~0_combout\);

-- Location: LCCOMB_X20_Y9_N0
\inst17|Selector29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector29~1_combout\ = (\inst17|Selector29~0_combout\) # ((\inst17|estado_pr.S9~regout\ & \inst17|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|estado_pr.S9~regout\,
	datac => \inst17|Add1~6_combout\,
	datad => \inst17|Selector29~0_combout\,
	combout => \inst17|Selector29~1_combout\);

-- Location: LCCOMB_X20_Y9_N6
\inst17|precio[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|precio\(6) = (GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & ((\inst17|Selector29~1_combout\))) # (!GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & (\inst17|precio\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|precio\(6),
	datac => \inst17|WideOr9~clkctrl_outclk\,
	datad => \inst17|Selector29~1_combout\,
	combout => \inst17|precio\(6));

-- Location: LCCOMB_X18_Y7_N22
\inst17|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector4~2_combout\ = (\inst17|Selector23~0_combout\ & ((\inst17|estado_pr.S7~regout\ & (!\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # (!\inst17|estado_pr.S7~regout\ & ((\inst17|precio\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst17|precio\(6),
	datac => \inst17|estado_pr.S7~regout\,
	datad => \inst17|Selector23~0_combout\,
	combout => \inst17|Selector4~2_combout\);

-- Location: LCCOMB_X18_Y7_N26
\inst17|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector4~3_combout\ = (\inst17|Selector4~2_combout\) # ((\inst17|contador\(3) & ((\inst17|estado_pr.S8~regout\) # (\inst17|estado_pr.S9~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|estado_pr.S8~regout\,
	datab => \inst17|estado_pr.S9~regout\,
	datac => \inst17|contador\(3),
	datad => \inst17|Selector4~2_combout\,
	combout => \inst17|Selector4~3_combout\);

-- Location: LCCOMB_X18_Y7_N14
\inst17|litros[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|litros\(3) = (GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & ((\inst17|Selector4~3_combout\))) # (!GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & (\inst17|litros\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|litros\(3),
	datac => \inst17|WideOr9~clkctrl_outclk\,
	datad => \inst17|Selector4~3_combout\,
	combout => \inst17|litros\(3));

-- Location: LCFF_X18_Y8_N9
\inst17|cont[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|clk_state~clkctrl_outclk\,
	datain => \inst17|cont[2]~11_combout\,
	sclr => \inst17|LessThan1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cont\(2));

-- Location: LCCOMB_X19_Y5_N12
\inst17|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector31~0_combout\ = (!\inst17|estado_pr.S9~regout\ & ((\inst17|estado_pr.S8~regout\ & (\inst17|contador\(5))) # (!\inst17|estado_pr.S8~regout\ & ((\inst17|contador\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|contador\(5),
	datab => \inst17|contador\(8),
	datac => \inst17|estado_pr.S9~regout\,
	datad => \inst17|estado_pr.S8~regout\,
	combout => \inst17|Selector31~0_combout\);

-- Location: LCCOMB_X19_Y9_N0
\inst17|Selector31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector31~1_combout\ = (\inst17|Selector31~0_combout\) # ((\inst17|estado_pr.S9~regout\ & \inst17|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|estado_pr.S9~regout\,
	datac => \inst17|Add1~10_combout\,
	datad => \inst17|Selector31~0_combout\,
	combout => \inst17|Selector31~1_combout\);

-- Location: LCCOMB_X19_Y9_N8
\inst17|precio[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|precio\(8) = (GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & ((\inst17|Selector31~1_combout\))) # (!GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & (\inst17|precio\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|precio\(8),
	datac => \inst17|WideOr9~clkctrl_outclk\,
	datad => \inst17|Selector31~1_combout\,
	combout => \inst17|precio\(8));

-- Location: LCCOMB_X19_Y9_N26
\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X20_Y9_N2
\inst17|Div0|auto_generated|divider|divider|StageOut[17]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[17]~58_combout\ = (\inst17|precio\(8) & \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|precio\(8),
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[17]~58_combout\);

-- Location: LCCOMB_X19_Y9_N4
\inst17|Div0|auto_generated|divider|divider|StageOut[16]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[16]~60_combout\ = (\inst17|precio\(7) & \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|precio\(7),
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[16]~60_combout\);

-- Location: LCCOMB_X20_Y9_N8
\inst17|Div0|auto_generated|divider|divider|StageOut[15]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[15]~62_combout\ = (\inst17|precio\(6) & \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|precio\(6),
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[15]~62_combout\);

-- Location: LCCOMB_X20_Y9_N24
\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst17|Div0|auto_generated|divider|divider|StageOut[17]~59_combout\) # 
-- (\inst17|Div0|auto_generated|divider|divider|StageOut[17]~58_combout\)))) # (!\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst17|Div0|auto_generated|divider|divider|StageOut[17]~59_combout\) # 
-- (\inst17|Div0|auto_generated|divider|divider|StageOut[17]~58_combout\)))))
-- \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst17|Div0|auto_generated|divider|divider|StageOut[17]~59_combout\) # 
-- (\inst17|Div0|auto_generated|divider|divider|StageOut[17]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[17]~59_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[17]~58_combout\,
	datad => VCC,
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X19_Y9_N28
\inst17|Div0|auto_generated|divider|divider|StageOut[18]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[18]~56_combout\ = (\inst17|precio\(9) & \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|precio\(9),
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[18]~56_combout\);

-- Location: LCCOMB_X20_Y9_N26
\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst17|Div0|auto_generated|divider|divider|StageOut[18]~57_combout\ & (!\inst17|Div0|auto_generated|divider|divider|StageOut[18]~56_combout\ & 
-- !\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[18]~57_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[18]~56_combout\,
	datad => VCC,
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X20_Y9_N28
\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X20_Y9_N4
\inst17|Div0|auto_generated|divider|divider|StageOut[23]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X20_Y9_N18
\inst17|Div0|auto_generated|divider|divider|StageOut[22]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[22]~99_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\inst17|precio\(7)))) # (!\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \inst17|precio\(7),
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[22]~99_combout\);

-- Location: LCCOMB_X21_Y9_N14
\inst17|Div0|auto_generated|divider|divider|StageOut[21]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[21]~66_combout\ = (\inst17|precio\(6) & \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|precio\(6),
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X21_Y9_N28
\inst17|Div0|auto_generated|divider|divider|StageOut[20]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[20]~68_combout\ = (\inst17|precio\(5) & \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|precio\(5),
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[20]~68_combout\);

-- Location: LCCOMB_X21_Y9_N0
\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst17|Div0|auto_generated|divider|divider|StageOut[20]~69_combout\) # (\inst17|Div0|auto_generated|divider|divider|StageOut[20]~68_combout\)))
-- \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst17|Div0|auto_generated|divider|divider|StageOut[20]~69_combout\) # (\inst17|Div0|auto_generated|divider|divider|StageOut[20]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[20]~69_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[20]~68_combout\,
	datad => VCC,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X21_Y9_N4
\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst17|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\inst17|Div0|auto_generated|divider|divider|StageOut[22]~99_combout\)))) # (!\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst17|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\inst17|Div0|auto_generated|divider|divider|StageOut[22]~99_combout\)))))
-- \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst17|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\inst17|Div0|auto_generated|divider|divider|StageOut[22]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[22]~99_combout\,
	datad => VCC,
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X21_Y9_N6
\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst17|Div0|auto_generated|divider|divider|StageOut[23]~98_combout\ & (!\inst17|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ & 
-- !\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[23]~98_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datad => VCC,
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y9_N8
\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y9_N12
\inst17|Div0|auto_generated|divider|divider|StageOut[26]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[26]~73_combout\ = (!\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[26]~73_combout\);

-- Location: LCCOMB_X20_Y5_N30
\inst17|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector27~0_combout\ = (!\inst17|estado_pr.S9~regout\ & ((\inst17|estado_pr.S8~regout\ & (\inst17|contador\(1))) # (!\inst17|estado_pr.S8~regout\ & ((\inst17|contador\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|contador\(1),
	datab => \inst17|contador\(4),
	datac => \inst17|estado_pr.S9~regout\,
	datad => \inst17|estado_pr.S8~regout\,
	combout => \inst17|Selector27~0_combout\);

-- Location: LCCOMB_X20_Y5_N18
\inst17|Selector27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector27~1_combout\ = (\inst17|Selector27~0_combout\) # ((\inst17|Add1~2_combout\ & \inst17|estado_pr.S9~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Add1~2_combout\,
	datab => \inst17|estado_pr.S9~regout\,
	datad => \inst17|Selector27~0_combout\,
	combout => \inst17|Selector27~1_combout\);

-- Location: LCCOMB_X20_Y5_N2
\inst17|precio[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|precio\(4) = (GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & ((\inst17|Selector27~1_combout\))) # (!GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & (\inst17|precio\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|precio\(4),
	datac => \inst17|WideOr9~clkctrl_outclk\,
	datad => \inst17|Selector27~1_combout\,
	combout => \inst17|precio\(4));

-- Location: LCCOMB_X21_Y9_N22
\inst17|Div0|auto_generated|divider|divider|StageOut[25]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst17|precio\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst17|precio\(4),
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X21_Y6_N8
\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst17|Div0|auto_generated|divider|divider|StageOut[26]~72_combout\) # 
-- (\inst17|Div0|auto_generated|divider|divider|StageOut[26]~73_combout\)))) # (!\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst17|Div0|auto_generated|divider|divider|StageOut[26]~72_combout\ & 
-- (!\inst17|Div0|auto_generated|divider|divider|StageOut[26]~73_combout\)))
-- \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst17|Div0|auto_generated|divider|divider|StageOut[26]~72_combout\ & (!\inst17|Div0|auto_generated|divider|divider|StageOut[26]~73_combout\ & 
-- !\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[26]~72_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[26]~73_combout\,
	datad => VCC,
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X21_Y9_N30
\inst17|Div0|auto_generated|divider|divider|StageOut[28]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[28]~70_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[28]~70_combout\);

-- Location: LCCOMB_X21_Y9_N18
\inst17|Div0|auto_generated|divider|divider|StageOut[27]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[27]~100_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\inst17|precio\(6)))) # (!\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \inst17|precio\(6),
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[27]~100_combout\);

-- Location: LCCOMB_X21_Y6_N10
\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst17|Div0|auto_generated|divider|divider|StageOut[27]~71_combout\) # 
-- (\inst17|Div0|auto_generated|divider|divider|StageOut[27]~100_combout\)))) # (!\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst17|Div0|auto_generated|divider|divider|StageOut[27]~71_combout\) # 
-- (\inst17|Div0|auto_generated|divider|divider|StageOut[27]~100_combout\)))))
-- \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst17|Div0|auto_generated|divider|divider|StageOut[27]~71_combout\) # 
-- (\inst17|Div0|auto_generated|divider|divider|StageOut[27]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[27]~71_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[27]~100_combout\,
	datad => VCC,
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X21_Y6_N12
\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\inst17|Div0|auto_generated|divider|divider|StageOut[28]~94_combout\ & (!\inst17|Div0|auto_generated|divider|divider|StageOut[28]~70_combout\ & 
-- !\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[28]~94_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[28]~70_combout\,
	datad => VCC,
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y6_N14
\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y6_N2
\inst17|Div0|auto_generated|divider|divider|StageOut[32]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[32]~77_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[32]~77_combout\);

-- Location: LCCOMB_X21_Y6_N0
\inst17|Div0|auto_generated|divider|divider|StageOut[31]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[31]~78_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst17|precio\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst17|precio\(4),
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[31]~78_combout\);

-- Location: LCCOMB_X20_Y5_N26
\inst17|contador[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|contador\(0) = (GLOBAL(\inst17|Selector34~0clkctrl_outclk\) & (\inst8|Selector7~0_combout\)) # (!GLOBAL(\inst17|Selector34~0clkctrl_outclk\) & ((\inst17|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Selector7~0_combout\,
	datab => \inst17|contador\(0),
	datad => \inst17|Selector34~0clkctrl_outclk\,
	combout => \inst17|contador\(0));

-- Location: LCCOMB_X21_Y7_N20
\inst17|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector26~0_combout\ = (!\inst17|estado_pr.S9~regout\ & ((\inst17|estado_pr.S8~regout\ & ((\inst17|contador\(0)))) # (!\inst17|estado_pr.S8~regout\ & (\inst17|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|estado_pr.S8~regout\,
	datab => \inst17|contador\(3),
	datac => \inst17|estado_pr.S9~regout\,
	datad => \inst17|contador\(0),
	combout => \inst17|Selector26~0_combout\);

-- Location: LCCOMB_X21_Y7_N26
\inst17|Selector26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector26~1_combout\ = (\inst17|Selector26~0_combout\) # ((\inst17|estado_pr.S9~regout\ & \inst17|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|estado_pr.S9~regout\,
	datac => \inst17|Selector26~0_combout\,
	datad => \inst17|Add1~0_combout\,
	combout => \inst17|Selector26~1_combout\);

-- Location: LCCOMB_X21_Y7_N14
\inst17|precio[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|precio\(3) = (GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & (\inst17|Selector26~1_combout\)) # (!GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & ((\inst17|precio\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|Selector26~1_combout\,
	datac => \inst17|precio\(3),
	datad => \inst17|WideOr9~clkctrl_outclk\,
	combout => \inst17|precio\(3));

-- Location: LCCOMB_X21_Y6_N26
\inst17|Div0|auto_generated|divider|divider|StageOut[30]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[30]~81_combout\ = (!\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst17|precio\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst17|precio\(3),
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[30]~81_combout\);

-- Location: LCCOMB_X21_Y6_N18
\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\inst17|Div0|auto_generated|divider|divider|StageOut[31]~79_combout\) # 
-- (\inst17|Div0|auto_generated|divider|divider|StageOut[31]~78_combout\)))) # (!\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\inst17|Div0|auto_generated|divider|divider|StageOut[31]~79_combout\ & 
-- (!\inst17|Div0|auto_generated|divider|divider|StageOut[31]~78_combout\)))
-- \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\inst17|Div0|auto_generated|divider|divider|StageOut[31]~79_combout\ & (!\inst17|Div0|auto_generated|divider|divider|StageOut[31]~78_combout\ & 
-- !\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[31]~79_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[31]~78_combout\,
	datad => VCC,
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X21_Y6_N20
\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\inst17|Div0|auto_generated|divider|divider|StageOut[32]~101_combout\) # 
-- (\inst17|Div0|auto_generated|divider|divider|StageOut[32]~77_combout\)))) # (!\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\inst17|Div0|auto_generated|divider|divider|StageOut[32]~101_combout\) # 
-- (\inst17|Div0|auto_generated|divider|divider|StageOut[32]~77_combout\)))))
-- \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\inst17|Div0|auto_generated|divider|divider|StageOut[32]~101_combout\) # 
-- (\inst17|Div0|auto_generated|divider|divider|StageOut[32]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[32]~101_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[32]~77_combout\,
	datad => VCC,
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X21_Y6_N28
\inst17|Div0|auto_generated|divider|divider|StageOut[33]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[33]~76_combout\ = (!\inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[33]~76_combout\);

-- Location: LCCOMB_X21_Y6_N22
\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst17|Div0|auto_generated|divider|divider|StageOut[33]~95_combout\ & (!\inst17|Div0|auto_generated|divider|divider|StageOut[33]~76_combout\ & 
-- !\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[33]~95_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[33]~76_combout\,
	datad => VCC,
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y6_N24
\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X20_Y6_N22
\inst17|Div0|auto_generated|divider|divider|StageOut[38]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[38]~82_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[38]~82_combout\);

-- Location: LCCOMB_X20_Y6_N28
\inst17|Div0|auto_generated|divider|divider|StageOut[37]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[37]~83_combout\ = (\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[37]~83_combout\);

-- Location: LCCOMB_X20_Y6_N14
\inst17|Div0|auto_generated|divider|divider|StageOut[36]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[36]~84_combout\ = (\inst17|precio\(3) & \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|precio\(3),
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[36]~84_combout\);

-- Location: LCCOMB_X20_Y8_N22
\inst17|precio[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|precio\(2) = (GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & (\inst17|Selector25~0_combout\)) # (!GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & ((\inst17|precio\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Selector25~0_combout\,
	datab => \inst17|precio\(2),
	datad => \inst17|WideOr9~clkctrl_outclk\,
	combout => \inst17|precio\(2));

-- Location: LCCOMB_X20_Y6_N18
\inst17|Div0|auto_generated|divider|divider|StageOut[35]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|StageOut[35]~86_combout\ = (\inst17|precio\(2) & \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|precio\(2),
	datad => \inst17|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst17|Div0|auto_generated|divider|divider|StageOut[35]~86_combout\);

-- Location: LCCOMB_X20_Y6_N6
\inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\inst17|Div0|auto_generated|divider|divider|StageOut[38]~96_combout\ & (!\inst17|Div0|auto_generated|divider|divider|StageOut[38]~82_combout\ & 
-- !\inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Div0|auto_generated|divider|divider|StageOut[38]~96_combout\,
	datab => \inst17|Div0|auto_generated|divider|divider|StageOut[38]~82_combout\,
	datad => VCC,
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X20_Y6_N8
\inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X19_Y8_N0
\inst17|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector6~0_combout\ = (\inst17|Selector23~0_combout\ & (((\inst17|precio\(4) & !\inst17|estado_pr.S7~regout\)))) # (!\inst17|Selector23~0_combout\ & (\inst17|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|contador\(1),
	datab => \inst17|precio\(4),
	datac => \inst17|estado_pr.S7~regout\,
	datad => \inst17|Selector23~0_combout\,
	combout => \inst17|Selector6~0_combout\);

-- Location: LCCOMB_X19_Y8_N6
\inst17|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector6~1_combout\ = (\inst17|Selector6~0_combout\) # ((\inst17|estado_pr.S7~regout\ & (\inst17|Selector23~0_combout\ & !\inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|estado_pr.S7~regout\,
	datab => \inst17|Selector23~0_combout\,
	datac => \inst17|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \inst17|Selector6~0_combout\,
	combout => \inst17|Selector6~1_combout\);

-- Location: LCCOMB_X19_Y8_N14
\inst17|litros[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|litros\(1) = (GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & ((\inst17|Selector6~1_combout\))) # (!GLOBAL(\inst17|WideOr9~clkctrl_outclk\) & (\inst17|litros\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|litros\(1),
	datac => \inst17|WideOr9~clkctrl_outclk\,
	datad => \inst17|Selector6~1_combout\,
	combout => \inst17|litros\(1));

-- Location: LCCOMB_X18_Y8_N18
\inst17|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan1~1_cout\ = CARRY((\inst17|litros\(0) & !\inst17|cont\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|litros\(0),
	datab => \inst17|cont\(0),
	datad => VCC,
	cout => \inst17|LessThan1~1_cout\);

-- Location: LCCOMB_X18_Y8_N20
\inst17|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan1~3_cout\ = CARRY((\inst17|cont\(1) & ((!\inst17|LessThan1~1_cout\) # (!\inst17|litros\(1)))) # (!\inst17|cont\(1) & (!\inst17|litros\(1) & !\inst17|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cont\(1),
	datab => \inst17|litros\(1),
	datad => VCC,
	cin => \inst17|LessThan1~1_cout\,
	cout => \inst17|LessThan1~3_cout\);

-- Location: LCCOMB_X18_Y8_N22
\inst17|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan1~5_cout\ = CARRY((\inst17|litros\(2) & ((!\inst17|LessThan1~3_cout\) # (!\inst17|cont\(2)))) # (!\inst17|litros\(2) & (!\inst17|cont\(2) & !\inst17|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|litros\(2),
	datab => \inst17|cont\(2),
	datad => VCC,
	cin => \inst17|LessThan1~3_cout\,
	cout => \inst17|LessThan1~5_cout\);

-- Location: LCCOMB_X18_Y8_N24
\inst17|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan1~7_cout\ = CARRY((\inst17|cont\(3) & ((!\inst17|LessThan1~5_cout\) # (!\inst17|litros\(3)))) # (!\inst17|cont\(3) & (!\inst17|litros\(3) & !\inst17|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cont\(3),
	datab => \inst17|litros\(3),
	datad => VCC,
	cin => \inst17|LessThan1~5_cout\,
	cout => \inst17|LessThan1~7_cout\);

-- Location: LCCOMB_X18_Y8_N26
\inst17|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan1~9_cout\ = CARRY((\inst17|cont\(4) & (\inst17|litros\(4) & !\inst17|LessThan1~7_cout\)) # (!\inst17|cont\(4) & ((\inst17|litros\(4)) # (!\inst17|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cont\(4),
	datab => \inst17|litros\(4),
	datad => VCC,
	cin => \inst17|LessThan1~7_cout\,
	cout => \inst17|LessThan1~9_cout\);

-- Location: LCCOMB_X18_Y8_N28
\inst17|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan1~11_cout\ = CARRY((\inst17|litros\(5) & (\inst17|cont\(5) & !\inst17|LessThan1~9_cout\)) # (!\inst17|litros\(5) & ((\inst17|cont\(5)) # (!\inst17|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|litros\(5),
	datab => \inst17|cont\(5),
	datad => VCC,
	cin => \inst17|LessThan1~9_cout\,
	cout => \inst17|LessThan1~11_cout\);

-- Location: LCCOMB_X18_Y8_N30
\inst17|LessThan1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan1~12_combout\ = (\inst17|cont\(6) & (!\inst17|LessThan1~11_cout\ & \inst17|litros\(6))) # (!\inst17|cont\(6) & ((\inst17|litros\(6)) # (!\inst17|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cont\(6),
	datad => \inst17|litros\(6),
	cin => \inst17|LessThan1~11_cout\,
	combout => \inst17|LessThan1~12_combout\);

-- Location: LCCOMB_X18_Y8_N2
\inst17|LessThan1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|LessThan1~14_combout\ = (!\inst17|litros\(9) & (!\inst17|litros\(8) & (!\inst17|litros\(7) & !\inst17|LessThan1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|litros\(9),
	datab => \inst17|litros\(8),
	datac => \inst17|litros\(7),
	datad => \inst17|LessThan1~12_combout\,
	combout => \inst17|LessThan1~14_combout\);

-- Location: LCFF_X18_Y8_N5
\inst17|cont[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|clk_state~clkctrl_outclk\,
	datain => \inst17|cont[0]~7_combout\,
	sclr => \inst17|LessThan1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cont\(0));

-- Location: LCFF_X18_Y8_N11
\inst17|cont[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|clk_state~clkctrl_outclk\,
	datain => \inst17|cont[3]~13_combout\,
	sclr => \inst17|LessThan1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cont\(3));

-- Location: LCCOMB_X18_Y8_N0
\inst17|Equal15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Equal15~0_combout\ = (\inst17|cont\(2)) # ((\inst17|cont\(0)) # ((\inst17|cont\(1)) # (\inst17|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cont\(2),
	datab => \inst17|cont\(0),
	datac => \inst17|cont\(1),
	datad => \inst17|cont\(3),
	combout => \inst17|Equal15~0_combout\);

-- Location: LCCOMB_X18_Y8_N16
\inst17|cont[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|cont[6]~19_combout\ = \inst17|cont\(6) $ (!\inst17|cont[5]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cont\(6),
	cin => \inst17|cont[5]~18\,
	combout => \inst17|cont[6]~19_combout\);

-- Location: LCFF_X18_Y8_N17
\inst17|cont[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst17|clk_state~clkctrl_outclk\,
	datain => \inst17|cont[6]~19_combout\,
	sclr => \inst17|LessThan1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|cont\(6));

-- Location: LCCOMB_X19_Y8_N24
\inst17|Equal15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Equal15~1_combout\ = (\inst17|cont\(4)) # ((\inst17|cont\(6)) # (\inst17|cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cont\(4),
	datab => \inst17|cont\(6),
	datad => \inst17|cont\(5),
	combout => \inst17|Equal15~1_combout\);

-- Location: LCCOMB_X21_Y7_N24
\inst17|estado_sig.S6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|estado_sig.S6~0_combout\ = (\inst17|estado_pr.S4~regout\ & \inst17|Equal10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|estado_pr.S4~regout\,
	datad => \inst17|Equal10~1_combout\,
	combout => \inst17|estado_sig.S6~0_combout\);

-- Location: LCFF_X21_Y7_N25
\inst17|estado_pr.S6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk_state~clkctrl_outclk\,
	datain => \inst17|estado_sig.S6~0_combout\,
	aclr => \inst17|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17|estado_pr.S6~regout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\magna~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_magna,
	combout => \magna~combout\);

-- Location: LCCOMB_X18_Y7_N12
\inst17|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector11~0_combout\ = (\magna~combout\ & ((\inst17|estado_pr.S6~regout\) # (\inst17|estado_pr.S8~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|estado_pr.S6~regout\,
	datac => \inst17|estado_pr.S8~regout\,
	datad => \magna~combout\,
	combout => \inst17|Selector11~0_combout\);

-- Location: LCCOMB_X19_Y8_N18
\inst17|Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector11~1_combout\ = (\inst17|Selector11~0_combout\ & ((\inst17|Equal15~0_combout\) # (\inst17|Equal15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Equal15~0_combout\,
	datac => \inst17|Equal15~1_combout\,
	datad => \inst17|Selector11~0_combout\,
	combout => \inst17|Selector11~1_combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\premium~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_premium,
	combout => \premium~combout\);

-- Location: LCCOMB_X19_Y6_N28
\inst17|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector12~0_combout\ = (\premium~combout\ & ((\inst17|estado_pr.S7~regout\) # (\inst17|estado_pr.S9~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|estado_pr.S7~regout\,
	datac => \premium~combout\,
	datad => \inst17|estado_pr.S9~regout\,
	combout => \inst17|Selector12~0_combout\);

-- Location: LCCOMB_X19_Y8_N4
\inst17|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector12~1_combout\ = (\inst17|Selector12~0_combout\ & ((\inst17|Equal15~1_combout\) # (\inst17|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Equal15~1_combout\,
	datab => \inst17|Selector12~0_combout\,
	datac => \inst17|Equal15~0_combout\,
	combout => \inst17|Selector12~1_combout\);

-- Location: LCCOMB_X18_Y7_N10
\inst17|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector8~0_combout\ = (\inst17|estado_pr.S7~regout\) # (((\inst17|Equal10~0_combout\ & \inst17|estado_pr.S1~regout\)) # (!\inst17|Selector23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Equal10~0_combout\,
	datab => \inst17|estado_pr.S7~regout\,
	datac => \inst17|estado_pr.S1~regout\,
	datad => \inst17|Selector23~0_combout\,
	combout => \inst17|Selector8~0_combout\);

-- Location: LCCOMB_X19_Y7_N2
\inst17|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector9~0_combout\ = (\inst17|estado_pr.S6~regout\) # (((\inst17|estado_pr.S1~regout\ & \inst17|Equal10~0_combout\)) # (!\inst17|Selector13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|estado_pr.S1~regout\,
	datab => \inst17|estado_pr.S6~regout\,
	datac => \inst17|Selector13~0_combout\,
	datad => \inst17|Equal10~0_combout\,
	combout => \inst17|Selector9~0_combout\);

-- Location: LCCOMB_X19_Y7_N6
\inst17|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector10~0_combout\ = (\inst17|estado_pr.S1~regout\ & !\inst17|Equal10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|estado_pr.S1~regout\,
	datac => \inst17|Equal10~0_combout\,
	combout => \inst17|Selector10~0_combout\);

-- Location: LCCOMB_X19_Y7_N4
\inst17|Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Selector10~1_combout\ = (\inst17|Selector10~0_combout\) # ((\inst17|estado_pr.S6~regout\) # ((\inst17|estado_pr.S9~regout\) # (\inst17|estado_pr.S5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Selector10~0_combout\,
	datab => \inst17|estado_pr.S6~regout\,
	datac => \inst17|estado_pr.S9~regout\,
	datad => \inst17|estado_pr.S5~regout\,
	combout => \inst17|Selector10~1_combout\);

-- Location: LCCOMB_X21_Y7_N16
\inst17|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|WideOr6~0_combout\ = (\inst17|estado_pr.S6~regout\) # ((\inst17|estado_pr.S4~regout\) # ((\inst17|estado_pr.S8~regout\) # (!\inst17|estado_pr.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|estado_pr.S6~regout\,
	datab => \inst17|estado_pr.S4~regout\,
	datac => \inst17|estado_pr.S0~regout\,
	datad => \inst17|estado_pr.S8~regout\,
	combout => \inst17|WideOr6~0_combout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dato~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dato);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salidaMagna~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salidaMagna);

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salidaPremium~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salidaPremium);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\columna[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|ALT_INV_pr_state.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_columna(3));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\columna[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|pr_state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_columna(2));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\columna[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|pr_state.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_columna(1));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\columna[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|pr_state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_columna(0));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(3));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|ALT_INV_Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(2));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(1));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(0));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug(3));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug(2));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug(1));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug(0));
END structure;


