-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

-- DATE "09/02/2023 17:42:18"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pong IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	Hsync : BUFFER std_logic;
	Vsync : BUFFER std_logic;
	direction_switch : IN std_logic_vector(3 DOWNTO 0);
	start_game : IN std_logic;
	seg1 : BUFFER std_logic_vector(6 DOWNTO 0);
	seg2 : BUFFER std_logic_vector(6 DOWNTO 0);
	bar : BUFFER std_logic;
	ball_speed : IN std_logic_vector(1 DOWNTO 0);
	R : BUFFER std_logic_vector(3 DOWNTO 0);
	G : BUFFER std_logic_vector(3 DOWNTO 0);
	B : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END pong;

-- Design Ports Information
-- Hsync	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Vsync	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg1[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg1[1]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg1[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg1[3]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg1[4]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg1[5]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg1[6]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg2[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg2[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg2[2]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg2[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg2[4]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg2[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg2[6]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bar	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R[0]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R[1]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R[2]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R[3]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- G[0]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- G[1]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- G[2]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- G[3]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- B[0]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- B[1]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- B[2]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- B[3]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- reset	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- direction_switch[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- direction_switch[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- direction_switch[3]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- direction_switch[2]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start_game	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ball_speed[0]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ball_speed[1]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF pong IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_Hsync : std_logic;
SIGNAL ww_Vsync : std_logic;
SIGNAL ww_direction_switch : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_start_game : std_logic;
SIGNAL ww_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_bar : std_logic;
SIGNAL ww_ball_speed : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u2|process_2~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|Hsync~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Hsync~output_o\ : std_logic;
SIGNAL \Vsync~output_o\ : std_logic;
SIGNAL \seg1[0]~output_o\ : std_logic;
SIGNAL \seg1[1]~output_o\ : std_logic;
SIGNAL \seg1[2]~output_o\ : std_logic;
SIGNAL \seg1[3]~output_o\ : std_logic;
SIGNAL \seg1[4]~output_o\ : std_logic;
SIGNAL \seg1[5]~output_o\ : std_logic;
SIGNAL \seg1[6]~output_o\ : std_logic;
SIGNAL \seg2[0]~output_o\ : std_logic;
SIGNAL \seg2[1]~output_o\ : std_logic;
SIGNAL \seg2[2]~output_o\ : std_logic;
SIGNAL \seg2[3]~output_o\ : std_logic;
SIGNAL \seg2[4]~output_o\ : std_logic;
SIGNAL \seg2[5]~output_o\ : std_logic;
SIGNAL \seg2[6]~output_o\ : std_logic;
SIGNAL \bar~output_o\ : std_logic;
SIGNAL \R[0]~output_o\ : std_logic;
SIGNAL \R[1]~output_o\ : std_logic;
SIGNAL \R[2]~output_o\ : std_logic;
SIGNAL \R[3]~output_o\ : std_logic;
SIGNAL \G[0]~output_o\ : std_logic;
SIGNAL \G[1]~output_o\ : std_logic;
SIGNAL \G[2]~output_o\ : std_logic;
SIGNAL \G[3]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \U0|temp~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \U0|temp~q\ : std_logic;
SIGNAL \U0|temp~clkctrl_outclk\ : std_logic;
SIGNAL \u1|Add0~0_combout\ : std_logic;
SIGNAL \u1|Add0~1\ : std_logic;
SIGNAL \u1|Add0~2_combout\ : std_logic;
SIGNAL \u1|Add0~3\ : std_logic;
SIGNAL \u1|Add0~4_combout\ : std_logic;
SIGNAL \u1|Add0~5\ : std_logic;
SIGNAL \u1|Add0~6_combout\ : std_logic;
SIGNAL \u1|Add0~7\ : std_logic;
SIGNAL \u1|Add0~8_combout\ : std_logic;
SIGNAL \u1|Equal0~0_combout\ : std_logic;
SIGNAL \u1|Add0~9\ : std_logic;
SIGNAL \u1|Add0~11\ : std_logic;
SIGNAL \u1|Add0~12_combout\ : std_logic;
SIGNAL \u1|Hsync~0_combout\ : std_logic;
SIGNAL \u1|Add0~13\ : std_logic;
SIGNAL \u1|Add0~14_combout\ : std_logic;
SIGNAL \u1|Hcount~5_combout\ : std_logic;
SIGNAL \u1|Add0~15\ : std_logic;
SIGNAL \u1|Add0~16_combout\ : std_logic;
SIGNAL \u1|Hcount~6_combout\ : std_logic;
SIGNAL \u1|Add0~17\ : std_logic;
SIGNAL \u1|Add0~18_combout\ : std_logic;
SIGNAL \u1|Hsync~3_combout\ : std_logic;
SIGNAL \u1|Hcount~4_combout\ : std_logic;
SIGNAL \u1|Add0~10_combout\ : std_logic;
SIGNAL \u1|Equal0~2_combout\ : std_logic;
SIGNAL \u1|Equal0~1_combout\ : std_logic;
SIGNAL \u1|Hsync~1_combout\ : std_logic;
SIGNAL \u1|Hsync~2_combout\ : std_logic;
SIGNAL \u1|Hsync~feeder_combout\ : std_logic;
SIGNAL \u1|Hsync~q\ : std_logic;
SIGNAL \u1|Hsync~clkctrl_outclk\ : std_logic;
SIGNAL \u1|Add1~11\ : std_logic;
SIGNAL \u1|Add1~12_combout\ : std_logic;
SIGNAL \u1|Add1~13\ : std_logic;
SIGNAL \u1|Add1~14_combout\ : std_logic;
SIGNAL \u1|Add1~15\ : std_logic;
SIGNAL \u1|Add1~16_combout\ : std_logic;
SIGNAL \u1|Vsync~0_combout\ : std_logic;
SIGNAL \u1|Vsync~2_combout\ : std_logic;
SIGNAL \u1|Add1~0_combout\ : std_logic;
SIGNAL \u1|Vcount~5_combout\ : std_logic;
SIGNAL \u1|Add1~17\ : std_logic;
SIGNAL \u1|Add1~18_combout\ : std_logic;
SIGNAL \u1|Vsync~1_combout\ : std_logic;
SIGNAL \u1|Vcount~4_combout\ : std_logic;
SIGNAL \u1|Add1~1\ : std_logic;
SIGNAL \u1|Add1~2_combout\ : std_logic;
SIGNAL \u1|Add1~3\ : std_logic;
SIGNAL \u1|Add1~4_combout\ : std_logic;
SIGNAL \u1|Vcount~7_combout\ : std_logic;
SIGNAL \u1|Add1~5\ : std_logic;
SIGNAL \u1|Add1~6_combout\ : std_logic;
SIGNAL \u1|Vcount~6_combout\ : std_logic;
SIGNAL \u1|Add1~7\ : std_logic;
SIGNAL \u1|Add1~8_combout\ : std_logic;
SIGNAL \u1|Add1~9\ : std_logic;
SIGNAL \u1|Add1~10_combout\ : std_logic;
SIGNAL \u1|Equal4~3_combout\ : std_logic;
SIGNAL \u1|Equal4~4_combout\ : std_logic;
SIGNAL \u1|Vsync~3_combout\ : std_logic;
SIGNAL \u1|Vsync~4_combout\ : std_logic;
SIGNAL \u1|Vsync~q\ : std_logic;
SIGNAL \u2|score1[0]~32_combout\ : std_logic;
SIGNAL \u2|score1[2]~37\ : std_logic;
SIGNAL \u2|score1[3]~38_combout\ : std_logic;
SIGNAL \u7|Add0~7\ : std_logic;
SIGNAL \u7|Add0~8_combout\ : std_logic;
SIGNAL \u7|Qt~9_combout\ : std_logic;
SIGNAL \u7|Add0~9\ : std_logic;
SIGNAL \u7|Add0~10_combout\ : std_logic;
SIGNAL \u7|Qt~8_combout\ : std_logic;
SIGNAL \u7|Add0~11\ : std_logic;
SIGNAL \u7|Add0~12_combout\ : std_logic;
SIGNAL \u7|Add0~13\ : std_logic;
SIGNAL \u7|Add0~14_combout\ : std_logic;
SIGNAL \u7|Qt~7_combout\ : std_logic;
SIGNAL \u7|Equal0~3_combout\ : std_logic;
SIGNAL \u7|Add0~15\ : std_logic;
SIGNAL \u7|Add0~16_combout\ : std_logic;
SIGNAL \u7|Add0~17\ : std_logic;
SIGNAL \u7|Add0~18_combout\ : std_logic;
SIGNAL \u7|Qt~6_combout\ : std_logic;
SIGNAL \u7|Add0~19\ : std_logic;
SIGNAL \u7|Add0~20_combout\ : std_logic;
SIGNAL \u7|Qt~5_combout\ : std_logic;
SIGNAL \u7|Add0~21\ : std_logic;
SIGNAL \u7|Add0~22_combout\ : std_logic;
SIGNAL \u7|Qt~4_combout\ : std_logic;
SIGNAL \u7|Add0~23\ : std_logic;
SIGNAL \u7|Add0~24_combout\ : std_logic;
SIGNAL \u7|Add0~25\ : std_logic;
SIGNAL \u7|Add0~26_combout\ : std_logic;
SIGNAL \u7|Qt~3_combout\ : std_logic;
SIGNAL \u7|Add0~27\ : std_logic;
SIGNAL \u7|Add0~28_combout\ : std_logic;
SIGNAL \u7|Add0~29\ : std_logic;
SIGNAL \u7|Add0~30_combout\ : std_logic;
SIGNAL \u7|Equal0~1_combout\ : std_logic;
SIGNAL \u7|Equal0~2_combout\ : std_logic;
SIGNAL \u3|Add0~0_combout\ : std_logic;
SIGNAL \u3|Add0~1\ : std_logic;
SIGNAL \u3|Add0~2_combout\ : std_logic;
SIGNAL \u6|Add0~1_cout\ : std_logic;
SIGNAL \u6|Add0~2_combout\ : std_logic;
SIGNAL \u7|Add0~31\ : std_logic;
SIGNAL \u7|Add0~32_combout\ : std_logic;
SIGNAL \u7|Qt~2_combout\ : std_logic;
SIGNAL \u7|Equal0~0_combout\ : std_logic;
SIGNAL \u7|Equal0~4_combout\ : std_logic;
SIGNAL \u7|Add0~1_cout\ : std_logic;
SIGNAL \u7|Add0~3_cout\ : std_logic;
SIGNAL \u7|Add0~4_combout\ : std_logic;
SIGNAL \u7|Qt~0_combout\ : std_logic;
SIGNAL \u7|Add0~5\ : std_logic;
SIGNAL \u7|Add0~6_combout\ : std_logic;
SIGNAL \u7|Qt~1_combout\ : std_logic;
SIGNAL \u7|temp~0_combout\ : std_logic;
SIGNAL \u7|temp~q\ : std_logic;
SIGNAL \ball_speed[1]~input_o\ : std_logic;
SIGNAL \u8|Add0~1_cout\ : std_logic;
SIGNAL \u8|Add0~3_cout\ : std_logic;
SIGNAL \u8|Add0~4_combout\ : std_logic;
SIGNAL \u8|Add0~5\ : std_logic;
SIGNAL \u8|Add0~6_combout\ : std_logic;
SIGNAL \u8|Add0~7\ : std_logic;
SIGNAL \u8|Add0~8_combout\ : std_logic;
SIGNAL \u8|Add0~9\ : std_logic;
SIGNAL \u8|Add0~10_combout\ : std_logic;
SIGNAL \u8|Qt~6_combout\ : std_logic;
SIGNAL \u8|Add0~11\ : std_logic;
SIGNAL \u8|Add0~12_combout\ : std_logic;
SIGNAL \u8|Add0~13\ : std_logic;
SIGNAL \u8|Add0~14_combout\ : std_logic;
SIGNAL \u8|Add0~15\ : std_logic;
SIGNAL \u8|Add0~16_combout\ : std_logic;
SIGNAL \u8|Add0~17\ : std_logic;
SIGNAL \u8|Add0~18_combout\ : std_logic;
SIGNAL \u8|Add0~19\ : std_logic;
SIGNAL \u8|Add0~20_combout\ : std_logic;
SIGNAL \u8|Qt~5_combout\ : std_logic;
SIGNAL \u8|Add0~21\ : std_logic;
SIGNAL \u8|Add0~22_combout\ : std_logic;
SIGNAL \u8|Add0~23\ : std_logic;
SIGNAL \u8|Add0~24_combout\ : std_logic;
SIGNAL \u8|Qt~4_combout\ : std_logic;
SIGNAL \u8|Add0~25\ : std_logic;
SIGNAL \u8|Add0~26_combout\ : std_logic;
SIGNAL \u8|Qt~3_combout\ : std_logic;
SIGNAL \u8|Add0~27\ : std_logic;
SIGNAL \u8|Add0~28_combout\ : std_logic;
SIGNAL \u8|Qt~2_combout\ : std_logic;
SIGNAL \u8|Equal0~1_combout\ : std_logic;
SIGNAL \u8|Equal0~2_combout\ : std_logic;
SIGNAL \u8|Equal0~3_combout\ : std_logic;
SIGNAL \u8|Add0~29\ : std_logic;
SIGNAL \u8|Add0~30_combout\ : std_logic;
SIGNAL \u8|Qt~1_combout\ : std_logic;
SIGNAL \u8|Equal0~0_combout\ : std_logic;
SIGNAL \u8|Equal0~4_combout\ : std_logic;
SIGNAL \u8|Qt~0_combout\ : std_logic;
SIGNAL \u8|temp~0_combout\ : std_logic;
SIGNAL \u8|temp~q\ : std_logic;
SIGNAL \u6|Add0~3\ : std_logic;
SIGNAL \u6|Add0~4_combout\ : std_logic;
SIGNAL \u6|Add0~7\ : std_logic;
SIGNAL \u6|Add0~8_combout\ : std_logic;
SIGNAL \u6|Qt~7_combout\ : std_logic;
SIGNAL \u6|Add0~9\ : std_logic;
SIGNAL \u6|Add0~10_combout\ : std_logic;
SIGNAL \u6|Add0~11\ : std_logic;
SIGNAL \u6|Add0~12_combout\ : std_logic;
SIGNAL \u6|Qt~6_combout\ : std_logic;
SIGNAL \u6|Add0~13\ : std_logic;
SIGNAL \u6|Add0~14_combout\ : std_logic;
SIGNAL \u6|Add0~15\ : std_logic;
SIGNAL \u6|Add0~16_combout\ : std_logic;
SIGNAL \u6|Qt~5_combout\ : std_logic;
SIGNAL \u6|Add0~17\ : std_logic;
SIGNAL \u6|Add0~18_combout\ : std_logic;
SIGNAL \u6|Add0~19\ : std_logic;
SIGNAL \u6|Add0~20_combout\ : std_logic;
SIGNAL \u6|Add0~21\ : std_logic;
SIGNAL \u6|Add0~22_combout\ : std_logic;
SIGNAL \u6|Qt~4_combout\ : std_logic;
SIGNAL \u6|Add0~23\ : std_logic;
SIGNAL \u6|Add0~24_combout\ : std_logic;
SIGNAL \u6|Add0~25\ : std_logic;
SIGNAL \u6|Add0~26_combout\ : std_logic;
SIGNAL \u6|Qt~3_combout\ : std_logic;
SIGNAL \u6|Add0~27\ : std_logic;
SIGNAL \u6|Add0~28_combout\ : std_logic;
SIGNAL \u6|Qt~2_combout\ : std_logic;
SIGNAL \u6|Add0~29\ : std_logic;
SIGNAL \u6|Add0~30_combout\ : std_logic;
SIGNAL \u6|Add0~31\ : std_logic;
SIGNAL \u6|Add0~32_combout\ : std_logic;
SIGNAL \u6|Qt~1_combout\ : std_logic;
SIGNAL \u6|Equal0~0_combout\ : std_logic;
SIGNAL \u6|Equal0~3_combout\ : std_logic;
SIGNAL \u6|Equal0~1_combout\ : std_logic;
SIGNAL \u6|Equal0~2_combout\ : std_logic;
SIGNAL \u6|Equal0~4_combout\ : std_logic;
SIGNAL \u6|Qt~0_combout\ : std_logic;
SIGNAL \u6|Add0~5\ : std_logic;
SIGNAL \u6|Add0~6_combout\ : std_logic;
SIGNAL \u6|temp~0_combout\ : std_logic;
SIGNAL \u6|temp~q\ : std_logic;
SIGNAL \u5|temp~0_combout\ : std_logic;
SIGNAL \u3|Add0~3\ : std_logic;
SIGNAL \u3|Add0~5\ : std_logic;
SIGNAL \u3|Add0~7\ : std_logic;
SIGNAL \u3|Add0~8_combout\ : std_logic;
SIGNAL \u3|Add0~9\ : std_logic;
SIGNAL \u3|Add0~10_combout\ : std_logic;
SIGNAL \u3|Add0~11\ : std_logic;
SIGNAL \u3|Add0~12_combout\ : std_logic;
SIGNAL \u3|Add0~13\ : std_logic;
SIGNAL \u3|Add0~14_combout\ : std_logic;
SIGNAL \u3|Qt~6_combout\ : std_logic;
SIGNAL \u3|Add0~15\ : std_logic;
SIGNAL \u3|Add0~16_combout\ : std_logic;
SIGNAL \u3|Add0~17\ : std_logic;
SIGNAL \u3|Add0~18_combout\ : std_logic;
SIGNAL \u3|Qt~5_combout\ : std_logic;
SIGNAL \u3|Add0~19\ : std_logic;
SIGNAL \u3|Add0~20_combout\ : std_logic;
SIGNAL \u3|Add0~21\ : std_logic;
SIGNAL \u3|Add0~22_combout\ : std_logic;
SIGNAL \u3|Qt~4_combout\ : std_logic;
SIGNAL \u3|Equal0~2_combout\ : std_logic;
SIGNAL \u3|Add0~23\ : std_logic;
SIGNAL \u3|Add0~24_combout\ : std_logic;
SIGNAL \u3|Add0~25\ : std_logic;
SIGNAL \u3|Add0~26_combout\ : std_logic;
SIGNAL \u3|Qt~3_combout\ : std_logic;
SIGNAL \u3|Add0~27\ : std_logic;
SIGNAL \u3|Add0~28_combout\ : std_logic;
SIGNAL \u3|Add0~29\ : std_logic;
SIGNAL \u3|Add0~30_combout\ : std_logic;
SIGNAL \u3|Equal0~1_combout\ : std_logic;
SIGNAL \u3|Add0~31\ : std_logic;
SIGNAL \u3|Add0~32_combout\ : std_logic;
SIGNAL \u3|Qt~2_combout\ : std_logic;
SIGNAL \u3|Add0~33\ : std_logic;
SIGNAL \u3|Add0~34_combout\ : std_logic;
SIGNAL \u3|Qt~1_combout\ : std_logic;
SIGNAL \u3|Equal0~0_combout\ : std_logic;
SIGNAL \u3|Equal0~3_combout\ : std_logic;
SIGNAL \u3|Equal0~4_combout\ : std_logic;
SIGNAL \u3|Add0~4_combout\ : std_logic;
SIGNAL \u3|Qt~7_combout\ : std_logic;
SIGNAL \u3|Add0~6_combout\ : std_logic;
SIGNAL \u3|Qt~0_combout\ : std_logic;
SIGNAL \u3|Equal0~5_combout\ : std_logic;
SIGNAL \u5|temp~q\ : std_logic;
SIGNAL \ball_speed[0]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \start_game~input_o\ : std_logic;
SIGNAL \u2|Add9~1_combout\ : std_logic;
SIGNAL \u2|process_2~0clkctrl_outclk\ : std_logic;
SIGNAL \u2|Add9~2\ : std_logic;
SIGNAL \u2|Add9~3_combout\ : std_logic;
SIGNAL \u2|Add9~4\ : std_logic;
SIGNAL \u2|Add9~5_combout\ : std_logic;
SIGNAL \u2|Add9~6\ : std_logic;
SIGNAL \u2|Add9~7_combout\ : std_logic;
SIGNAL \u2|Add9~8\ : std_logic;
SIGNAL \u2|Add9~9_combout\ : std_logic;
SIGNAL \u2|Add9~10\ : std_logic;
SIGNAL \u2|Add9~11_combout\ : std_logic;
SIGNAL \u2|Add9~12\ : std_logic;
SIGNAL \u2|Add9~13_combout\ : std_logic;
SIGNAL \u2|Ball_pos_x[6]~1_combout\ : std_logic;
SIGNAL \u2|Add9~14\ : std_logic;
SIGNAL \u2|Add9~16\ : std_logic;
SIGNAL \u2|Add9~17_combout\ : std_logic;
SIGNAL \u2|Ball_pos_x[8]~0_combout\ : std_logic;
SIGNAL \u2|Add9~18\ : std_logic;
SIGNAL \u2|Add9~19_combout\ : std_logic;
SIGNAL \u2|LessThan13~0_combout\ : std_logic;
SIGNAL \u2|Equal10~0_combout\ : std_logic;
SIGNAL \u2|score2[0]~32_combout\ : std_logic;
SIGNAL \u2|state~0_combout\ : std_logic;
SIGNAL \u2|state~1_combout\ : std_logic;
SIGNAL \u2|state~q\ : std_logic;
SIGNAL \u2|process_2~0_combout\ : std_logic;
SIGNAL \u2|Ball_direction~67_combout\ : std_logic;
SIGNAL \u2|Ball_direction[2]~9_combout\ : std_logic;
SIGNAL \u2|Ball_direction~28_combout\ : std_logic;
SIGNAL \u3|temp~0_combout\ : std_logic;
SIGNAL \u3|temp~feeder_combout\ : std_logic;
SIGNAL \u3|temp~q\ : std_logic;
SIGNAL \u3|temp~clkctrl_outclk\ : std_logic;
SIGNAL \direction_switch[3]~input_o\ : std_logic;
SIGNAL \u2|Add4~0_combout\ : std_logic;
SIGNAL \u2|Add5~0_combout\ : std_logic;
SIGNAL \u2|paddle2_pos_y~10_combout\ : std_logic;
SIGNAL \u2|paddle2_pos_y~11_combout\ : std_logic;
SIGNAL \direction_switch[2]~input_o\ : std_logic;
SIGNAL \u2|paddle2_pos_y[3]~1_combout\ : std_logic;
SIGNAL \u2|Add4~1\ : std_logic;
SIGNAL \u2|Add4~2_combout\ : std_logic;
SIGNAL \u2|Add5~1\ : std_logic;
SIGNAL \u2|Add5~2_combout\ : std_logic;
SIGNAL \u2|paddle2_pos_y~9_combout\ : std_logic;
SIGNAL \u2|Add4~13\ : std_logic;
SIGNAL \u2|Add4~14_combout\ : std_logic;
SIGNAL \u2|Add4~3\ : std_logic;
SIGNAL \u2|Add4~4_combout\ : std_logic;
SIGNAL \u2|Add5~3\ : std_logic;
SIGNAL \u2|Add5~4_combout\ : std_logic;
SIGNAL \u2|paddle2_pos_y~8_combout\ : std_logic;
SIGNAL \u2|Add4~5\ : std_logic;
SIGNAL \u2|Add4~6_combout\ : std_logic;
SIGNAL \u2|Add5~5\ : std_logic;
SIGNAL \u2|Add5~6_combout\ : std_logic;
SIGNAL \u2|paddle2_pos_y~7_combout\ : std_logic;
SIGNAL \u2|Add4~7\ : std_logic;
SIGNAL \u2|Add4~8_combout\ : std_logic;
SIGNAL \u2|Add5~7\ : std_logic;
SIGNAL \u2|Add5~8_combout\ : std_logic;
SIGNAL \u2|paddle2_pos_y~6_combout\ : std_logic;
SIGNAL \u2|Add5~9\ : std_logic;
SIGNAL \u2|Add5~11\ : std_logic;
SIGNAL \u2|Add5~13\ : std_logic;
SIGNAL \u2|Add5~14_combout\ : std_logic;
SIGNAL \u2|paddle2_pos_y~3_combout\ : std_logic;
SIGNAL \u2|Add5~15\ : std_logic;
SIGNAL \u2|Add5~16_combout\ : std_logic;
SIGNAL \u2|Add4~15\ : std_logic;
SIGNAL \u2|Add4~16_combout\ : std_logic;
SIGNAL \u2|paddle2_pos_y~2_combout\ : std_logic;
SIGNAL \u2|Equal2~1_combout\ : std_logic;
SIGNAL \u2|Equal2~0_combout\ : std_logic;
SIGNAL \u2|Equal2~2_combout\ : std_logic;
SIGNAL \u2|Add4~9\ : std_logic;
SIGNAL \u2|Add4~10_combout\ : std_logic;
SIGNAL \u2|Add5~10_combout\ : std_logic;
SIGNAL \u2|paddle2_pos_y~5_combout\ : std_logic;
SIGNAL \u2|Add4~11\ : std_logic;
SIGNAL \u2|Add4~12_combout\ : std_logic;
SIGNAL \u2|Add5~12_combout\ : std_logic;
SIGNAL \u2|paddle2_pos_y~4_combout\ : std_logic;
SIGNAL \u2|Equal3~0_combout\ : std_logic;
SIGNAL \u2|Equal3~1_combout\ : std_logic;
SIGNAL \u2|Add4~17\ : std_logic;
SIGNAL \u2|Add4~18_combout\ : std_logic;
SIGNAL \u2|Add5~17\ : std_logic;
SIGNAL \u2|Add5~18_combout\ : std_logic;
SIGNAL \u2|paddle2_pos_y~0_combout\ : std_logic;
SIGNAL \u2|Add15~1\ : std_logic;
SIGNAL \u2|Add15~3\ : std_logic;
SIGNAL \u2|Add15~5\ : std_logic;
SIGNAL \u2|Add15~7\ : std_logic;
SIGNAL \u2|Add15~9\ : std_logic;
SIGNAL \u2|Add15~11\ : std_logic;
SIGNAL \u2|Add15~13\ : std_logic;
SIGNAL \u2|Add15~15\ : std_logic;
SIGNAL \u2|Add15~16_combout\ : std_logic;
SIGNAL \u2|Add14~1_cout\ : std_logic;
SIGNAL \u2|Add14~3\ : std_logic;
SIGNAL \u2|Add14~5\ : std_logic;
SIGNAL \u2|Add14~7\ : std_logic;
SIGNAL \u2|Add14~9\ : std_logic;
SIGNAL \u2|Add14~11\ : std_logic;
SIGNAL \u2|Add14~13\ : std_logic;
SIGNAL \u2|Add14~15\ : std_logic;
SIGNAL \u2|Add14~17\ : std_logic;
SIGNAL \u2|Add14~18_combout\ : std_logic;
SIGNAL \u2|Add8~0_combout\ : std_logic;
SIGNAL \u2|Ball_pos_y[0]~feeder_combout\ : std_logic;
SIGNAL \u2|Add8~1\ : std_logic;
SIGNAL \u2|Add8~2_combout\ : std_logic;
SIGNAL \u2|Add8~3\ : std_logic;
SIGNAL \u2|Add8~4_combout\ : std_logic;
SIGNAL \u2|Add8~5\ : std_logic;
SIGNAL \u2|Add8~6_combout\ : std_logic;
SIGNAL \u2|Add8~7\ : std_logic;
SIGNAL \u2|Add8~8_combout\ : std_logic;
SIGNAL \u2|Ball_pos_y[4]~3_combout\ : std_logic;
SIGNAL \u2|Add8~9\ : std_logic;
SIGNAL \u2|Add8~10_combout\ : std_logic;
SIGNAL \u2|Ball_pos_y[5]~2_combout\ : std_logic;
SIGNAL \u2|Add8~11\ : std_logic;
SIGNAL \u2|Add8~12_combout\ : std_logic;
SIGNAL \u2|Ball_pos_y[6]~1_combout\ : std_logic;
SIGNAL \u2|Add8~13\ : std_logic;
SIGNAL \u2|Add8~14_combout\ : std_logic;
SIGNAL \u2|Ball_pos_y[7]~0_combout\ : std_logic;
SIGNAL \u2|Add8~15\ : std_logic;
SIGNAL \u2|Add8~16_combout\ : std_logic;
SIGNAL \u2|Add8~17\ : std_logic;
SIGNAL \u2|Add8~18_combout\ : std_logic;
SIGNAL \u2|Add14~16_combout\ : std_logic;
SIGNAL \u2|Add14~14_combout\ : std_logic;
SIGNAL \u2|Add14~12_combout\ : std_logic;
SIGNAL \u2|Add14~10_combout\ : std_logic;
SIGNAL \u2|Add14~8_combout\ : std_logic;
SIGNAL \u2|Add14~6_combout\ : std_logic;
SIGNAL \u2|Add14~4_combout\ : std_logic;
SIGNAL \u2|Add14~2_combout\ : std_logic;
SIGNAL \u2|LessThan4~1_cout\ : std_logic;
SIGNAL \u2|LessThan4~3_cout\ : std_logic;
SIGNAL \u2|LessThan4~5_cout\ : std_logic;
SIGNAL \u2|LessThan4~7_cout\ : std_logic;
SIGNAL \u2|LessThan4~9_cout\ : std_logic;
SIGNAL \u2|LessThan4~11_cout\ : std_logic;
SIGNAL \u2|LessThan4~13_cout\ : std_logic;
SIGNAL \u2|LessThan4~15_cout\ : std_logic;
SIGNAL \u2|LessThan4~17_cout\ : std_logic;
SIGNAL \u2|LessThan4~18_combout\ : std_logic;
SIGNAL \u2|Add15~14_combout\ : std_logic;
SIGNAL \u2|Add15~12_combout\ : std_logic;
SIGNAL \u2|Add15~10_combout\ : std_logic;
SIGNAL \u2|Add15~8_combout\ : std_logic;
SIGNAL \u2|Add15~6_combout\ : std_logic;
SIGNAL \u2|Add15~4_combout\ : std_logic;
SIGNAL \u2|Add15~2_combout\ : std_logic;
SIGNAL \u2|Add15~0_combout\ : std_logic;
SIGNAL \u2|LessThan5~1_cout\ : std_logic;
SIGNAL \u2|LessThan5~3_cout\ : std_logic;
SIGNAL \u2|LessThan5~5_cout\ : std_logic;
SIGNAL \u2|LessThan5~7_cout\ : std_logic;
SIGNAL \u2|LessThan5~9_cout\ : std_logic;
SIGNAL \u2|LessThan5~11_cout\ : std_logic;
SIGNAL \u2|LessThan5~13_cout\ : std_logic;
SIGNAL \u2|LessThan5~15_cout\ : std_logic;
SIGNAL \u2|LessThan5~17_cout\ : std_logic;
SIGNAL \u2|LessThan5~18_combout\ : std_logic;
SIGNAL \u2|process_2~2_combout\ : std_logic;
SIGNAL \u2|Equal12~0_combout\ : std_logic;
SIGNAL \u2|Equal10~1_combout\ : std_logic;
SIGNAL \u2|Equal10~2_combout\ : std_logic;
SIGNAL \u2|Ball_direction~62_combout\ : std_logic;
SIGNAL \u2|Ball_direction[0]~39_combout\ : std_logic;
SIGNAL \u2|Ball_direction~63_combout\ : std_logic;
SIGNAL \u2|Ball_direction[0]~35_combout\ : std_logic;
SIGNAL \u2|Ball_direction~64_combout\ : std_logic;
SIGNAL \u2|Add29~1\ : std_logic;
SIGNAL \u2|Add29~3\ : std_logic;
SIGNAL \u2|Add29~5\ : std_logic;
SIGNAL \u2|Add29~7\ : std_logic;
SIGNAL \u2|Add29~9\ : std_logic;
SIGNAL \u2|Add29~11\ : std_logic;
SIGNAL \u2|Add29~13\ : std_logic;
SIGNAL \u2|Add29~15\ : std_logic;
SIGNAL \u2|Add29~17\ : std_logic;
SIGNAL \u2|Add29~19\ : std_logic;
SIGNAL \u2|Add29~20_combout\ : std_logic;
SIGNAL \u2|Add12~1\ : std_logic;
SIGNAL \u2|Add12~3\ : std_logic;
SIGNAL \u2|Add12~5\ : std_logic;
SIGNAL \u2|Add12~7\ : std_logic;
SIGNAL \u2|Add12~9\ : std_logic;
SIGNAL \u2|Add12~11\ : std_logic;
SIGNAL \u2|Add12~13\ : std_logic;
SIGNAL \u2|Add12~15\ : std_logic;
SIGNAL \u2|Add12~17\ : std_logic;
SIGNAL \u2|Add12~19\ : std_logic;
SIGNAL \u2|Add12~20_combout\ : std_logic;
SIGNAL \u2|Add13~1\ : std_logic;
SIGNAL \u2|Add13~3\ : std_logic;
SIGNAL \u2|Add13~5\ : std_logic;
SIGNAL \u2|Add13~7\ : std_logic;
SIGNAL \u2|Add13~9\ : std_logic;
SIGNAL \u2|Add13~11\ : std_logic;
SIGNAL \u2|Add13~13\ : std_logic;
SIGNAL \u2|Add13~15\ : std_logic;
SIGNAL \u2|Add13~16_combout\ : std_logic;
SIGNAL \u2|Add27~1\ : std_logic;
SIGNAL \u2|Add27~3\ : std_logic;
SIGNAL \u2|Add27~5\ : std_logic;
SIGNAL \u2|Add27~7\ : std_logic;
SIGNAL \u2|Add27~9\ : std_logic;
SIGNAL \u2|Add27~11\ : std_logic;
SIGNAL \u2|Add27~13\ : std_logic;
SIGNAL \u2|Add27~15\ : std_logic;
SIGNAL \u2|Add27~17\ : std_logic;
SIGNAL \u2|Add27~18_combout\ : std_logic;
SIGNAL \u2|Add12~18_combout\ : std_logic;
SIGNAL \u2|Add27~16_combout\ : std_logic;
SIGNAL \u2|Add12~16_combout\ : std_logic;
SIGNAL \u2|Add27~14_combout\ : std_logic;
SIGNAL \u2|Add27~12_combout\ : std_logic;
SIGNAL \u2|Add12~14_combout\ : std_logic;
SIGNAL \u2|Add27~10_combout\ : std_logic;
SIGNAL \u2|Add12~12_combout\ : std_logic;
SIGNAL \u2|Add12~10_combout\ : std_logic;
SIGNAL \u2|Add27~8_combout\ : std_logic;
SIGNAL \u2|Add12~8_combout\ : std_logic;
SIGNAL \u2|Add27~6_combout\ : std_logic;
SIGNAL \u2|Add27~4_combout\ : std_logic;
SIGNAL \u2|Add12~6_combout\ : std_logic;
SIGNAL \u2|Add12~4_combout\ : std_logic;
SIGNAL \u2|Add27~2_combout\ : std_logic;
SIGNAL \u2|Add27~0_combout\ : std_logic;
SIGNAL \u2|Add12~2_combout\ : std_logic;
SIGNAL \u2|Add12~0_combout\ : std_logic;
SIGNAL \u2|LessThan2~1_cout\ : std_logic;
SIGNAL \u2|LessThan2~3_cout\ : std_logic;
SIGNAL \u2|LessThan2~5_cout\ : std_logic;
SIGNAL \u2|LessThan2~7_cout\ : std_logic;
SIGNAL \u2|LessThan2~9_cout\ : std_logic;
SIGNAL \u2|LessThan2~11_cout\ : std_logic;
SIGNAL \u2|LessThan2~13_cout\ : std_logic;
SIGNAL \u2|LessThan2~15_cout\ : std_logic;
SIGNAL \u2|LessThan2~17_cout\ : std_logic;
SIGNAL \u2|LessThan2~19_cout\ : std_logic;
SIGNAL \u2|LessThan2~20_combout\ : std_logic;
SIGNAL \u2|Add31~1\ : std_logic;
SIGNAL \u2|Add31~3\ : std_logic;
SIGNAL \u2|Add31~5\ : std_logic;
SIGNAL \u2|Add31~7\ : std_logic;
SIGNAL \u2|Add31~9\ : std_logic;
SIGNAL \u2|Add31~11\ : std_logic;
SIGNAL \u2|Add31~13\ : std_logic;
SIGNAL \u2|Add31~15\ : std_logic;
SIGNAL \u2|Add31~17\ : std_logic;
SIGNAL \u2|Add31~19\ : std_logic;
SIGNAL \u2|Add31~20_combout\ : std_logic;
SIGNAL \u2|Add13~14_combout\ : std_logic;
SIGNAL \u2|Add31~18_combout\ : std_logic;
SIGNAL \u2|Add31~16_combout\ : std_logic;
SIGNAL \u2|Add13~12_combout\ : std_logic;
SIGNAL \u2|Add13~10_combout\ : std_logic;
SIGNAL \u2|Add31~14_combout\ : std_logic;
SIGNAL \u2|Add31~12_combout\ : std_logic;
SIGNAL \u2|Add13~8_combout\ : std_logic;
SIGNAL \u2|Add13~6_combout\ : std_logic;
SIGNAL \u2|Add31~10_combout\ : std_logic;
SIGNAL \u2|Add13~4_combout\ : std_logic;
SIGNAL \u2|Add31~8_combout\ : std_logic;
SIGNAL \u2|Add31~6_combout\ : std_logic;
SIGNAL \u2|Add13~2_combout\ : std_logic;
SIGNAL \u2|Add31~4_combout\ : std_logic;
SIGNAL \u2|Add13~0_combout\ : std_logic;
SIGNAL \u2|Add31~2_combout\ : std_logic;
SIGNAL \u2|Add31~0_combout\ : std_logic;
SIGNAL \u2|LessThan3~1_cout\ : std_logic;
SIGNAL \u2|LessThan3~3_cout\ : std_logic;
SIGNAL \u2|LessThan3~5_cout\ : std_logic;
SIGNAL \u2|LessThan3~7_cout\ : std_logic;
SIGNAL \u2|LessThan3~9_cout\ : std_logic;
SIGNAL \u2|LessThan3~11_cout\ : std_logic;
SIGNAL \u2|LessThan3~13_cout\ : std_logic;
SIGNAL \u2|LessThan3~15_cout\ : std_logic;
SIGNAL \u2|LessThan3~17_cout\ : std_logic;
SIGNAL \u2|LessThan3~19_cout\ : std_logic;
SIGNAL \u2|LessThan3~20_combout\ : std_logic;
SIGNAL \u2|Ball_direction~29_combout\ : std_logic;
SIGNAL \u2|Add29~18_combout\ : std_logic;
SIGNAL \u2|Add29~16_combout\ : std_logic;
SIGNAL \u2|Add29~14_combout\ : std_logic;
SIGNAL \u2|Add29~10_combout\ : std_logic;
SIGNAL \u2|Add29~8_combout\ : std_logic;
SIGNAL \u2|Add29~2_combout\ : std_logic;
SIGNAL \u2|Add29~0_combout\ : std_logic;
SIGNAL \u2|Add29~6_combout\ : std_logic;
SIGNAL \u2|Add29~4_combout\ : std_logic;
SIGNAL \u2|Ball_direction~30_combout\ : std_logic;
SIGNAL \u2|Add29~12_combout\ : std_logic;
SIGNAL \u2|Ball_direction~31_combout\ : std_logic;
SIGNAL \u2|Ball_direction~32_combout\ : std_logic;
SIGNAL \u2|Ball_direction~33_combout\ : std_logic;
SIGNAL \u2|Ball_direction~65_combout\ : std_logic;
SIGNAL \direction_switch[1]~input_o\ : std_logic;
SIGNAL \u2|Add2~1\ : std_logic;
SIGNAL \u2|Add2~2_combout\ : std_logic;
SIGNAL \u2|Add3~1\ : std_logic;
SIGNAL \u2|Add3~2_combout\ : std_logic;
SIGNAL \u2|paddle1_pos_y~9_combout\ : std_logic;
SIGNAL \direction_switch[0]~input_o\ : std_logic;
SIGNAL \u2|paddle1_pos_y[0]~1_combout\ : std_logic;
SIGNAL \u2|Add3~3\ : std_logic;
SIGNAL \u2|Add3~4_combout\ : std_logic;
SIGNAL \u2|Add2~3\ : std_logic;
SIGNAL \u2|Add2~4_combout\ : std_logic;
SIGNAL \u2|paddle1_pos_y~8_combout\ : std_logic;
SIGNAL \u2|Add2~5\ : std_logic;
SIGNAL \u2|Add2~6_combout\ : std_logic;
SIGNAL \u2|Add3~5\ : std_logic;
SIGNAL \u2|Add3~6_combout\ : std_logic;
SIGNAL \u2|paddle1_pos_y~7_combout\ : std_logic;
SIGNAL \u2|Add2~7\ : std_logic;
SIGNAL \u2|Add2~8_combout\ : std_logic;
SIGNAL \u2|Add3~7\ : std_logic;
SIGNAL \u2|Add3~8_combout\ : std_logic;
SIGNAL \u2|paddle1_pos_y~6_combout\ : std_logic;
SIGNAL \u2|Equal0~0_combout\ : std_logic;
SIGNAL \u2|Add2~9\ : std_logic;
SIGNAL \u2|Add2~10_combout\ : std_logic;
SIGNAL \u2|Add3~9\ : std_logic;
SIGNAL \u2|Add3~10_combout\ : std_logic;
SIGNAL \u2|paddle1_pos_y~5_combout\ : std_logic;
SIGNAL \u2|Add2~11\ : std_logic;
SIGNAL \u2|Add2~12_combout\ : std_logic;
SIGNAL \u2|Add3~11\ : std_logic;
SIGNAL \u2|Add3~12_combout\ : std_logic;
SIGNAL \u2|paddle1_pos_y~4_combout\ : std_logic;
SIGNAL \u2|Add2~13\ : std_logic;
SIGNAL \u2|Add2~14_combout\ : std_logic;
SIGNAL \u2|Add3~13\ : std_logic;
SIGNAL \u2|Add3~14_combout\ : std_logic;
SIGNAL \u2|paddle1_pos_y~3_combout\ : std_logic;
SIGNAL \u2|Add2~15\ : std_logic;
SIGNAL \u2|Add2~16_combout\ : std_logic;
SIGNAL \u2|Add3~15\ : std_logic;
SIGNAL \u2|Add3~16_combout\ : std_logic;
SIGNAL \u2|paddle1_pos_y~2_combout\ : std_logic;
SIGNAL \u2|Equal0~1_combout\ : std_logic;
SIGNAL \u2|Equal0~2_combout\ : std_logic;
SIGNAL \u2|Add2~0_combout\ : std_logic;
SIGNAL \u2|Add3~0_combout\ : std_logic;
SIGNAL \u2|paddle1_pos_y~10_combout\ : std_logic;
SIGNAL \u2|paddle1_pos_y~11_combout\ : std_logic;
SIGNAL \u2|Equal1~0_combout\ : std_logic;
SIGNAL \u2|Equal1~1_combout\ : std_logic;
SIGNAL \u2|Add2~17\ : std_logic;
SIGNAL \u2|Add2~18_combout\ : std_logic;
SIGNAL \u2|Add3~17\ : std_logic;
SIGNAL \u2|Add3~18_combout\ : std_logic;
SIGNAL \u2|paddle1_pos_y~0_combout\ : std_logic;
SIGNAL \u2|Add18~1_cout\ : std_logic;
SIGNAL \u2|Add18~3\ : std_logic;
SIGNAL \u2|Add18~5\ : std_logic;
SIGNAL \u2|Add18~7\ : std_logic;
SIGNAL \u2|Add18~9\ : std_logic;
SIGNAL \u2|Add18~11\ : std_logic;
SIGNAL \u2|Add18~13\ : std_logic;
SIGNAL \u2|Add18~15\ : std_logic;
SIGNAL \u2|Add18~16_combout\ : std_logic;
SIGNAL \u2|Add18~14_combout\ : std_logic;
SIGNAL \u2|Add18~12_combout\ : std_logic;
SIGNAL \u2|Add18~10_combout\ : std_logic;
SIGNAL \u2|Add18~8_combout\ : std_logic;
SIGNAL \u2|Add18~6_combout\ : std_logic;
SIGNAL \u2|Add18~4_combout\ : std_logic;
SIGNAL \u2|Add18~2_combout\ : std_logic;
SIGNAL \u2|LessThan10~1_cout\ : std_logic;
SIGNAL \u2|LessThan10~3_cout\ : std_logic;
SIGNAL \u2|LessThan10~5_cout\ : std_logic;
SIGNAL \u2|LessThan10~7_cout\ : std_logic;
SIGNAL \u2|LessThan10~9_cout\ : std_logic;
SIGNAL \u2|LessThan10~11_cout\ : std_logic;
SIGNAL \u2|LessThan10~13_cout\ : std_logic;
SIGNAL \u2|LessThan10~15_cout\ : std_logic;
SIGNAL \u2|LessThan10~17_cout\ : std_logic;
SIGNAL \u2|LessThan10~18_combout\ : std_logic;
SIGNAL \u2|Add19~1\ : std_logic;
SIGNAL \u2|Add19~3\ : std_logic;
SIGNAL \u2|Add19~5\ : std_logic;
SIGNAL \u2|Add19~7\ : std_logic;
SIGNAL \u2|Add19~9\ : std_logic;
SIGNAL \u2|Add19~11\ : std_logic;
SIGNAL \u2|Add19~13\ : std_logic;
SIGNAL \u2|Add19~15\ : std_logic;
SIGNAL \u2|Add19~16_combout\ : std_logic;
SIGNAL \u2|Add18~17\ : std_logic;
SIGNAL \u2|Add18~18_combout\ : std_logic;
SIGNAL \u2|Add19~14_combout\ : std_logic;
SIGNAL \u2|Add19~12_combout\ : std_logic;
SIGNAL \u2|Add19~10_combout\ : std_logic;
SIGNAL \u2|Add19~8_combout\ : std_logic;
SIGNAL \u2|Add19~6_combout\ : std_logic;
SIGNAL \u2|Add19~4_combout\ : std_logic;
SIGNAL \u2|Add19~2_combout\ : std_logic;
SIGNAL \u2|Add19~0_combout\ : std_logic;
SIGNAL \u2|LessThan11~1_cout\ : std_logic;
SIGNAL \u2|LessThan11~3_cout\ : std_logic;
SIGNAL \u2|LessThan11~5_cout\ : std_logic;
SIGNAL \u2|LessThan11~7_cout\ : std_logic;
SIGNAL \u2|LessThan11~9_cout\ : std_logic;
SIGNAL \u2|LessThan11~11_cout\ : std_logic;
SIGNAL \u2|LessThan11~13_cout\ : std_logic;
SIGNAL \u2|LessThan11~15_cout\ : std_logic;
SIGNAL \u2|LessThan11~17_cout\ : std_logic;
SIGNAL \u2|LessThan11~18_combout\ : std_logic;
SIGNAL \u2|process_2~1_combout\ : std_logic;
SIGNAL \u2|Ball_direction~66_combout\ : std_logic;
SIGNAL \u2|Add16~1_cout\ : std_logic;
SIGNAL \u2|Add16~3\ : std_logic;
SIGNAL \u2|Add16~5\ : std_logic;
SIGNAL \u2|Add16~7\ : std_logic;
SIGNAL \u2|Add16~9\ : std_logic;
SIGNAL \u2|Add16~11\ : std_logic;
SIGNAL \u2|Add16~13\ : std_logic;
SIGNAL \u2|Add16~15\ : std_logic;
SIGNAL \u2|Add16~17\ : std_logic;
SIGNAL \u2|Add16~18_combout\ : std_logic;
SIGNAL \u2|Add16~12_combout\ : std_logic;
SIGNAL \u2|Add16~10_combout\ : std_logic;
SIGNAL \u2|Add16~16_combout\ : std_logic;
SIGNAL \u2|Add16~14_combout\ : std_logic;
SIGNAL \u2|Ball_direction~24_combout\ : std_logic;
SIGNAL \u2|Add16~2_combout\ : std_logic;
SIGNAL \u2|Add16~8_combout\ : std_logic;
SIGNAL \u2|Add16~4_combout\ : std_logic;
SIGNAL \u2|Add16~6_combout\ : std_logic;
SIGNAL \u2|LessThan7~0_combout\ : std_logic;
SIGNAL \u2|Add25~1\ : std_logic;
SIGNAL \u2|Add25~3\ : std_logic;
SIGNAL \u2|Add25~5\ : std_logic;
SIGNAL \u2|Add25~7\ : std_logic;
SIGNAL \u2|Add25~9\ : std_logic;
SIGNAL \u2|Add25~11\ : std_logic;
SIGNAL \u2|Add25~13\ : std_logic;
SIGNAL \u2|Add25~15\ : std_logic;
SIGNAL \u2|Add25~17\ : std_logic;
SIGNAL \u2|Add25~18_combout\ : std_logic;
SIGNAL \u2|Add25~16_combout\ : std_logic;
SIGNAL \u2|Add25~14_combout\ : std_logic;
SIGNAL \u2|Add25~12_combout\ : std_logic;
SIGNAL \u2|Add25~10_combout\ : std_logic;
SIGNAL \u2|Add25~8_combout\ : std_logic;
SIGNAL \u2|Add25~6_combout\ : std_logic;
SIGNAL \u2|Add25~4_combout\ : std_logic;
SIGNAL \u2|Add25~2_combout\ : std_logic;
SIGNAL \u2|Add25~0_combout\ : std_logic;
SIGNAL \u2|LessThan8~1_cout\ : std_logic;
SIGNAL \u2|LessThan8~3_cout\ : std_logic;
SIGNAL \u2|LessThan8~5_cout\ : std_logic;
SIGNAL \u2|LessThan8~7_cout\ : std_logic;
SIGNAL \u2|LessThan8~9_cout\ : std_logic;
SIGNAL \u2|LessThan8~11_cout\ : std_logic;
SIGNAL \u2|LessThan8~13_cout\ : std_logic;
SIGNAL \u2|LessThan8~15_cout\ : std_logic;
SIGNAL \u2|LessThan8~17_cout\ : std_logic;
SIGNAL \u2|LessThan8~19_cout\ : std_logic;
SIGNAL \u2|LessThan8~20_combout\ : std_logic;
SIGNAL \u2|Add17~1\ : std_logic;
SIGNAL \u2|Add17~3\ : std_logic;
SIGNAL \u2|Add17~5\ : std_logic;
SIGNAL \u2|Add17~7\ : std_logic;
SIGNAL \u2|Add17~9\ : std_logic;
SIGNAL \u2|Add17~11\ : std_logic;
SIGNAL \u2|Add17~13\ : std_logic;
SIGNAL \u2|Add17~15\ : std_logic;
SIGNAL \u2|Add17~16_combout\ : std_logic;
SIGNAL \u2|Add17~14_combout\ : std_logic;
SIGNAL \u2|Add17~12_combout\ : std_logic;
SIGNAL \u2|Add17~10_combout\ : std_logic;
SIGNAL \u2|Add17~8_combout\ : std_logic;
SIGNAL \u2|Add17~6_combout\ : std_logic;
SIGNAL \u2|Add17~4_combout\ : std_logic;
SIGNAL \u2|Add17~2_combout\ : std_logic;
SIGNAL \u2|Add17~0_combout\ : std_logic;
SIGNAL \u2|LessThan9~1_cout\ : std_logic;
SIGNAL \u2|LessThan9~3_cout\ : std_logic;
SIGNAL \u2|LessThan9~5_cout\ : std_logic;
SIGNAL \u2|LessThan9~7_cout\ : std_logic;
SIGNAL \u2|LessThan9~9_cout\ : std_logic;
SIGNAL \u2|LessThan9~11_cout\ : std_logic;
SIGNAL \u2|LessThan9~13_cout\ : std_logic;
SIGNAL \u2|LessThan9~15_cout\ : std_logic;
SIGNAL \u2|LessThan9~17_cout\ : std_logic;
SIGNAL \u2|LessThan9~19_cout\ : std_logic;
SIGNAL \u2|LessThan9~20_combout\ : std_logic;
SIGNAL \u2|Ball_direction~26_combout\ : std_logic;
SIGNAL \u2|Ball_direction~46_combout\ : std_logic;
SIGNAL \u2|Ball_direction[2]~11_combout\ : std_logic;
SIGNAL \u2|Ball_direction[2]~_emulated_q\ : std_logic;
SIGNAL \u2|Ball_direction[2]~10_combout\ : std_logic;
SIGNAL \u2|Ball_direction~23_combout\ : std_logic;
SIGNAL \u2|Ball_direction[1]~1_combout\ : std_logic;
SIGNAL \u2|Ball_direction[0]~69_combout\ : std_logic;
SIGNAL \u2|Ball_direction~25_combout\ : std_logic;
SIGNAL \u2|Ball_direction[0]~27_combout\ : std_logic;
SIGNAL \u2|Ball_direction[0]~68_combout\ : std_logic;
SIGNAL \u2|Ball_direction[0]~34_combout\ : std_logic;
SIGNAL \u2|Equal7~0_combout\ : std_logic;
SIGNAL \u2|Ball_direction[0]~36_combout\ : std_logic;
SIGNAL \u2|Ball_direction[0]~37_combout\ : std_logic;
SIGNAL \u2|Equal7~1_combout\ : std_logic;
SIGNAL \u2|Equal7~2_combout\ : std_logic;
SIGNAL \u2|Ball_direction[0]~38_combout\ : std_logic;
SIGNAL \u2|Ball_direction[0]~40_combout\ : std_logic;
SIGNAL \u2|Ball_direction[0]~41_combout\ : std_logic;
SIGNAL \u2|Ball_direction[0]~42_combout\ : std_logic;
SIGNAL \u2|Ball_direction[0]~52_combout\ : std_logic;
SIGNAL \u2|Ball_direction[0]~53_combout\ : std_logic;
SIGNAL \u2|Equal5~0_combout\ : std_logic;
SIGNAL \u2|Ball_direction[0]~43_combout\ : std_logic;
SIGNAL \u2|Ball_direction[0]~44_combout\ : std_logic;
SIGNAL \u2|Ball_direction~55_combout\ : std_logic;
SIGNAL \u2|LessThan12~1_cout\ : std_logic;
SIGNAL \u2|LessThan12~3_cout\ : std_logic;
SIGNAL \u2|LessThan12~5_cout\ : std_logic;
SIGNAL \u2|LessThan12~7_cout\ : std_logic;
SIGNAL \u2|LessThan12~9_cout\ : std_logic;
SIGNAL \u2|LessThan12~11_cout\ : std_logic;
SIGNAL \u2|LessThan12~13_cout\ : std_logic;
SIGNAL \u2|LessThan12~15_cout\ : std_logic;
SIGNAL \u2|LessThan12~17_cout\ : std_logic;
SIGNAL \u2|LessThan12~18_combout\ : std_logic;
SIGNAL \u2|Ball_direction~47_combout\ : std_logic;
SIGNAL \u2|Ball_direction~48_combout\ : std_logic;
SIGNAL \u2|Ball_direction[0]~45_combout\ : std_logic;
SIGNAL \u2|LessThan6~1_cout\ : std_logic;
SIGNAL \u2|LessThan6~3_cout\ : std_logic;
SIGNAL \u2|LessThan6~5_cout\ : std_logic;
SIGNAL \u2|LessThan6~7_cout\ : std_logic;
SIGNAL \u2|LessThan6~9_cout\ : std_logic;
SIGNAL \u2|LessThan6~11_cout\ : std_logic;
SIGNAL \u2|LessThan6~13_cout\ : std_logic;
SIGNAL \u2|LessThan6~15_cout\ : std_logic;
SIGNAL \u2|LessThan6~17_cout\ : std_logic;
SIGNAL \u2|LessThan6~18_combout\ : std_logic;
SIGNAL \u2|Ball_direction~49_combout\ : std_logic;
SIGNAL \u2|Ball_direction~50_combout\ : std_logic;
SIGNAL \u2|Ball_direction[1]~51_combout\ : std_logic;
SIGNAL \u2|Ball_direction~54_combout\ : std_logic;
SIGNAL \u2|Ball_direction[1]~56_combout\ : std_logic;
SIGNAL \u2|Ball_direction[1]~3_combout\ : std_logic;
SIGNAL \u2|Ball_direction[1]~_emulated_q\ : std_logic;
SIGNAL \u2|Ball_direction[1]~2_combout\ : std_logic;
SIGNAL \u2|Ball_direction~61_combout\ : std_logic;
SIGNAL \u2|Ball_direction[0]~5_combout\ : std_logic;
SIGNAL \u2|Ball_direction~57_combout\ : std_logic;
SIGNAL \u2|Equal5~1_combout\ : std_logic;
SIGNAL \u2|Ball_direction~58_combout\ : std_logic;
SIGNAL \u2|Ball_direction~59_combout\ : std_logic;
SIGNAL \u2|Ball_direction~60_combout\ : std_logic;
SIGNAL \u2|Ball_direction[0]~7_combout\ : std_logic;
SIGNAL \u2|Ball_direction[0]~_emulated_q\ : std_logic;
SIGNAL \u2|Ball_direction[0]~6_combout\ : std_logic;
SIGNAL \u2|Add9~0_combout\ : std_logic;
SIGNAL \u2|Add9~15_combout\ : std_logic;
SIGNAL \u2|LessThan14~0_combout\ : std_logic;
SIGNAL \u2|LessThan14~1_combout\ : std_logic;
SIGNAL \u2|score1[29]~40_combout\ : std_logic;
SIGNAL \u2|score2[0]~33_combout\ : std_logic;
SIGNAL \u4|Equal4~0_combout\ : std_logic;
SIGNAL \u2|score2~41_combout\ : std_logic;
SIGNAL \u2|score2~42_combout\ : std_logic;
SIGNAL \u2|score2[30]~43_combout\ : std_logic;
SIGNAL \u2|score2[0]~44_combout\ : std_logic;
SIGNAL \u2|score2[0]~34\ : std_logic;
SIGNAL \u2|score2[1]~35_combout\ : std_logic;
SIGNAL \u2|score2[1]~36\ : std_logic;
SIGNAL \u2|score2[2]~37_combout\ : std_logic;
SIGNAL \u2|score2[2]~38\ : std_logic;
SIGNAL \u2|score2[3]~39_combout\ : std_logic;
SIGNAL \u2|score2[3]~40\ : std_logic;
SIGNAL \u2|score2[4]~45_combout\ : std_logic;
SIGNAL \u2|score2[4]~46\ : std_logic;
SIGNAL \u2|score2[5]~47_combout\ : std_logic;
SIGNAL \u2|score2[5]~48\ : std_logic;
SIGNAL \u2|score2[6]~49_combout\ : std_logic;
SIGNAL \u2|score2[6]~50\ : std_logic;
SIGNAL \u2|score2[7]~51_combout\ : std_logic;
SIGNAL \u2|score2[7]~52\ : std_logic;
SIGNAL \u2|score2[8]~53_combout\ : std_logic;
SIGNAL \u2|score2[8]~54\ : std_logic;
SIGNAL \u2|score2[9]~55_combout\ : std_logic;
SIGNAL \u2|score2[9]~56\ : std_logic;
SIGNAL \u2|score2[10]~57_combout\ : std_logic;
SIGNAL \u2|score2[10]~58\ : std_logic;
SIGNAL \u2|score2[11]~59_combout\ : std_logic;
SIGNAL \u2|score2[11]~60\ : std_logic;
SIGNAL \u2|score2[12]~61_combout\ : std_logic;
SIGNAL \u2|score2[12]~62\ : std_logic;
SIGNAL \u2|score2[13]~63_combout\ : std_logic;
SIGNAL \u2|score2[13]~64\ : std_logic;
SIGNAL \u2|score2[14]~65_combout\ : std_logic;
SIGNAL \u2|score2[14]~66\ : std_logic;
SIGNAL \u2|score2[15]~67_combout\ : std_logic;
SIGNAL \u2|score2[15]~68\ : std_logic;
SIGNAL \u2|score2[16]~69_combout\ : std_logic;
SIGNAL \u2|score2[16]~70\ : std_logic;
SIGNAL \u2|score2[17]~71_combout\ : std_logic;
SIGNAL \u2|score2[17]~72\ : std_logic;
SIGNAL \u2|score2[18]~73_combout\ : std_logic;
SIGNAL \u2|score2[18]~74\ : std_logic;
SIGNAL \u2|score2[19]~75_combout\ : std_logic;
SIGNAL \u2|score2[19]~76\ : std_logic;
SIGNAL \u2|score2[20]~77_combout\ : std_logic;
SIGNAL \u2|score2[20]~78\ : std_logic;
SIGNAL \u2|score2[21]~79_combout\ : std_logic;
SIGNAL \u2|score2[21]~80\ : std_logic;
SIGNAL \u2|score2[22]~81_combout\ : std_logic;
SIGNAL \u2|score2[22]~82\ : std_logic;
SIGNAL \u2|score2[23]~83_combout\ : std_logic;
SIGNAL \u2|score2[23]~84\ : std_logic;
SIGNAL \u2|score2[24]~85_combout\ : std_logic;
SIGNAL \u2|score2[24]~86\ : std_logic;
SIGNAL \u2|score2[25]~87_combout\ : std_logic;
SIGNAL \u2|score2[25]~88\ : std_logic;
SIGNAL \u2|score2[26]~89_combout\ : std_logic;
SIGNAL \u4|Equal5~6_combout\ : std_logic;
SIGNAL \u4|Equal5~5_combout\ : std_logic;
SIGNAL \u2|score2[26]~90\ : std_logic;
SIGNAL \u2|score2[27]~91_combout\ : std_logic;
SIGNAL \u2|score2[27]~92\ : std_logic;
SIGNAL \u2|score2[28]~93_combout\ : std_logic;
SIGNAL \u2|score2[28]~94\ : std_logic;
SIGNAL \u2|score2[29]~95_combout\ : std_logic;
SIGNAL \u2|score2[29]~96\ : std_logic;
SIGNAL \u2|score2[30]~97_combout\ : std_logic;
SIGNAL \u2|score2[30]~98\ : std_logic;
SIGNAL \u2|score2[31]~99_combout\ : std_logic;
SIGNAL \u4|Equal5~7_combout\ : std_logic;
SIGNAL \u4|Equal5~8_combout\ : std_logic;
SIGNAL \u4|Equal5~0_combout\ : std_logic;
SIGNAL \u4|Equal5~2_combout\ : std_logic;
SIGNAL \u4|Equal5~1_combout\ : std_logic;
SIGNAL \u4|Equal5~3_combout\ : std_logic;
SIGNAL \u4|Equal5~4_combout\ : std_logic;
SIGNAL \u4|Equal5~9_combout\ : std_logic;
SIGNAL \u4|Equal9~0_combout\ : std_logic;
SIGNAL \u2|score1[29]~42_combout\ : std_logic;
SIGNAL \u2|score1[31]~43_combout\ : std_logic;
SIGNAL \u2|score1[3]~39\ : std_logic;
SIGNAL \u2|score1[4]~44_combout\ : std_logic;
SIGNAL \u2|score1[4]~45\ : std_logic;
SIGNAL \u2|score1[5]~46_combout\ : std_logic;
SIGNAL \u2|score1[5]~47\ : std_logic;
SIGNAL \u2|score1[6]~48_combout\ : std_logic;
SIGNAL \u2|score1[6]~49\ : std_logic;
SIGNAL \u2|score1[7]~50_combout\ : std_logic;
SIGNAL \u2|score1[7]~51\ : std_logic;
SIGNAL \u2|score1[8]~52_combout\ : std_logic;
SIGNAL \u2|score1[8]~53\ : std_logic;
SIGNAL \u2|score1[9]~54_combout\ : std_logic;
SIGNAL \u2|score1[9]~55\ : std_logic;
SIGNAL \u2|score1[10]~56_combout\ : std_logic;
SIGNAL \u4|Equal0~1_combout\ : std_logic;
SIGNAL \u4|Equal0~0_combout\ : std_logic;
SIGNAL \u2|score1[10]~57\ : std_logic;
SIGNAL \u2|score1[11]~58_combout\ : std_logic;
SIGNAL \u2|score1[11]~59\ : std_logic;
SIGNAL \u2|score1[12]~60_combout\ : std_logic;
SIGNAL \u2|score1[12]~61\ : std_logic;
SIGNAL \u2|score1[13]~62_combout\ : std_logic;
SIGNAL \u2|score1[13]~63\ : std_logic;
SIGNAL \u2|score1[14]~64_combout\ : std_logic;
SIGNAL \u2|score1[14]~65\ : std_logic;
SIGNAL \u2|score1[15]~66_combout\ : std_logic;
SIGNAL \u2|score1[15]~67\ : std_logic;
SIGNAL \u2|score1[16]~68_combout\ : std_logic;
SIGNAL \u2|score1[16]~69\ : std_logic;
SIGNAL \u2|score1[17]~70_combout\ : std_logic;
SIGNAL \u2|score1[17]~71\ : std_logic;
SIGNAL \u2|score1[18]~72_combout\ : std_logic;
SIGNAL \u2|score1[18]~73\ : std_logic;
SIGNAL \u2|score1[19]~74_combout\ : std_logic;
SIGNAL \u2|score1[19]~75\ : std_logic;
SIGNAL \u2|score1[20]~76_combout\ : std_logic;
SIGNAL \u2|score1[20]~77\ : std_logic;
SIGNAL \u2|score1[21]~78_combout\ : std_logic;
SIGNAL \u2|score1[21]~79\ : std_logic;
SIGNAL \u2|score1[22]~80_combout\ : std_logic;
SIGNAL \u4|Equal0~5_combout\ : std_logic;
SIGNAL \u2|score1[22]~81\ : std_logic;
SIGNAL \u2|score1[23]~82_combout\ : std_logic;
SIGNAL \u2|score1[23]~83\ : std_logic;
SIGNAL \u2|score1[24]~84_combout\ : std_logic;
SIGNAL \u2|score1[24]~85\ : std_logic;
SIGNAL \u2|score1[25]~86_combout\ : std_logic;
SIGNAL \u2|score1[25]~87\ : std_logic;
SIGNAL \u2|score1[26]~88_combout\ : std_logic;
SIGNAL \u2|score1[26]~89\ : std_logic;
SIGNAL \u2|score1[27]~90_combout\ : std_logic;
SIGNAL \u2|score1[27]~91\ : std_logic;
SIGNAL \u2|score1[28]~92_combout\ : std_logic;
SIGNAL \u2|score1[28]~93\ : std_logic;
SIGNAL \u2|score1[29]~94_combout\ : std_logic;
SIGNAL \u2|score1[29]~95\ : std_logic;
SIGNAL \u2|score1[30]~96_combout\ : std_logic;
SIGNAL \u2|score1[30]~97\ : std_logic;
SIGNAL \u2|score1[31]~98_combout\ : std_logic;
SIGNAL \u4|Equal0~7_combout\ : std_logic;
SIGNAL \u4|Equal0~6_combout\ : std_logic;
SIGNAL \u4|Equal0~8_combout\ : std_logic;
SIGNAL \u4|Equal0~3_combout\ : std_logic;
SIGNAL \u4|Equal0~2_combout\ : std_logic;
SIGNAL \u4|Equal0~4_combout\ : std_logic;
SIGNAL \u4|Equal0~9_combout\ : std_logic;
SIGNAL \u2|score1[29]~41_combout\ : std_logic;
SIGNAL \u2|score1[0]~33\ : std_logic;
SIGNAL \u2|score1[1]~34_combout\ : std_logic;
SIGNAL \u2|score1[1]~35\ : std_logic;
SIGNAL \u2|score1[2]~36_combout\ : std_logic;
SIGNAL \u4|WideNor0~combout\ : std_logic;
SIGNAL \u4|Equal2~0_combout\ : std_logic;
SIGNAL \u4|seg1~0_combout\ : std_logic;
SIGNAL \u4|WideOr0~combout\ : std_logic;
SIGNAL \u4|WideNor0~0_combout\ : std_logic;
SIGNAL \u4|WideNor1~combout\ : std_logic;
SIGNAL \u4|Equal7~0_combout\ : std_logic;
SIGNAL \u4|seg2~0_combout\ : std_logic;
SIGNAL \u4|WideOr1~combout\ : std_logic;
SIGNAL \u4|WideNor1~0_combout\ : std_logic;
SIGNAL \u1|Hactive~0_combout\ : std_logic;
SIGNAL \u1|Hactive~1_combout\ : std_logic;
SIGNAL \u1|Hactive~2_combout\ : std_logic;
SIGNAL \u1|Hactive~3_combout\ : std_logic;
SIGNAL \u1|Hactive~q\ : std_logic;
SIGNAL \u2|col_counter[0]~28_combout\ : std_logic;
SIGNAL \u2|col_counter[9]~27_combout\ : std_logic;
SIGNAL \u2|col_counter[1]~9_combout\ : std_logic;
SIGNAL \u2|col_counter[1]~10\ : std_logic;
SIGNAL \u2|col_counter[2]~11_combout\ : std_logic;
SIGNAL \u2|col_counter[2]~12\ : std_logic;
SIGNAL \u2|col_counter[3]~13_combout\ : std_logic;
SIGNAL \u2|col_counter[3]~14\ : std_logic;
SIGNAL \u2|col_counter[4]~15_combout\ : std_logic;
SIGNAL \u2|col_counter[4]~16\ : std_logic;
SIGNAL \u2|col_counter[5]~17_combout\ : std_logic;
SIGNAL \u2|col_counter[5]~18\ : std_logic;
SIGNAL \u2|col_counter[6]~19_combout\ : std_logic;
SIGNAL \u2|col_counter[6]~20\ : std_logic;
SIGNAL \u2|col_counter[7]~21_combout\ : std_logic;
SIGNAL \u2|col_counter[7]~22\ : std_logic;
SIGNAL \u2|col_counter[8]~23_combout\ : std_logic;
SIGNAL \u2|col_counter[8]~24\ : std_logic;
SIGNAL \u2|col_counter[9]~25_combout\ : std_logic;
SIGNAL \u2|R[0]~4_combout\ : std_logic;
SIGNAL \u2|R[0]~5_combout\ : std_logic;
SIGNAL \u2|R[0]~6_combout\ : std_logic;
SIGNAL \u1|Vactive~0_combout\ : std_logic;
SIGNAL \u1|Vactive~1_combout\ : std_logic;
SIGNAL \u1|Equal4~2_combout\ : std_logic;
SIGNAL \u1|Vactive~2_combout\ : std_logic;
SIGNAL \u1|Vactive~q\ : std_logic;
SIGNAL \u2|row_counter[0]~28_combout\ : std_logic;
SIGNAL \u2|row_counter[9]~27_combout\ : std_logic;
SIGNAL \u2|row_counter[1]~9_combout\ : std_logic;
SIGNAL \u2|row_counter[1]~10\ : std_logic;
SIGNAL \u2|row_counter[2]~11_combout\ : std_logic;
SIGNAL \u2|row_counter[2]~12\ : std_logic;
SIGNAL \u2|row_counter[3]~13_combout\ : std_logic;
SIGNAL \u2|row_counter[3]~14\ : std_logic;
SIGNAL \u2|row_counter[4]~15_combout\ : std_logic;
SIGNAL \u2|row_counter[4]~16\ : std_logic;
SIGNAL \u2|row_counter[5]~17_combout\ : std_logic;
SIGNAL \u2|row_counter[5]~18\ : std_logic;
SIGNAL \u2|row_counter[6]~19_combout\ : std_logic;
SIGNAL \u2|row_counter[6]~20\ : std_logic;
SIGNAL \u2|row_counter[7]~21_combout\ : std_logic;
SIGNAL \u2|row_counter[7]~22\ : std_logic;
SIGNAL \u2|row_counter[8]~23_combout\ : std_logic;
SIGNAL \u2|row_counter[8]~24\ : std_logic;
SIGNAL \u2|row_counter[9]~25_combout\ : std_logic;
SIGNAL \u2|Add24~1\ : std_logic;
SIGNAL \u2|Add24~3\ : std_logic;
SIGNAL \u2|Add24~5\ : std_logic;
SIGNAL \u2|Add24~7\ : std_logic;
SIGNAL \u2|Add24~9\ : std_logic;
SIGNAL \u2|Add24~11\ : std_logic;
SIGNAL \u2|Add24~13\ : std_logic;
SIGNAL \u2|Add24~15\ : std_logic;
SIGNAL \u2|Add24~16_combout\ : std_logic;
SIGNAL \u2|Add24~14_combout\ : std_logic;
SIGNAL \u2|Add24~12_combout\ : std_logic;
SIGNAL \u2|Add24~10_combout\ : std_logic;
SIGNAL \u2|Add24~8_combout\ : std_logic;
SIGNAL \u2|Add24~6_combout\ : std_logic;
SIGNAL \u2|Add24~4_combout\ : std_logic;
SIGNAL \u2|Add24~2_combout\ : std_logic;
SIGNAL \u2|Add24~0_combout\ : std_logic;
SIGNAL \u2|LessThan17~1_cout\ : std_logic;
SIGNAL \u2|LessThan17~3_cout\ : std_logic;
SIGNAL \u2|LessThan17~5_cout\ : std_logic;
SIGNAL \u2|LessThan17~7_cout\ : std_logic;
SIGNAL \u2|LessThan17~9_cout\ : std_logic;
SIGNAL \u2|LessThan17~11_cout\ : std_logic;
SIGNAL \u2|LessThan17~13_cout\ : std_logic;
SIGNAL \u2|LessThan17~15_cout\ : std_logic;
SIGNAL \u2|LessThan17~17_cout\ : std_logic;
SIGNAL \u2|LessThan17~18_combout\ : std_logic;
SIGNAL \u2|Add24~17\ : std_logic;
SIGNAL \u2|Add24~18_combout\ : std_logic;
SIGNAL \u2|LessThan18~1_cout\ : std_logic;
SIGNAL \u2|LessThan18~3_cout\ : std_logic;
SIGNAL \u2|LessThan18~5_cout\ : std_logic;
SIGNAL \u2|LessThan18~7_cout\ : std_logic;
SIGNAL \u2|LessThan18~9_cout\ : std_logic;
SIGNAL \u2|LessThan18~11_cout\ : std_logic;
SIGNAL \u2|LessThan18~13_cout\ : std_logic;
SIGNAL \u2|LessThan18~15_cout\ : std_logic;
SIGNAL \u2|LessThan18~17_cout\ : std_logic;
SIGNAL \u2|LessThan18~18_combout\ : std_logic;
SIGNAL \u2|R[0]~3_combout\ : std_logic;
SIGNAL \u2|R[0]~7_combout\ : std_logic;
SIGNAL \u2|LessThan26~1_cout\ : std_logic;
SIGNAL \u2|LessThan26~3_cout\ : std_logic;
SIGNAL \u2|LessThan26~5_cout\ : std_logic;
SIGNAL \u2|LessThan26~7_cout\ : std_logic;
SIGNAL \u2|LessThan26~9_cout\ : std_logic;
SIGNAL \u2|LessThan26~11_cout\ : std_logic;
SIGNAL \u2|LessThan26~13_cout\ : std_logic;
SIGNAL \u2|LessThan26~15_cout\ : std_logic;
SIGNAL \u2|LessThan26~17_cout\ : std_logic;
SIGNAL \u2|LessThan26~18_combout\ : std_logic;
SIGNAL \u2|Add28~1\ : std_logic;
SIGNAL \u2|Add28~3\ : std_logic;
SIGNAL \u2|Add28~5\ : std_logic;
SIGNAL \u2|Add28~7\ : std_logic;
SIGNAL \u2|Add28~9\ : std_logic;
SIGNAL \u2|Add28~11\ : std_logic;
SIGNAL \u2|Add28~13\ : std_logic;
SIGNAL \u2|Add28~15\ : std_logic;
SIGNAL \u2|Add28~17\ : std_logic;
SIGNAL \u2|Add28~18_combout\ : std_logic;
SIGNAL \u2|Add28~16_combout\ : std_logic;
SIGNAL \u2|Add28~14_combout\ : std_logic;
SIGNAL \u2|Add28~12_combout\ : std_logic;
SIGNAL \u2|Add28~10_combout\ : std_logic;
SIGNAL \u2|Add28~8_combout\ : std_logic;
SIGNAL \u2|Add28~6_combout\ : std_logic;
SIGNAL \u2|Add28~4_combout\ : std_logic;
SIGNAL \u2|Add28~2_combout\ : std_logic;
SIGNAL \u2|Add28~0_combout\ : std_logic;
SIGNAL \u2|LessThan23~1_cout\ : std_logic;
SIGNAL \u2|LessThan23~3_cout\ : std_logic;
SIGNAL \u2|LessThan23~5_cout\ : std_logic;
SIGNAL \u2|LessThan23~7_cout\ : std_logic;
SIGNAL \u2|LessThan23~9_cout\ : std_logic;
SIGNAL \u2|LessThan23~11_cout\ : std_logic;
SIGNAL \u2|LessThan23~13_cout\ : std_logic;
SIGNAL \u2|LessThan23~15_cout\ : std_logic;
SIGNAL \u2|LessThan23~17_cout\ : std_logic;
SIGNAL \u2|LessThan23~18_combout\ : std_logic;
SIGNAL \u2|Add28~19\ : std_logic;
SIGNAL \u2|Add28~20_combout\ : std_logic;
SIGNAL \u2|R[0]~8_combout\ : std_logic;
SIGNAL \u2|LessThan16~0_combout\ : std_logic;
SIGNAL \u2|Add22~1\ : std_logic;
SIGNAL \u2|Add22~3\ : std_logic;
SIGNAL \u2|Add22~5\ : std_logic;
SIGNAL \u2|Add22~7\ : std_logic;
SIGNAL \u2|Add22~9\ : std_logic;
SIGNAL \u2|Add22~10_combout\ : std_logic;
SIGNAL \u2|Add22~11\ : std_logic;
SIGNAL \u2|Add22~13\ : std_logic;
SIGNAL \u2|Add22~15\ : std_logic;
SIGNAL \u2|Add22~16_combout\ : std_logic;
SIGNAL \u2|Add22~14_combout\ : std_logic;
SIGNAL \u2|Add22~12_combout\ : std_logic;
SIGNAL \u2|LessThan15~1_combout\ : std_logic;
SIGNAL \u2|Add22~17\ : std_logic;
SIGNAL \u2|Add22~18_combout\ : std_logic;
SIGNAL \u2|LessThan15~2_combout\ : std_logic;
SIGNAL \u2|Add22~8_combout\ : std_logic;
SIGNAL \u2|Add22~6_combout\ : std_logic;
SIGNAL \u2|Add22~2_combout\ : std_logic;
SIGNAL \u2|Add22~4_combout\ : std_logic;
SIGNAL \u2|Add22~0_combout\ : std_logic;
SIGNAL \u2|LessThan15~0_combout\ : std_logic;
SIGNAL \u2|R[0]~2_combout\ : std_logic;
SIGNAL \u2|Add30~1\ : std_logic;
SIGNAL \u2|Add30~3\ : std_logic;
SIGNAL \u2|Add30~5\ : std_logic;
SIGNAL \u2|Add30~7\ : std_logic;
SIGNAL \u2|Add30~9\ : std_logic;
SIGNAL \u2|Add30~11\ : std_logic;
SIGNAL \u2|Add30~13\ : std_logic;
SIGNAL \u2|Add30~15\ : std_logic;
SIGNAL \u2|Add30~17\ : std_logic;
SIGNAL \u2|Add30~19\ : std_logic;
SIGNAL \u2|Add30~20_combout\ : std_logic;
SIGNAL \u2|Add30~18_combout\ : std_logic;
SIGNAL \u2|Add30~16_combout\ : std_logic;
SIGNAL \u2|Add30~14_combout\ : std_logic;
SIGNAL \u2|Add30~12_combout\ : std_logic;
SIGNAL \u2|Add30~10_combout\ : std_logic;
SIGNAL \u2|Add30~8_combout\ : std_logic;
SIGNAL \u2|Add30~6_combout\ : std_logic;
SIGNAL \u2|Add30~4_combout\ : std_logic;
SIGNAL \u2|Add30~2_combout\ : std_logic;
SIGNAL \u2|Add30~0_combout\ : std_logic;
SIGNAL \u2|LessThan25~1_cout\ : std_logic;
SIGNAL \u2|LessThan25~3_cout\ : std_logic;
SIGNAL \u2|LessThan25~5_cout\ : std_logic;
SIGNAL \u2|LessThan25~7_cout\ : std_logic;
SIGNAL \u2|LessThan25~9_cout\ : std_logic;
SIGNAL \u2|LessThan25~11_cout\ : std_logic;
SIGNAL \u2|LessThan25~13_cout\ : std_logic;
SIGNAL \u2|LessThan25~15_cout\ : std_logic;
SIGNAL \u2|LessThan25~17_cout\ : std_logic;
SIGNAL \u2|LessThan25~18_combout\ : std_logic;
SIGNAL \u2|LessThan24~1_cout\ : std_logic;
SIGNAL \u2|LessThan24~3_cout\ : std_logic;
SIGNAL \u2|LessThan24~5_cout\ : std_logic;
SIGNAL \u2|LessThan24~7_cout\ : std_logic;
SIGNAL \u2|LessThan24~9_cout\ : std_logic;
SIGNAL \u2|LessThan24~11_cout\ : std_logic;
SIGNAL \u2|LessThan24~13_cout\ : std_logic;
SIGNAL \u2|LessThan24~15_cout\ : std_logic;
SIGNAL \u2|LessThan24~17_cout\ : std_logic;
SIGNAL \u2|LessThan24~18_combout\ : std_logic;
SIGNAL \u2|R[0]~1_combout\ : std_logic;
SIGNAL \u2|R[0]~9_combout\ : std_logic;
SIGNAL \u2|LessThan20~0_combout\ : std_logic;
SIGNAL \u2|LessThan20~1_combout\ : std_logic;
SIGNAL \u2|LessThan20~2_combout\ : std_logic;
SIGNAL \u2|R[0]~0_combout\ : std_logic;
SIGNAL \u2|LessThan19~0_combout\ : std_logic;
SIGNAL \u2|LessThan19~1_combout\ : std_logic;
SIGNAL \u2|LessThan21~1_cout\ : std_logic;
SIGNAL \u2|LessThan21~3_cout\ : std_logic;
SIGNAL \u2|LessThan21~5_cout\ : std_logic;
SIGNAL \u2|LessThan21~7_cout\ : std_logic;
SIGNAL \u2|LessThan21~9_cout\ : std_logic;
SIGNAL \u2|LessThan21~11_cout\ : std_logic;
SIGNAL \u2|LessThan21~13_cout\ : std_logic;
SIGNAL \u2|LessThan21~15_cout\ : std_logic;
SIGNAL \u2|LessThan21~17_cout\ : std_logic;
SIGNAL \u2|LessThan21~18_combout\ : std_logic;
SIGNAL \u2|LessThan22~1_cout\ : std_logic;
SIGNAL \u2|LessThan22~3_cout\ : std_logic;
SIGNAL \u2|LessThan22~5_cout\ : std_logic;
SIGNAL \u2|LessThan22~7_cout\ : std_logic;
SIGNAL \u2|LessThan22~9_cout\ : std_logic;
SIGNAL \u2|LessThan22~11_cout\ : std_logic;
SIGNAL \u2|LessThan22~13_cout\ : std_logic;
SIGNAL \u2|LessThan22~15_cout\ : std_logic;
SIGNAL \u2|LessThan22~17_cout\ : std_logic;
SIGNAL \u2|LessThan22~18_combout\ : std_logic;
SIGNAL \u2|R[0]~10_combout\ : std_logic;
SIGNAL \u2|R[0]~11_combout\ : std_logic;
SIGNAL \u2|R[0]~12_combout\ : std_logic;
SIGNAL \u2|score1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u2|Ball_pos_x\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u2|score2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u2|row_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u4|seg2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u1|Vcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u2|col_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u4|seg1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u2|Ball_pos_y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u2|paddle1_pos_y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u2|paddle2_pos_y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u7|Qt\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u1|Hcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u3|Qt\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u6|Qt\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u8|Qt\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \u2|ALT_INV_process_2~0clkctrl_outclk\ : std_logic;
SIGNAL \u2|ALT_INV_col_counter[9]~27_combout\ : std_logic;
SIGNAL \u2|ALT_INV_row_counter[9]~27_combout\ : std_logic;
SIGNAL \u4|ALT_INV_WideNor1~0_combout\ : std_logic;
SIGNAL \u4|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \u4|ALT_INV_seg2~0_combout\ : std_logic;
SIGNAL \u4|ALT_INV_WideNor1~combout\ : std_logic;
SIGNAL \u4|ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \u4|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \u4|ALT_INV_seg1~0_combout\ : std_logic;
SIGNAL \u4|ALT_INV_WideNor0~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
Hsync <= ww_Hsync;
Vsync <= ww_Vsync;
ww_direction_switch <= direction_switch;
ww_start_game <= start_game;
seg1 <= ww_seg1;
seg2 <= ww_seg2;
bar <= ww_bar;
ww_ball_speed <= ball_speed;
R <= ww_R;
G <= ww_G;
B <= ww_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\u2|process_2~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u2|process_2~0_combout\);

\u1|Hsync~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|Hsync~q\);

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\U0|temp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|temp~q\);

\u3|temp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u3|temp~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\u2|ALT_INV_process_2~0clkctrl_outclk\ <= NOT \u2|process_2~0clkctrl_outclk\;
\u2|ALT_INV_col_counter[9]~27_combout\ <= NOT \u2|col_counter[9]~27_combout\;
\u2|ALT_INV_row_counter[9]~27_combout\ <= NOT \u2|row_counter[9]~27_combout\;
\u4|ALT_INV_WideNor1~0_combout\ <= NOT \u4|WideNor1~0_combout\;
\u4|ALT_INV_WideOr1~combout\ <= NOT \u4|WideOr1~combout\;
\u4|ALT_INV_seg2~0_combout\ <= NOT \u4|seg2~0_combout\;
\u4|ALT_INV_WideNor1~combout\ <= NOT \u4|WideNor1~combout\;
\u4|ALT_INV_WideNor0~0_combout\ <= NOT \u4|WideNor0~0_combout\;
\u4|ALT_INV_WideOr0~combout\ <= NOT \u4|WideOr0~combout\;
\u4|ALT_INV_seg1~0_combout\ <= NOT \u4|seg1~0_combout\;
\u4|ALT_INV_WideNor0~combout\ <= NOT \u4|WideNor0~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y44_N20
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

-- Location: IOOBUF_X0_Y18_N2
\Hsync~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|Hsync~q\,
	devoe => ww_devoe,
	o => \Hsync~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\Vsync~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|Vsync~q\,
	devoe => ww_devoe,
	o => \Vsync~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\seg1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|seg1\(0),
	devoe => ww_devoe,
	o => \seg1[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\seg1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|ALT_INV_WideNor0~combout\,
	devoe => ww_devoe,
	o => \seg1[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\seg1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \seg1[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\seg1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|seg1\(0),
	devoe => ww_devoe,
	o => \seg1[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\seg1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|ALT_INV_seg1~0_combout\,
	devoe => ww_devoe,
	o => \seg1[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\seg1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|ALT_INV_WideOr0~combout\,
	devoe => ww_devoe,
	o => \seg1[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\seg1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|ALT_INV_WideNor0~0_combout\,
	devoe => ww_devoe,
	o => \seg1[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\seg2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|seg2\(0),
	devoe => ww_devoe,
	o => \seg2[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\seg2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|ALT_INV_WideNor1~combout\,
	devoe => ww_devoe,
	o => \seg2[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\seg2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Equal7~0_combout\,
	devoe => ww_devoe,
	o => \seg2[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\seg2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|seg2\(0),
	devoe => ww_devoe,
	o => \seg2[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\seg2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|ALT_INV_seg2~0_combout\,
	devoe => ww_devoe,
	o => \seg2[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\seg2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|ALT_INV_WideOr1~combout\,
	devoe => ww_devoe,
	o => \seg2[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\seg2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|ALT_INV_WideNor1~0_combout\,
	devoe => ww_devoe,
	o => \seg2[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\bar~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bar~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\R[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|R[0]~12_combout\,
	devoe => ww_devoe,
	o => \R[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\R[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|R[0]~12_combout\,
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\R[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|R[0]~12_combout\,
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\R[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|R[0]~12_combout\,
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\G[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|R[0]~12_combout\,
	devoe => ww_devoe,
	o => \G[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\G[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|R[0]~12_combout\,
	devoe => ww_devoe,
	o => \G[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\G[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|R[0]~12_combout\,
	devoe => ww_devoe,
	o => \G[2]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\G[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|R[0]~12_combout\,
	devoe => ww_devoe,
	o => \G[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\B[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|R[0]~12_combout\,
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\B[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|R[0]~12_combout\,
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\B[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|R[0]~12_combout\,
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X0_Y18_N9
\B[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|R[0]~12_combout\,
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOIBUF_X78_Y29_N22
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

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X63_Y53_N0
\U0|temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|temp~0_combout\ = !\U0|temp~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|temp~q\,
	combout => \U0|temp~0_combout\);

-- Location: IOIBUF_X69_Y54_N1
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X65_Y50_N13
\U0|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U0|temp~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|temp~q\);

-- Location: CLKCTRL_G10
\U0|temp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|temp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|temp~clkctrl_outclk\);

-- Location: FF_X63_Y52_N21
\u1|Hcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u1|Add0~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Hcount\(4));

-- Location: LCCOMB_X63_Y52_N12
\u1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~0_combout\ = \u1|Hcount\(0) $ (VCC)
-- \u1|Add0~1\ = CARRY(\u1|Hcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Hcount\(0),
	datad => VCC,
	combout => \u1|Add0~0_combout\,
	cout => \u1|Add0~1\);

-- Location: FF_X63_Y52_N13
\u1|Hcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u1|Add0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Hcount\(0));

-- Location: LCCOMB_X63_Y52_N14
\u1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~2_combout\ = (\u1|Hcount\(1) & (!\u1|Add0~1\)) # (!\u1|Hcount\(1) & ((\u1|Add0~1\) # (GND)))
-- \u1|Add0~3\ = CARRY((!\u1|Add0~1\) # (!\u1|Hcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Hcount\(1),
	datad => VCC,
	cin => \u1|Add0~1\,
	combout => \u1|Add0~2_combout\,
	cout => \u1|Add0~3\);

-- Location: FF_X63_Y52_N15
\u1|Hcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u1|Add0~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Hcount\(1));

-- Location: LCCOMB_X63_Y52_N16
\u1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~4_combout\ = (\u1|Hcount\(2) & (\u1|Add0~3\ $ (GND))) # (!\u1|Hcount\(2) & (!\u1|Add0~3\ & VCC))
-- \u1|Add0~5\ = CARRY((\u1|Hcount\(2) & !\u1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Hcount\(2),
	datad => VCC,
	cin => \u1|Add0~3\,
	combout => \u1|Add0~4_combout\,
	cout => \u1|Add0~5\);

-- Location: FF_X63_Y52_N17
\u1|Hcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u1|Add0~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Hcount\(2));

-- Location: LCCOMB_X63_Y52_N18
\u1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~6_combout\ = (\u1|Hcount\(3) & (!\u1|Add0~5\)) # (!\u1|Hcount\(3) & ((\u1|Add0~5\) # (GND)))
-- \u1|Add0~7\ = CARRY((!\u1|Add0~5\) # (!\u1|Hcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Hcount\(3),
	datad => VCC,
	cin => \u1|Add0~5\,
	combout => \u1|Add0~6_combout\,
	cout => \u1|Add0~7\);

-- Location: FF_X63_Y52_N19
\u1|Hcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u1|Add0~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Hcount\(3));

-- Location: LCCOMB_X63_Y52_N20
\u1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~8_combout\ = (\u1|Hcount\(4) & (\u1|Add0~7\ $ (GND))) # (!\u1|Hcount\(4) & (!\u1|Add0~7\ & VCC))
-- \u1|Add0~9\ = CARRY((\u1|Hcount\(4) & !\u1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|Hcount\(4),
	datad => VCC,
	cin => \u1|Add0~7\,
	combout => \u1|Add0~8_combout\,
	cout => \u1|Add0~9\);

-- Location: LCCOMB_X63_Y52_N0
\u1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Equal0~0_combout\ = (!\u1|Add0~0_combout\ & (!\u1|Add0~4_combout\ & (!\u1|Add0~2_combout\ & !\u1|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add0~0_combout\,
	datab => \u1|Add0~4_combout\,
	datac => \u1|Add0~2_combout\,
	datad => \u1|Add0~6_combout\,
	combout => \u1|Equal0~0_combout\);

-- Location: FF_X63_Y52_N25
\u1|Hcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u1|Add0~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Hcount\(6));

-- Location: LCCOMB_X63_Y52_N22
\u1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~10_combout\ = (\u1|Hcount\(5) & (!\u1|Add0~9\)) # (!\u1|Hcount\(5) & ((\u1|Add0~9\) # (GND)))
-- \u1|Add0~11\ = CARRY((!\u1|Add0~9\) # (!\u1|Hcount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|Hcount\(5),
	datad => VCC,
	cin => \u1|Add0~9\,
	combout => \u1|Add0~10_combout\,
	cout => \u1|Add0~11\);

-- Location: LCCOMB_X63_Y52_N24
\u1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~12_combout\ = (\u1|Hcount\(6) & (\u1|Add0~11\ $ (GND))) # (!\u1|Hcount\(6) & (!\u1|Add0~11\ & VCC))
-- \u1|Add0~13\ = CARRY((\u1|Hcount\(6) & !\u1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Hcount\(6),
	datad => VCC,
	cin => \u1|Add0~11\,
	combout => \u1|Add0~12_combout\,
	cout => \u1|Add0~13\);

-- Location: LCCOMB_X63_Y52_N10
\u1|Hsync~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Hsync~0_combout\ = (\u1|Add0~10_combout\ & (!\u1|Add0~12_combout\ & (!\u1|Add0~8_combout\ & \u1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add0~10_combout\,
	datab => \u1|Add0~12_combout\,
	datac => \u1|Add0~8_combout\,
	datad => \u1|Equal0~0_combout\,
	combout => \u1|Hsync~0_combout\);

-- Location: FF_X63_Y52_N27
\u1|Hcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u1|Add0~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Hcount\(7));

-- Location: LCCOMB_X63_Y52_N26
\u1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~14_combout\ = (\u1|Hcount\(7) & (!\u1|Add0~13\)) # (!\u1|Hcount\(7) & ((\u1|Add0~13\) # (GND)))
-- \u1|Add0~15\ = CARRY((!\u1|Add0~13\) # (!\u1|Hcount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Hcount\(7),
	datad => VCC,
	cin => \u1|Add0~13\,
	combout => \u1|Add0~14_combout\,
	cout => \u1|Add0~15\);

-- Location: LCCOMB_X63_Y52_N6
\u1|Hcount~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Hcount~5_combout\ = (\u1|Add0~16_combout\ & (((\u1|Add0~14_combout\) # (!\u1|Add0~18_combout\)) # (!\u1|Hsync~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Hsync~0_combout\,
	datab => \u1|Add0~16_combout\,
	datac => \u1|Add0~14_combout\,
	datad => \u1|Add0~18_combout\,
	combout => \u1|Hcount~5_combout\);

-- Location: FF_X63_Y52_N7
\u1|Hcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u1|Hcount~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Hcount\(8));

-- Location: LCCOMB_X63_Y52_N28
\u1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~16_combout\ = (\u1|Hcount\(8) & (\u1|Add0~15\ $ (GND))) # (!\u1|Hcount\(8) & (!\u1|Add0~15\ & VCC))
-- \u1|Add0~17\ = CARRY((\u1|Hcount\(8) & !\u1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Hcount\(8),
	datad => VCC,
	cin => \u1|Add0~15\,
	combout => \u1|Add0~16_combout\,
	cout => \u1|Add0~17\);

-- Location: LCCOMB_X63_Y52_N2
\u1|Hcount~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Hcount~6_combout\ = (\u1|Add0~18_combout\ & (((\u1|Add0~14_combout\) # (!\u1|Add0~16_combout\)) # (!\u1|Hsync~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Hsync~0_combout\,
	datab => \u1|Add0~16_combout\,
	datac => \u1|Add0~14_combout\,
	datad => \u1|Add0~18_combout\,
	combout => \u1|Hcount~6_combout\);

-- Location: FF_X63_Y52_N3
\u1|Hcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u1|Hcount~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Hcount\(9));

-- Location: LCCOMB_X63_Y52_N30
\u1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add0~18_combout\ = \u1|Add0~17\ $ (\u1|Hcount\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u1|Hcount\(9),
	cin => \u1|Add0~17\,
	combout => \u1|Add0~18_combout\);

-- Location: LCCOMB_X64_Y52_N28
\u1|Hsync~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Hsync~3_combout\ = (!\u1|Add0~12_combout\ & (\u1|Add0~18_combout\ & (!\u1|Add0~14_combout\ & \u1|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add0~12_combout\,
	datab => \u1|Add0~18_combout\,
	datac => \u1|Add0~14_combout\,
	datad => \u1|Add0~16_combout\,
	combout => \u1|Hsync~3_combout\);

-- Location: LCCOMB_X63_Y52_N8
\u1|Hcount~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Hcount~4_combout\ = (\u1|Add0~10_combout\ & ((\u1|Add0~8_combout\) # ((!\u1|Hsync~3_combout\) # (!\u1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add0~8_combout\,
	datab => \u1|Add0~10_combout\,
	datac => \u1|Equal0~0_combout\,
	datad => \u1|Hsync~3_combout\,
	combout => \u1|Hcount~4_combout\);

-- Location: FF_X63_Y52_N9
\u1|Hcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u1|Hcount~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Hcount\(5));

-- Location: LCCOMB_X64_Y52_N4
\u1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Equal0~2_combout\ = (!\u1|Add0~8_combout\ & (\u1|Add0~10_combout\ & (!\u1|Add0~14_combout\ & \u1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add0~8_combout\,
	datab => \u1|Add0~10_combout\,
	datac => \u1|Add0~14_combout\,
	datad => \u1|Add0~12_combout\,
	combout => \u1|Equal0~2_combout\);

-- Location: LCCOMB_X63_Y52_N4
\u1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Equal0~1_combout\ = (!\u1|Add0~16_combout\ & (!\u1|Add0~18_combout\ & \u1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Add0~16_combout\,
	datac => \u1|Add0~18_combout\,
	datad => \u1|Equal0~0_combout\,
	combout => \u1|Equal0~1_combout\);

-- Location: LCCOMB_X64_Y52_N10
\u1|Hsync~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Hsync~1_combout\ = (\u1|Add0~18_combout\ & (\u1|Add0~16_combout\ & (!\u1|Add0~14_combout\ & \u1|Hsync~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add0~18_combout\,
	datab => \u1|Add0~16_combout\,
	datac => \u1|Add0~14_combout\,
	datad => \u1|Hsync~0_combout\,
	combout => \u1|Hsync~1_combout\);

-- Location: LCCOMB_X64_Y52_N14
\u1|Hsync~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Hsync~2_combout\ = (\u1|Hsync~q\ & (((\u1|Equal0~2_combout\ & \u1|Equal0~1_combout\)) # (!\u1|Hsync~1_combout\))) # (!\u1|Hsync~q\ & (\u1|Equal0~2_combout\ & (\u1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Hsync~q\,
	datab => \u1|Equal0~2_combout\,
	datac => \u1|Equal0~1_combout\,
	datad => \u1|Hsync~1_combout\,
	combout => \u1|Hsync~2_combout\);

-- Location: LCCOMB_X64_Y52_N24
\u1|Hsync~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Hsync~feeder_combout\ = \u1|Hsync~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Hsync~2_combout\,
	combout => \u1|Hsync~feeder_combout\);

-- Location: FF_X64_Y52_N25
\u1|Hsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u1|Hsync~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Hsync~q\);

-- Location: CLKCTRL_G14
\u1|Hsync~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u1|Hsync~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u1|Hsync~clkctrl_outclk\);

-- Location: FF_X66_Y52_N15
\u1|Vcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|Hsync~clkctrl_outclk\,
	d => \u1|Add1~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Vcount\(5));

-- Location: FF_X66_Y52_N17
\u1|Vcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|Hsync~clkctrl_outclk\,
	d => \u1|Add1~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Vcount\(6));

-- Location: LCCOMB_X66_Y52_N14
\u1|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add1~10_combout\ = (\u1|Vcount\(5) & (!\u1|Add1~9\)) # (!\u1|Vcount\(5) & ((\u1|Add1~9\) # (GND)))
-- \u1|Add1~11\ = CARRY((!\u1|Add1~9\) # (!\u1|Vcount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|Vcount\(5),
	datad => VCC,
	cin => \u1|Add1~9\,
	combout => \u1|Add1~10_combout\,
	cout => \u1|Add1~11\);

-- Location: LCCOMB_X66_Y52_N16
\u1|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add1~12_combout\ = (\u1|Vcount\(6) & (\u1|Add1~11\ $ (GND))) # (!\u1|Vcount\(6) & (!\u1|Add1~11\ & VCC))
-- \u1|Add1~13\ = CARRY((\u1|Vcount\(6) & !\u1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Vcount\(6),
	datad => VCC,
	cin => \u1|Add1~11\,
	combout => \u1|Add1~12_combout\,
	cout => \u1|Add1~13\);

-- Location: FF_X66_Y52_N19
\u1|Vcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|Hsync~clkctrl_outclk\,
	d => \u1|Add1~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Vcount\(7));

-- Location: LCCOMB_X66_Y52_N18
\u1|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add1~14_combout\ = (\u1|Vcount\(7) & (!\u1|Add1~13\)) # (!\u1|Vcount\(7) & ((\u1|Add1~13\) # (GND)))
-- \u1|Add1~15\ = CARRY((!\u1|Add1~13\) # (!\u1|Vcount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|Vcount\(7),
	datad => VCC,
	cin => \u1|Add1~13\,
	combout => \u1|Add1~14_combout\,
	cout => \u1|Add1~15\);

-- Location: FF_X66_Y52_N21
\u1|Vcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|Hsync~clkctrl_outclk\,
	d => \u1|Add1~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Vcount\(8));

-- Location: LCCOMB_X66_Y52_N20
\u1|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add1~16_combout\ = (\u1|Vcount\(8) & (\u1|Add1~15\ $ (GND))) # (!\u1|Vcount\(8) & (!\u1|Add1~15\ & VCC))
-- \u1|Add1~17\ = CARRY((\u1|Vcount\(8) & !\u1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Vcount\(8),
	datad => VCC,
	cin => \u1|Add1~15\,
	combout => \u1|Add1~16_combout\,
	cout => \u1|Add1~17\);

-- Location: LCCOMB_X66_Y52_N0
\u1|Vsync~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Vsync~0_combout\ = (!\u1|Add1~8_combout\ & (!\u1|Add1~12_combout\ & (!\u1|Add1~14_combout\ & !\u1|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add1~8_combout\,
	datab => \u1|Add1~12_combout\,
	datac => \u1|Add1~14_combout\,
	datad => \u1|Add1~16_combout\,
	combout => \u1|Vsync~0_combout\);

-- Location: LCCOMB_X65_Y52_N14
\u1|Vsync~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Vsync~2_combout\ = (\u1|Add1~6_combout\ & \u1|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Add1~6_combout\,
	datac => \u1|Add1~4_combout\,
	combout => \u1|Vsync~2_combout\);

-- Location: LCCOMB_X66_Y52_N4
\u1|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add1~0_combout\ = \u1|Vcount\(0) $ (VCC)
-- \u1|Add1~1\ = CARRY(\u1|Vcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Vcount\(0),
	datad => VCC,
	combout => \u1|Add1~0_combout\,
	cout => \u1|Add1~1\);

-- Location: LCCOMB_X65_Y52_N24
\u1|Vcount~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Vcount~5_combout\ = (\u1|Add1~18_combout\ & (((!\u1|Vsync~1_combout\) # (!\u1|Vsync~0_combout\)) # (!\u1|Vsync~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add1~18_combout\,
	datab => \u1|Vsync~2_combout\,
	datac => \u1|Vsync~0_combout\,
	datad => \u1|Vsync~1_combout\,
	combout => \u1|Vcount~5_combout\);

-- Location: FF_X65_Y52_N25
\u1|Vcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|Hsync~clkctrl_outclk\,
	d => \u1|Vcount~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Vcount\(9));

-- Location: LCCOMB_X66_Y52_N22
\u1|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add1~18_combout\ = \u1|Add1~17\ $ (\u1|Vcount\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u1|Vcount\(9),
	cin => \u1|Add1~17\,
	combout => \u1|Add1~18_combout\);

-- Location: LCCOMB_X66_Y52_N2
\u1|Vsync~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Vsync~1_combout\ = (\u1|Add1~0_combout\ & (!\u1|Add1~2_combout\ & (\u1|Add1~18_combout\ & !\u1|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add1~0_combout\,
	datab => \u1|Add1~2_combout\,
	datac => \u1|Add1~18_combout\,
	datad => \u1|Add1~10_combout\,
	combout => \u1|Vsync~1_combout\);

-- Location: LCCOMB_X66_Y52_N26
\u1|Vcount~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Vcount~4_combout\ = (\u1|Add1~0_combout\ & (((!\u1|Vsync~1_combout\) # (!\u1|Vsync~0_combout\)) # (!\u1|Vsync~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Vsync~2_combout\,
	datab => \u1|Vsync~0_combout\,
	datac => \u1|Add1~0_combout\,
	datad => \u1|Vsync~1_combout\,
	combout => \u1|Vcount~4_combout\);

-- Location: FF_X66_Y52_N27
\u1|Vcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|Hsync~clkctrl_outclk\,
	d => \u1|Vcount~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Vcount\(0));

-- Location: LCCOMB_X66_Y52_N6
\u1|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add1~2_combout\ = (\u1|Vcount\(1) & (!\u1|Add1~1\)) # (!\u1|Vcount\(1) & ((\u1|Add1~1\) # (GND)))
-- \u1|Add1~3\ = CARRY((!\u1|Add1~1\) # (!\u1|Vcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Vcount\(1),
	datad => VCC,
	cin => \u1|Add1~1\,
	combout => \u1|Add1~2_combout\,
	cout => \u1|Add1~3\);

-- Location: FF_X66_Y52_N7
\u1|Vcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|Hsync~clkctrl_outclk\,
	d => \u1|Add1~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Vcount\(1));

-- Location: LCCOMB_X66_Y52_N8
\u1|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add1~4_combout\ = (\u1|Vcount\(2) & (\u1|Add1~3\ $ (GND))) # (!\u1|Vcount\(2) & (!\u1|Add1~3\ & VCC))
-- \u1|Add1~5\ = CARRY((\u1|Vcount\(2) & !\u1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|Vcount\(2),
	datad => VCC,
	cin => \u1|Add1~3\,
	combout => \u1|Add1~4_combout\,
	cout => \u1|Add1~5\);

-- Location: LCCOMB_X66_Y52_N28
\u1|Vcount~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Vcount~7_combout\ = (\u1|Add1~4_combout\ & (((!\u1|Vsync~1_combout\) # (!\u1|Vsync~0_combout\)) # (!\u1|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add1~6_combout\,
	datab => \u1|Vsync~0_combout\,
	datac => \u1|Add1~4_combout\,
	datad => \u1|Vsync~1_combout\,
	combout => \u1|Vcount~7_combout\);

-- Location: FF_X66_Y52_N29
\u1|Vcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|Hsync~clkctrl_outclk\,
	d => \u1|Vcount~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Vcount\(2));

-- Location: LCCOMB_X66_Y52_N10
\u1|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add1~6_combout\ = (\u1|Vcount\(3) & (!\u1|Add1~5\)) # (!\u1|Vcount\(3) & ((\u1|Add1~5\) # (GND)))
-- \u1|Add1~7\ = CARRY((!\u1|Add1~5\) # (!\u1|Vcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Vcount\(3),
	datad => VCC,
	cin => \u1|Add1~5\,
	combout => \u1|Add1~6_combout\,
	cout => \u1|Add1~7\);

-- Location: LCCOMB_X66_Y52_N30
\u1|Vcount~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Vcount~6_combout\ = (\u1|Add1~6_combout\ & (((!\u1|Vsync~1_combout\) # (!\u1|Add1~4_combout\)) # (!\u1|Vsync~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add1~6_combout\,
	datab => \u1|Vsync~0_combout\,
	datac => \u1|Add1~4_combout\,
	datad => \u1|Vsync~1_combout\,
	combout => \u1|Vcount~6_combout\);

-- Location: FF_X66_Y52_N31
\u1|Vcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|Hsync~clkctrl_outclk\,
	d => \u1|Vcount~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Vcount\(3));

-- Location: LCCOMB_X66_Y52_N12
\u1|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Add1~8_combout\ = (\u1|Vcount\(4) & (\u1|Add1~7\ $ (GND))) # (!\u1|Vcount\(4) & (!\u1|Add1~7\ & VCC))
-- \u1|Add1~9\ = CARRY((\u1|Vcount\(4) & !\u1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|Vcount\(4),
	datad => VCC,
	cin => \u1|Add1~7\,
	combout => \u1|Add1~8_combout\,
	cout => \u1|Add1~9\);

-- Location: FF_X66_Y52_N13
\u1|Vcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|Hsync~clkctrl_outclk\,
	d => \u1|Add1~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Vcount\(4));

-- Location: LCCOMB_X65_Y52_N12
\u1|Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Equal4~3_combout\ = (!\u1|Add1~10_combout\ & !\u1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Add1~10_combout\,
	datad => \u1|Add1~0_combout\,
	combout => \u1|Equal4~3_combout\);

-- Location: LCCOMB_X65_Y52_N6
\u1|Equal4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Equal4~4_combout\ = (\u1|Add1~2_combout\ & (!\u1|Add1~4_combout\ & (\u1|Vsync~0_combout\ & !\u1|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add1~2_combout\,
	datab => \u1|Add1~4_combout\,
	datac => \u1|Vsync~0_combout\,
	datad => \u1|Add1~6_combout\,
	combout => \u1|Equal4~4_combout\);

-- Location: LCCOMB_X65_Y52_N8
\u1|Vsync~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Vsync~3_combout\ = (\u1|Vsync~q\ & (((!\u1|Vsync~1_combout\) # (!\u1|Vsync~0_combout\)) # (!\u1|Vsync~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Vsync~q\,
	datab => \u1|Vsync~2_combout\,
	datac => \u1|Vsync~0_combout\,
	datad => \u1|Vsync~1_combout\,
	combout => \u1|Vsync~3_combout\);

-- Location: LCCOMB_X66_Y52_N24
\u1|Vsync~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Vsync~4_combout\ = (\u1|Vsync~3_combout\) # ((\u1|Equal4~3_combout\ & (!\u1|Add1~18_combout\ & \u1|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal4~3_combout\,
	datab => \u1|Add1~18_combout\,
	datac => \u1|Equal4~4_combout\,
	datad => \u1|Vsync~3_combout\,
	combout => \u1|Vsync~4_combout\);

-- Location: FF_X66_Y52_N25
\u1|Vsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|Hsync~clkctrl_outclk\,
	d => \u1|Vsync~4_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Vsync~q\);

-- Location: LCCOMB_X71_Y47_N0
\u2|score1[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[0]~32_combout\ = \u2|score1\(0) $ (VCC)
-- \u2|score1[0]~33\ = CARRY(\u2|score1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|score1\(0),
	datad => VCC,
	combout => \u2|score1[0]~32_combout\,
	cout => \u2|score1[0]~33\);

-- Location: LCCOMB_X71_Y47_N4
\u2|score1[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[2]~36_combout\ = (\u2|score1\(2) & (\u2|score1[1]~35\ $ (GND))) # (!\u2|score1\(2) & (!\u2|score1[1]~35\ & VCC))
-- \u2|score1[2]~37\ = CARRY((\u2|score1\(2) & !\u2|score1[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score1\(2),
	datad => VCC,
	cin => \u2|score1[1]~35\,
	combout => \u2|score1[2]~36_combout\,
	cout => \u2|score1[2]~37\);

-- Location: LCCOMB_X71_Y47_N6
\u2|score1[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[3]~38_combout\ = (\u2|score1\(3) & (!\u2|score1[2]~37\)) # (!\u2|score1\(3) & ((\u2|score1[2]~37\) # (GND)))
-- \u2|score1[3]~39\ = CARRY((!\u2|score1[2]~37\) # (!\u2|score1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(3),
	datad => VCC,
	cin => \u2|score1[2]~37\,
	combout => \u2|score1[3]~38_combout\,
	cout => \u2|score1[3]~39\);

-- Location: LCCOMB_X75_Y43_N22
\u7|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Add0~6_combout\ = (\u7|Qt\(4) & (!\u7|Add0~5\)) # (!\u7|Qt\(4) & ((\u7|Add0~5\) # (GND)))
-- \u7|Add0~7\ = CARRY((!\u7|Add0~5\) # (!\u7|Qt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|Qt\(4),
	datad => VCC,
	cin => \u7|Add0~5\,
	combout => \u7|Add0~6_combout\,
	cout => \u7|Add0~7\);

-- Location: LCCOMB_X75_Y43_N24
\u7|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Add0~8_combout\ = (\u7|Qt\(5) & (\u7|Add0~7\ $ (GND))) # (!\u7|Qt\(5) & (!\u7|Add0~7\ & VCC))
-- \u7|Add0~9\ = CARRY((\u7|Qt\(5) & !\u7|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Qt\(5),
	datad => VCC,
	cin => \u7|Add0~7\,
	combout => \u7|Add0~8_combout\,
	cout => \u7|Add0~9\);

-- Location: LCCOMB_X75_Y43_N6
\u7|Qt~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Qt~9_combout\ = (\u7|Add0~8_combout\ & (((\u7|Qt\(3)) # (!\u7|Equal0~4_combout\)) # (!\u7|Qt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Qt\(4),
	datab => \u7|Qt\(3),
	datac => \u7|Equal0~4_combout\,
	datad => \u7|Add0~8_combout\,
	combout => \u7|Qt~9_combout\);

-- Location: FF_X75_Y43_N7
\u7|Qt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|Qt~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|Qt\(5));

-- Location: LCCOMB_X75_Y43_N26
\u7|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Add0~10_combout\ = (\u7|Qt\(6) & (!\u7|Add0~9\)) # (!\u7|Qt\(6) & ((\u7|Add0~9\) # (GND)))
-- \u7|Add0~11\ = CARRY((!\u7|Add0~9\) # (!\u7|Qt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Qt\(6),
	datad => VCC,
	cin => \u7|Add0~9\,
	combout => \u7|Add0~10_combout\,
	cout => \u7|Add0~11\);

-- Location: LCCOMB_X75_Y43_N12
\u7|Qt~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Qt~8_combout\ = (\u7|Add0~10_combout\ & (((\u7|Qt\(3)) # (!\u7|Equal0~4_combout\)) # (!\u7|Qt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Qt\(4),
	datab => \u7|Qt\(3),
	datac => \u7|Add0~10_combout\,
	datad => \u7|Equal0~4_combout\,
	combout => \u7|Qt~8_combout\);

-- Location: FF_X75_Y43_N13
\u7|Qt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|Qt~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|Qt\(6));

-- Location: LCCOMB_X75_Y43_N28
\u7|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Add0~12_combout\ = (\u7|Qt\(7) & (\u7|Add0~11\ $ (GND))) # (!\u7|Qt\(7) & (!\u7|Add0~11\ & VCC))
-- \u7|Add0~13\ = CARRY((\u7|Qt\(7) & !\u7|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|Qt\(7),
	datad => VCC,
	cin => \u7|Add0~11\,
	combout => \u7|Add0~12_combout\,
	cout => \u7|Add0~13\);

-- Location: FF_X75_Y43_N29
\u7|Qt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|Add0~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|Qt\(7));

-- Location: LCCOMB_X75_Y43_N30
\u7|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Add0~14_combout\ = (\u7|Qt\(8) & (!\u7|Add0~13\)) # (!\u7|Qt\(8) & ((\u7|Add0~13\) # (GND)))
-- \u7|Add0~15\ = CARRY((!\u7|Add0~13\) # (!\u7|Qt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Qt\(8),
	datad => VCC,
	cin => \u7|Add0~13\,
	combout => \u7|Add0~14_combout\,
	cout => \u7|Add0~15\);

-- Location: LCCOMB_X75_Y43_N10
\u7|Qt~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Qt~7_combout\ = (\u7|Add0~14_combout\ & (((\u7|Qt\(3)) # (!\u7|Equal0~4_combout\)) # (!\u7|Qt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Qt\(4),
	datab => \u7|Qt\(3),
	datac => \u7|Add0~14_combout\,
	datad => \u7|Equal0~4_combout\,
	combout => \u7|Qt~7_combout\);

-- Location: FF_X75_Y43_N11
\u7|Qt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|Qt~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|Qt\(8));

-- Location: LCCOMB_X75_Y43_N4
\u7|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Equal0~3_combout\ = (\u7|Qt\(6) & (!\u7|Qt\(7) & (\u7|Qt\(5) & \u7|Qt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Qt\(6),
	datab => \u7|Qt\(7),
	datac => \u7|Qt\(5),
	datad => \u7|Qt\(8),
	combout => \u7|Equal0~3_combout\);

-- Location: LCCOMB_X75_Y42_N0
\u7|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Add0~16_combout\ = (\u7|Qt\(9) & (\u7|Add0~15\ $ (GND))) # (!\u7|Qt\(9) & (!\u7|Add0~15\ & VCC))
-- \u7|Add0~17\ = CARRY((\u7|Qt\(9) & !\u7|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|Qt\(9),
	datad => VCC,
	cin => \u7|Add0~15\,
	combout => \u7|Add0~16_combout\,
	cout => \u7|Add0~17\);

-- Location: FF_X75_Y42_N1
\u7|Qt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|Add0~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|Qt\(9));

-- Location: LCCOMB_X75_Y42_N2
\u7|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Add0~18_combout\ = (\u7|Qt\(10) & (!\u7|Add0~17\)) # (!\u7|Qt\(10) & ((\u7|Add0~17\) # (GND)))
-- \u7|Add0~19\ = CARRY((!\u7|Add0~17\) # (!\u7|Qt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|Qt\(10),
	datad => VCC,
	cin => \u7|Add0~17\,
	combout => \u7|Add0~18_combout\,
	cout => \u7|Add0~19\);

-- Location: LCCOMB_X75_Y42_N28
\u7|Qt~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Qt~6_combout\ = (\u7|Add0~18_combout\ & (((\u7|Qt\(3)) # (!\u7|Equal0~4_combout\)) # (!\u7|Qt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Qt\(4),
	datab => \u7|Equal0~4_combout\,
	datac => \u7|Qt\(3),
	datad => \u7|Add0~18_combout\,
	combout => \u7|Qt~6_combout\);

-- Location: FF_X75_Y42_N29
\u7|Qt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|Qt~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|Qt\(10));

-- Location: LCCOMB_X75_Y42_N4
\u7|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Add0~20_combout\ = (\u7|Qt\(11) & (\u7|Add0~19\ $ (GND))) # (!\u7|Qt\(11) & (!\u7|Add0~19\ & VCC))
-- \u7|Add0~21\ = CARRY((\u7|Qt\(11) & !\u7|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Qt\(11),
	datad => VCC,
	cin => \u7|Add0~19\,
	combout => \u7|Add0~20_combout\,
	cout => \u7|Add0~21\);

-- Location: LCCOMB_X75_Y42_N26
\u7|Qt~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Qt~5_combout\ = (\u7|Add0~20_combout\ & ((\u7|Qt\(3)) # ((!\u7|Equal0~4_combout\) # (!\u7|Qt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Qt\(3),
	datab => \u7|Qt\(4),
	datac => \u7|Add0~20_combout\,
	datad => \u7|Equal0~4_combout\,
	combout => \u7|Qt~5_combout\);

-- Location: FF_X75_Y42_N27
\u7|Qt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|Qt~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|Qt\(11));

-- Location: LCCOMB_X75_Y42_N6
\u7|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Add0~22_combout\ = (\u7|Qt\(12) & (!\u7|Add0~21\)) # (!\u7|Qt\(12) & ((\u7|Add0~21\) # (GND)))
-- \u7|Add0~23\ = CARRY((!\u7|Add0~21\) # (!\u7|Qt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|Qt\(12),
	datad => VCC,
	cin => \u7|Add0~21\,
	combout => \u7|Add0~22_combout\,
	cout => \u7|Add0~23\);

-- Location: LCCOMB_X75_Y42_N24
\u7|Qt~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Qt~4_combout\ = (\u7|Add0~22_combout\ & (((\u7|Qt\(3)) # (!\u7|Equal0~4_combout\)) # (!\u7|Qt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Qt\(4),
	datab => \u7|Equal0~4_combout\,
	datac => \u7|Qt\(3),
	datad => \u7|Add0~22_combout\,
	combout => \u7|Qt~4_combout\);

-- Location: FF_X75_Y42_N25
\u7|Qt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|Qt~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|Qt\(12));

-- Location: LCCOMB_X75_Y42_N8
\u7|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Add0~24_combout\ = (\u7|Qt\(13) & (\u7|Add0~23\ $ (GND))) # (!\u7|Qt\(13) & (!\u7|Add0~23\ & VCC))
-- \u7|Add0~25\ = CARRY((\u7|Qt\(13) & !\u7|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|Qt\(13),
	datad => VCC,
	cin => \u7|Add0~23\,
	combout => \u7|Add0~24_combout\,
	cout => \u7|Add0~25\);

-- Location: FF_X75_Y42_N9
\u7|Qt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|Add0~24_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|Qt\(13));

-- Location: LCCOMB_X75_Y42_N10
\u7|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Add0~26_combout\ = (\u7|Qt\(14) & (!\u7|Add0~25\)) # (!\u7|Qt\(14) & ((\u7|Add0~25\) # (GND)))
-- \u7|Add0~27\ = CARRY((!\u7|Add0~25\) # (!\u7|Qt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|Qt\(14),
	datad => VCC,
	cin => \u7|Add0~25\,
	combout => \u7|Add0~26_combout\,
	cout => \u7|Add0~27\);

-- Location: LCCOMB_X75_Y42_N20
\u7|Qt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Qt~3_combout\ = (\u7|Add0~26_combout\ & (((\u7|Qt\(3)) # (!\u7|Equal0~4_combout\)) # (!\u7|Qt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Qt\(4),
	datab => \u7|Equal0~4_combout\,
	datac => \u7|Qt\(3),
	datad => \u7|Add0~26_combout\,
	combout => \u7|Qt~3_combout\);

-- Location: FF_X75_Y42_N21
\u7|Qt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|Qt~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|Qt\(14));

-- Location: LCCOMB_X75_Y42_N12
\u7|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Add0~28_combout\ = (\u7|Qt\(15) & (\u7|Add0~27\ $ (GND))) # (!\u7|Qt\(15) & (!\u7|Add0~27\ & VCC))
-- \u7|Add0~29\ = CARRY((\u7|Qt\(15) & !\u7|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Qt\(15),
	datad => VCC,
	cin => \u7|Add0~27\,
	combout => \u7|Add0~28_combout\,
	cout => \u7|Add0~29\);

-- Location: FF_X75_Y42_N13
\u7|Qt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|Add0~28_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|Qt\(15));

-- Location: LCCOMB_X75_Y42_N14
\u7|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Add0~30_combout\ = (\u7|Qt\(16) & (!\u7|Add0~29\)) # (!\u7|Qt\(16) & ((\u7|Add0~29\) # (GND)))
-- \u7|Add0~31\ = CARRY((!\u7|Add0~29\) # (!\u7|Qt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|Qt\(16),
	datad => VCC,
	cin => \u7|Add0~29\,
	combout => \u7|Add0~30_combout\,
	cout => \u7|Add0~31\);

-- Location: FF_X75_Y42_N15
\u7|Qt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|Add0~30_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|Qt\(16));

-- Location: LCCOMB_X75_Y42_N22
\u7|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Equal0~1_combout\ = (!\u7|Qt\(15) & (!\u7|Qt\(16) & (!\u7|Qt\(13) & \u7|Qt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Qt\(15),
	datab => \u7|Qt\(16),
	datac => \u7|Qt\(13),
	datad => \u7|Qt\(14),
	combout => \u7|Equal0~1_combout\);

-- Location: LCCOMB_X75_Y42_N18
\u7|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Equal0~2_combout\ = (\u7|Qt\(11) & (!\u7|Qt\(9) & (\u7|Qt\(10) & \u7|Qt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Qt\(11),
	datab => \u7|Qt\(9),
	datac => \u7|Qt\(10),
	datad => \u7|Qt\(12),
	combout => \u7|Equal0~2_combout\);

-- Location: LCCOMB_X70_Y43_N14
\u3|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Add0~0_combout\ = \u3|Qt\(0) $ (VCC)
-- \u3|Add0~1\ = CARRY(\u3|Qt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|Qt\(0),
	datad => VCC,
	combout => \u3|Add0~0_combout\,
	cout => \u3|Add0~1\);

-- Location: FF_X70_Y43_N15
\u3|Qt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|Add0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|Qt\(0));

-- Location: LCCOMB_X70_Y43_N16
\u3|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Add0~2_combout\ = (\u3|Qt\(1) & (!\u3|Add0~1\)) # (!\u3|Qt\(1) & ((\u3|Add0~1\) # (GND)))
-- \u3|Add0~3\ = CARRY((!\u3|Add0~1\) # (!\u3|Qt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|Qt\(1),
	datad => VCC,
	cin => \u3|Add0~1\,
	combout => \u3|Add0~2_combout\,
	cout => \u3|Add0~3\);

-- Location: FF_X70_Y43_N17
\u3|Qt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|Add0~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|Qt\(1));

-- Location: LCCOMB_X74_Y43_N16
\u6|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Add0~1_cout\ = CARRY((\u3|Qt\(0) & \u3|Qt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(0),
	datab => \u3|Qt\(1),
	datad => VCC,
	cout => \u6|Add0~1_cout\);

-- Location: LCCOMB_X74_Y43_N18
\u6|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Add0~2_combout\ = (\u6|Qt\(2) & (!\u6|Add0~1_cout\)) # (!\u6|Qt\(2) & ((\u6|Add0~1_cout\) # (GND)))
-- \u6|Add0~3\ = CARRY((!\u6|Add0~1_cout\) # (!\u6|Qt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|Qt\(2),
	datad => VCC,
	cin => \u6|Add0~1_cout\,
	combout => \u6|Add0~2_combout\,
	cout => \u6|Add0~3\);

-- Location: FF_X74_Y43_N19
\u6|Qt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|Add0~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|Qt\(2));

-- Location: LCCOMB_X75_Y42_N16
\u7|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Add0~32_combout\ = \u7|Qt\(17) $ (!\u7|Add0~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Qt\(17),
	cin => \u7|Add0~31\,
	combout => \u7|Add0~32_combout\);

-- Location: LCCOMB_X75_Y42_N30
\u7|Qt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Qt~2_combout\ = (\u7|Add0~32_combout\ & (((\u7|Qt\(3)) # (!\u7|Equal0~4_combout\)) # (!\u7|Qt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Qt\(4),
	datab => \u7|Equal0~4_combout\,
	datac => \u7|Qt\(3),
	datad => \u7|Add0~32_combout\,
	combout => \u7|Qt~2_combout\);

-- Location: FF_X75_Y42_N31
\u7|Qt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|Qt~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|Qt\(17));

-- Location: LCCOMB_X74_Y43_N8
\u7|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Equal0~0_combout\ = (\u3|Qt\(0) & (\u6|Qt\(2) & (\u3|Qt\(1) & \u7|Qt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(0),
	datab => \u6|Qt\(2),
	datac => \u3|Qt\(1),
	datad => \u7|Qt\(17),
	combout => \u7|Equal0~0_combout\);

-- Location: LCCOMB_X75_Y43_N8
\u7|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Equal0~4_combout\ = (\u7|Equal0~3_combout\ & (\u7|Equal0~1_combout\ & (\u7|Equal0~2_combout\ & \u7|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Equal0~3_combout\,
	datab => \u7|Equal0~1_combout\,
	datac => \u7|Equal0~2_combout\,
	datad => \u7|Equal0~0_combout\,
	combout => \u7|Equal0~4_combout\);

-- Location: LCCOMB_X75_Y43_N16
\u7|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Add0~1_cout\ = CARRY((\u3|Qt\(0) & \u3|Qt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(0),
	datab => \u3|Qt\(1),
	datad => VCC,
	cout => \u7|Add0~1_cout\);

-- Location: LCCOMB_X75_Y43_N18
\u7|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Add0~3_cout\ = CARRY((!\u7|Add0~1_cout\) # (!\u6|Qt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|Qt\(2),
	datad => VCC,
	cin => \u7|Add0~1_cout\,
	cout => \u7|Add0~3_cout\);

-- Location: LCCOMB_X75_Y43_N20
\u7|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Add0~4_combout\ = (\u7|Qt\(3) & (\u7|Add0~3_cout\ $ (GND))) # (!\u7|Qt\(3) & (!\u7|Add0~3_cout\ & VCC))
-- \u7|Add0~5\ = CARRY((\u7|Qt\(3) & !\u7|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|Qt\(3),
	datad => VCC,
	cin => \u7|Add0~3_cout\,
	combout => \u7|Add0~4_combout\,
	cout => \u7|Add0~5\);

-- Location: LCCOMB_X75_Y43_N0
\u7|Qt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Qt~0_combout\ = (\u7|Add0~4_combout\ & (((\u7|Qt\(3)) # (!\u7|Equal0~4_combout\)) # (!\u7|Qt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Qt\(4),
	datab => \u7|Equal0~4_combout\,
	datac => \u7|Qt\(3),
	datad => \u7|Add0~4_combout\,
	combout => \u7|Qt~0_combout\);

-- Location: FF_X75_Y43_N1
\u7|Qt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|Qt~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|Qt\(3));

-- Location: LCCOMB_X75_Y43_N14
\u7|Qt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|Qt~1_combout\ = (\u7|Add0~6_combout\ & ((\u7|Qt\(3)) # ((!\u7|Equal0~4_combout\) # (!\u7|Qt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Add0~6_combout\,
	datab => \u7|Qt\(3),
	datac => \u7|Qt\(4),
	datad => \u7|Equal0~4_combout\,
	combout => \u7|Qt~1_combout\);

-- Location: FF_X75_Y43_N15
\u7|Qt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|Qt~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|Qt\(4));

-- Location: LCCOMB_X75_Y43_N2
\u7|temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u7|temp~0_combout\ = \u7|temp~q\ $ (((\u7|Qt\(4) & (!\u7|Qt\(3) & \u7|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Qt\(4),
	datab => \u7|Qt\(3),
	datac => \u7|temp~q\,
	datad => \u7|Equal0~4_combout\,
	combout => \u7|temp~0_combout\);

-- Location: FF_X75_Y43_N3
\u7|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \u7|temp~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp~q\);

-- Location: IOIBUF_X56_Y54_N1
\ball_speed[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ball_speed(1),
	o => \ball_speed[1]~input_o\);

-- Location: LCCOMB_X71_Y43_N0
\u8|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~1_cout\ = CARRY((\u3|Qt\(0) & \u3|Qt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(0),
	datab => \u3|Qt\(1),
	datad => VCC,
	cout => \u8|Add0~1_cout\);

-- Location: LCCOMB_X71_Y43_N2
\u8|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~3_cout\ = CARRY((!\u8|Add0~1_cout\) # (!\u6|Qt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Qt\(2),
	datad => VCC,
	cin => \u8|Add0~1_cout\,
	cout => \u8|Add0~3_cout\);

-- Location: LCCOMB_X71_Y43_N4
\u8|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~4_combout\ = (\u8|Qt\(3) & (\u8|Add0~3_cout\ $ (GND))) # (!\u8|Qt\(3) & (!\u8|Add0~3_cout\ & VCC))
-- \u8|Add0~5\ = CARRY((\u8|Qt\(3) & !\u8|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Qt\(3),
	datad => VCC,
	cin => \u8|Add0~3_cout\,
	combout => \u8|Add0~4_combout\,
	cout => \u8|Add0~5\);

-- Location: LCCOMB_X71_Y43_N6
\u8|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~6_combout\ = (\u8|Qt\(4) & (!\u8|Add0~5\)) # (!\u8|Qt\(4) & ((\u8|Add0~5\) # (GND)))
-- \u8|Add0~7\ = CARRY((!\u8|Add0~5\) # (!\u8|Qt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Qt\(4),
	datad => VCC,
	cin => \u8|Add0~5\,
	combout => \u8|Add0~6_combout\,
	cout => \u8|Add0~7\);

-- Location: FF_X71_Y43_N7
\u8|Qt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|Add0~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|Qt\(4));

-- Location: LCCOMB_X71_Y43_N8
\u8|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~8_combout\ = (\u8|Qt\(5) & (\u8|Add0~7\ $ (GND))) # (!\u8|Qt\(5) & (!\u8|Add0~7\ & VCC))
-- \u8|Add0~9\ = CARRY((\u8|Qt\(5) & !\u8|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|Qt\(5),
	datad => VCC,
	cin => \u8|Add0~7\,
	combout => \u8|Add0~8_combout\,
	cout => \u8|Add0~9\);

-- Location: FF_X71_Y43_N9
\u8|Qt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|Add0~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|Qt\(5));

-- Location: LCCOMB_X71_Y43_N10
\u8|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~10_combout\ = (\u8|Qt\(6) & (!\u8|Add0~9\)) # (!\u8|Qt\(6) & ((\u8|Add0~9\) # (GND)))
-- \u8|Add0~11\ = CARRY((!\u8|Add0~9\) # (!\u8|Qt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Qt\(6),
	datad => VCC,
	cin => \u8|Add0~9\,
	combout => \u8|Add0~10_combout\,
	cout => \u8|Add0~11\);

-- Location: LCCOMB_X72_Y43_N30
\u8|Qt~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Qt~6_combout\ = (\u8|Add0~10_combout\ & ((\u8|Qt\(3)) # (!\u8|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~4_combout\,
	datac => \u8|Qt\(3),
	datad => \u8|Add0~10_combout\,
	combout => \u8|Qt~6_combout\);

-- Location: FF_X72_Y43_N31
\u8|Qt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|Qt~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|Qt\(6));

-- Location: LCCOMB_X71_Y43_N12
\u8|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~12_combout\ = (\u8|Qt\(7) & (\u8|Add0~11\ $ (GND))) # (!\u8|Qt\(7) & (!\u8|Add0~11\ & VCC))
-- \u8|Add0~13\ = CARRY((\u8|Qt\(7) & !\u8|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Qt\(7),
	datad => VCC,
	cin => \u8|Add0~11\,
	combout => \u8|Add0~12_combout\,
	cout => \u8|Add0~13\);

-- Location: FF_X71_Y43_N13
\u8|Qt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|Add0~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|Qt\(7));

-- Location: LCCOMB_X71_Y43_N14
\u8|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~14_combout\ = (\u8|Qt\(8) & (!\u8|Add0~13\)) # (!\u8|Qt\(8) & ((\u8|Add0~13\) # (GND)))
-- \u8|Add0~15\ = CARRY((!\u8|Add0~13\) # (!\u8|Qt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|Qt\(8),
	datad => VCC,
	cin => \u8|Add0~13\,
	combout => \u8|Add0~14_combout\,
	cout => \u8|Add0~15\);

-- Location: FF_X71_Y43_N15
\u8|Qt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|Add0~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|Qt\(8));

-- Location: LCCOMB_X71_Y43_N16
\u8|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~16_combout\ = (\u8|Qt\(9) & (\u8|Add0~15\ $ (GND))) # (!\u8|Qt\(9) & (!\u8|Add0~15\ & VCC))
-- \u8|Add0~17\ = CARRY((\u8|Qt\(9) & !\u8|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|Qt\(9),
	datad => VCC,
	cin => \u8|Add0~15\,
	combout => \u8|Add0~16_combout\,
	cout => \u8|Add0~17\);

-- Location: FF_X71_Y43_N17
\u8|Qt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|Add0~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|Qt\(9));

-- Location: LCCOMB_X71_Y43_N18
\u8|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~18_combout\ = (\u8|Qt\(10) & (!\u8|Add0~17\)) # (!\u8|Qt\(10) & ((\u8|Add0~17\) # (GND)))
-- \u8|Add0~19\ = CARRY((!\u8|Add0~17\) # (!\u8|Qt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|Qt\(10),
	datad => VCC,
	cin => \u8|Add0~17\,
	combout => \u8|Add0~18_combout\,
	cout => \u8|Add0~19\);

-- Location: FF_X71_Y43_N19
\u8|Qt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|Add0~18_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|Qt\(10));

-- Location: LCCOMB_X71_Y43_N20
\u8|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~20_combout\ = (\u8|Qt\(11) & (\u8|Add0~19\ $ (GND))) # (!\u8|Qt\(11) & (!\u8|Add0~19\ & VCC))
-- \u8|Add0~21\ = CARRY((\u8|Qt\(11) & !\u8|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Qt\(11),
	datad => VCC,
	cin => \u8|Add0~19\,
	combout => \u8|Add0~20_combout\,
	cout => \u8|Add0~21\);

-- Location: LCCOMB_X72_Y43_N2
\u8|Qt~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Qt~5_combout\ = (\u8|Add0~20_combout\ & ((\u8|Qt\(3)) # (!\u8|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~4_combout\,
	datac => \u8|Qt\(3),
	datad => \u8|Add0~20_combout\,
	combout => \u8|Qt~5_combout\);

-- Location: FF_X72_Y43_N3
\u8|Qt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|Qt~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|Qt\(11));

-- Location: LCCOMB_X71_Y43_N22
\u8|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~22_combout\ = (\u8|Qt\(12) & (!\u8|Add0~21\)) # (!\u8|Qt\(12) & ((\u8|Add0~21\) # (GND)))
-- \u8|Add0~23\ = CARRY((!\u8|Add0~21\) # (!\u8|Qt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Qt\(12),
	datad => VCC,
	cin => \u8|Add0~21\,
	combout => \u8|Add0~22_combout\,
	cout => \u8|Add0~23\);

-- Location: FF_X71_Y43_N23
\u8|Qt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|Add0~22_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|Qt\(12));

-- Location: LCCOMB_X71_Y43_N24
\u8|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~24_combout\ = (\u8|Qt\(13) & (\u8|Add0~23\ $ (GND))) # (!\u8|Qt\(13) & (!\u8|Add0~23\ & VCC))
-- \u8|Add0~25\ = CARRY((\u8|Qt\(13) & !\u8|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|Qt\(13),
	datad => VCC,
	cin => \u8|Add0~23\,
	combout => \u8|Add0~24_combout\,
	cout => \u8|Add0~25\);

-- Location: LCCOMB_X72_Y43_N14
\u8|Qt~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Qt~4_combout\ = (\u8|Add0~24_combout\ & ((\u8|Qt\(3)) # (!\u8|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~4_combout\,
	datac => \u8|Qt\(3),
	datad => \u8|Add0~24_combout\,
	combout => \u8|Qt~4_combout\);

-- Location: FF_X72_Y43_N15
\u8|Qt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|Qt~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|Qt\(13));

-- Location: LCCOMB_X71_Y43_N26
\u8|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~26_combout\ = (\u8|Qt\(14) & (!\u8|Add0~25\)) # (!\u8|Qt\(14) & ((\u8|Add0~25\) # (GND)))
-- \u8|Add0~27\ = CARRY((!\u8|Add0~25\) # (!\u8|Qt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|Qt\(14),
	datad => VCC,
	cin => \u8|Add0~25\,
	combout => \u8|Add0~26_combout\,
	cout => \u8|Add0~27\);

-- Location: LCCOMB_X72_Y43_N26
\u8|Qt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Qt~3_combout\ = (\u8|Add0~26_combout\ & ((\u8|Qt\(3)) # (!\u8|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u8|Qt\(3),
	datac => \u8|Add0~26_combout\,
	datad => \u8|Equal0~4_combout\,
	combout => \u8|Qt~3_combout\);

-- Location: FF_X72_Y43_N27
\u8|Qt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|Qt~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|Qt\(14));

-- Location: LCCOMB_X71_Y43_N28
\u8|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~28_combout\ = (\u8|Qt\(15) & (\u8|Add0~27\ $ (GND))) # (!\u8|Qt\(15) & (!\u8|Add0~27\ & VCC))
-- \u8|Add0~29\ = CARRY((\u8|Qt\(15) & !\u8|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Qt\(15),
	datad => VCC,
	cin => \u8|Add0~27\,
	combout => \u8|Add0~28_combout\,
	cout => \u8|Add0~29\);

-- Location: LCCOMB_X72_Y43_N20
\u8|Qt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Qt~2_combout\ = (\u8|Add0~28_combout\ & ((\u8|Qt\(3)) # (!\u8|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~4_combout\,
	datac => \u8|Qt\(3),
	datad => \u8|Add0~28_combout\,
	combout => \u8|Qt~2_combout\);

-- Location: FF_X72_Y43_N21
\u8|Qt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|Qt~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|Qt\(15));

-- Location: LCCOMB_X72_Y43_N6
\u8|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Equal0~1_combout\ = (\u8|Qt\(14) & (\u8|Qt\(15) & (\u8|Qt\(13) & !\u8|Qt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Qt\(14),
	datab => \u8|Qt\(15),
	datac => \u8|Qt\(13),
	datad => \u8|Qt\(12),
	combout => \u8|Equal0~1_combout\);

-- Location: LCCOMB_X72_Y43_N16
\u8|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Equal0~2_combout\ = (!\u8|Qt\(8) & (!\u8|Qt\(10) & (!\u8|Qt\(9) & \u8|Qt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Qt\(8),
	datab => \u8|Qt\(10),
	datac => \u8|Qt\(9),
	datad => \u8|Qt\(11),
	combout => \u8|Equal0~2_combout\);

-- Location: LCCOMB_X72_Y43_N8
\u8|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Equal0~3_combout\ = (!\u8|Qt\(5) & (!\u8|Qt\(4) & (\u8|Qt\(6) & !\u8|Qt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Qt\(5),
	datab => \u8|Qt\(4),
	datac => \u8|Qt\(6),
	datad => \u8|Qt\(7),
	combout => \u8|Equal0~3_combout\);

-- Location: LCCOMB_X71_Y43_N30
\u8|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Add0~30_combout\ = \u8|Add0~29\ $ (\u8|Qt\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u8|Qt\(16),
	cin => \u8|Add0~29\,
	combout => \u8|Add0~30_combout\);

-- Location: LCCOMB_X72_Y43_N28
\u8|Qt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Qt~1_combout\ = (\u8|Add0~30_combout\ & ((\u8|Qt\(3)) # (!\u8|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~4_combout\,
	datac => \u8|Qt\(3),
	datad => \u8|Add0~30_combout\,
	combout => \u8|Qt~1_combout\);

-- Location: FF_X72_Y43_N29
\u8|Qt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|Qt~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|Qt\(16));

-- Location: LCCOMB_X72_Y43_N18
\u8|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Equal0~0_combout\ = (\u6|Qt\(2) & (\u8|Qt\(16) & (\u3|Qt\(0) & \u3|Qt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Qt\(2),
	datab => \u8|Qt\(16),
	datac => \u3|Qt\(0),
	datad => \u3|Qt\(1),
	combout => \u8|Equal0~0_combout\);

-- Location: LCCOMB_X72_Y43_N10
\u8|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Equal0~4_combout\ = (\u8|Equal0~1_combout\ & (\u8|Equal0~2_combout\ & (\u8|Equal0~3_combout\ & \u8|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~1_combout\,
	datab => \u8|Equal0~2_combout\,
	datac => \u8|Equal0~3_combout\,
	datad => \u8|Equal0~0_combout\,
	combout => \u8|Equal0~4_combout\);

-- Location: LCCOMB_X72_Y43_N4
\u8|Qt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|Qt~0_combout\ = (\u8|Add0~4_combout\ & ((\u8|Qt\(3)) # (!\u8|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u8|Add0~4_combout\,
	datac => \u8|Qt\(3),
	datad => \u8|Equal0~4_combout\,
	combout => \u8|Qt~0_combout\);

-- Location: FF_X72_Y43_N5
\u8|Qt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|Qt~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|Qt\(3));

-- Location: LCCOMB_X72_Y43_N22
\u8|temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u8|temp~0_combout\ = \u8|temp~q\ $ (((!\u8|Qt\(3) & \u8|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u8|Qt\(3),
	datac => \u8|temp~q\,
	datad => \u8|Equal0~4_combout\,
	combout => \u8|temp~0_combout\);

-- Location: FF_X72_Y43_N23
\u8|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \u8|temp~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|temp~q\);

-- Location: LCCOMB_X74_Y43_N20
\u6|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Add0~4_combout\ = (\u6|Qt\(3) & (\u6|Add0~3\ $ (GND))) # (!\u6|Qt\(3) & (!\u6|Add0~3\ & VCC))
-- \u6|Add0~5\ = CARRY((\u6|Qt\(3) & !\u6|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|Qt\(3),
	datad => VCC,
	cin => \u6|Add0~3\,
	combout => \u6|Add0~4_combout\,
	cout => \u6|Add0~5\);

-- Location: LCCOMB_X74_Y43_N22
\u6|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Add0~6_combout\ = (\u6|Qt\(4) & (!\u6|Add0~5\)) # (!\u6|Qt\(4) & ((\u6|Add0~5\) # (GND)))
-- \u6|Add0~7\ = CARRY((!\u6|Add0~5\) # (!\u6|Qt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Qt\(4),
	datad => VCC,
	cin => \u6|Add0~5\,
	combout => \u6|Add0~6_combout\,
	cout => \u6|Add0~7\);

-- Location: LCCOMB_X74_Y43_N24
\u6|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Add0~8_combout\ = (\u6|Qt\(5) & (\u6|Add0~7\ $ (GND))) # (!\u6|Qt\(5) & (!\u6|Add0~7\ & VCC))
-- \u6|Add0~9\ = CARRY((\u6|Qt\(5) & !\u6|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|Qt\(5),
	datad => VCC,
	cin => \u6|Add0~7\,
	combout => \u6|Add0~8_combout\,
	cout => \u6|Add0~9\);

-- Location: LCCOMB_X74_Y43_N14
\u6|Qt~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Qt~7_combout\ = (\u6|Add0~8_combout\ & (((\u6|Qt\(3)) # (\u6|Qt\(4))) # (!\u6|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Equal0~4_combout\,
	datab => \u6|Qt\(3),
	datac => \u6|Qt\(4),
	datad => \u6|Add0~8_combout\,
	combout => \u6|Qt~7_combout\);

-- Location: FF_X74_Y43_N15
\u6|Qt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|Qt~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|Qt\(5));

-- Location: LCCOMB_X74_Y43_N26
\u6|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Add0~10_combout\ = (\u6|Qt\(6) & (!\u6|Add0~9\)) # (!\u6|Qt\(6) & ((\u6|Add0~9\) # (GND)))
-- \u6|Add0~11\ = CARRY((!\u6|Add0~9\) # (!\u6|Qt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Qt\(6),
	datad => VCC,
	cin => \u6|Add0~9\,
	combout => \u6|Add0~10_combout\,
	cout => \u6|Add0~11\);

-- Location: FF_X74_Y43_N27
\u6|Qt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|Add0~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|Qt\(6));

-- Location: LCCOMB_X74_Y43_N28
\u6|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Add0~12_combout\ = (\u6|Qt\(7) & (\u6|Add0~11\ $ (GND))) # (!\u6|Qt\(7) & (!\u6|Add0~11\ & VCC))
-- \u6|Add0~13\ = CARRY((\u6|Qt\(7) & !\u6|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Qt\(7),
	datad => VCC,
	cin => \u6|Add0~11\,
	combout => \u6|Add0~12_combout\,
	cout => \u6|Add0~13\);

-- Location: LCCOMB_X74_Y43_N10
\u6|Qt~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Qt~6_combout\ = (\u6|Add0~12_combout\ & (((\u6|Qt\(3)) # (\u6|Qt\(4))) # (!\u6|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Equal0~4_combout\,
	datab => \u6|Qt\(3),
	datac => \u6|Qt\(4),
	datad => \u6|Add0~12_combout\,
	combout => \u6|Qt~6_combout\);

-- Location: FF_X74_Y43_N11
\u6|Qt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|Qt~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|Qt\(7));

-- Location: LCCOMB_X74_Y43_N30
\u6|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Add0~14_combout\ = (\u6|Qt\(8) & (!\u6|Add0~13\)) # (!\u6|Qt\(8) & ((\u6|Add0~13\) # (GND)))
-- \u6|Add0~15\ = CARRY((!\u6|Add0~13\) # (!\u6|Qt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Qt\(8),
	datad => VCC,
	cin => \u6|Add0~13\,
	combout => \u6|Add0~14_combout\,
	cout => \u6|Add0~15\);

-- Location: FF_X74_Y43_N31
\u6|Qt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|Add0~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|Qt\(8));

-- Location: LCCOMB_X74_Y42_N0
\u6|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Add0~16_combout\ = (\u6|Qt\(9) & (\u6|Add0~15\ $ (GND))) # (!\u6|Qt\(9) & (!\u6|Add0~15\ & VCC))
-- \u6|Add0~17\ = CARRY((\u6|Qt\(9) & !\u6|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|Qt\(9),
	datad => VCC,
	cin => \u6|Add0~15\,
	combout => \u6|Add0~16_combout\,
	cout => \u6|Add0~17\);

-- Location: LCCOMB_X74_Y42_N28
\u6|Qt~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Qt~5_combout\ = (\u6|Add0~16_combout\ & ((\u6|Qt\(3)) # ((\u6|Qt\(4)) # (!\u6|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Qt\(3),
	datab => \u6|Qt\(4),
	datac => \u6|Equal0~4_combout\,
	datad => \u6|Add0~16_combout\,
	combout => \u6|Qt~5_combout\);

-- Location: FF_X74_Y42_N29
\u6|Qt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|Qt~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|Qt\(9));

-- Location: LCCOMB_X74_Y42_N2
\u6|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Add0~18_combout\ = (\u6|Qt\(10) & (!\u6|Add0~17\)) # (!\u6|Qt\(10) & ((\u6|Add0~17\) # (GND)))
-- \u6|Add0~19\ = CARRY((!\u6|Add0~17\) # (!\u6|Qt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|Qt\(10),
	datad => VCC,
	cin => \u6|Add0~17\,
	combout => \u6|Add0~18_combout\,
	cout => \u6|Add0~19\);

-- Location: FF_X74_Y42_N3
\u6|Qt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|Add0~18_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|Qt\(10));

-- Location: LCCOMB_X74_Y42_N4
\u6|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Add0~20_combout\ = (\u6|Qt\(11) & (\u6|Add0~19\ $ (GND))) # (!\u6|Qt\(11) & (!\u6|Add0~19\ & VCC))
-- \u6|Add0~21\ = CARRY((\u6|Qt\(11) & !\u6|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|Qt\(11),
	datad => VCC,
	cin => \u6|Add0~19\,
	combout => \u6|Add0~20_combout\,
	cout => \u6|Add0~21\);

-- Location: FF_X74_Y42_N5
\u6|Qt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|Add0~20_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|Qt\(11));

-- Location: LCCOMB_X74_Y42_N6
\u6|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Add0~22_combout\ = (\u6|Qt\(12) & (!\u6|Add0~21\)) # (!\u6|Qt\(12) & ((\u6|Add0~21\) # (GND)))
-- \u6|Add0~23\ = CARRY((!\u6|Add0~21\) # (!\u6|Qt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Qt\(12),
	datad => VCC,
	cin => \u6|Add0~21\,
	combout => \u6|Add0~22_combout\,
	cout => \u6|Add0~23\);

-- Location: LCCOMB_X74_Y42_N30
\u6|Qt~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Qt~4_combout\ = (\u6|Add0~22_combout\ & ((\u6|Qt\(3)) # ((\u6|Qt\(4)) # (!\u6|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Qt\(3),
	datab => \u6|Qt\(4),
	datac => \u6|Equal0~4_combout\,
	datad => \u6|Add0~22_combout\,
	combout => \u6|Qt~4_combout\);

-- Location: FF_X74_Y42_N31
\u6|Qt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|Qt~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|Qt\(12));

-- Location: LCCOMB_X74_Y42_N8
\u6|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Add0~24_combout\ = (\u6|Qt\(13) & (\u6|Add0~23\ $ (GND))) # (!\u6|Qt\(13) & (!\u6|Add0~23\ & VCC))
-- \u6|Add0~25\ = CARRY((\u6|Qt\(13) & !\u6|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|Qt\(13),
	datad => VCC,
	cin => \u6|Add0~23\,
	combout => \u6|Add0~24_combout\,
	cout => \u6|Add0~25\);

-- Location: FF_X74_Y42_N9
\u6|Qt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|Add0~24_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|Qt\(13));

-- Location: LCCOMB_X74_Y42_N10
\u6|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Add0~26_combout\ = (\u6|Qt\(14) & (!\u6|Add0~25\)) # (!\u6|Qt\(14) & ((\u6|Add0~25\) # (GND)))
-- \u6|Add0~27\ = CARRY((!\u6|Add0~25\) # (!\u6|Qt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|Qt\(14),
	datad => VCC,
	cin => \u6|Add0~25\,
	combout => \u6|Add0~26_combout\,
	cout => \u6|Add0~27\);

-- Location: LCCOMB_X74_Y42_N18
\u6|Qt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Qt~3_combout\ = (\u6|Add0~26_combout\ & ((\u6|Qt\(3)) # ((\u6|Qt\(4)) # (!\u6|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Qt\(3),
	datab => \u6|Qt\(4),
	datac => \u6|Equal0~4_combout\,
	datad => \u6|Add0~26_combout\,
	combout => \u6|Qt~3_combout\);

-- Location: FF_X74_Y42_N19
\u6|Qt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|Qt~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|Qt\(14));

-- Location: LCCOMB_X74_Y42_N12
\u6|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Add0~28_combout\ = (\u6|Qt\(15) & (\u6|Add0~27\ $ (GND))) # (!\u6|Qt\(15) & (!\u6|Add0~27\ & VCC))
-- \u6|Add0~29\ = CARRY((\u6|Qt\(15) & !\u6|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|Qt\(15),
	datad => VCC,
	cin => \u6|Add0~27\,
	combout => \u6|Add0~28_combout\,
	cout => \u6|Add0~29\);

-- Location: LCCOMB_X74_Y42_N20
\u6|Qt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Qt~2_combout\ = (\u6|Add0~28_combout\ & ((\u6|Qt\(3)) # ((\u6|Qt\(4)) # (!\u6|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Qt\(3),
	datab => \u6|Qt\(4),
	datac => \u6|Equal0~4_combout\,
	datad => \u6|Add0~28_combout\,
	combout => \u6|Qt~2_combout\);

-- Location: FF_X74_Y42_N21
\u6|Qt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|Qt~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|Qt\(15));

-- Location: LCCOMB_X74_Y42_N14
\u6|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Add0~30_combout\ = (\u6|Qt\(16) & (!\u6|Add0~29\)) # (!\u6|Qt\(16) & ((\u6|Add0~29\) # (GND)))
-- \u6|Add0~31\ = CARRY((!\u6|Add0~29\) # (!\u6|Qt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|Qt\(16),
	datad => VCC,
	cin => \u6|Add0~29\,
	combout => \u6|Add0~30_combout\,
	cout => \u6|Add0~31\);

-- Location: FF_X74_Y42_N15
\u6|Qt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|Add0~30_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|Qt\(16));

-- Location: LCCOMB_X74_Y42_N16
\u6|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Add0~32_combout\ = \u6|Add0~31\ $ (!\u6|Qt\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u6|Qt\(17),
	cin => \u6|Add0~31\,
	combout => \u6|Add0~32_combout\);

-- Location: LCCOMB_X74_Y42_N26
\u6|Qt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Qt~1_combout\ = (\u6|Add0~32_combout\ & ((\u6|Qt\(3)) # ((\u6|Qt\(4)) # (!\u6|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Qt\(3),
	datab => \u6|Qt\(4),
	datac => \u6|Equal0~4_combout\,
	datad => \u6|Add0~32_combout\,
	combout => \u6|Qt~1_combout\);

-- Location: FF_X74_Y42_N27
\u6|Qt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|Qt~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|Qt\(17));

-- Location: LCCOMB_X74_Y43_N6
\u6|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Equal0~0_combout\ = (\u3|Qt\(0) & (\u6|Qt\(2) & (\u3|Qt\(1) & \u6|Qt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(0),
	datab => \u6|Qt\(2),
	datac => \u3|Qt\(1),
	datad => \u6|Qt\(17),
	combout => \u6|Equal0~0_combout\);

-- Location: LCCOMB_X74_Y43_N0
\u6|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Equal0~3_combout\ = (!\u6|Qt\(8) & (\u6|Qt\(5) & (!\u6|Qt\(6) & \u6|Qt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Qt\(8),
	datab => \u6|Qt\(5),
	datac => \u6|Qt\(6),
	datad => \u6|Qt\(7),
	combout => \u6|Equal0~3_combout\);

-- Location: LCCOMB_X74_Y42_N24
\u6|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Equal0~1_combout\ = (\u6|Qt\(15) & (!\u6|Qt\(16) & (!\u6|Qt\(13) & \u6|Qt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Qt\(15),
	datab => \u6|Qt\(16),
	datac => \u6|Qt\(13),
	datad => \u6|Qt\(14),
	combout => \u6|Equal0~1_combout\);

-- Location: LCCOMB_X74_Y42_N22
\u6|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Equal0~2_combout\ = (\u6|Qt\(12) & (!\u6|Qt\(10) & (!\u6|Qt\(11) & \u6|Qt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Qt\(12),
	datab => \u6|Qt\(10),
	datac => \u6|Qt\(11),
	datad => \u6|Qt\(9),
	combout => \u6|Equal0~2_combout\);

-- Location: LCCOMB_X74_Y43_N12
\u6|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Equal0~4_combout\ = (\u6|Equal0~0_combout\ & (\u6|Equal0~3_combout\ & (\u6|Equal0~1_combout\ & \u6|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Equal0~0_combout\,
	datab => \u6|Equal0~3_combout\,
	datac => \u6|Equal0~1_combout\,
	datad => \u6|Equal0~2_combout\,
	combout => \u6|Equal0~4_combout\);

-- Location: LCCOMB_X74_Y43_N2
\u6|Qt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|Qt~0_combout\ = (\u6|Add0~4_combout\ & ((\u6|Qt\(4)) # ((\u6|Qt\(3)) # (!\u6|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Qt\(4),
	datab => \u6|Add0~4_combout\,
	datac => \u6|Qt\(3),
	datad => \u6|Equal0~4_combout\,
	combout => \u6|Qt~0_combout\);

-- Location: FF_X74_Y43_N3
\u6|Qt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|Qt~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|Qt\(3));

-- Location: FF_X74_Y43_N23
\u6|Qt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|Add0~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|Qt\(4));

-- Location: LCCOMB_X74_Y43_N4
\u6|temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u6|temp~0_combout\ = \u6|temp~q\ $ (((!\u6|Qt\(4) & (!\u6|Qt\(3) & \u6|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Qt\(4),
	datab => \u6|Qt\(3),
	datac => \u6|temp~q\,
	datad => \u6|Equal0~4_combout\,
	combout => \u6|temp~0_combout\);

-- Location: FF_X74_Y43_N5
\u6|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \u6|temp~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp~q\);

-- Location: LCCOMB_X70_Y42_N22
\u5|temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u5|temp~0_combout\ = !\u5|temp~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|temp~q\,
	combout => \u5|temp~0_combout\);

-- Location: LCCOMB_X70_Y43_N18
\u3|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Add0~4_combout\ = (\u3|Qt\(2) & (\u3|Add0~3\ $ (GND))) # (!\u3|Qt\(2) & (!\u3|Add0~3\ & VCC))
-- \u3|Add0~5\ = CARRY((\u3|Qt\(2) & !\u3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|Qt\(2),
	datad => VCC,
	cin => \u3|Add0~3\,
	combout => \u3|Add0~4_combout\,
	cout => \u3|Add0~5\);

-- Location: LCCOMB_X70_Y43_N20
\u3|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Add0~6_combout\ = (\u3|Qt\(3) & (!\u3|Add0~5\)) # (!\u3|Qt\(3) & ((\u3|Add0~5\) # (GND)))
-- \u3|Add0~7\ = CARRY((!\u3|Add0~5\) # (!\u3|Qt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|Qt\(3),
	datad => VCC,
	cin => \u3|Add0~5\,
	combout => \u3|Add0~6_combout\,
	cout => \u3|Add0~7\);

-- Location: LCCOMB_X70_Y43_N22
\u3|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Add0~8_combout\ = (\u3|Qt\(4) & (\u3|Add0~7\ $ (GND))) # (!\u3|Qt\(4) & (!\u3|Add0~7\ & VCC))
-- \u3|Add0~9\ = CARRY((\u3|Qt\(4) & !\u3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(4),
	datad => VCC,
	cin => \u3|Add0~7\,
	combout => \u3|Add0~8_combout\,
	cout => \u3|Add0~9\);

-- Location: FF_X70_Y43_N23
\u3|Qt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|Add0~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|Qt\(4));

-- Location: LCCOMB_X70_Y43_N24
\u3|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Add0~10_combout\ = (\u3|Qt\(5) & (!\u3|Add0~9\)) # (!\u3|Qt\(5) & ((\u3|Add0~9\) # (GND)))
-- \u3|Add0~11\ = CARRY((!\u3|Add0~9\) # (!\u3|Qt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|Qt\(5),
	datad => VCC,
	cin => \u3|Add0~9\,
	combout => \u3|Add0~10_combout\,
	cout => \u3|Add0~11\);

-- Location: FF_X70_Y43_N25
\u3|Qt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|Add0~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|Qt\(5));

-- Location: LCCOMB_X70_Y43_N26
\u3|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Add0~12_combout\ = (\u3|Qt\(6) & (\u3|Add0~11\ $ (GND))) # (!\u3|Qt\(6) & (!\u3|Add0~11\ & VCC))
-- \u3|Add0~13\ = CARRY((\u3|Qt\(6) & !\u3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(6),
	datad => VCC,
	cin => \u3|Add0~11\,
	combout => \u3|Add0~12_combout\,
	cout => \u3|Add0~13\);

-- Location: FF_X70_Y43_N27
\u3|Qt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|Add0~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|Qt\(6));

-- Location: LCCOMB_X70_Y43_N28
\u3|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Add0~14_combout\ = (\u3|Qt\(7) & (!\u3|Add0~13\)) # (!\u3|Qt\(7) & ((\u3|Add0~13\) # (GND)))
-- \u3|Add0~15\ = CARRY((!\u3|Add0~13\) # (!\u3|Qt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(7),
	datad => VCC,
	cin => \u3|Add0~13\,
	combout => \u3|Add0~14_combout\,
	cout => \u3|Add0~15\);

-- Location: LCCOMB_X70_Y43_N12
\u3|Qt~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Qt~6_combout\ = (\u3|Add0~14_combout\ & (((\u3|Qt\(2)) # (!\u3|Equal0~4_combout\)) # (!\u3|Qt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(3),
	datab => \u3|Add0~14_combout\,
	datac => \u3|Equal0~4_combout\,
	datad => \u3|Qt\(2),
	combout => \u3|Qt~6_combout\);

-- Location: FF_X70_Y43_N13
\u3|Qt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|Qt~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|Qt\(7));

-- Location: LCCOMB_X70_Y43_N30
\u3|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Add0~16_combout\ = (\u3|Qt\(8) & (\u3|Add0~15\ $ (GND))) # (!\u3|Qt\(8) & (!\u3|Add0~15\ & VCC))
-- \u3|Add0~17\ = CARRY((\u3|Qt\(8) & !\u3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(8),
	datad => VCC,
	cin => \u3|Add0~15\,
	combout => \u3|Add0~16_combout\,
	cout => \u3|Add0~17\);

-- Location: FF_X70_Y43_N31
\u3|Qt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|Add0~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|Qt\(8));

-- Location: LCCOMB_X70_Y42_N0
\u3|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Add0~18_combout\ = (\u3|Qt\(9) & (!\u3|Add0~17\)) # (!\u3|Qt\(9) & ((\u3|Add0~17\) # (GND)))
-- \u3|Add0~19\ = CARRY((!\u3|Add0~17\) # (!\u3|Qt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|Qt\(9),
	datad => VCC,
	cin => \u3|Add0~17\,
	combout => \u3|Add0~18_combout\,
	cout => \u3|Add0~19\);

-- Location: LCCOMB_X70_Y42_N18
\u3|Qt~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Qt~5_combout\ = (\u3|Add0~18_combout\ & (((\u3|Qt\(2)) # (!\u3|Equal0~4_combout\)) # (!\u3|Qt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(3),
	datab => \u3|Equal0~4_combout\,
	datac => \u3|Qt\(2),
	datad => \u3|Add0~18_combout\,
	combout => \u3|Qt~5_combout\);

-- Location: FF_X70_Y42_N19
\u3|Qt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|Qt~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|Qt\(9));

-- Location: LCCOMB_X70_Y42_N2
\u3|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Add0~20_combout\ = (\u3|Qt\(10) & (\u3|Add0~19\ $ (GND))) # (!\u3|Qt\(10) & (!\u3|Add0~19\ & VCC))
-- \u3|Add0~21\ = CARRY((\u3|Qt\(10) & !\u3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|Qt\(10),
	datad => VCC,
	cin => \u3|Add0~19\,
	combout => \u3|Add0~20_combout\,
	cout => \u3|Add0~21\);

-- Location: FF_X70_Y42_N3
\u3|Qt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|Add0~20_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|Qt\(10));

-- Location: LCCOMB_X70_Y42_N4
\u3|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Add0~22_combout\ = (\u3|Qt\(11) & (!\u3|Add0~21\)) # (!\u3|Qt\(11) & ((\u3|Add0~21\) # (GND)))
-- \u3|Add0~23\ = CARRY((!\u3|Add0~21\) # (!\u3|Qt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(11),
	datad => VCC,
	cin => \u3|Add0~21\,
	combout => \u3|Add0~22_combout\,
	cout => \u3|Add0~23\);

-- Location: LCCOMB_X70_Y42_N30
\u3|Qt~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Qt~4_combout\ = (\u3|Add0~22_combout\ & ((\u3|Qt\(2)) # ((!\u3|Equal0~4_combout\) # (!\u3|Qt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(2),
	datab => \u3|Qt\(3),
	datac => \u3|Add0~22_combout\,
	datad => \u3|Equal0~4_combout\,
	combout => \u3|Qt~4_combout\);

-- Location: FF_X70_Y42_N31
\u3|Qt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|Qt~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|Qt\(11));

-- Location: LCCOMB_X70_Y42_N26
\u3|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Equal0~2_combout\ = (\u3|Qt\(11) & (\u3|Qt\(9) & (!\u3|Qt\(8) & !\u3|Qt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(11),
	datab => \u3|Qt\(9),
	datac => \u3|Qt\(8),
	datad => \u3|Qt\(10),
	combout => \u3|Equal0~2_combout\);

-- Location: LCCOMB_X70_Y42_N6
\u3|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Add0~24_combout\ = (\u3|Qt\(12) & (\u3|Add0~23\ $ (GND))) # (!\u3|Qt\(12) & (!\u3|Add0~23\ & VCC))
-- \u3|Add0~25\ = CARRY((\u3|Qt\(12) & !\u3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(12),
	datad => VCC,
	cin => \u3|Add0~23\,
	combout => \u3|Add0~24_combout\,
	cout => \u3|Add0~25\);

-- Location: FF_X70_Y42_N7
\u3|Qt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|Add0~24_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|Qt\(12));

-- Location: LCCOMB_X70_Y42_N8
\u3|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Add0~26_combout\ = (\u3|Qt\(13) & (!\u3|Add0~25\)) # (!\u3|Qt\(13) & ((\u3|Add0~25\) # (GND)))
-- \u3|Add0~27\ = CARRY((!\u3|Add0~25\) # (!\u3|Qt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(13),
	datad => VCC,
	cin => \u3|Add0~25\,
	combout => \u3|Add0~26_combout\,
	cout => \u3|Add0~27\);

-- Location: LCCOMB_X71_Y42_N6
\u3|Qt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Qt~3_combout\ = (\u3|Add0~26_combout\ & (((\u3|Qt\(2)) # (!\u3|Equal0~4_combout\)) # (!\u3|Qt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(3),
	datab => \u3|Equal0~4_combout\,
	datac => \u3|Qt\(2),
	datad => \u3|Add0~26_combout\,
	combout => \u3|Qt~3_combout\);

-- Location: FF_X71_Y42_N7
\u3|Qt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|Qt~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|Qt\(13));

-- Location: LCCOMB_X70_Y42_N10
\u3|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Add0~28_combout\ = (\u3|Qt\(14) & (\u3|Add0~27\ $ (GND))) # (!\u3|Qt\(14) & (!\u3|Add0~27\ & VCC))
-- \u3|Add0~29\ = CARRY((\u3|Qt\(14) & !\u3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(14),
	datad => VCC,
	cin => \u3|Add0~27\,
	combout => \u3|Add0~28_combout\,
	cout => \u3|Add0~29\);

-- Location: FF_X70_Y42_N11
\u3|Qt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|Add0~28_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|Qt\(14));

-- Location: LCCOMB_X70_Y42_N12
\u3|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Add0~30_combout\ = (\u3|Qt\(15) & (!\u3|Add0~29\)) # (!\u3|Qt\(15) & ((\u3|Add0~29\) # (GND)))
-- \u3|Add0~31\ = CARRY((!\u3|Add0~29\) # (!\u3|Qt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(15),
	datad => VCC,
	cin => \u3|Add0~29\,
	combout => \u3|Add0~30_combout\,
	cout => \u3|Add0~31\);

-- Location: FF_X70_Y42_N13
\u3|Qt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|Add0~30_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|Qt\(15));

-- Location: LCCOMB_X70_Y42_N28
\u3|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Equal0~1_combout\ = (!\u3|Qt\(12) & (!\u3|Qt\(15) & (!\u3|Qt\(14) & \u3|Qt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(12),
	datab => \u3|Qt\(15),
	datac => \u3|Qt\(14),
	datad => \u3|Qt\(13),
	combout => \u3|Equal0~1_combout\);

-- Location: LCCOMB_X70_Y42_N14
\u3|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Add0~32_combout\ = (\u3|Qt\(16) & (\u3|Add0~31\ $ (GND))) # (!\u3|Qt\(16) & (!\u3|Add0~31\ & VCC))
-- \u3|Add0~33\ = CARRY((\u3|Qt\(16) & !\u3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(16),
	datad => VCC,
	cin => \u3|Add0~31\,
	combout => \u3|Add0~32_combout\,
	cout => \u3|Add0~33\);

-- Location: LCCOMB_X70_Y43_N4
\u3|Qt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Qt~2_combout\ = (\u3|Add0~32_combout\ & (((\u3|Qt\(2)) # (!\u3|Equal0~4_combout\)) # (!\u3|Qt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(3),
	datab => \u3|Qt\(2),
	datac => \u3|Equal0~4_combout\,
	datad => \u3|Add0~32_combout\,
	combout => \u3|Qt~2_combout\);

-- Location: FF_X70_Y43_N5
\u3|Qt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|Qt~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|Qt\(16));

-- Location: LCCOMB_X70_Y42_N16
\u3|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Add0~34_combout\ = \u3|Add0~33\ $ (\u3|Qt\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u3|Qt\(17),
	cin => \u3|Add0~33\,
	combout => \u3|Add0~34_combout\);

-- Location: LCCOMB_X70_Y43_N6
\u3|Qt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Qt~1_combout\ = (\u3|Add0~34_combout\ & (((\u3|Qt\(2)) # (!\u3|Equal0~4_combout\)) # (!\u3|Qt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(3),
	datab => \u3|Qt\(2),
	datac => \u3|Equal0~4_combout\,
	datad => \u3|Add0~34_combout\,
	combout => \u3|Qt~1_combout\);

-- Location: FF_X70_Y43_N7
\u3|Qt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|Qt~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|Qt\(17));

-- Location: LCCOMB_X70_Y43_N2
\u3|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Equal0~0_combout\ = (\u3|Qt\(17) & (\u3|Qt\(1) & (\u3|Qt\(16) & \u3|Qt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(17),
	datab => \u3|Qt\(1),
	datac => \u3|Qt\(16),
	datad => \u3|Qt\(0),
	combout => \u3|Equal0~0_combout\);

-- Location: LCCOMB_X70_Y43_N10
\u3|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Equal0~3_combout\ = (!\u3|Qt\(4) & (!\u3|Qt\(5) & (!\u3|Qt\(6) & \u3|Qt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(4),
	datab => \u3|Qt\(5),
	datac => \u3|Qt\(6),
	datad => \u3|Qt\(7),
	combout => \u3|Equal0~3_combout\);

-- Location: LCCOMB_X70_Y42_N20
\u3|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Equal0~4_combout\ = (\u3|Equal0~2_combout\ & (\u3|Equal0~1_combout\ & (\u3|Equal0~0_combout\ & \u3|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal0~2_combout\,
	datab => \u3|Equal0~1_combout\,
	datac => \u3|Equal0~0_combout\,
	datad => \u3|Equal0~3_combout\,
	combout => \u3|Equal0~4_combout\);

-- Location: LCCOMB_X70_Y43_N8
\u3|Qt~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Qt~7_combout\ = (\u3|Add0~4_combout\ & (((\u3|Qt\(2)) # (!\u3|Equal0~4_combout\)) # (!\u3|Qt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(3),
	datab => \u3|Equal0~4_combout\,
	datac => \u3|Qt\(2),
	datad => \u3|Add0~4_combout\,
	combout => \u3|Qt~7_combout\);

-- Location: FF_X70_Y43_N9
\u3|Qt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|Qt~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|Qt\(2));

-- Location: LCCOMB_X70_Y43_N0
\u3|Qt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Qt~0_combout\ = (\u3|Add0~6_combout\ & ((\u3|Qt\(2)) # ((!\u3|Qt\(3)) # (!\u3|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Qt\(2),
	datab => \u3|Equal0~4_combout\,
	datac => \u3|Qt\(3),
	datad => \u3|Add0~6_combout\,
	combout => \u3|Qt~0_combout\);

-- Location: FF_X70_Y43_N1
\u3|Qt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|Qt~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|Qt\(3));

-- Location: LCCOMB_X70_Y42_N24
\u3|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|Equal0~5_combout\ = (\u3|Qt\(3) & (!\u3|Qt\(2) & \u3|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|Qt\(3),
	datac => \u3|Qt\(2),
	datad => \u3|Equal0~4_combout\,
	combout => \u3|Equal0~5_combout\);

-- Location: FF_X70_Y42_N23
\u5|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \u5|temp~0_combout\,
	clrn => \reset~input_o\,
	ena => \u3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|temp~q\);

-- Location: IOIBUF_X58_Y54_N29
\ball_speed[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ball_speed(0),
	o => \ball_speed[0]~input_o\);

-- Location: LCCOMB_X72_Y43_N12
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\ball_speed[1]~input_o\ & (((\ball_speed[0]~input_o\)))) # (!\ball_speed[1]~input_o\ & ((\ball_speed[0]~input_o\ & (\u6|temp~q\)) # (!\ball_speed[0]~input_o\ & ((\u5|temp~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_speed[1]~input_o\,
	datab => \u6|temp~q\,
	datac => \u5|temp~q\,
	datad => \ball_speed[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X72_Y43_N24
\rtl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((\ball_speed[1]~input_o\ & ((\Mux0~0_combout\ & ((\u8|temp~q\))) # (!\Mux0~0_combout\ & (\u7|temp~q\)))) # (!\ball_speed[1]~input_o\ & (((\Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp~q\,
	datab => \ball_speed[1]~input_o\,
	datac => \u8|temp~q\,
	datad => \Mux0~0_combout\,
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G7
\rtl~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: IOIBUF_X46_Y54_N29
\start_game~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_game,
	o => \start_game~input_o\);

-- Location: LCCOMB_X69_Y48_N10
\u2|Add9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add9~1_combout\ = \u2|Ball_pos_x\(0) $ (VCC)
-- \u2|Add9~2\ = CARRY(\u2|Ball_pos_x\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_x\(0),
	datad => VCC,
	combout => \u2|Add9~1_combout\,
	cout => \u2|Add9~2\);

-- Location: CLKCTRL_G6
\u2|process_2~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u2|process_2~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u2|process_2~0clkctrl_outclk\);

-- Location: FF_X69_Y48_N11
\u2|Ball_pos_x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|Add9~1_combout\,
	clrn => \u2|ALT_INV_process_2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Ball_pos_x\(0));

-- Location: LCCOMB_X69_Y48_N12
\u2|Add9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add9~3_combout\ = (\u2|Ball_pos_x\(1) & ((\u2|Add9~0_combout\ & (\u2|Add9~2\ & VCC)) # (!\u2|Add9~0_combout\ & (!\u2|Add9~2\)))) # (!\u2|Ball_pos_x\(1) & ((\u2|Add9~0_combout\ & (!\u2|Add9~2\)) # (!\u2|Add9~0_combout\ & ((\u2|Add9~2\) # (GND)))))
-- \u2|Add9~4\ = CARRY((\u2|Ball_pos_x\(1) & (!\u2|Add9~0_combout\ & !\u2|Add9~2\)) # (!\u2|Ball_pos_x\(1) & ((!\u2|Add9~2\) # (!\u2|Add9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(1),
	datab => \u2|Add9~0_combout\,
	datad => VCC,
	cin => \u2|Add9~2\,
	combout => \u2|Add9~3_combout\,
	cout => \u2|Add9~4\);

-- Location: FF_X69_Y48_N13
\u2|Ball_pos_x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|Add9~3_combout\,
	clrn => \u2|ALT_INV_process_2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Ball_pos_x\(1));

-- Location: LCCOMB_X69_Y48_N14
\u2|Add9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add9~5_combout\ = ((\u2|Ball_pos_x\(2) $ (\u2|Add9~0_combout\ $ (!\u2|Add9~4\)))) # (GND)
-- \u2|Add9~6\ = CARRY((\u2|Ball_pos_x\(2) & ((\u2|Add9~0_combout\) # (!\u2|Add9~4\))) # (!\u2|Ball_pos_x\(2) & (\u2|Add9~0_combout\ & !\u2|Add9~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(2),
	datab => \u2|Add9~0_combout\,
	datad => VCC,
	cin => \u2|Add9~4\,
	combout => \u2|Add9~5_combout\,
	cout => \u2|Add9~6\);

-- Location: FF_X69_Y48_N15
\u2|Ball_pos_x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|Add9~5_combout\,
	clrn => \u2|ALT_INV_process_2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Ball_pos_x\(2));

-- Location: LCCOMB_X69_Y48_N16
\u2|Add9~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add9~7_combout\ = (\u2|Ball_pos_x\(3) & ((\u2|Add9~0_combout\ & (\u2|Add9~6\ & VCC)) # (!\u2|Add9~0_combout\ & (!\u2|Add9~6\)))) # (!\u2|Ball_pos_x\(3) & ((\u2|Add9~0_combout\ & (!\u2|Add9~6\)) # (!\u2|Add9~0_combout\ & ((\u2|Add9~6\) # (GND)))))
-- \u2|Add9~8\ = CARRY((\u2|Ball_pos_x\(3) & (!\u2|Add9~0_combout\ & !\u2|Add9~6\)) # (!\u2|Ball_pos_x\(3) & ((!\u2|Add9~6\) # (!\u2|Add9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(3),
	datab => \u2|Add9~0_combout\,
	datad => VCC,
	cin => \u2|Add9~6\,
	combout => \u2|Add9~7_combout\,
	cout => \u2|Add9~8\);

-- Location: FF_X69_Y48_N17
\u2|Ball_pos_x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|Add9~7_combout\,
	clrn => \u2|ALT_INV_process_2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Ball_pos_x\(3));

-- Location: LCCOMB_X69_Y48_N18
\u2|Add9~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add9~9_combout\ = ((\u2|Ball_pos_x\(4) $ (\u2|Add9~0_combout\ $ (!\u2|Add9~8\)))) # (GND)
-- \u2|Add9~10\ = CARRY((\u2|Ball_pos_x\(4) & ((\u2|Add9~0_combout\) # (!\u2|Add9~8\))) # (!\u2|Ball_pos_x\(4) & (\u2|Add9~0_combout\ & !\u2|Add9~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(4),
	datab => \u2|Add9~0_combout\,
	datad => VCC,
	cin => \u2|Add9~8\,
	combout => \u2|Add9~9_combout\,
	cout => \u2|Add9~10\);

-- Location: FF_X69_Y48_N19
\u2|Ball_pos_x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|Add9~9_combout\,
	clrn => \u2|ALT_INV_process_2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Ball_pos_x\(4));

-- Location: LCCOMB_X69_Y48_N20
\u2|Add9~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add9~11_combout\ = (\u2|Ball_pos_x\(5) & ((\u2|Add9~0_combout\ & (\u2|Add9~10\ & VCC)) # (!\u2|Add9~0_combout\ & (!\u2|Add9~10\)))) # (!\u2|Ball_pos_x\(5) & ((\u2|Add9~0_combout\ & (!\u2|Add9~10\)) # (!\u2|Add9~0_combout\ & ((\u2|Add9~10\) # (GND)))))
-- \u2|Add9~12\ = CARRY((\u2|Ball_pos_x\(5) & (!\u2|Add9~0_combout\ & !\u2|Add9~10\)) # (!\u2|Ball_pos_x\(5) & ((!\u2|Add9~10\) # (!\u2|Add9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(5),
	datab => \u2|Add9~0_combout\,
	datad => VCC,
	cin => \u2|Add9~10\,
	combout => \u2|Add9~11_combout\,
	cout => \u2|Add9~12\);

-- Location: FF_X69_Y48_N21
\u2|Ball_pos_x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|Add9~11_combout\,
	clrn => \u2|ALT_INV_process_2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Ball_pos_x\(5));

-- Location: LCCOMB_X69_Y48_N22
\u2|Add9~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add9~13_combout\ = ((\u2|Add9~0_combout\ $ (\u2|Ball_pos_x\(6) $ (\u2|Add9~12\)))) # (GND)
-- \u2|Add9~14\ = CARRY((\u2|Add9~0_combout\ & ((!\u2|Add9~12\) # (!\u2|Ball_pos_x\(6)))) # (!\u2|Add9~0_combout\ & (!\u2|Ball_pos_x\(6) & !\u2|Add9~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add9~0_combout\,
	datab => \u2|Ball_pos_x\(6),
	datad => VCC,
	cin => \u2|Add9~12\,
	combout => \u2|Add9~13_combout\,
	cout => \u2|Add9~14\);

-- Location: LCCOMB_X69_Y48_N0
\u2|Ball_pos_x[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_pos_x[6]~1_combout\ = !\u2|Add9~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add9~13_combout\,
	combout => \u2|Ball_pos_x[6]~1_combout\);

-- Location: FF_X69_Y48_N1
\u2|Ball_pos_x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|Ball_pos_x[6]~1_combout\,
	clrn => \u2|ALT_INV_process_2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Ball_pos_x\(6));

-- Location: LCCOMB_X69_Y48_N24
\u2|Add9~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add9~15_combout\ = (\u2|Ball_pos_x\(7) & ((\u2|Add9~0_combout\ & (\u2|Add9~14\ & VCC)) # (!\u2|Add9~0_combout\ & (!\u2|Add9~14\)))) # (!\u2|Ball_pos_x\(7) & ((\u2|Add9~0_combout\ & (!\u2|Add9~14\)) # (!\u2|Add9~0_combout\ & ((\u2|Add9~14\) # (GND)))))
-- \u2|Add9~16\ = CARRY((\u2|Ball_pos_x\(7) & (!\u2|Add9~0_combout\ & !\u2|Add9~14\)) # (!\u2|Ball_pos_x\(7) & ((!\u2|Add9~14\) # (!\u2|Add9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(7),
	datab => \u2|Add9~0_combout\,
	datad => VCC,
	cin => \u2|Add9~14\,
	combout => \u2|Add9~15_combout\,
	cout => \u2|Add9~16\);

-- Location: LCCOMB_X69_Y48_N26
\u2|Add9~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add9~17_combout\ = ((\u2|Ball_pos_x\(8) $ (\u2|Add9~0_combout\ $ (\u2|Add9~16\)))) # (GND)
-- \u2|Add9~18\ = CARRY((\u2|Ball_pos_x\(8) & (\u2|Add9~0_combout\ & !\u2|Add9~16\)) # (!\u2|Ball_pos_x\(8) & ((\u2|Add9~0_combout\) # (!\u2|Add9~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(8),
	datab => \u2|Add9~0_combout\,
	datad => VCC,
	cin => \u2|Add9~16\,
	combout => \u2|Add9~17_combout\,
	cout => \u2|Add9~18\);

-- Location: LCCOMB_X69_Y47_N0
\u2|Ball_pos_x[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_pos_x[8]~0_combout\ = !\u2|Add9~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u2|Add9~17_combout\,
	combout => \u2|Ball_pos_x[8]~0_combout\);

-- Location: FF_X69_Y47_N1
\u2|Ball_pos_x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|Ball_pos_x[8]~0_combout\,
	clrn => \u2|ALT_INV_process_2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Ball_pos_x\(8));

-- Location: LCCOMB_X69_Y48_N28
\u2|Add9~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add9~19_combout\ = \u2|Add9~0_combout\ $ (\u2|Add9~18\ $ (\u2|Ball_pos_x\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Add9~0_combout\,
	datad => \u2|Ball_pos_x\(9),
	cin => \u2|Add9~18\,
	combout => \u2|Add9~19_combout\);

-- Location: FF_X69_Y48_N29
\u2|Ball_pos_x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|Add9~19_combout\,
	clrn => \u2|ALT_INV_process_2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Ball_pos_x\(9));

-- Location: LCCOMB_X69_Y48_N4
\u2|LessThan13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan13~0_combout\ = (!\u2|Ball_pos_x\(4) & !\u2|Ball_pos_x\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|Ball_pos_x\(4),
	datad => \u2|Ball_pos_x\(3),
	combout => \u2|LessThan13~0_combout\);

-- Location: LCCOMB_X69_Y48_N6
\u2|Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal10~0_combout\ = (\u2|Ball_pos_x\(6) & \u2|Ball_pos_x\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_x\(6),
	datad => \u2|Ball_pos_x\(8),
	combout => \u2|Equal10~0_combout\);

-- Location: LCCOMB_X69_Y48_N30
\u2|score2[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[0]~32_combout\ = (!\u2|Ball_pos_x\(7) & (\u2|Equal10~0_combout\ & ((\u2|LessThan13~0_combout\) # (!\u2|Ball_pos_x\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(5),
	datab => \u2|Ball_pos_x\(7),
	datac => \u2|LessThan13~0_combout\,
	datad => \u2|Equal10~0_combout\,
	combout => \u2|score2[0]~32_combout\);

-- Location: LCCOMB_X69_Y50_N20
\u2|state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|state~0_combout\ = (\u2|state~q\ & ((\u2|Ball_pos_x\(9) & ((\u2|score1[29]~40_combout\))) # (!\u2|Ball_pos_x\(9) & (!\u2|score2[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(9),
	datab => \u2|state~q\,
	datac => \u2|score2[0]~32_combout\,
	datad => \u2|score1[29]~40_combout\,
	combout => \u2|state~0_combout\);

-- Location: LCCOMB_X69_Y50_N12
\u2|state~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|state~1_combout\ = (\u2|state~0_combout\) # ((!\start_game~input_o\ & !\u2|state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_game~input_o\,
	datac => \u2|state~q\,
	datad => \u2|state~0_combout\,
	combout => \u2|state~1_combout\);

-- Location: FF_X69_Y50_N13
\u2|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~q\,
	d => \u2|state~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|state~q\);

-- Location: LCCOMB_X69_Y50_N4
\u2|process_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|process_2~0_combout\ = (!\u2|state~q\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \u2|state~q\,
	combout => \u2|process_2~0_combout\);

-- Location: LCCOMB_X65_Y46_N2
\u2|Ball_direction~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~67_combout\ = (\u2|Ball_direction[1]~2_combout\ & (\u2|Ball_direction[0]~6_combout\ & \u2|Ball_direction[2]~10_combout\)) # (!\u2|Ball_direction[1]~2_combout\ & ((!\u2|Ball_direction[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_direction[1]~2_combout\,
	datac => \u2|Ball_direction[0]~6_combout\,
	datad => \u2|Ball_direction[2]~10_combout\,
	combout => \u2|Ball_direction~67_combout\);

-- Location: LCCOMB_X65_Y46_N14
\u2|Ball_direction[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[2]~9_combout\ = (GLOBAL(\u2|process_2~0clkctrl_outclk\) & (\u2|Ball_direction~67_combout\)) # (!GLOBAL(\u2|process_2~0clkctrl_outclk\) & ((\u2|Ball_direction[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_direction~67_combout\,
	datac => \u2|Ball_direction[2]~9_combout\,
	datad => \u2|process_2~0clkctrl_outclk\,
	combout => \u2|Ball_direction[2]~9_combout\);

-- Location: LCCOMB_X65_Y46_N16
\u2|Ball_direction~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~28_combout\ = (\u2|Ball_direction[0]~6_combout\ & ((!\u2|Ball_direction[2]~10_combout\) # (!\u2|Ball_direction[1]~2_combout\))) # (!\u2|Ball_direction[0]~6_combout\ & (\u2|Ball_direction[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_direction[0]~6_combout\,
	datac => \u2|Ball_direction[1]~2_combout\,
	datad => \u2|Ball_direction[2]~10_combout\,
	combout => \u2|Ball_direction~28_combout\);

-- Location: LCCOMB_X71_Y41_N16
\u3|temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|temp~0_combout\ = !\u3|temp~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|temp~q\,
	combout => \u3|temp~0_combout\);

-- Location: LCCOMB_X71_Y42_N14
\u3|temp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u3|temp~feeder_combout\ = \u3|temp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|temp~0_combout\,
	combout => \u3|temp~feeder_combout\);

-- Location: FF_X71_Y42_N15
\u3|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u3|temp~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \u3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|temp~q\);

-- Location: CLKCTRL_G8
\u3|temp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u3|temp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u3|temp~clkctrl_outclk\);

-- Location: IOIBUF_X54_Y54_N22
\direction_switch[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_direction_switch(3),
	o => \direction_switch[3]~input_o\);

-- Location: LCCOMB_X60_Y50_N4
\u2|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add4~0_combout\ = \u2|paddle2_pos_y\(0) $ (VCC)
-- \u2|Add4~1\ = CARRY(\u2|paddle2_pos_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(0),
	datad => VCC,
	combout => \u2|Add4~0_combout\,
	cout => \u2|Add4~1\);

-- Location: LCCOMB_X59_Y50_N0
\u2|Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add5~0_combout\ = \u2|paddle2_pos_y\(0) $ (VCC)
-- \u2|Add5~1\ = CARRY(\u2|paddle2_pos_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(0),
	datad => VCC,
	combout => \u2|Add5~0_combout\,
	cout => \u2|Add5~1\);

-- Location: LCCOMB_X59_Y50_N22
\u2|paddle2_pos_y~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle2_pos_y~10_combout\ = (\direction_switch[3]~input_o\ & (((\u2|Add5~0_combout\ & !\u2|Equal3~1_combout\)))) # (!\direction_switch[3]~input_o\ & (\u2|Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add4~0_combout\,
	datab => \u2|Add5~0_combout\,
	datac => \direction_switch[3]~input_o\,
	datad => \u2|Equal3~1_combout\,
	combout => \u2|paddle2_pos_y~10_combout\);

-- Location: LCCOMB_X60_Y50_N2
\u2|paddle2_pos_y~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle2_pos_y~11_combout\ = (\u2|paddle2_pos_y~10_combout\ & ((\direction_switch[3]~input_o\) # (!\u2|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction_switch[3]~input_o\,
	datac => \u2|Equal2~2_combout\,
	datad => \u2|paddle2_pos_y~10_combout\,
	combout => \u2|paddle2_pos_y~11_combout\);

-- Location: IOIBUF_X54_Y54_N29
\direction_switch[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_direction_switch(2),
	o => \direction_switch[2]~input_o\);

-- Location: LCCOMB_X54_Y53_N28
\u2|paddle2_pos_y[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle2_pos_y[3]~1_combout\ = (\direction_switch[3]~input_o\) # (\direction_switch[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \direction_switch[3]~input_o\,
	datad => \direction_switch[2]~input_o\,
	combout => \u2|paddle2_pos_y[3]~1_combout\);

-- Location: FF_X60_Y50_N3
\u2|paddle2_pos_y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|temp~clkctrl_outclk\,
	d => \u2|paddle2_pos_y~11_combout\,
	clrn => \reset~input_o\,
	ena => \u2|paddle2_pos_y[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|paddle2_pos_y\(0));

-- Location: LCCOMB_X60_Y50_N6
\u2|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add4~2_combout\ = (\u2|paddle2_pos_y\(1) & (!\u2|Add4~1\)) # (!\u2|paddle2_pos_y\(1) & ((\u2|Add4~1\) # (GND)))
-- \u2|Add4~3\ = CARRY((!\u2|Add4~1\) # (!\u2|paddle2_pos_y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(1),
	datad => VCC,
	cin => \u2|Add4~1\,
	combout => \u2|Add4~2_combout\,
	cout => \u2|Add4~3\);

-- Location: LCCOMB_X59_Y50_N2
\u2|Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add5~2_combout\ = (\u2|paddle2_pos_y\(1) & (\u2|Add5~1\ & VCC)) # (!\u2|paddle2_pos_y\(1) & (!\u2|Add5~1\))
-- \u2|Add5~3\ = CARRY((!\u2|paddle2_pos_y\(1) & !\u2|Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(1),
	datad => VCC,
	cin => \u2|Add5~1\,
	combout => \u2|Add5~2_combout\,
	cout => \u2|Add5~3\);

-- Location: LCCOMB_X61_Y50_N26
\u2|paddle2_pos_y~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle2_pos_y~9_combout\ = (\direction_switch[3]~input_o\ & (!\u2|Equal3~1_combout\ & ((\u2|Add5~2_combout\)))) # (!\direction_switch[3]~input_o\ & (((\u2|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Equal3~1_combout\,
	datab => \direction_switch[3]~input_o\,
	datac => \u2|Add4~2_combout\,
	datad => \u2|Add5~2_combout\,
	combout => \u2|paddle2_pos_y~9_combout\);

-- Location: FF_X61_Y50_N27
\u2|paddle2_pos_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|temp~clkctrl_outclk\,
	d => \u2|paddle2_pos_y~9_combout\,
	clrn => \reset~input_o\,
	ena => \u2|paddle2_pos_y[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|paddle2_pos_y\(1));

-- Location: LCCOMB_X60_Y50_N16
\u2|Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add4~12_combout\ = (\u2|paddle2_pos_y\(6) & (!\u2|Add4~11\ & VCC)) # (!\u2|paddle2_pos_y\(6) & (\u2|Add4~11\ $ (GND)))
-- \u2|Add4~13\ = CARRY((!\u2|paddle2_pos_y\(6) & !\u2|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(6),
	datad => VCC,
	cin => \u2|Add4~11\,
	combout => \u2|Add4~12_combout\,
	cout => \u2|Add4~13\);

-- Location: LCCOMB_X60_Y50_N18
\u2|Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add4~14_combout\ = (\u2|paddle2_pos_y\(7) & ((\u2|Add4~13\) # (GND))) # (!\u2|paddle2_pos_y\(7) & (!\u2|Add4~13\))
-- \u2|Add4~15\ = CARRY((\u2|paddle2_pos_y\(7)) # (!\u2|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(7),
	datad => VCC,
	cin => \u2|Add4~13\,
	combout => \u2|Add4~14_combout\,
	cout => \u2|Add4~15\);

-- Location: LCCOMB_X60_Y50_N8
\u2|Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add4~4_combout\ = (\u2|paddle2_pos_y\(2) & (\u2|Add4~3\ $ (GND))) # (!\u2|paddle2_pos_y\(2) & (!\u2|Add4~3\ & VCC))
-- \u2|Add4~5\ = CARRY((\u2|paddle2_pos_y\(2) & !\u2|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(2),
	datad => VCC,
	cin => \u2|Add4~3\,
	combout => \u2|Add4~4_combout\,
	cout => \u2|Add4~5\);

-- Location: LCCOMB_X59_Y50_N4
\u2|Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add5~4_combout\ = (\u2|paddle2_pos_y\(2) & ((GND) # (!\u2|Add5~3\))) # (!\u2|paddle2_pos_y\(2) & (\u2|Add5~3\ $ (GND)))
-- \u2|Add5~5\ = CARRY((\u2|paddle2_pos_y\(2)) # (!\u2|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(2),
	datad => VCC,
	cin => \u2|Add5~3\,
	combout => \u2|Add5~4_combout\,
	cout => \u2|Add5~5\);

-- Location: LCCOMB_X61_Y50_N28
\u2|paddle2_pos_y~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle2_pos_y~8_combout\ = (\direction_switch[3]~input_o\ & (!\u2|Equal3~1_combout\ & ((\u2|Add5~4_combout\)))) # (!\direction_switch[3]~input_o\ & (((\u2|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Equal3~1_combout\,
	datab => \direction_switch[3]~input_o\,
	datac => \u2|Add4~4_combout\,
	datad => \u2|Add5~4_combout\,
	combout => \u2|paddle2_pos_y~8_combout\);

-- Location: FF_X61_Y50_N29
\u2|paddle2_pos_y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|temp~clkctrl_outclk\,
	d => \u2|paddle2_pos_y~8_combout\,
	clrn => \reset~input_o\,
	ena => \u2|paddle2_pos_y[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|paddle2_pos_y\(2));

-- Location: LCCOMB_X60_Y50_N10
\u2|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add4~6_combout\ = (\u2|paddle2_pos_y\(3) & (!\u2|Add4~5\)) # (!\u2|paddle2_pos_y\(3) & ((\u2|Add4~5\) # (GND)))
-- \u2|Add4~7\ = CARRY((!\u2|Add4~5\) # (!\u2|paddle2_pos_y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(3),
	datad => VCC,
	cin => \u2|Add4~5\,
	combout => \u2|Add4~6_combout\,
	cout => \u2|Add4~7\);

-- Location: LCCOMB_X59_Y50_N6
\u2|Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add5~6_combout\ = (\u2|paddle2_pos_y\(3) & (\u2|Add5~5\ & VCC)) # (!\u2|paddle2_pos_y\(3) & (!\u2|Add5~5\))
-- \u2|Add5~7\ = CARRY((!\u2|paddle2_pos_y\(3) & !\u2|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(3),
	datad => VCC,
	cin => \u2|Add5~5\,
	combout => \u2|Add5~6_combout\,
	cout => \u2|Add5~7\);

-- Location: LCCOMB_X61_Y50_N30
\u2|paddle2_pos_y~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle2_pos_y~7_combout\ = (\direction_switch[3]~input_o\ & (((!\u2|Equal3~1_combout\ & \u2|Add5~6_combout\)))) # (!\direction_switch[3]~input_o\ & (\u2|Add4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add4~6_combout\,
	datab => \direction_switch[3]~input_o\,
	datac => \u2|Equal3~1_combout\,
	datad => \u2|Add5~6_combout\,
	combout => \u2|paddle2_pos_y~7_combout\);

-- Location: FF_X61_Y50_N31
\u2|paddle2_pos_y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|temp~clkctrl_outclk\,
	d => \u2|paddle2_pos_y~7_combout\,
	clrn => \reset~input_o\,
	ena => \u2|paddle2_pos_y[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|paddle2_pos_y\(3));

-- Location: LCCOMB_X60_Y50_N12
\u2|Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add4~8_combout\ = (\u2|paddle2_pos_y\(4) & (!\u2|Add4~7\ & VCC)) # (!\u2|paddle2_pos_y\(4) & (\u2|Add4~7\ $ (GND)))
-- \u2|Add4~9\ = CARRY((!\u2|paddle2_pos_y\(4) & !\u2|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(4),
	datad => VCC,
	cin => \u2|Add4~7\,
	combout => \u2|Add4~8_combout\,
	cout => \u2|Add4~9\);

-- Location: LCCOMB_X59_Y50_N8
\u2|Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add5~8_combout\ = (\u2|paddle2_pos_y\(4) & (\u2|Add5~7\ $ (GND))) # (!\u2|paddle2_pos_y\(4) & ((GND) # (!\u2|Add5~7\)))
-- \u2|Add5~9\ = CARRY((!\u2|Add5~7\) # (!\u2|paddle2_pos_y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(4),
	datad => VCC,
	cin => \u2|Add5~7\,
	combout => \u2|Add5~8_combout\,
	cout => \u2|Add5~9\);

-- Location: LCCOMB_X61_Y50_N4
\u2|paddle2_pos_y~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle2_pos_y~6_combout\ = (\direction_switch[3]~input_o\ & (((\u2|Equal3~1_combout\) # (!\u2|Add5~8_combout\)))) # (!\direction_switch[3]~input_o\ & (!\u2|Add4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add4~8_combout\,
	datab => \direction_switch[3]~input_o\,
	datac => \u2|Equal3~1_combout\,
	datad => \u2|Add5~8_combout\,
	combout => \u2|paddle2_pos_y~6_combout\);

-- Location: FF_X61_Y50_N5
\u2|paddle2_pos_y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|temp~clkctrl_outclk\,
	d => \u2|paddle2_pos_y~6_combout\,
	clrn => \reset~input_o\,
	ena => \u2|paddle2_pos_y[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|paddle2_pos_y\(4));

-- Location: LCCOMB_X59_Y50_N10
\u2|Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add5~10_combout\ = (\u2|paddle2_pos_y\(5) & (!\u2|Add5~9\)) # (!\u2|paddle2_pos_y\(5) & (\u2|Add5~9\ & VCC))
-- \u2|Add5~11\ = CARRY((\u2|paddle2_pos_y\(5) & !\u2|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(5),
	datad => VCC,
	cin => \u2|Add5~9\,
	combout => \u2|Add5~10_combout\,
	cout => \u2|Add5~11\);

-- Location: LCCOMB_X59_Y50_N12
\u2|Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add5~12_combout\ = (\u2|paddle2_pos_y\(6) & (\u2|Add5~11\ $ (GND))) # (!\u2|paddle2_pos_y\(6) & ((GND) # (!\u2|Add5~11\)))
-- \u2|Add5~13\ = CARRY((!\u2|Add5~11\) # (!\u2|paddle2_pos_y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(6),
	datad => VCC,
	cin => \u2|Add5~11\,
	combout => \u2|Add5~12_combout\,
	cout => \u2|Add5~13\);

-- Location: LCCOMB_X59_Y50_N14
\u2|Add5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add5~14_combout\ = (\u2|paddle2_pos_y\(7) & (!\u2|Add5~13\)) # (!\u2|paddle2_pos_y\(7) & (\u2|Add5~13\ & VCC))
-- \u2|Add5~15\ = CARRY((\u2|paddle2_pos_y\(7) & !\u2|Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(7),
	datad => VCC,
	cin => \u2|Add5~13\,
	combout => \u2|Add5~14_combout\,
	cout => \u2|Add5~15\);

-- Location: LCCOMB_X60_Y50_N24
\u2|paddle2_pos_y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle2_pos_y~3_combout\ = (\direction_switch[3]~input_o\ & (((!\u2|Add5~14_combout\)))) # (!\direction_switch[3]~input_o\ & (((\u2|Equal2~2_combout\)) # (!\u2|Add4~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction_switch[3]~input_o\,
	datab => \u2|Add4~14_combout\,
	datac => \u2|Equal2~2_combout\,
	datad => \u2|Add5~14_combout\,
	combout => \u2|paddle2_pos_y~3_combout\);

-- Location: FF_X60_Y50_N25
\u2|paddle2_pos_y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|temp~clkctrl_outclk\,
	d => \u2|paddle2_pos_y~3_combout\,
	clrn => \reset~input_o\,
	ena => \u2|paddle2_pos_y[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|paddle2_pos_y\(7));

-- Location: LCCOMB_X59_Y50_N16
\u2|Add5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add5~16_combout\ = (\u2|paddle2_pos_y\(8) & ((GND) # (!\u2|Add5~15\))) # (!\u2|paddle2_pos_y\(8) & (\u2|Add5~15\ $ (GND)))
-- \u2|Add5~17\ = CARRY((\u2|paddle2_pos_y\(8)) # (!\u2|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(8),
	datad => VCC,
	cin => \u2|Add5~15\,
	combout => \u2|Add5~16_combout\,
	cout => \u2|Add5~17\);

-- Location: LCCOMB_X60_Y50_N20
\u2|Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add4~16_combout\ = (\u2|paddle2_pos_y\(8) & (\u2|Add4~15\ $ (GND))) # (!\u2|paddle2_pos_y\(8) & (!\u2|Add4~15\ & VCC))
-- \u2|Add4~17\ = CARRY((\u2|paddle2_pos_y\(8) & !\u2|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(8),
	datad => VCC,
	cin => \u2|Add4~15\,
	combout => \u2|Add4~16_combout\,
	cout => \u2|Add4~17\);

-- Location: LCCOMB_X60_Y50_N26
\u2|paddle2_pos_y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle2_pos_y~2_combout\ = (\direction_switch[3]~input_o\ & (((\u2|Add5~16_combout\)))) # (!\direction_switch[3]~input_o\ & (!\u2|Equal2~2_combout\ & ((\u2|Add4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction_switch[3]~input_o\,
	datab => \u2|Equal2~2_combout\,
	datac => \u2|Add5~16_combout\,
	datad => \u2|Add4~16_combout\,
	combout => \u2|paddle2_pos_y~2_combout\);

-- Location: FF_X60_Y50_N27
\u2|paddle2_pos_y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|temp~clkctrl_outclk\,
	d => \u2|paddle2_pos_y~2_combout\,
	clrn => \reset~input_o\,
	ena => \u2|paddle2_pos_y[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|paddle2_pos_y\(8));

-- Location: LCCOMB_X59_Y50_N26
\u2|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal2~1_combout\ = (!\u2|paddle2_pos_y\(6) & (!\u2|paddle2_pos_y\(7) & (!\u2|paddle2_pos_y\(5) & \u2|paddle2_pos_y\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(6),
	datab => \u2|paddle2_pos_y\(7),
	datac => \u2|paddle2_pos_y\(5),
	datad => \u2|paddle2_pos_y\(8),
	combout => \u2|Equal2~1_combout\);

-- Location: LCCOMB_X59_Y50_N20
\u2|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal2~0_combout\ = (!\u2|paddle2_pos_y\(2) & (!\u2|paddle2_pos_y\(9) & (\u2|paddle2_pos_y\(4) & !\u2|paddle2_pos_y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(2),
	datab => \u2|paddle2_pos_y\(9),
	datac => \u2|paddle2_pos_y\(4),
	datad => \u2|paddle2_pos_y\(3),
	combout => \u2|Equal2~0_combout\);

-- Location: LCCOMB_X59_Y50_N24
\u2|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal2~2_combout\ = (!\u2|paddle2_pos_y\(0) & (!\u2|paddle2_pos_y\(1) & (\u2|Equal2~1_combout\ & \u2|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(0),
	datab => \u2|paddle2_pos_y\(1),
	datac => \u2|Equal2~1_combout\,
	datad => \u2|Equal2~0_combout\,
	combout => \u2|Equal2~2_combout\);

-- Location: LCCOMB_X60_Y50_N14
\u2|Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add4~10_combout\ = (\u2|paddle2_pos_y\(5) & ((\u2|Add4~9\) # (GND))) # (!\u2|paddle2_pos_y\(5) & (!\u2|Add4~9\))
-- \u2|Add4~11\ = CARRY((\u2|paddle2_pos_y\(5)) # (!\u2|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(5),
	datad => VCC,
	cin => \u2|Add4~9\,
	combout => \u2|Add4~10_combout\,
	cout => \u2|Add4~11\);

-- Location: LCCOMB_X60_Y50_N28
\u2|paddle2_pos_y~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle2_pos_y~5_combout\ = (\direction_switch[3]~input_o\ & (((!\u2|Add5~10_combout\)))) # (!\direction_switch[3]~input_o\ & ((\u2|Equal2~2_combout\) # ((!\u2|Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction_switch[3]~input_o\,
	datab => \u2|Equal2~2_combout\,
	datac => \u2|Add4~10_combout\,
	datad => \u2|Add5~10_combout\,
	combout => \u2|paddle2_pos_y~5_combout\);

-- Location: FF_X60_Y50_N29
\u2|paddle2_pos_y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|temp~clkctrl_outclk\,
	d => \u2|paddle2_pos_y~5_combout\,
	clrn => \reset~input_o\,
	ena => \u2|paddle2_pos_y[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|paddle2_pos_y\(5));

-- Location: LCCOMB_X60_Y50_N30
\u2|paddle2_pos_y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle2_pos_y~4_combout\ = (\direction_switch[3]~input_o\ & (((!\u2|Add5~12_combout\)))) # (!\direction_switch[3]~input_o\ & (((\u2|Equal2~2_combout\)) # (!\u2|Add4~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction_switch[3]~input_o\,
	datab => \u2|Add4~12_combout\,
	datac => \u2|Equal2~2_combout\,
	datad => \u2|Add5~12_combout\,
	combout => \u2|paddle2_pos_y~4_combout\);

-- Location: FF_X60_Y50_N31
\u2|paddle2_pos_y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|temp~clkctrl_outclk\,
	d => \u2|paddle2_pos_y~4_combout\,
	clrn => \reset~input_o\,
	ena => \u2|paddle2_pos_y[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|paddle2_pos_y\(6));

-- Location: LCCOMB_X59_Y50_N30
\u2|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal3~0_combout\ = (\u2|paddle2_pos_y\(6) & (\u2|paddle2_pos_y\(7) & (\u2|paddle2_pos_y\(5) & !\u2|paddle2_pos_y\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(6),
	datab => \u2|paddle2_pos_y\(7),
	datac => \u2|paddle2_pos_y\(5),
	datad => \u2|paddle2_pos_y\(8),
	combout => \u2|Equal3~0_combout\);

-- Location: LCCOMB_X59_Y50_N28
\u2|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal3~1_combout\ = (\u2|Equal3~0_combout\ & (!\u2|paddle2_pos_y\(1) & (!\u2|paddle2_pos_y\(0) & \u2|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Equal3~0_combout\,
	datab => \u2|paddle2_pos_y\(1),
	datac => \u2|paddle2_pos_y\(0),
	datad => \u2|Equal2~0_combout\,
	combout => \u2|Equal3~1_combout\);

-- Location: LCCOMB_X60_Y50_N22
\u2|Add4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add4~18_combout\ = \u2|Add4~17\ $ (\u2|paddle2_pos_y\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u2|paddle2_pos_y\(9),
	cin => \u2|Add4~17\,
	combout => \u2|Add4~18_combout\);

-- Location: LCCOMB_X59_Y50_N18
\u2|Add5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add5~18_combout\ = \u2|paddle2_pos_y\(9) $ (!\u2|Add5~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(9),
	cin => \u2|Add5~17\,
	combout => \u2|Add5~18_combout\);

-- Location: LCCOMB_X60_Y50_N0
\u2|paddle2_pos_y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle2_pos_y~0_combout\ = (\direction_switch[3]~input_o\ & (!\u2|Equal3~1_combout\ & ((\u2|Add5~18_combout\)))) # (!\direction_switch[3]~input_o\ & (((\u2|Add4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction_switch[3]~input_o\,
	datab => \u2|Equal3~1_combout\,
	datac => \u2|Add4~18_combout\,
	datad => \u2|Add5~18_combout\,
	combout => \u2|paddle2_pos_y~0_combout\);

-- Location: FF_X60_Y50_N1
\u2|paddle2_pos_y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|temp~clkctrl_outclk\,
	d => \u2|paddle2_pos_y~0_combout\,
	clrn => \reset~input_o\,
	ena => \u2|paddle2_pos_y[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|paddle2_pos_y\(9));

-- Location: LCCOMB_X60_Y48_N10
\u2|Add15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add15~0_combout\ = (\u2|paddle2_pos_y\(2) & (\u2|paddle2_pos_y\(1) $ (VCC))) # (!\u2|paddle2_pos_y\(2) & (\u2|paddle2_pos_y\(1) & VCC))
-- \u2|Add15~1\ = CARRY((\u2|paddle2_pos_y\(2) & \u2|paddle2_pos_y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(2),
	datab => \u2|paddle2_pos_y\(1),
	datad => VCC,
	combout => \u2|Add15~0_combout\,
	cout => \u2|Add15~1\);

-- Location: LCCOMB_X60_Y48_N12
\u2|Add15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add15~2_combout\ = (\u2|paddle2_pos_y\(3) & (\u2|Add15~1\ & VCC)) # (!\u2|paddle2_pos_y\(3) & (!\u2|Add15~1\))
-- \u2|Add15~3\ = CARRY((!\u2|paddle2_pos_y\(3) & !\u2|Add15~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(3),
	datad => VCC,
	cin => \u2|Add15~1\,
	combout => \u2|Add15~2_combout\,
	cout => \u2|Add15~3\);

-- Location: LCCOMB_X60_Y48_N14
\u2|Add15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add15~4_combout\ = (\u2|paddle2_pos_y\(4) & (!\u2|Add15~3\ & VCC)) # (!\u2|paddle2_pos_y\(4) & (\u2|Add15~3\ $ (GND)))
-- \u2|Add15~5\ = CARRY((!\u2|paddle2_pos_y\(4) & !\u2|Add15~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(4),
	datad => VCC,
	cin => \u2|Add15~3\,
	combout => \u2|Add15~4_combout\,
	cout => \u2|Add15~5\);

-- Location: LCCOMB_X60_Y48_N16
\u2|Add15~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add15~6_combout\ = (\u2|paddle2_pos_y\(5) & ((\u2|Add15~5\) # (GND))) # (!\u2|paddle2_pos_y\(5) & (!\u2|Add15~5\))
-- \u2|Add15~7\ = CARRY((\u2|paddle2_pos_y\(5)) # (!\u2|Add15~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(5),
	datad => VCC,
	cin => \u2|Add15~5\,
	combout => \u2|Add15~6_combout\,
	cout => \u2|Add15~7\);

-- Location: LCCOMB_X60_Y48_N18
\u2|Add15~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add15~8_combout\ = (\u2|paddle2_pos_y\(6) & (!\u2|Add15~7\ & VCC)) # (!\u2|paddle2_pos_y\(6) & (\u2|Add15~7\ $ (GND)))
-- \u2|Add15~9\ = CARRY((!\u2|paddle2_pos_y\(6) & !\u2|Add15~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(6),
	datad => VCC,
	cin => \u2|Add15~7\,
	combout => \u2|Add15~8_combout\,
	cout => \u2|Add15~9\);

-- Location: LCCOMB_X60_Y48_N20
\u2|Add15~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add15~10_combout\ = (\u2|paddle2_pos_y\(7) & ((\u2|Add15~9\) # (GND))) # (!\u2|paddle2_pos_y\(7) & (!\u2|Add15~9\))
-- \u2|Add15~11\ = CARRY((\u2|paddle2_pos_y\(7)) # (!\u2|Add15~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(7),
	datad => VCC,
	cin => \u2|Add15~9\,
	combout => \u2|Add15~10_combout\,
	cout => \u2|Add15~11\);

-- Location: LCCOMB_X60_Y48_N22
\u2|Add15~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add15~12_combout\ = (\u2|paddle2_pos_y\(8) & (\u2|Add15~11\ $ (GND))) # (!\u2|paddle2_pos_y\(8) & (!\u2|Add15~11\ & VCC))
-- \u2|Add15~13\ = CARRY((\u2|paddle2_pos_y\(8) & !\u2|Add15~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(8),
	datad => VCC,
	cin => \u2|Add15~11\,
	combout => \u2|Add15~12_combout\,
	cout => \u2|Add15~13\);

-- Location: LCCOMB_X60_Y48_N24
\u2|Add15~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add15~14_combout\ = (\u2|paddle2_pos_y\(9) & (!\u2|Add15~13\)) # (!\u2|paddle2_pos_y\(9) & ((\u2|Add15~13\) # (GND)))
-- \u2|Add15~15\ = CARRY((!\u2|Add15~13\) # (!\u2|paddle2_pos_y\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(9),
	datad => VCC,
	cin => \u2|Add15~13\,
	combout => \u2|Add15~14_combout\,
	cout => \u2|Add15~15\);

-- Location: LCCOMB_X60_Y48_N26
\u2|Add15~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add15~16_combout\ = !\u2|Add15~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u2|Add15~15\,
	combout => \u2|Add15~16_combout\);

-- Location: LCCOMB_X61_Y48_N2
\u2|Add14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add14~1_cout\ = CARRY(\u2|paddle2_pos_y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(1),
	datad => VCC,
	cout => \u2|Add14~1_cout\);

-- Location: LCCOMB_X61_Y48_N4
\u2|Add14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add14~2_combout\ = (\u2|paddle2_pos_y\(2) & (\u2|Add14~1_cout\ & VCC)) # (!\u2|paddle2_pos_y\(2) & (!\u2|Add14~1_cout\))
-- \u2|Add14~3\ = CARRY((!\u2|paddle2_pos_y\(2) & !\u2|Add14~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(2),
	datad => VCC,
	cin => \u2|Add14~1_cout\,
	combout => \u2|Add14~2_combout\,
	cout => \u2|Add14~3\);

-- Location: LCCOMB_X61_Y48_N6
\u2|Add14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add14~4_combout\ = (\u2|paddle2_pos_y\(3) & (\u2|Add14~3\ $ (GND))) # (!\u2|paddle2_pos_y\(3) & (!\u2|Add14~3\ & VCC))
-- \u2|Add14~5\ = CARRY((\u2|paddle2_pos_y\(3) & !\u2|Add14~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(3),
	datad => VCC,
	cin => \u2|Add14~3\,
	combout => \u2|Add14~4_combout\,
	cout => \u2|Add14~5\);

-- Location: LCCOMB_X61_Y48_N8
\u2|Add14~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add14~6_combout\ = (\u2|paddle2_pos_y\(4) & (!\u2|Add14~5\)) # (!\u2|paddle2_pos_y\(4) & (\u2|Add14~5\ & VCC))
-- \u2|Add14~7\ = CARRY((\u2|paddle2_pos_y\(4) & !\u2|Add14~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(4),
	datad => VCC,
	cin => \u2|Add14~5\,
	combout => \u2|Add14~6_combout\,
	cout => \u2|Add14~7\);

-- Location: LCCOMB_X61_Y48_N10
\u2|Add14~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add14~8_combout\ = (\u2|paddle2_pos_y\(5) & (\u2|Add14~7\ $ (GND))) # (!\u2|paddle2_pos_y\(5) & ((GND) # (!\u2|Add14~7\)))
-- \u2|Add14~9\ = CARRY((!\u2|Add14~7\) # (!\u2|paddle2_pos_y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(5),
	datad => VCC,
	cin => \u2|Add14~7\,
	combout => \u2|Add14~8_combout\,
	cout => \u2|Add14~9\);

-- Location: LCCOMB_X61_Y48_N12
\u2|Add14~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add14~10_combout\ = (\u2|paddle2_pos_y\(6) & (!\u2|Add14~9\)) # (!\u2|paddle2_pos_y\(6) & (\u2|Add14~9\ & VCC))
-- \u2|Add14~11\ = CARRY((\u2|paddle2_pos_y\(6) & !\u2|Add14~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(6),
	datad => VCC,
	cin => \u2|Add14~9\,
	combout => \u2|Add14~10_combout\,
	cout => \u2|Add14~11\);

-- Location: LCCOMB_X61_Y48_N14
\u2|Add14~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add14~12_combout\ = (\u2|paddle2_pos_y\(7) & (\u2|Add14~11\ $ (GND))) # (!\u2|paddle2_pos_y\(7) & ((GND) # (!\u2|Add14~11\)))
-- \u2|Add14~13\ = CARRY((!\u2|Add14~11\) # (!\u2|paddle2_pos_y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(7),
	datad => VCC,
	cin => \u2|Add14~11\,
	combout => \u2|Add14~12_combout\,
	cout => \u2|Add14~13\);

-- Location: LCCOMB_X61_Y48_N16
\u2|Add14~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add14~14_combout\ = (\u2|paddle2_pos_y\(8) & (\u2|Add14~13\ & VCC)) # (!\u2|paddle2_pos_y\(8) & (!\u2|Add14~13\))
-- \u2|Add14~15\ = CARRY((!\u2|paddle2_pos_y\(8) & !\u2|Add14~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(8),
	datad => VCC,
	cin => \u2|Add14~13\,
	combout => \u2|Add14~14_combout\,
	cout => \u2|Add14~15\);

-- Location: LCCOMB_X61_Y48_N18
\u2|Add14~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add14~16_combout\ = (\u2|paddle2_pos_y\(9) & ((GND) # (!\u2|Add14~15\))) # (!\u2|paddle2_pos_y\(9) & (\u2|Add14~15\ $ (GND)))
-- \u2|Add14~17\ = CARRY((\u2|paddle2_pos_y\(9)) # (!\u2|Add14~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(9),
	datad => VCC,
	cin => \u2|Add14~15\,
	combout => \u2|Add14~16_combout\,
	cout => \u2|Add14~17\);

-- Location: LCCOMB_X61_Y48_N20
\u2|Add14~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add14~18_combout\ = !\u2|Add14~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u2|Add14~17\,
	combout => \u2|Add14~18_combout\);

-- Location: LCCOMB_X64_Y47_N10
\u2|Add8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add8~0_combout\ = \u2|Ball_pos_y\(0) $ (VCC)
-- \u2|Add8~1\ = CARRY(\u2|Ball_pos_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_y\(0),
	datad => VCC,
	combout => \u2|Add8~0_combout\,
	cout => \u2|Add8~1\);

-- Location: LCCOMB_X63_Y47_N22
\u2|Ball_pos_y[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_pos_y[0]~feeder_combout\ = \u2|Add8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u2|Add8~0_combout\,
	combout => \u2|Ball_pos_y[0]~feeder_combout\);

-- Location: FF_X63_Y47_N23
\u2|Ball_pos_y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|Ball_pos_y[0]~feeder_combout\,
	clrn => \u2|ALT_INV_process_2~0clkctrl_outclk\,
	ena => \u2|Ball_direction[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Ball_pos_y\(0));

-- Location: LCCOMB_X64_Y47_N12
\u2|Add8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add8~2_combout\ = (\u2|Ball_direction[1]~2_combout\ & ((\u2|Ball_pos_y\(1) & (!\u2|Add8~1\)) # (!\u2|Ball_pos_y\(1) & ((\u2|Add8~1\) # (GND))))) # (!\u2|Ball_direction[1]~2_combout\ & ((\u2|Ball_pos_y\(1) & (\u2|Add8~1\ & VCC)) # (!\u2|Ball_pos_y\(1) 
-- & (!\u2|Add8~1\))))
-- \u2|Add8~3\ = CARRY((\u2|Ball_direction[1]~2_combout\ & ((!\u2|Add8~1\) # (!\u2|Ball_pos_y\(1)))) # (!\u2|Ball_direction[1]~2_combout\ & (!\u2|Ball_pos_y\(1) & !\u2|Add8~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[1]~2_combout\,
	datab => \u2|Ball_pos_y\(1),
	datad => VCC,
	cin => \u2|Add8~1\,
	combout => \u2|Add8~2_combout\,
	cout => \u2|Add8~3\);

-- Location: FF_X64_Y47_N13
\u2|Ball_pos_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|Add8~2_combout\,
	clrn => \u2|ALT_INV_process_2~0clkctrl_outclk\,
	ena => \u2|Ball_direction[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Ball_pos_y\(1));

-- Location: LCCOMB_X64_Y47_N14
\u2|Add8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add8~4_combout\ = ((\u2|Ball_direction[1]~2_combout\ $ (\u2|Ball_pos_y\(2) $ (\u2|Add8~3\)))) # (GND)
-- \u2|Add8~5\ = CARRY((\u2|Ball_direction[1]~2_combout\ & (\u2|Ball_pos_y\(2) & !\u2|Add8~3\)) # (!\u2|Ball_direction[1]~2_combout\ & ((\u2|Ball_pos_y\(2)) # (!\u2|Add8~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[1]~2_combout\,
	datab => \u2|Ball_pos_y\(2),
	datad => VCC,
	cin => \u2|Add8~3\,
	combout => \u2|Add8~4_combout\,
	cout => \u2|Add8~5\);

-- Location: FF_X64_Y47_N15
\u2|Ball_pos_y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|Add8~4_combout\,
	clrn => \u2|ALT_INV_process_2~0clkctrl_outclk\,
	ena => \u2|Ball_direction[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Ball_pos_y\(2));

-- Location: LCCOMB_X64_Y47_N16
\u2|Add8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add8~6_combout\ = (\u2|Ball_direction[1]~2_combout\ & ((\u2|Ball_pos_y\(3) & (!\u2|Add8~5\)) # (!\u2|Ball_pos_y\(3) & ((\u2|Add8~5\) # (GND))))) # (!\u2|Ball_direction[1]~2_combout\ & ((\u2|Ball_pos_y\(3) & (\u2|Add8~5\ & VCC)) # (!\u2|Ball_pos_y\(3) 
-- & (!\u2|Add8~5\))))
-- \u2|Add8~7\ = CARRY((\u2|Ball_direction[1]~2_combout\ & ((!\u2|Add8~5\) # (!\u2|Ball_pos_y\(3)))) # (!\u2|Ball_direction[1]~2_combout\ & (!\u2|Ball_pos_y\(3) & !\u2|Add8~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[1]~2_combout\,
	datab => \u2|Ball_pos_y\(3),
	datad => VCC,
	cin => \u2|Add8~5\,
	combout => \u2|Add8~6_combout\,
	cout => \u2|Add8~7\);

-- Location: FF_X64_Y47_N17
\u2|Ball_pos_y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|Add8~6_combout\,
	clrn => \u2|ALT_INV_process_2~0clkctrl_outclk\,
	ena => \u2|Ball_direction[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Ball_pos_y\(3));

-- Location: LCCOMB_X64_Y47_N18
\u2|Add8~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add8~8_combout\ = ((\u2|Ball_pos_y\(4) $ (\u2|Ball_direction[1]~2_combout\ $ (!\u2|Add8~7\)))) # (GND)
-- \u2|Add8~9\ = CARRY((\u2|Ball_pos_y\(4) & (!\u2|Ball_direction[1]~2_combout\ & !\u2|Add8~7\)) # (!\u2|Ball_pos_y\(4) & ((!\u2|Add8~7\) # (!\u2|Ball_direction[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(4),
	datab => \u2|Ball_direction[1]~2_combout\,
	datad => VCC,
	cin => \u2|Add8~7\,
	combout => \u2|Add8~8_combout\,
	cout => \u2|Add8~9\);

-- Location: LCCOMB_X63_Y47_N24
\u2|Ball_pos_y[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_pos_y[4]~3_combout\ = !\u2|Add8~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add8~8_combout\,
	combout => \u2|Ball_pos_y[4]~3_combout\);

-- Location: FF_X63_Y47_N25
\u2|Ball_pos_y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|Ball_pos_y[4]~3_combout\,
	clrn => \u2|ALT_INV_process_2~0clkctrl_outclk\,
	ena => \u2|Ball_direction[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Ball_pos_y\(4));

-- Location: LCCOMB_X64_Y47_N20
\u2|Add8~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add8~10_combout\ = (\u2|Ball_pos_y\(5) & ((\u2|Ball_direction[1]~2_combout\ & ((\u2|Add8~9\) # (GND))) # (!\u2|Ball_direction[1]~2_combout\ & (!\u2|Add8~9\)))) # (!\u2|Ball_pos_y\(5) & ((\u2|Ball_direction[1]~2_combout\ & (!\u2|Add8~9\)) # 
-- (!\u2|Ball_direction[1]~2_combout\ & (\u2|Add8~9\ & VCC))))
-- \u2|Add8~11\ = CARRY((\u2|Ball_pos_y\(5) & ((\u2|Ball_direction[1]~2_combout\) # (!\u2|Add8~9\))) # (!\u2|Ball_pos_y\(5) & (\u2|Ball_direction[1]~2_combout\ & !\u2|Add8~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(5),
	datab => \u2|Ball_direction[1]~2_combout\,
	datad => VCC,
	cin => \u2|Add8~9\,
	combout => \u2|Add8~10_combout\,
	cout => \u2|Add8~11\);

-- Location: LCCOMB_X63_Y47_N30
\u2|Ball_pos_y[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_pos_y[5]~2_combout\ = !\u2|Add8~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add8~10_combout\,
	combout => \u2|Ball_pos_y[5]~2_combout\);

-- Location: FF_X63_Y47_N31
\u2|Ball_pos_y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|Ball_pos_y[5]~2_combout\,
	clrn => \u2|ALT_INV_process_2~0clkctrl_outclk\,
	ena => \u2|Ball_direction[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Ball_pos_y\(5));

-- Location: LCCOMB_X64_Y47_N22
\u2|Add8~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add8~12_combout\ = ((\u2|Ball_pos_y\(6) $ (\u2|Ball_direction[1]~2_combout\ $ (!\u2|Add8~11\)))) # (GND)
-- \u2|Add8~13\ = CARRY((\u2|Ball_pos_y\(6) & (!\u2|Ball_direction[1]~2_combout\ & !\u2|Add8~11\)) # (!\u2|Ball_pos_y\(6) & ((!\u2|Add8~11\) # (!\u2|Ball_direction[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(6),
	datab => \u2|Ball_direction[1]~2_combout\,
	datad => VCC,
	cin => \u2|Add8~11\,
	combout => \u2|Add8~12_combout\,
	cout => \u2|Add8~13\);

-- Location: LCCOMB_X63_Y47_N28
\u2|Ball_pos_y[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_pos_y[6]~1_combout\ = !\u2|Add8~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Add8~12_combout\,
	combout => \u2|Ball_pos_y[6]~1_combout\);

-- Location: FF_X63_Y47_N29
\u2|Ball_pos_y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|Ball_pos_y[6]~1_combout\,
	clrn => \u2|ALT_INV_process_2~0clkctrl_outclk\,
	ena => \u2|Ball_direction[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Ball_pos_y\(6));

-- Location: LCCOMB_X64_Y47_N24
\u2|Add8~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add8~14_combout\ = (\u2|Ball_direction[1]~2_combout\ & ((\u2|Ball_pos_y\(7) & ((\u2|Add8~13\) # (GND))) # (!\u2|Ball_pos_y\(7) & (!\u2|Add8~13\)))) # (!\u2|Ball_direction[1]~2_combout\ & ((\u2|Ball_pos_y\(7) & (!\u2|Add8~13\)) # (!\u2|Ball_pos_y\(7) & 
-- (\u2|Add8~13\ & VCC))))
-- \u2|Add8~15\ = CARRY((\u2|Ball_direction[1]~2_combout\ & ((\u2|Ball_pos_y\(7)) # (!\u2|Add8~13\))) # (!\u2|Ball_direction[1]~2_combout\ & (\u2|Ball_pos_y\(7) & !\u2|Add8~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[1]~2_combout\,
	datab => \u2|Ball_pos_y\(7),
	datad => VCC,
	cin => \u2|Add8~13\,
	combout => \u2|Add8~14_combout\,
	cout => \u2|Add8~15\);

-- Location: LCCOMB_X63_Y47_N26
\u2|Ball_pos_y[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_pos_y[7]~0_combout\ = !\u2|Add8~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|Add8~14_combout\,
	combout => \u2|Ball_pos_y[7]~0_combout\);

-- Location: FF_X63_Y47_N27
\u2|Ball_pos_y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|Ball_pos_y[7]~0_combout\,
	clrn => \u2|ALT_INV_process_2~0clkctrl_outclk\,
	ena => \u2|Ball_direction[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Ball_pos_y\(7));

-- Location: LCCOMB_X64_Y47_N26
\u2|Add8~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add8~16_combout\ = ((\u2|Ball_pos_y\(8) $ (\u2|Ball_direction[1]~2_combout\ $ (\u2|Add8~15\)))) # (GND)
-- \u2|Add8~17\ = CARRY((\u2|Ball_pos_y\(8) & ((!\u2|Add8~15\) # (!\u2|Ball_direction[1]~2_combout\))) # (!\u2|Ball_pos_y\(8) & (!\u2|Ball_direction[1]~2_combout\ & !\u2|Add8~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(8),
	datab => \u2|Ball_direction[1]~2_combout\,
	datad => VCC,
	cin => \u2|Add8~15\,
	combout => \u2|Add8~16_combout\,
	cout => \u2|Add8~17\);

-- Location: FF_X64_Y47_N27
\u2|Ball_pos_y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|Add8~16_combout\,
	clrn => \u2|ALT_INV_process_2~0clkctrl_outclk\,
	ena => \u2|Ball_direction[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Ball_pos_y\(8));

-- Location: LCCOMB_X64_Y47_N28
\u2|Add8~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add8~18_combout\ = \u2|Ball_direction[1]~2_combout\ $ (\u2|Add8~17\ $ (!\u2|Ball_pos_y\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_direction[1]~2_combout\,
	datad => \u2|Ball_pos_y\(9),
	cin => \u2|Add8~17\,
	combout => \u2|Add8~18_combout\);

-- Location: FF_X64_Y47_N29
\u2|Ball_pos_y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|Add8~18_combout\,
	clrn => \u2|ALT_INV_process_2~0clkctrl_outclk\,
	ena => \u2|Ball_direction[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Ball_pos_y\(9));

-- Location: LCCOMB_X62_Y48_N12
\u2|LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan4~1_cout\ = CARRY((\u2|paddle2_pos_y\(0) & !\u2|Ball_pos_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(0),
	datab => \u2|Ball_pos_y\(0),
	datad => VCC,
	cout => \u2|LessThan4~1_cout\);

-- Location: LCCOMB_X62_Y48_N14
\u2|LessThan4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan4~3_cout\ = CARRY((\u2|paddle2_pos_y\(1) & ((\u2|Ball_pos_y\(1)) # (!\u2|LessThan4~1_cout\))) # (!\u2|paddle2_pos_y\(1) & (\u2|Ball_pos_y\(1) & !\u2|LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(1),
	datab => \u2|Ball_pos_y\(1),
	datad => VCC,
	cin => \u2|LessThan4~1_cout\,
	cout => \u2|LessThan4~3_cout\);

-- Location: LCCOMB_X62_Y48_N16
\u2|LessThan4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan4~5_cout\ = CARRY((\u2|Ball_pos_y\(2) & (\u2|Add14~2_combout\ & !\u2|LessThan4~3_cout\)) # (!\u2|Ball_pos_y\(2) & ((\u2|Add14~2_combout\) # (!\u2|LessThan4~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(2),
	datab => \u2|Add14~2_combout\,
	datad => VCC,
	cin => \u2|LessThan4~3_cout\,
	cout => \u2|LessThan4~5_cout\);

-- Location: LCCOMB_X62_Y48_N18
\u2|LessThan4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan4~7_cout\ = CARRY((\u2|Ball_pos_y\(3) & ((!\u2|LessThan4~5_cout\) # (!\u2|Add14~4_combout\))) # (!\u2|Ball_pos_y\(3) & (!\u2|Add14~4_combout\ & !\u2|LessThan4~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(3),
	datab => \u2|Add14~4_combout\,
	datad => VCC,
	cin => \u2|LessThan4~5_cout\,
	cout => \u2|LessThan4~7_cout\);

-- Location: LCCOMB_X62_Y48_N20
\u2|LessThan4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan4~9_cout\ = CARRY((\u2|Add14~6_combout\ & ((\u2|Ball_pos_y\(4)) # (!\u2|LessThan4~7_cout\))) # (!\u2|Add14~6_combout\ & (\u2|Ball_pos_y\(4) & !\u2|LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add14~6_combout\,
	datab => \u2|Ball_pos_y\(4),
	datad => VCC,
	cin => \u2|LessThan4~7_cout\,
	cout => \u2|LessThan4~9_cout\);

-- Location: LCCOMB_X62_Y48_N22
\u2|LessThan4~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan4~11_cout\ = CARRY((\u2|Add14~8_combout\ & (!\u2|Ball_pos_y\(5) & !\u2|LessThan4~9_cout\)) # (!\u2|Add14~8_combout\ & ((!\u2|LessThan4~9_cout\) # (!\u2|Ball_pos_y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add14~8_combout\,
	datab => \u2|Ball_pos_y\(5),
	datad => VCC,
	cin => \u2|LessThan4~9_cout\,
	cout => \u2|LessThan4~11_cout\);

-- Location: LCCOMB_X62_Y48_N24
\u2|LessThan4~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan4~13_cout\ = CARRY((\u2|Add14~10_combout\ & ((\u2|Ball_pos_y\(6)) # (!\u2|LessThan4~11_cout\))) # (!\u2|Add14~10_combout\ & (\u2|Ball_pos_y\(6) & !\u2|LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add14~10_combout\,
	datab => \u2|Ball_pos_y\(6),
	datad => VCC,
	cin => \u2|LessThan4~11_cout\,
	cout => \u2|LessThan4~13_cout\);

-- Location: LCCOMB_X62_Y48_N26
\u2|LessThan4~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan4~15_cout\ = CARRY((\u2|Add14~12_combout\ & (!\u2|Ball_pos_y\(7) & !\u2|LessThan4~13_cout\)) # (!\u2|Add14~12_combout\ & ((!\u2|LessThan4~13_cout\) # (!\u2|Ball_pos_y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add14~12_combout\,
	datab => \u2|Ball_pos_y\(7),
	datad => VCC,
	cin => \u2|LessThan4~13_cout\,
	cout => \u2|LessThan4~15_cout\);

-- Location: LCCOMB_X62_Y48_N28
\u2|LessThan4~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan4~17_cout\ = CARRY((\u2|Add14~14_combout\ & ((!\u2|LessThan4~15_cout\) # (!\u2|Ball_pos_y\(8)))) # (!\u2|Add14~14_combout\ & (!\u2|Ball_pos_y\(8) & !\u2|LessThan4~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add14~14_combout\,
	datab => \u2|Ball_pos_y\(8),
	datad => VCC,
	cin => \u2|LessThan4~15_cout\,
	cout => \u2|LessThan4~17_cout\);

-- Location: LCCOMB_X62_Y48_N30
\u2|LessThan4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan4~18_combout\ = (\u2|Ball_pos_y\(9) & (\u2|LessThan4~17_cout\ & \u2|Add14~16_combout\)) # (!\u2|Ball_pos_y\(9) & ((\u2|LessThan4~17_cout\) # (\u2|Add14~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_y\(9),
	datad => \u2|Add14~16_combout\,
	cin => \u2|LessThan4~17_cout\,
	combout => \u2|LessThan4~18_combout\);

-- Location: LCCOMB_X59_Y48_N2
\u2|LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan5~1_cout\ = CARRY((!\u2|paddle2_pos_y\(0) & \u2|Ball_pos_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(0),
	datab => \u2|Ball_pos_y\(0),
	datad => VCC,
	cout => \u2|LessThan5~1_cout\);

-- Location: LCCOMB_X59_Y48_N4
\u2|LessThan5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan5~3_cout\ = CARRY((\u2|paddle2_pos_y\(1) & (!\u2|Ball_pos_y\(1) & !\u2|LessThan5~1_cout\)) # (!\u2|paddle2_pos_y\(1) & ((!\u2|LessThan5~1_cout\) # (!\u2|Ball_pos_y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(1),
	datab => \u2|Ball_pos_y\(1),
	datad => VCC,
	cin => \u2|LessThan5~1_cout\,
	cout => \u2|LessThan5~3_cout\);

-- Location: LCCOMB_X59_Y48_N6
\u2|LessThan5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan5~5_cout\ = CARRY((\u2|Ball_pos_y\(2) & ((!\u2|LessThan5~3_cout\) # (!\u2|Add15~0_combout\))) # (!\u2|Ball_pos_y\(2) & (!\u2|Add15~0_combout\ & !\u2|LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(2),
	datab => \u2|Add15~0_combout\,
	datad => VCC,
	cin => \u2|LessThan5~3_cout\,
	cout => \u2|LessThan5~5_cout\);

-- Location: LCCOMB_X59_Y48_N8
\u2|LessThan5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan5~7_cout\ = CARRY((\u2|Ball_pos_y\(3) & (\u2|Add15~2_combout\ & !\u2|LessThan5~5_cout\)) # (!\u2|Ball_pos_y\(3) & ((\u2|Add15~2_combout\) # (!\u2|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(3),
	datab => \u2|Add15~2_combout\,
	datad => VCC,
	cin => \u2|LessThan5~5_cout\,
	cout => \u2|LessThan5~7_cout\);

-- Location: LCCOMB_X59_Y48_N10
\u2|LessThan5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan5~9_cout\ = CARRY((\u2|Ball_pos_y\(4) & (!\u2|Add15~4_combout\ & !\u2|LessThan5~7_cout\)) # (!\u2|Ball_pos_y\(4) & ((!\u2|LessThan5~7_cout\) # (!\u2|Add15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(4),
	datab => \u2|Add15~4_combout\,
	datad => VCC,
	cin => \u2|LessThan5~7_cout\,
	cout => \u2|LessThan5~9_cout\);

-- Location: LCCOMB_X59_Y48_N12
\u2|LessThan5~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan5~11_cout\ = CARRY((\u2|Ball_pos_y\(5) & ((\u2|Add15~6_combout\) # (!\u2|LessThan5~9_cout\))) # (!\u2|Ball_pos_y\(5) & (\u2|Add15~6_combout\ & !\u2|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(5),
	datab => \u2|Add15~6_combout\,
	datad => VCC,
	cin => \u2|LessThan5~9_cout\,
	cout => \u2|LessThan5~11_cout\);

-- Location: LCCOMB_X59_Y48_N14
\u2|LessThan5~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan5~13_cout\ = CARRY((\u2|Ball_pos_y\(6) & (!\u2|Add15~8_combout\ & !\u2|LessThan5~11_cout\)) # (!\u2|Ball_pos_y\(6) & ((!\u2|LessThan5~11_cout\) # (!\u2|Add15~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(6),
	datab => \u2|Add15~8_combout\,
	datad => VCC,
	cin => \u2|LessThan5~11_cout\,
	cout => \u2|LessThan5~13_cout\);

-- Location: LCCOMB_X59_Y48_N16
\u2|LessThan5~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan5~15_cout\ = CARRY((\u2|Add15~10_combout\ & ((\u2|Ball_pos_y\(7)) # (!\u2|LessThan5~13_cout\))) # (!\u2|Add15~10_combout\ & (\u2|Ball_pos_y\(7) & !\u2|LessThan5~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add15~10_combout\,
	datab => \u2|Ball_pos_y\(7),
	datad => VCC,
	cin => \u2|LessThan5~13_cout\,
	cout => \u2|LessThan5~15_cout\);

-- Location: LCCOMB_X59_Y48_N18
\u2|LessThan5~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan5~17_cout\ = CARRY((\u2|Ball_pos_y\(8) & ((!\u2|LessThan5~15_cout\) # (!\u2|Add15~12_combout\))) # (!\u2|Ball_pos_y\(8) & (!\u2|Add15~12_combout\ & !\u2|LessThan5~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(8),
	datab => \u2|Add15~12_combout\,
	datad => VCC,
	cin => \u2|LessThan5~15_cout\,
	cout => \u2|LessThan5~17_cout\);

-- Location: LCCOMB_X59_Y48_N20
\u2|LessThan5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan5~18_combout\ = (\u2|Ball_pos_y\(9) & ((\u2|LessThan5~17_cout\) # (!\u2|Add15~14_combout\))) # (!\u2|Ball_pos_y\(9) & (\u2|LessThan5~17_cout\ & !\u2|Add15~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(9),
	datad => \u2|Add15~14_combout\,
	cin => \u2|LessThan5~17_cout\,
	combout => \u2|LessThan5~18_combout\);

-- Location: LCCOMB_X62_Y48_N0
\u2|process_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|process_2~2_combout\ = (\u2|Add15~16_combout\ & (!\u2|Add14~18_combout\ & (\u2|LessThan4~18_combout\))) # (!\u2|Add15~16_combout\ & ((\u2|LessThan5~18_combout\) # ((!\u2|Add14~18_combout\ & \u2|LessThan4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add15~16_combout\,
	datab => \u2|Add14~18_combout\,
	datac => \u2|LessThan4~18_combout\,
	datad => \u2|LessThan5~18_combout\,
	combout => \u2|process_2~2_combout\);

-- Location: LCCOMB_X66_Y46_N30
\u2|Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal12~0_combout\ = (!\u2|Ball_pos_x\(7)) # (!\u2|Ball_pos_x\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_x\(9),
	datac => \u2|Ball_pos_x\(7),
	combout => \u2|Equal12~0_combout\);

-- Location: LCCOMB_X69_Y47_N18
\u2|Equal10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal10~1_combout\ = (!\u2|Ball_pos_x\(2) & (!\u2|Ball_pos_x\(1) & (!\u2|Ball_pos_x\(0) & !\u2|Ball_pos_x\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(2),
	datab => \u2|Ball_pos_x\(1),
	datac => \u2|Ball_pos_x\(0),
	datad => \u2|Ball_pos_x\(5),
	combout => \u2|Equal10~1_combout\);

-- Location: LCCOMB_X69_Y47_N24
\u2|Equal10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal10~2_combout\ = (\u2|Ball_pos_x\(8) & (\u2|Ball_pos_x\(6) & (\u2|LessThan13~0_combout\ & \u2|Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(8),
	datab => \u2|Ball_pos_x\(6),
	datac => \u2|LessThan13~0_combout\,
	datad => \u2|Equal10~1_combout\,
	combout => \u2|Equal10~2_combout\);

-- Location: LCCOMB_X65_Y46_N26
\u2|Ball_direction~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~62_combout\ = (!\u2|Equal12~0_combout\ & (\u2|Equal10~2_combout\ & (!\u2|Ball_direction[1]~2_combout\ & !\u2|Ball_direction[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Equal12~0_combout\,
	datab => \u2|Equal10~2_combout\,
	datac => \u2|Ball_direction[1]~2_combout\,
	datad => \u2|Ball_direction[0]~6_combout\,
	combout => \u2|Ball_direction~62_combout\);

-- Location: LCCOMB_X65_Y46_N22
\u2|Ball_direction[0]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[0]~39_combout\ = (!\u2|Ball_direction~23_combout\ & (!\u2|Ball_pos_x\(9) & !\u2|Ball_pos_x\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_direction~23_combout\,
	datac => \u2|Ball_pos_x\(9),
	datad => \u2|Ball_pos_x\(7),
	combout => \u2|Ball_direction[0]~39_combout\);

-- Location: LCCOMB_X65_Y46_N24
\u2|Ball_direction~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~63_combout\ = (((\u2|Ball_direction[0]~6_combout\ & !\u2|Ball_direction[1]~2_combout\)) # (!\u2|Equal10~2_combout\)) # (!\u2|Ball_direction[0]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[0]~39_combout\,
	datab => \u2|Ball_direction[0]~6_combout\,
	datac => \u2|Equal10~2_combout\,
	datad => \u2|Ball_direction[1]~2_combout\,
	combout => \u2|Ball_direction~63_combout\);

-- Location: LCCOMB_X65_Y46_N10
\u2|Ball_direction[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[0]~35_combout\ = ((\u2|Ball_direction~28_combout\) # ((!\u2|Equal10~2_combout\) # (!\u2|Ball_pos_x\(9)))) # (!\u2|Ball_pos_x\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(7),
	datab => \u2|Ball_direction~28_combout\,
	datac => \u2|Ball_pos_x\(9),
	datad => \u2|Equal10~2_combout\,
	combout => \u2|Ball_direction[0]~35_combout\);

-- Location: LCCOMB_X60_Y46_N26
\u2|Ball_direction~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~64_combout\ = (!\u2|Ball_direction[2]~10_combout\ & ((\u2|Ball_direction~62_combout\) # ((\u2|Ball_direction~63_combout\ & \u2|Ball_direction[0]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction~62_combout\,
	datab => \u2|Ball_direction~63_combout\,
	datac => \u2|Ball_direction[2]~10_combout\,
	datad => \u2|Ball_direction[0]~35_combout\,
	combout => \u2|Ball_direction~64_combout\);

-- Location: LCCOMB_X65_Y49_N8
\u2|Add29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add29~0_combout\ = \u2|Ball_pos_x\(0) $ (VCC)
-- \u2|Add29~1\ = CARRY(\u2|Ball_pos_x\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_x\(0),
	datad => VCC,
	combout => \u2|Add29~0_combout\,
	cout => \u2|Add29~1\);

-- Location: LCCOMB_X65_Y49_N10
\u2|Add29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add29~2_combout\ = (\u2|Ball_pos_x\(1) & (\u2|Add29~1\ & VCC)) # (!\u2|Ball_pos_x\(1) & (!\u2|Add29~1\))
-- \u2|Add29~3\ = CARRY((!\u2|Ball_pos_x\(1) & !\u2|Add29~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(1),
	datad => VCC,
	cin => \u2|Add29~1\,
	combout => \u2|Add29~2_combout\,
	cout => \u2|Add29~3\);

-- Location: LCCOMB_X65_Y49_N12
\u2|Add29~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add29~4_combout\ = (\u2|Ball_pos_x\(2) & (\u2|Add29~3\ $ (GND))) # (!\u2|Ball_pos_x\(2) & (!\u2|Add29~3\ & VCC))
-- \u2|Add29~5\ = CARRY((\u2|Ball_pos_x\(2) & !\u2|Add29~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(2),
	datad => VCC,
	cin => \u2|Add29~3\,
	combout => \u2|Add29~4_combout\,
	cout => \u2|Add29~5\);

-- Location: LCCOMB_X65_Y49_N14
\u2|Add29~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add29~6_combout\ = (\u2|Ball_pos_x\(3) & (!\u2|Add29~5\)) # (!\u2|Ball_pos_x\(3) & ((\u2|Add29~5\) # (GND)))
-- \u2|Add29~7\ = CARRY((!\u2|Add29~5\) # (!\u2|Ball_pos_x\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(3),
	datad => VCC,
	cin => \u2|Add29~5\,
	combout => \u2|Add29~6_combout\,
	cout => \u2|Add29~7\);

-- Location: LCCOMB_X65_Y49_N16
\u2|Add29~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add29~8_combout\ = (\u2|Ball_pos_x\(4) & (\u2|Add29~7\ $ (GND))) # (!\u2|Ball_pos_x\(4) & (!\u2|Add29~7\ & VCC))
-- \u2|Add29~9\ = CARRY((\u2|Ball_pos_x\(4) & !\u2|Add29~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_x\(4),
	datad => VCC,
	cin => \u2|Add29~7\,
	combout => \u2|Add29~8_combout\,
	cout => \u2|Add29~9\);

-- Location: LCCOMB_X65_Y49_N18
\u2|Add29~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add29~10_combout\ = (\u2|Ball_pos_x\(5) & (!\u2|Add29~9\)) # (!\u2|Ball_pos_x\(5) & ((\u2|Add29~9\) # (GND)))
-- \u2|Add29~11\ = CARRY((!\u2|Add29~9\) # (!\u2|Ball_pos_x\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_x\(5),
	datad => VCC,
	cin => \u2|Add29~9\,
	combout => \u2|Add29~10_combout\,
	cout => \u2|Add29~11\);

-- Location: LCCOMB_X65_Y49_N20
\u2|Add29~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add29~12_combout\ = (\u2|Ball_pos_x\(6) & (!\u2|Add29~11\ & VCC)) # (!\u2|Ball_pos_x\(6) & (\u2|Add29~11\ $ (GND)))
-- \u2|Add29~13\ = CARRY((!\u2|Ball_pos_x\(6) & !\u2|Add29~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(6),
	datad => VCC,
	cin => \u2|Add29~11\,
	combout => \u2|Add29~12_combout\,
	cout => \u2|Add29~13\);

-- Location: LCCOMB_X65_Y49_N22
\u2|Add29~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add29~14_combout\ = (\u2|Ball_pos_x\(7) & (!\u2|Add29~13\)) # (!\u2|Ball_pos_x\(7) & ((\u2|Add29~13\) # (GND)))
-- \u2|Add29~15\ = CARRY((!\u2|Add29~13\) # (!\u2|Ball_pos_x\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_x\(7),
	datad => VCC,
	cin => \u2|Add29~13\,
	combout => \u2|Add29~14_combout\,
	cout => \u2|Add29~15\);

-- Location: LCCOMB_X65_Y49_N24
\u2|Add29~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add29~16_combout\ = (\u2|Ball_pos_x\(8) & (!\u2|Add29~15\ & VCC)) # (!\u2|Ball_pos_x\(8) & (\u2|Add29~15\ $ (GND)))
-- \u2|Add29~17\ = CARRY((!\u2|Ball_pos_x\(8) & !\u2|Add29~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_x\(8),
	datad => VCC,
	cin => \u2|Add29~15\,
	combout => \u2|Add29~16_combout\,
	cout => \u2|Add29~17\);

-- Location: LCCOMB_X65_Y49_N26
\u2|Add29~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add29~18_combout\ = (\u2|Ball_pos_x\(9) & (!\u2|Add29~17\)) # (!\u2|Ball_pos_x\(9) & ((\u2|Add29~17\) # (GND)))
-- \u2|Add29~19\ = CARRY((!\u2|Add29~17\) # (!\u2|Ball_pos_x\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(9),
	datad => VCC,
	cin => \u2|Add29~17\,
	combout => \u2|Add29~18_combout\,
	cout => \u2|Add29~19\);

-- Location: LCCOMB_X65_Y49_N28
\u2|Add29~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add29~20_combout\ = !\u2|Add29~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u2|Add29~19\,
	combout => \u2|Add29~20_combout\);

-- Location: LCCOMB_X63_Y47_N0
\u2|Add12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add12~0_combout\ = \u2|Ball_pos_y\(0) $ (VCC)
-- \u2|Add12~1\ = CARRY(\u2|Ball_pos_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(0),
	datad => VCC,
	combout => \u2|Add12~0_combout\,
	cout => \u2|Add12~1\);

-- Location: LCCOMB_X63_Y47_N2
\u2|Add12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add12~2_combout\ = (\u2|Ball_pos_y\(1) & (!\u2|Add12~1\)) # (!\u2|Ball_pos_y\(1) & ((\u2|Add12~1\) # (GND)))
-- \u2|Add12~3\ = CARRY((!\u2|Add12~1\) # (!\u2|Ball_pos_y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_y\(1),
	datad => VCC,
	cin => \u2|Add12~1\,
	combout => \u2|Add12~2_combout\,
	cout => \u2|Add12~3\);

-- Location: LCCOMB_X63_Y47_N4
\u2|Add12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add12~4_combout\ = (\u2|Ball_pos_y\(2) & ((GND) # (!\u2|Add12~3\))) # (!\u2|Ball_pos_y\(2) & (\u2|Add12~3\ $ (GND)))
-- \u2|Add12~5\ = CARRY((\u2|Ball_pos_y\(2)) # (!\u2|Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_y\(2),
	datad => VCC,
	cin => \u2|Add12~3\,
	combout => \u2|Add12~4_combout\,
	cout => \u2|Add12~5\);

-- Location: LCCOMB_X63_Y47_N6
\u2|Add12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add12~6_combout\ = (\u2|Ball_pos_y\(3) & (\u2|Add12~5\ & VCC)) # (!\u2|Ball_pos_y\(3) & (!\u2|Add12~5\))
-- \u2|Add12~7\ = CARRY((!\u2|Ball_pos_y\(3) & !\u2|Add12~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_y\(3),
	datad => VCC,
	cin => \u2|Add12~5\,
	combout => \u2|Add12~6_combout\,
	cout => \u2|Add12~7\);

-- Location: LCCOMB_X63_Y47_N8
\u2|Add12~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add12~8_combout\ = (\u2|Ball_pos_y\(4) & (\u2|Add12~7\ $ (GND))) # (!\u2|Ball_pos_y\(4) & ((GND) # (!\u2|Add12~7\)))
-- \u2|Add12~9\ = CARRY((!\u2|Add12~7\) # (!\u2|Ball_pos_y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_y\(4),
	datad => VCC,
	cin => \u2|Add12~7\,
	combout => \u2|Add12~8_combout\,
	cout => \u2|Add12~9\);

-- Location: LCCOMB_X63_Y47_N10
\u2|Add12~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add12~10_combout\ = (\u2|Ball_pos_y\(5) & (!\u2|Add12~9\)) # (!\u2|Ball_pos_y\(5) & (\u2|Add12~9\ & VCC))
-- \u2|Add12~11\ = CARRY((\u2|Ball_pos_y\(5) & !\u2|Add12~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(5),
	datad => VCC,
	cin => \u2|Add12~9\,
	combout => \u2|Add12~10_combout\,
	cout => \u2|Add12~11\);

-- Location: LCCOMB_X63_Y47_N12
\u2|Add12~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add12~12_combout\ = (\u2|Ball_pos_y\(6) & (\u2|Add12~11\ $ (GND))) # (!\u2|Ball_pos_y\(6) & ((GND) # (!\u2|Add12~11\)))
-- \u2|Add12~13\ = CARRY((!\u2|Add12~11\) # (!\u2|Ball_pos_y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_y\(6),
	datad => VCC,
	cin => \u2|Add12~11\,
	combout => \u2|Add12~12_combout\,
	cout => \u2|Add12~13\);

-- Location: LCCOMB_X63_Y47_N14
\u2|Add12~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add12~14_combout\ = (\u2|Ball_pos_y\(7) & (!\u2|Add12~13\)) # (!\u2|Ball_pos_y\(7) & (\u2|Add12~13\ & VCC))
-- \u2|Add12~15\ = CARRY((\u2|Ball_pos_y\(7) & !\u2|Add12~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(7),
	datad => VCC,
	cin => \u2|Add12~13\,
	combout => \u2|Add12~14_combout\,
	cout => \u2|Add12~15\);

-- Location: LCCOMB_X63_Y47_N16
\u2|Add12~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add12~16_combout\ = (\u2|Ball_pos_y\(8) & ((GND) # (!\u2|Add12~15\))) # (!\u2|Ball_pos_y\(8) & (\u2|Add12~15\ $ (GND)))
-- \u2|Add12~17\ = CARRY((\u2|Ball_pos_y\(8)) # (!\u2|Add12~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_y\(8),
	datad => VCC,
	cin => \u2|Add12~15\,
	combout => \u2|Add12~16_combout\,
	cout => \u2|Add12~17\);

-- Location: LCCOMB_X63_Y47_N18
\u2|Add12~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add12~18_combout\ = (\u2|Ball_pos_y\(9) & (\u2|Add12~17\ & VCC)) # (!\u2|Ball_pos_y\(9) & (!\u2|Add12~17\))
-- \u2|Add12~19\ = CARRY((!\u2|Ball_pos_y\(9) & !\u2|Add12~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_y\(9),
	datad => VCC,
	cin => \u2|Add12~17\,
	combout => \u2|Add12~18_combout\,
	cout => \u2|Add12~19\);

-- Location: LCCOMB_X63_Y47_N20
\u2|Add12~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add12~20_combout\ = \u2|Add12~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u2|Add12~19\,
	combout => \u2|Add12~20_combout\);

-- Location: LCCOMB_X62_Y50_N12
\u2|Add13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add13~0_combout\ = (\u2|paddle2_pos_y\(1) & (\u2|paddle2_pos_y\(2) $ (VCC))) # (!\u2|paddle2_pos_y\(1) & (\u2|paddle2_pos_y\(2) & VCC))
-- \u2|Add13~1\ = CARRY((\u2|paddle2_pos_y\(1) & \u2|paddle2_pos_y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(1),
	datab => \u2|paddle2_pos_y\(2),
	datad => VCC,
	combout => \u2|Add13~0_combout\,
	cout => \u2|Add13~1\);

-- Location: LCCOMB_X62_Y50_N14
\u2|Add13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add13~2_combout\ = (\u2|paddle2_pos_y\(3) & (!\u2|Add13~1\)) # (!\u2|paddle2_pos_y\(3) & ((\u2|Add13~1\) # (GND)))
-- \u2|Add13~3\ = CARRY((!\u2|Add13~1\) # (!\u2|paddle2_pos_y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(3),
	datad => VCC,
	cin => \u2|Add13~1\,
	combout => \u2|Add13~2_combout\,
	cout => \u2|Add13~3\);

-- Location: LCCOMB_X62_Y50_N16
\u2|Add13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add13~4_combout\ = (\u2|paddle2_pos_y\(4) & (!\u2|Add13~3\ & VCC)) # (!\u2|paddle2_pos_y\(4) & (\u2|Add13~3\ $ (GND)))
-- \u2|Add13~5\ = CARRY((!\u2|paddle2_pos_y\(4) & !\u2|Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(4),
	datad => VCC,
	cin => \u2|Add13~3\,
	combout => \u2|Add13~4_combout\,
	cout => \u2|Add13~5\);

-- Location: LCCOMB_X62_Y50_N18
\u2|Add13~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add13~6_combout\ = (\u2|paddle2_pos_y\(5) & (!\u2|Add13~5\)) # (!\u2|paddle2_pos_y\(5) & (\u2|Add13~5\ & VCC))
-- \u2|Add13~7\ = CARRY((\u2|paddle2_pos_y\(5) & !\u2|Add13~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(5),
	datad => VCC,
	cin => \u2|Add13~5\,
	combout => \u2|Add13~6_combout\,
	cout => \u2|Add13~7\);

-- Location: LCCOMB_X62_Y50_N20
\u2|Add13~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add13~8_combout\ = (\u2|paddle2_pos_y\(6) & (\u2|Add13~7\ $ (GND))) # (!\u2|paddle2_pos_y\(6) & ((GND) # (!\u2|Add13~7\)))
-- \u2|Add13~9\ = CARRY((!\u2|Add13~7\) # (!\u2|paddle2_pos_y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(6),
	datad => VCC,
	cin => \u2|Add13~7\,
	combout => \u2|Add13~8_combout\,
	cout => \u2|Add13~9\);

-- Location: LCCOMB_X62_Y50_N22
\u2|Add13~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add13~10_combout\ = (\u2|paddle2_pos_y\(7) & (!\u2|Add13~9\)) # (!\u2|paddle2_pos_y\(7) & (\u2|Add13~9\ & VCC))
-- \u2|Add13~11\ = CARRY((\u2|paddle2_pos_y\(7) & !\u2|Add13~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(7),
	datad => VCC,
	cin => \u2|Add13~9\,
	combout => \u2|Add13~10_combout\,
	cout => \u2|Add13~11\);

-- Location: LCCOMB_X62_Y50_N24
\u2|Add13~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add13~12_combout\ = (\u2|paddle2_pos_y\(8) & ((GND) # (!\u2|Add13~11\))) # (!\u2|paddle2_pos_y\(8) & (\u2|Add13~11\ $ (GND)))
-- \u2|Add13~13\ = CARRY((\u2|paddle2_pos_y\(8)) # (!\u2|Add13~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(8),
	datad => VCC,
	cin => \u2|Add13~11\,
	combout => \u2|Add13~12_combout\,
	cout => \u2|Add13~13\);

-- Location: LCCOMB_X62_Y50_N26
\u2|Add13~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add13~14_combout\ = (\u2|paddle2_pos_y\(9) & (\u2|Add13~13\ & VCC)) # (!\u2|paddle2_pos_y\(9) & (!\u2|Add13~13\))
-- \u2|Add13~15\ = CARRY((!\u2|paddle2_pos_y\(9) & !\u2|Add13~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(9),
	datad => VCC,
	cin => \u2|Add13~13\,
	combout => \u2|Add13~14_combout\,
	cout => \u2|Add13~15\);

-- Location: LCCOMB_X62_Y50_N28
\u2|Add13~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add13~16_combout\ = \u2|Add13~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u2|Add13~15\,
	combout => \u2|Add13~16_combout\);

-- Location: LCCOMB_X61_Y50_N6
\u2|Add27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add27~0_combout\ = \u2|paddle2_pos_y\(1) $ (VCC)
-- \u2|Add27~1\ = CARRY(\u2|paddle2_pos_y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(1),
	datad => VCC,
	combout => \u2|Add27~0_combout\,
	cout => \u2|Add27~1\);

-- Location: LCCOMB_X61_Y50_N8
\u2|Add27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add27~2_combout\ = (\u2|paddle2_pos_y\(2) & (\u2|Add27~1\ & VCC)) # (!\u2|paddle2_pos_y\(2) & (!\u2|Add27~1\))
-- \u2|Add27~3\ = CARRY((!\u2|paddle2_pos_y\(2) & !\u2|Add27~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(2),
	datad => VCC,
	cin => \u2|Add27~1\,
	combout => \u2|Add27~2_combout\,
	cout => \u2|Add27~3\);

-- Location: LCCOMB_X61_Y50_N10
\u2|Add27~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add27~4_combout\ = (\u2|paddle2_pos_y\(3) & ((GND) # (!\u2|Add27~3\))) # (!\u2|paddle2_pos_y\(3) & (\u2|Add27~3\ $ (GND)))
-- \u2|Add27~5\ = CARRY((\u2|paddle2_pos_y\(3)) # (!\u2|Add27~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(3),
	datad => VCC,
	cin => \u2|Add27~3\,
	combout => \u2|Add27~4_combout\,
	cout => \u2|Add27~5\);

-- Location: LCCOMB_X61_Y50_N12
\u2|Add27~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add27~6_combout\ = (\u2|paddle2_pos_y\(4) & (!\u2|Add27~5\)) # (!\u2|paddle2_pos_y\(4) & (\u2|Add27~5\ & VCC))
-- \u2|Add27~7\ = CARRY((\u2|paddle2_pos_y\(4) & !\u2|Add27~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(4),
	datad => VCC,
	cin => \u2|Add27~5\,
	combout => \u2|Add27~6_combout\,
	cout => \u2|Add27~7\);

-- Location: LCCOMB_X61_Y50_N14
\u2|Add27~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add27~8_combout\ = (\u2|paddle2_pos_y\(5) & (!\u2|Add27~7\ & VCC)) # (!\u2|paddle2_pos_y\(5) & (\u2|Add27~7\ $ (GND)))
-- \u2|Add27~9\ = CARRY((!\u2|paddle2_pos_y\(5) & !\u2|Add27~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(5),
	datad => VCC,
	cin => \u2|Add27~7\,
	combout => \u2|Add27~8_combout\,
	cout => \u2|Add27~9\);

-- Location: LCCOMB_X61_Y50_N16
\u2|Add27~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add27~10_combout\ = (\u2|paddle2_pos_y\(6) & ((\u2|Add27~9\) # (GND))) # (!\u2|paddle2_pos_y\(6) & (!\u2|Add27~9\))
-- \u2|Add27~11\ = CARRY((\u2|paddle2_pos_y\(6)) # (!\u2|Add27~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(6),
	datad => VCC,
	cin => \u2|Add27~9\,
	combout => \u2|Add27~10_combout\,
	cout => \u2|Add27~11\);

-- Location: LCCOMB_X61_Y50_N18
\u2|Add27~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add27~12_combout\ = (\u2|paddle2_pos_y\(7) & (!\u2|Add27~11\ & VCC)) # (!\u2|paddle2_pos_y\(7) & (\u2|Add27~11\ $ (GND)))
-- \u2|Add27~13\ = CARRY((!\u2|paddle2_pos_y\(7) & !\u2|Add27~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle2_pos_y\(7),
	datad => VCC,
	cin => \u2|Add27~11\,
	combout => \u2|Add27~12_combout\,
	cout => \u2|Add27~13\);

-- Location: LCCOMB_X61_Y50_N20
\u2|Add27~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add27~14_combout\ = (\u2|paddle2_pos_y\(8) & (!\u2|Add27~13\)) # (!\u2|paddle2_pos_y\(8) & ((\u2|Add27~13\) # (GND)))
-- \u2|Add27~15\ = CARRY((!\u2|Add27~13\) # (!\u2|paddle2_pos_y\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(8),
	datad => VCC,
	cin => \u2|Add27~13\,
	combout => \u2|Add27~14_combout\,
	cout => \u2|Add27~15\);

-- Location: LCCOMB_X61_Y50_N22
\u2|Add27~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add27~16_combout\ = (\u2|paddle2_pos_y\(9) & (\u2|Add27~15\ $ (GND))) # (!\u2|paddle2_pos_y\(9) & (!\u2|Add27~15\ & VCC))
-- \u2|Add27~17\ = CARRY((\u2|paddle2_pos_y\(9) & !\u2|Add27~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(9),
	datad => VCC,
	cin => \u2|Add27~15\,
	combout => \u2|Add27~16_combout\,
	cout => \u2|Add27~17\);

-- Location: LCCOMB_X61_Y50_N24
\u2|Add27~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add27~18_combout\ = \u2|Add27~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u2|Add27~17\,
	combout => \u2|Add27~18_combout\);

-- Location: LCCOMB_X60_Y47_N10
\u2|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan2~1_cout\ = CARRY((\u2|Add12~0_combout\ & !\u2|paddle2_pos_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add12~0_combout\,
	datab => \u2|paddle2_pos_y\(0),
	datad => VCC,
	cout => \u2|LessThan2~1_cout\);

-- Location: LCCOMB_X60_Y47_N12
\u2|LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan2~3_cout\ = CARRY((\u2|Add27~0_combout\ & ((!\u2|LessThan2~1_cout\) # (!\u2|Add12~2_combout\))) # (!\u2|Add27~0_combout\ & (!\u2|Add12~2_combout\ & !\u2|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add27~0_combout\,
	datab => \u2|Add12~2_combout\,
	datad => VCC,
	cin => \u2|LessThan2~1_cout\,
	cout => \u2|LessThan2~3_cout\);

-- Location: LCCOMB_X60_Y47_N14
\u2|LessThan2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan2~5_cout\ = CARRY((\u2|Add12~4_combout\ & ((!\u2|LessThan2~3_cout\) # (!\u2|Add27~2_combout\))) # (!\u2|Add12~4_combout\ & (!\u2|Add27~2_combout\ & !\u2|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add12~4_combout\,
	datab => \u2|Add27~2_combout\,
	datad => VCC,
	cin => \u2|LessThan2~3_cout\,
	cout => \u2|LessThan2~5_cout\);

-- Location: LCCOMB_X60_Y47_N16
\u2|LessThan2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan2~7_cout\ = CARRY((\u2|Add27~4_combout\ & ((!\u2|LessThan2~5_cout\) # (!\u2|Add12~6_combout\))) # (!\u2|Add27~4_combout\ & (!\u2|Add12~6_combout\ & !\u2|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add27~4_combout\,
	datab => \u2|Add12~6_combout\,
	datad => VCC,
	cin => \u2|LessThan2~5_cout\,
	cout => \u2|LessThan2~7_cout\);

-- Location: LCCOMB_X60_Y47_N18
\u2|LessThan2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan2~9_cout\ = CARRY((\u2|Add12~8_combout\ & ((!\u2|LessThan2~7_cout\) # (!\u2|Add27~6_combout\))) # (!\u2|Add12~8_combout\ & (!\u2|Add27~6_combout\ & !\u2|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add12~8_combout\,
	datab => \u2|Add27~6_combout\,
	datad => VCC,
	cin => \u2|LessThan2~7_cout\,
	cout => \u2|LessThan2~9_cout\);

-- Location: LCCOMB_X60_Y47_N20
\u2|LessThan2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan2~11_cout\ = CARRY((\u2|Add12~10_combout\ & (\u2|Add27~8_combout\ & !\u2|LessThan2~9_cout\)) # (!\u2|Add12~10_combout\ & ((\u2|Add27~8_combout\) # (!\u2|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add12~10_combout\,
	datab => \u2|Add27~8_combout\,
	datad => VCC,
	cin => \u2|LessThan2~9_cout\,
	cout => \u2|LessThan2~11_cout\);

-- Location: LCCOMB_X60_Y47_N22
\u2|LessThan2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan2~13_cout\ = CARRY((\u2|Add27~10_combout\ & (\u2|Add12~12_combout\ & !\u2|LessThan2~11_cout\)) # (!\u2|Add27~10_combout\ & ((\u2|Add12~12_combout\) # (!\u2|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add27~10_combout\,
	datab => \u2|Add12~12_combout\,
	datad => VCC,
	cin => \u2|LessThan2~11_cout\,
	cout => \u2|LessThan2~13_cout\);

-- Location: LCCOMB_X60_Y47_N24
\u2|LessThan2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan2~15_cout\ = CARRY((\u2|Add27~12_combout\ & ((!\u2|LessThan2~13_cout\) # (!\u2|Add12~14_combout\))) # (!\u2|Add27~12_combout\ & (!\u2|Add12~14_combout\ & !\u2|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add27~12_combout\,
	datab => \u2|Add12~14_combout\,
	datad => VCC,
	cin => \u2|LessThan2~13_cout\,
	cout => \u2|LessThan2~15_cout\);

-- Location: LCCOMB_X60_Y47_N26
\u2|LessThan2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan2~17_cout\ = CARRY((\u2|Add12~16_combout\ & ((!\u2|LessThan2~15_cout\) # (!\u2|Add27~14_combout\))) # (!\u2|Add12~16_combout\ & (!\u2|Add27~14_combout\ & !\u2|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add12~16_combout\,
	datab => \u2|Add27~14_combout\,
	datad => VCC,
	cin => \u2|LessThan2~15_cout\,
	cout => \u2|LessThan2~17_cout\);

-- Location: LCCOMB_X60_Y47_N28
\u2|LessThan2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan2~19_cout\ = CARRY((\u2|Add12~18_combout\ & (\u2|Add27~16_combout\ & !\u2|LessThan2~17_cout\)) # (!\u2|Add12~18_combout\ & ((\u2|Add27~16_combout\) # (!\u2|LessThan2~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add12~18_combout\,
	datab => \u2|Add27~16_combout\,
	datad => VCC,
	cin => \u2|LessThan2~17_cout\,
	cout => \u2|LessThan2~19_cout\);

-- Location: LCCOMB_X60_Y47_N30
\u2|LessThan2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan2~20_combout\ = (\u2|Add12~20_combout\ & ((!\u2|Add27~18_combout\) # (!\u2|LessThan2~19_cout\))) # (!\u2|Add12~20_combout\ & (!\u2|LessThan2~19_cout\ & !\u2|Add27~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Add12~20_combout\,
	datad => \u2|Add27~18_combout\,
	cin => \u2|LessThan2~19_cout\,
	combout => \u2|LessThan2~20_combout\);

-- Location: LCCOMB_X61_Y47_N0
\u2|Add31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add31~0_combout\ = \u2|Ball_pos_y\(0) $ (VCC)
-- \u2|Add31~1\ = CARRY(\u2|Ball_pos_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(0),
	datad => VCC,
	combout => \u2|Add31~0_combout\,
	cout => \u2|Add31~1\);

-- Location: LCCOMB_X61_Y47_N2
\u2|Add31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add31~2_combout\ = (\u2|Ball_pos_y\(1) & (\u2|Add31~1\ & VCC)) # (!\u2|Ball_pos_y\(1) & (!\u2|Add31~1\))
-- \u2|Add31~3\ = CARRY((!\u2|Ball_pos_y\(1) & !\u2|Add31~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_y\(1),
	datad => VCC,
	cin => \u2|Add31~1\,
	combout => \u2|Add31~2_combout\,
	cout => \u2|Add31~3\);

-- Location: LCCOMB_X61_Y47_N4
\u2|Add31~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add31~4_combout\ = (\u2|Ball_pos_y\(2) & (\u2|Add31~3\ $ (GND))) # (!\u2|Ball_pos_y\(2) & (!\u2|Add31~3\ & VCC))
-- \u2|Add31~5\ = CARRY((\u2|Ball_pos_y\(2) & !\u2|Add31~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_y\(2),
	datad => VCC,
	cin => \u2|Add31~3\,
	combout => \u2|Add31~4_combout\,
	cout => \u2|Add31~5\);

-- Location: LCCOMB_X61_Y47_N6
\u2|Add31~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add31~6_combout\ = (\u2|Ball_pos_y\(3) & (!\u2|Add31~5\)) # (!\u2|Ball_pos_y\(3) & ((\u2|Add31~5\) # (GND)))
-- \u2|Add31~7\ = CARRY((!\u2|Add31~5\) # (!\u2|Ball_pos_y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(3),
	datad => VCC,
	cin => \u2|Add31~5\,
	combout => \u2|Add31~6_combout\,
	cout => \u2|Add31~7\);

-- Location: LCCOMB_X61_Y47_N8
\u2|Add31~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add31~8_combout\ = (\u2|Ball_pos_y\(4) & (!\u2|Add31~7\ & VCC)) # (!\u2|Ball_pos_y\(4) & (\u2|Add31~7\ $ (GND)))
-- \u2|Add31~9\ = CARRY((!\u2|Ball_pos_y\(4) & !\u2|Add31~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(4),
	datad => VCC,
	cin => \u2|Add31~7\,
	combout => \u2|Add31~8_combout\,
	cout => \u2|Add31~9\);

-- Location: LCCOMB_X61_Y47_N10
\u2|Add31~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add31~10_combout\ = (\u2|Ball_pos_y\(5) & ((\u2|Add31~9\) # (GND))) # (!\u2|Ball_pos_y\(5) & (!\u2|Add31~9\))
-- \u2|Add31~11\ = CARRY((\u2|Ball_pos_y\(5)) # (!\u2|Add31~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_y\(5),
	datad => VCC,
	cin => \u2|Add31~9\,
	combout => \u2|Add31~10_combout\,
	cout => \u2|Add31~11\);

-- Location: LCCOMB_X61_Y47_N12
\u2|Add31~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add31~12_combout\ = (\u2|Ball_pos_y\(6) & (!\u2|Add31~11\ & VCC)) # (!\u2|Ball_pos_y\(6) & (\u2|Add31~11\ $ (GND)))
-- \u2|Add31~13\ = CARRY((!\u2|Ball_pos_y\(6) & !\u2|Add31~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_y\(6),
	datad => VCC,
	cin => \u2|Add31~11\,
	combout => \u2|Add31~12_combout\,
	cout => \u2|Add31~13\);

-- Location: LCCOMB_X61_Y47_N14
\u2|Add31~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add31~14_combout\ = (\u2|Ball_pos_y\(7) & ((\u2|Add31~13\) # (GND))) # (!\u2|Ball_pos_y\(7) & (!\u2|Add31~13\))
-- \u2|Add31~15\ = CARRY((\u2|Ball_pos_y\(7)) # (!\u2|Add31~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(7),
	datad => VCC,
	cin => \u2|Add31~13\,
	combout => \u2|Add31~14_combout\,
	cout => \u2|Add31~15\);

-- Location: LCCOMB_X61_Y47_N16
\u2|Add31~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add31~16_combout\ = (\u2|Ball_pos_y\(8) & (\u2|Add31~15\ $ (GND))) # (!\u2|Ball_pos_y\(8) & (!\u2|Add31~15\ & VCC))
-- \u2|Add31~17\ = CARRY((\u2|Ball_pos_y\(8) & !\u2|Add31~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_y\(8),
	datad => VCC,
	cin => \u2|Add31~15\,
	combout => \u2|Add31~16_combout\,
	cout => \u2|Add31~17\);

-- Location: LCCOMB_X61_Y47_N18
\u2|Add31~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add31~18_combout\ = (\u2|Ball_pos_y\(9) & (!\u2|Add31~17\)) # (!\u2|Ball_pos_y\(9) & ((\u2|Add31~17\) # (GND)))
-- \u2|Add31~19\ = CARRY((!\u2|Add31~17\) # (!\u2|Ball_pos_y\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_y\(9),
	datad => VCC,
	cin => \u2|Add31~17\,
	combout => \u2|Add31~18_combout\,
	cout => \u2|Add31~19\);

-- Location: LCCOMB_X61_Y47_N20
\u2|Add31~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add31~20_combout\ = !\u2|Add31~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u2|Add31~19\,
	combout => \u2|Add31~20_combout\);

-- Location: LCCOMB_X61_Y46_N0
\u2|LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan3~1_cout\ = CARRY((\u2|paddle2_pos_y\(0) & !\u2|Add31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(0),
	datab => \u2|Add31~0_combout\,
	datad => VCC,
	cout => \u2|LessThan3~1_cout\);

-- Location: LCCOMB_X61_Y46_N2
\u2|LessThan3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan3~3_cout\ = CARRY((\u2|Add31~2_combout\ & ((\u2|paddle2_pos_y\(1)) # (!\u2|LessThan3~1_cout\))) # (!\u2|Add31~2_combout\ & (\u2|paddle2_pos_y\(1) & !\u2|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add31~2_combout\,
	datab => \u2|paddle2_pos_y\(1),
	datad => VCC,
	cin => \u2|LessThan3~1_cout\,
	cout => \u2|LessThan3~3_cout\);

-- Location: LCCOMB_X61_Y46_N4
\u2|LessThan3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan3~5_cout\ = CARRY((\u2|Add31~4_combout\ & (\u2|Add13~0_combout\ & !\u2|LessThan3~3_cout\)) # (!\u2|Add31~4_combout\ & ((\u2|Add13~0_combout\) # (!\u2|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add31~4_combout\,
	datab => \u2|Add13~0_combout\,
	datad => VCC,
	cin => \u2|LessThan3~3_cout\,
	cout => \u2|LessThan3~5_cout\);

-- Location: LCCOMB_X61_Y46_N6
\u2|LessThan3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan3~7_cout\ = CARRY((\u2|Add31~6_combout\ & ((!\u2|LessThan3~5_cout\) # (!\u2|Add13~2_combout\))) # (!\u2|Add31~6_combout\ & (!\u2|Add13~2_combout\ & !\u2|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add31~6_combout\,
	datab => \u2|Add13~2_combout\,
	datad => VCC,
	cin => \u2|LessThan3~5_cout\,
	cout => \u2|LessThan3~7_cout\);

-- Location: LCCOMB_X61_Y46_N8
\u2|LessThan3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan3~9_cout\ = CARRY((\u2|Add13~4_combout\ & ((!\u2|LessThan3~7_cout\) # (!\u2|Add31~8_combout\))) # (!\u2|Add13~4_combout\ & (!\u2|Add31~8_combout\ & !\u2|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add13~4_combout\,
	datab => \u2|Add31~8_combout\,
	datad => VCC,
	cin => \u2|LessThan3~7_cout\,
	cout => \u2|LessThan3~9_cout\);

-- Location: LCCOMB_X61_Y46_N10
\u2|LessThan3~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan3~11_cout\ = CARRY((\u2|Add13~6_combout\ & (\u2|Add31~10_combout\ & !\u2|LessThan3~9_cout\)) # (!\u2|Add13~6_combout\ & ((\u2|Add31~10_combout\) # (!\u2|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add13~6_combout\,
	datab => \u2|Add31~10_combout\,
	datad => VCC,
	cin => \u2|LessThan3~9_cout\,
	cout => \u2|LessThan3~11_cout\);

-- Location: LCCOMB_X61_Y46_N12
\u2|LessThan3~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan3~13_cout\ = CARRY((\u2|Add31~12_combout\ & (\u2|Add13~8_combout\ & !\u2|LessThan3~11_cout\)) # (!\u2|Add31~12_combout\ & ((\u2|Add13~8_combout\) # (!\u2|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add31~12_combout\,
	datab => \u2|Add13~8_combout\,
	datad => VCC,
	cin => \u2|LessThan3~11_cout\,
	cout => \u2|LessThan3~13_cout\);

-- Location: LCCOMB_X61_Y46_N14
\u2|LessThan3~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan3~15_cout\ = CARRY((\u2|Add13~10_combout\ & (\u2|Add31~14_combout\ & !\u2|LessThan3~13_cout\)) # (!\u2|Add13~10_combout\ & ((\u2|Add31~14_combout\) # (!\u2|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add13~10_combout\,
	datab => \u2|Add31~14_combout\,
	datad => VCC,
	cin => \u2|LessThan3~13_cout\,
	cout => \u2|LessThan3~15_cout\);

-- Location: LCCOMB_X61_Y46_N16
\u2|LessThan3~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan3~17_cout\ = CARRY((\u2|Add31~16_combout\ & (\u2|Add13~12_combout\ & !\u2|LessThan3~15_cout\)) # (!\u2|Add31~16_combout\ & ((\u2|Add13~12_combout\) # (!\u2|LessThan3~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add31~16_combout\,
	datab => \u2|Add13~12_combout\,
	datad => VCC,
	cin => \u2|LessThan3~15_cout\,
	cout => \u2|LessThan3~17_cout\);

-- Location: LCCOMB_X61_Y46_N18
\u2|LessThan3~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan3~19_cout\ = CARRY((\u2|Add13~14_combout\ & (\u2|Add31~18_combout\ & !\u2|LessThan3~17_cout\)) # (!\u2|Add13~14_combout\ & ((\u2|Add31~18_combout\) # (!\u2|LessThan3~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add13~14_combout\,
	datab => \u2|Add31~18_combout\,
	datad => VCC,
	cin => \u2|LessThan3~17_cout\,
	cout => \u2|LessThan3~19_cout\);

-- Location: LCCOMB_X61_Y46_N20
\u2|LessThan3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan3~20_combout\ = (\u2|Add13~16_combout\ & ((!\u2|Add31~20_combout\) # (!\u2|LessThan3~19_cout\))) # (!\u2|Add13~16_combout\ & (!\u2|LessThan3~19_cout\ & !\u2|Add31~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Add13~16_combout\,
	datad => \u2|Add31~20_combout\,
	cin => \u2|LessThan3~19_cout\,
	combout => \u2|LessThan3~20_combout\);

-- Location: LCCOMB_X61_Y46_N26
\u2|Ball_direction~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~29_combout\ = (\u2|Add12~20_combout\ & (!\u2|Add13~16_combout\ & ((\u2|LessThan3~20_combout\)))) # (!\u2|Add12~20_combout\ & ((\u2|LessThan2~20_combout\) # ((!\u2|Add13~16_combout\ & \u2|LessThan3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add12~20_combout\,
	datab => \u2|Add13~16_combout\,
	datac => \u2|LessThan2~20_combout\,
	datad => \u2|LessThan3~20_combout\,
	combout => \u2|Ball_direction~29_combout\);

-- Location: LCCOMB_X65_Y49_N4
\u2|Ball_direction~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~30_combout\ = (((!\u2|Add29~2_combout\ & !\u2|Add29~0_combout\)) # (!\u2|Add29~4_combout\)) # (!\u2|Add29~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add29~2_combout\,
	datab => \u2|Add29~0_combout\,
	datac => \u2|Add29~6_combout\,
	datad => \u2|Add29~4_combout\,
	combout => \u2|Ball_direction~30_combout\);

-- Location: LCCOMB_X65_Y49_N2
\u2|Ball_direction~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~31_combout\ = ((!\u2|Add29~10_combout\ & (!\u2|Add29~8_combout\ & \u2|Ball_direction~30_combout\))) # (!\u2|Add29~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add29~10_combout\,
	datab => \u2|Add29~8_combout\,
	datac => \u2|Ball_direction~30_combout\,
	datad => \u2|Add29~12_combout\,
	combout => \u2|Ball_direction~31_combout\);

-- Location: LCCOMB_X65_Y49_N0
\u2|Ball_direction~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~32_combout\ = ((!\u2|Add29~16_combout\ & (!\u2|Add29~14_combout\ & \u2|Ball_direction~31_combout\))) # (!\u2|Add29~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add29~18_combout\,
	datab => \u2|Add29~16_combout\,
	datac => \u2|Add29~14_combout\,
	datad => \u2|Ball_direction~31_combout\,
	combout => \u2|Ball_direction~32_combout\);

-- Location: LCCOMB_X61_Y46_N24
\u2|Ball_direction~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~33_combout\ = (\u2|Ball_direction~29_combout\) # ((!\u2|Add29~20_combout\ & \u2|Ball_direction~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add29~20_combout\,
	datac => \u2|Ball_direction~29_combout\,
	datad => \u2|Ball_direction~32_combout\,
	combout => \u2|Ball_direction~33_combout\);

-- Location: LCCOMB_X60_Y46_N8
\u2|Ball_direction~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~65_combout\ = (\u2|Ball_direction~33_combout\ & (((\u2|Ball_direction~64_combout\)))) # (!\u2|Ball_direction~33_combout\ & (((\u2|Ball_direction~28_combout\ & \u2|Ball_direction~64_combout\)) # (!\u2|process_2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction~28_combout\,
	datab => \u2|process_2~2_combout\,
	datac => \u2|Ball_direction~64_combout\,
	datad => \u2|Ball_direction~33_combout\,
	combout => \u2|Ball_direction~65_combout\);

-- Location: IOIBUF_X51_Y54_N22
\direction_switch[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_direction_switch(1),
	o => \direction_switch[1]~input_o\);

-- Location: LCCOMB_X65_Y50_N12
\u2|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add2~0_combout\ = \u2|paddle1_pos_y\(0) $ (VCC)
-- \u2|Add2~1\ = CARRY(\u2|paddle1_pos_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(0),
	datad => VCC,
	combout => \u2|Add2~0_combout\,
	cout => \u2|Add2~1\);

-- Location: LCCOMB_X65_Y50_N14
\u2|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add2~2_combout\ = (\u2|paddle1_pos_y\(1) & (!\u2|Add2~1\)) # (!\u2|paddle1_pos_y\(1) & ((\u2|Add2~1\) # (GND)))
-- \u2|Add2~3\ = CARRY((!\u2|Add2~1\) # (!\u2|paddle1_pos_y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(1),
	datad => VCC,
	cin => \u2|Add2~1\,
	combout => \u2|Add2~2_combout\,
	cout => \u2|Add2~3\);

-- Location: LCCOMB_X66_Y50_N0
\u2|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add3~0_combout\ = \u2|paddle1_pos_y\(0) $ (VCC)
-- \u2|Add3~1\ = CARRY(\u2|paddle1_pos_y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(0),
	datad => VCC,
	combout => \u2|Add3~0_combout\,
	cout => \u2|Add3~1\);

-- Location: LCCOMB_X66_Y50_N2
\u2|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add3~2_combout\ = (\u2|paddle1_pos_y\(1) & (\u2|Add3~1\ & VCC)) # (!\u2|paddle1_pos_y\(1) & (!\u2|Add3~1\))
-- \u2|Add3~3\ = CARRY((!\u2|paddle1_pos_y\(1) & !\u2|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(1),
	datad => VCC,
	cin => \u2|Add3~1\,
	combout => \u2|Add3~2_combout\,
	cout => \u2|Add3~3\);

-- Location: LCCOMB_X64_Y50_N10
\u2|paddle1_pos_y~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle1_pos_y~9_combout\ = (\direction_switch[1]~input_o\ & (((\u2|Add3~2_combout\ & !\u2|Equal1~1_combout\)))) # (!\direction_switch[1]~input_o\ & (\u2|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction_switch[1]~input_o\,
	datab => \u2|Add2~2_combout\,
	datac => \u2|Add3~2_combout\,
	datad => \u2|Equal1~1_combout\,
	combout => \u2|paddle1_pos_y~9_combout\);

-- Location: IOIBUF_X51_Y54_N29
\direction_switch[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_direction_switch(0),
	o => \direction_switch[0]~input_o\);

-- Location: LCCOMB_X63_Y50_N2
\u2|paddle1_pos_y[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle1_pos_y[0]~1_combout\ = (\direction_switch[0]~input_o\) # (\direction_switch[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \direction_switch[0]~input_o\,
	datac => \direction_switch[1]~input_o\,
	combout => \u2|paddle1_pos_y[0]~1_combout\);

-- Location: FF_X64_Y50_N11
\u2|paddle1_pos_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|temp~clkctrl_outclk\,
	d => \u2|paddle1_pos_y~9_combout\,
	clrn => \reset~input_o\,
	ena => \u2|paddle1_pos_y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|paddle1_pos_y\(1));

-- Location: LCCOMB_X66_Y50_N4
\u2|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add3~4_combout\ = (\u2|paddle1_pos_y\(2) & ((GND) # (!\u2|Add3~3\))) # (!\u2|paddle1_pos_y\(2) & (\u2|Add3~3\ $ (GND)))
-- \u2|Add3~5\ = CARRY((\u2|paddle1_pos_y\(2)) # (!\u2|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(2),
	datad => VCC,
	cin => \u2|Add3~3\,
	combout => \u2|Add3~4_combout\,
	cout => \u2|Add3~5\);

-- Location: LCCOMB_X65_Y50_N16
\u2|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add2~4_combout\ = (\u2|paddle1_pos_y\(2) & (\u2|Add2~3\ $ (GND))) # (!\u2|paddle1_pos_y\(2) & (!\u2|Add2~3\ & VCC))
-- \u2|Add2~5\ = CARRY((\u2|paddle1_pos_y\(2) & !\u2|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(2),
	datad => VCC,
	cin => \u2|Add2~3\,
	combout => \u2|Add2~4_combout\,
	cout => \u2|Add2~5\);

-- Location: LCCOMB_X64_Y50_N4
\u2|paddle1_pos_y~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle1_pos_y~8_combout\ = (\direction_switch[1]~input_o\ & (!\u2|Equal1~1_combout\ & (\u2|Add3~4_combout\))) # (!\direction_switch[1]~input_o\ & (((\u2|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction_switch[1]~input_o\,
	datab => \u2|Equal1~1_combout\,
	datac => \u2|Add3~4_combout\,
	datad => \u2|Add2~4_combout\,
	combout => \u2|paddle1_pos_y~8_combout\);

-- Location: FF_X64_Y50_N5
\u2|paddle1_pos_y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|temp~clkctrl_outclk\,
	d => \u2|paddle1_pos_y~8_combout\,
	clrn => \reset~input_o\,
	ena => \u2|paddle1_pos_y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|paddle1_pos_y\(2));

-- Location: LCCOMB_X65_Y50_N18
\u2|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add2~6_combout\ = (\u2|paddle1_pos_y\(3) & (!\u2|Add2~5\)) # (!\u2|paddle1_pos_y\(3) & ((\u2|Add2~5\) # (GND)))
-- \u2|Add2~7\ = CARRY((!\u2|Add2~5\) # (!\u2|paddle1_pos_y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(3),
	datad => VCC,
	cin => \u2|Add2~5\,
	combout => \u2|Add2~6_combout\,
	cout => \u2|Add2~7\);

-- Location: LCCOMB_X66_Y50_N6
\u2|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add3~6_combout\ = (\u2|paddle1_pos_y\(3) & (\u2|Add3~5\ & VCC)) # (!\u2|paddle1_pos_y\(3) & (!\u2|Add3~5\))
-- \u2|Add3~7\ = CARRY((!\u2|paddle1_pos_y\(3) & !\u2|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(3),
	datad => VCC,
	cin => \u2|Add3~5\,
	combout => \u2|Add3~6_combout\,
	cout => \u2|Add3~7\);

-- Location: LCCOMB_X64_Y50_N6
\u2|paddle1_pos_y~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle1_pos_y~7_combout\ = (\direction_switch[1]~input_o\ & (((!\u2|Equal1~1_combout\ & \u2|Add3~6_combout\)))) # (!\direction_switch[1]~input_o\ & (\u2|Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction_switch[1]~input_o\,
	datab => \u2|Add2~6_combout\,
	datac => \u2|Equal1~1_combout\,
	datad => \u2|Add3~6_combout\,
	combout => \u2|paddle1_pos_y~7_combout\);

-- Location: FF_X64_Y50_N7
\u2|paddle1_pos_y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|temp~clkctrl_outclk\,
	d => \u2|paddle1_pos_y~7_combout\,
	clrn => \reset~input_o\,
	ena => \u2|paddle1_pos_y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|paddle1_pos_y\(3));

-- Location: LCCOMB_X65_Y50_N20
\u2|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add2~8_combout\ = (\u2|paddle1_pos_y\(4) & (!\u2|Add2~7\ & VCC)) # (!\u2|paddle1_pos_y\(4) & (\u2|Add2~7\ $ (GND)))
-- \u2|Add2~9\ = CARRY((!\u2|paddle1_pos_y\(4) & !\u2|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(4),
	datad => VCC,
	cin => \u2|Add2~7\,
	combout => \u2|Add2~8_combout\,
	cout => \u2|Add2~9\);

-- Location: LCCOMB_X66_Y50_N8
\u2|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add3~8_combout\ = (\u2|paddle1_pos_y\(4) & (\u2|Add3~7\ $ (GND))) # (!\u2|paddle1_pos_y\(4) & ((GND) # (!\u2|Add3~7\)))
-- \u2|Add3~9\ = CARRY((!\u2|Add3~7\) # (!\u2|paddle1_pos_y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(4),
	datad => VCC,
	cin => \u2|Add3~7\,
	combout => \u2|Add3~8_combout\,
	cout => \u2|Add3~9\);

-- Location: LCCOMB_X64_Y50_N0
\u2|paddle1_pos_y~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle1_pos_y~6_combout\ = (\direction_switch[1]~input_o\ & ((\u2|Equal1~1_combout\) # ((!\u2|Add3~8_combout\)))) # (!\direction_switch[1]~input_o\ & (((!\u2|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction_switch[1]~input_o\,
	datab => \u2|Equal1~1_combout\,
	datac => \u2|Add2~8_combout\,
	datad => \u2|Add3~8_combout\,
	combout => \u2|paddle1_pos_y~6_combout\);

-- Location: FF_X64_Y50_N1
\u2|paddle1_pos_y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|temp~clkctrl_outclk\,
	d => \u2|paddle1_pos_y~6_combout\,
	clrn => \reset~input_o\,
	ena => \u2|paddle1_pos_y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|paddle1_pos_y\(4));

-- Location: LCCOMB_X64_Y50_N8
\u2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal0~0_combout\ = (!\u2|paddle1_pos_y\(3) & (!\u2|paddle1_pos_y\(2) & (!\u2|paddle1_pos_y\(9) & \u2|paddle1_pos_y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(3),
	datab => \u2|paddle1_pos_y\(2),
	datac => \u2|paddle1_pos_y\(9),
	datad => \u2|paddle1_pos_y\(4),
	combout => \u2|Equal0~0_combout\);

-- Location: LCCOMB_X65_Y50_N22
\u2|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add2~10_combout\ = (\u2|paddle1_pos_y\(5) & ((\u2|Add2~9\) # (GND))) # (!\u2|paddle1_pos_y\(5) & (!\u2|Add2~9\))
-- \u2|Add2~11\ = CARRY((\u2|paddle1_pos_y\(5)) # (!\u2|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(5),
	datad => VCC,
	cin => \u2|Add2~9\,
	combout => \u2|Add2~10_combout\,
	cout => \u2|Add2~11\);

-- Location: LCCOMB_X66_Y50_N10
\u2|Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add3~10_combout\ = (\u2|paddle1_pos_y\(5) & (!\u2|Add3~9\)) # (!\u2|paddle1_pos_y\(5) & (\u2|Add3~9\ & VCC))
-- \u2|Add3~11\ = CARRY((\u2|paddle1_pos_y\(5) & !\u2|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(5),
	datad => VCC,
	cin => \u2|Add3~9\,
	combout => \u2|Add3~10_combout\,
	cout => \u2|Add3~11\);

-- Location: LCCOMB_X65_Y50_N6
\u2|paddle1_pos_y~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle1_pos_y~5_combout\ = (\direction_switch[1]~input_o\ & (((!\u2|Add3~10_combout\)))) # (!\direction_switch[1]~input_o\ & (((\u2|Equal0~2_combout\)) # (!\u2|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add2~10_combout\,
	datab => \direction_switch[1]~input_o\,
	datac => \u2|Add3~10_combout\,
	datad => \u2|Equal0~2_combout\,
	combout => \u2|paddle1_pos_y~5_combout\);

-- Location: FF_X65_Y50_N7
\u2|paddle1_pos_y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|temp~clkctrl_outclk\,
	d => \u2|paddle1_pos_y~5_combout\,
	clrn => \reset~input_o\,
	ena => \u2|paddle1_pos_y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|paddle1_pos_y\(5));

-- Location: LCCOMB_X65_Y50_N24
\u2|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add2~12_combout\ = (\u2|paddle1_pos_y\(6) & (!\u2|Add2~11\ & VCC)) # (!\u2|paddle1_pos_y\(6) & (\u2|Add2~11\ $ (GND)))
-- \u2|Add2~13\ = CARRY((!\u2|paddle1_pos_y\(6) & !\u2|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(6),
	datad => VCC,
	cin => \u2|Add2~11\,
	combout => \u2|Add2~12_combout\,
	cout => \u2|Add2~13\);

-- Location: LCCOMB_X66_Y50_N12
\u2|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add3~12_combout\ = (\u2|paddle1_pos_y\(6) & (\u2|Add3~11\ $ (GND))) # (!\u2|paddle1_pos_y\(6) & ((GND) # (!\u2|Add3~11\)))
-- \u2|Add3~13\ = CARRY((!\u2|Add3~11\) # (!\u2|paddle1_pos_y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(6),
	datad => VCC,
	cin => \u2|Add3~11\,
	combout => \u2|Add3~12_combout\,
	cout => \u2|Add3~13\);

-- Location: LCCOMB_X65_Y50_N10
\u2|paddle1_pos_y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle1_pos_y~4_combout\ = (\direction_switch[1]~input_o\ & (((!\u2|Add3~12_combout\)))) # (!\direction_switch[1]~input_o\ & (((\u2|Equal0~2_combout\)) # (!\u2|Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction_switch[1]~input_o\,
	datab => \u2|Add2~12_combout\,
	datac => \u2|Add3~12_combout\,
	datad => \u2|Equal0~2_combout\,
	combout => \u2|paddle1_pos_y~4_combout\);

-- Location: FF_X65_Y50_N11
\u2|paddle1_pos_y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|temp~clkctrl_outclk\,
	d => \u2|paddle1_pos_y~4_combout\,
	clrn => \reset~input_o\,
	ena => \u2|paddle1_pos_y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|paddle1_pos_y\(6));

-- Location: LCCOMB_X65_Y50_N26
\u2|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add2~14_combout\ = (\u2|paddle1_pos_y\(7) & ((\u2|Add2~13\) # (GND))) # (!\u2|paddle1_pos_y\(7) & (!\u2|Add2~13\))
-- \u2|Add2~15\ = CARRY((\u2|paddle1_pos_y\(7)) # (!\u2|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(7),
	datad => VCC,
	cin => \u2|Add2~13\,
	combout => \u2|Add2~14_combout\,
	cout => \u2|Add2~15\);

-- Location: LCCOMB_X66_Y50_N14
\u2|Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add3~14_combout\ = (\u2|paddle1_pos_y\(7) & (!\u2|Add3~13\)) # (!\u2|paddle1_pos_y\(7) & (\u2|Add3~13\ & VCC))
-- \u2|Add3~15\ = CARRY((\u2|paddle1_pos_y\(7) & !\u2|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(7),
	datad => VCC,
	cin => \u2|Add3~13\,
	combout => \u2|Add3~14_combout\,
	cout => \u2|Add3~15\);

-- Location: LCCOMB_X65_Y50_N4
\u2|paddle1_pos_y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle1_pos_y~3_combout\ = (\direction_switch[1]~input_o\ & (((!\u2|Add3~14_combout\)))) # (!\direction_switch[1]~input_o\ & (((\u2|Equal0~2_combout\)) # (!\u2|Add2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add2~14_combout\,
	datab => \direction_switch[1]~input_o\,
	datac => \u2|Add3~14_combout\,
	datad => \u2|Equal0~2_combout\,
	combout => \u2|paddle1_pos_y~3_combout\);

-- Location: FF_X65_Y50_N5
\u2|paddle1_pos_y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|temp~clkctrl_outclk\,
	d => \u2|paddle1_pos_y~3_combout\,
	clrn => \reset~input_o\,
	ena => \u2|paddle1_pos_y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|paddle1_pos_y\(7));

-- Location: LCCOMB_X65_Y50_N28
\u2|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add2~16_combout\ = (\u2|paddle1_pos_y\(8) & (\u2|Add2~15\ $ (GND))) # (!\u2|paddle1_pos_y\(8) & (!\u2|Add2~15\ & VCC))
-- \u2|Add2~17\ = CARRY((\u2|paddle1_pos_y\(8) & !\u2|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(8),
	datad => VCC,
	cin => \u2|Add2~15\,
	combout => \u2|Add2~16_combout\,
	cout => \u2|Add2~17\);

-- Location: LCCOMB_X66_Y50_N16
\u2|Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add3~16_combout\ = (\u2|paddle1_pos_y\(8) & ((GND) # (!\u2|Add3~15\))) # (!\u2|paddle1_pos_y\(8) & (\u2|Add3~15\ $ (GND)))
-- \u2|Add3~17\ = CARRY((\u2|paddle1_pos_y\(8)) # (!\u2|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(8),
	datad => VCC,
	cin => \u2|Add3~15\,
	combout => \u2|Add3~16_combout\,
	cout => \u2|Add3~17\);

-- Location: LCCOMB_X65_Y50_N8
\u2|paddle1_pos_y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle1_pos_y~2_combout\ = (\direction_switch[1]~input_o\ & (((\u2|Add3~16_combout\)))) # (!\direction_switch[1]~input_o\ & (\u2|Add2~16_combout\ & (!\u2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction_switch[1]~input_o\,
	datab => \u2|Add2~16_combout\,
	datac => \u2|Equal0~2_combout\,
	datad => \u2|Add3~16_combout\,
	combout => \u2|paddle1_pos_y~2_combout\);

-- Location: FF_X65_Y50_N9
\u2|paddle1_pos_y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|temp~clkctrl_outclk\,
	d => \u2|paddle1_pos_y~2_combout\,
	clrn => \reset~input_o\,
	ena => \u2|paddle1_pos_y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|paddle1_pos_y\(8));

-- Location: LCCOMB_X63_Y50_N28
\u2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal0~1_combout\ = (\u2|paddle1_pos_y\(8) & (!\u2|paddle1_pos_y\(5) & (!\u2|paddle1_pos_y\(6) & !\u2|paddle1_pos_y\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(8),
	datab => \u2|paddle1_pos_y\(5),
	datac => \u2|paddle1_pos_y\(6),
	datad => \u2|paddle1_pos_y\(7),
	combout => \u2|Equal0~1_combout\);

-- Location: LCCOMB_X63_Y50_N26
\u2|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal0~2_combout\ = (!\u2|paddle1_pos_y\(0) & (!\u2|paddle1_pos_y\(1) & (\u2|Equal0~0_combout\ & \u2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(0),
	datab => \u2|paddle1_pos_y\(1),
	datac => \u2|Equal0~0_combout\,
	datad => \u2|Equal0~1_combout\,
	combout => \u2|Equal0~2_combout\);

-- Location: LCCOMB_X64_Y50_N2
\u2|paddle1_pos_y~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle1_pos_y~10_combout\ = (\direction_switch[1]~input_o\ & (((\u2|Add3~0_combout\ & !\u2|Equal1~1_combout\)))) # (!\direction_switch[1]~input_o\ & (\u2|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction_switch[1]~input_o\,
	datab => \u2|Add2~0_combout\,
	datac => \u2|Add3~0_combout\,
	datad => \u2|Equal1~1_combout\,
	combout => \u2|paddle1_pos_y~10_combout\);

-- Location: LCCOMB_X65_Y50_N2
\u2|paddle1_pos_y~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle1_pos_y~11_combout\ = (\u2|paddle1_pos_y~10_combout\ & ((\direction_switch[1]~input_o\) # (!\u2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction_switch[1]~input_o\,
	datac => \u2|Equal0~2_combout\,
	datad => \u2|paddle1_pos_y~10_combout\,
	combout => \u2|paddle1_pos_y~11_combout\);

-- Location: FF_X65_Y50_N3
\u2|paddle1_pos_y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|temp~clkctrl_outclk\,
	d => \u2|paddle1_pos_y~11_combout\,
	clrn => \reset~input_o\,
	ena => \u2|paddle1_pos_y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|paddle1_pos_y\(0));

-- Location: LCCOMB_X63_Y50_N24
\u2|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal1~0_combout\ = (!\u2|paddle1_pos_y\(8) & (\u2|paddle1_pos_y\(6) & (\u2|paddle1_pos_y\(5) & \u2|paddle1_pos_y\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(8),
	datab => \u2|paddle1_pos_y\(6),
	datac => \u2|paddle1_pos_y\(5),
	datad => \u2|paddle1_pos_y\(7),
	combout => \u2|Equal1~0_combout\);

-- Location: LCCOMB_X63_Y50_N22
\u2|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal1~1_combout\ = (!\u2|paddle1_pos_y\(0) & (!\u2|paddle1_pos_y\(1) & (\u2|Equal0~0_combout\ & \u2|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(0),
	datab => \u2|paddle1_pos_y\(1),
	datac => \u2|Equal0~0_combout\,
	datad => \u2|Equal1~0_combout\,
	combout => \u2|Equal1~1_combout\);

-- Location: LCCOMB_X65_Y50_N30
\u2|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add2~18_combout\ = \u2|Add2~17\ $ (\u2|paddle1_pos_y\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u2|paddle1_pos_y\(9),
	cin => \u2|Add2~17\,
	combout => \u2|Add2~18_combout\);

-- Location: LCCOMB_X66_Y50_N18
\u2|Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add3~18_combout\ = \u2|paddle1_pos_y\(9) $ (!\u2|Add3~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(9),
	cin => \u2|Add3~17\,
	combout => \u2|Add3~18_combout\);

-- Location: LCCOMB_X65_Y50_N0
\u2|paddle1_pos_y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|paddle1_pos_y~0_combout\ = (\direction_switch[1]~input_o\ & (!\u2|Equal1~1_combout\ & ((\u2|Add3~18_combout\)))) # (!\direction_switch[1]~input_o\ & (((\u2|Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction_switch[1]~input_o\,
	datab => \u2|Equal1~1_combout\,
	datac => \u2|Add2~18_combout\,
	datad => \u2|Add3~18_combout\,
	combout => \u2|paddle1_pos_y~0_combout\);

-- Location: FF_X65_Y50_N1
\u2|paddle1_pos_y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|temp~clkctrl_outclk\,
	d => \u2|paddle1_pos_y~0_combout\,
	clrn => \reset~input_o\,
	ena => \u2|paddle1_pos_y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|paddle1_pos_y\(9));

-- Location: LCCOMB_X64_Y50_N12
\u2|Add18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add18~1_cout\ = CARRY(\u2|paddle1_pos_y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(1),
	datad => VCC,
	cout => \u2|Add18~1_cout\);

-- Location: LCCOMB_X64_Y50_N14
\u2|Add18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add18~2_combout\ = (\u2|paddle1_pos_y\(2) & (\u2|Add18~1_cout\ & VCC)) # (!\u2|paddle1_pos_y\(2) & (!\u2|Add18~1_cout\))
-- \u2|Add18~3\ = CARRY((!\u2|paddle1_pos_y\(2) & !\u2|Add18~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(2),
	datad => VCC,
	cin => \u2|Add18~1_cout\,
	combout => \u2|Add18~2_combout\,
	cout => \u2|Add18~3\);

-- Location: LCCOMB_X64_Y50_N16
\u2|Add18~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add18~4_combout\ = (\u2|paddle1_pos_y\(3) & (\u2|Add18~3\ $ (GND))) # (!\u2|paddle1_pos_y\(3) & (!\u2|Add18~3\ & VCC))
-- \u2|Add18~5\ = CARRY((\u2|paddle1_pos_y\(3) & !\u2|Add18~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(3),
	datad => VCC,
	cin => \u2|Add18~3\,
	combout => \u2|Add18~4_combout\,
	cout => \u2|Add18~5\);

-- Location: LCCOMB_X64_Y50_N18
\u2|Add18~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add18~6_combout\ = (\u2|paddle1_pos_y\(4) & (!\u2|Add18~5\)) # (!\u2|paddle1_pos_y\(4) & (\u2|Add18~5\ & VCC))
-- \u2|Add18~7\ = CARRY((\u2|paddle1_pos_y\(4) & !\u2|Add18~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(4),
	datad => VCC,
	cin => \u2|Add18~5\,
	combout => \u2|Add18~6_combout\,
	cout => \u2|Add18~7\);

-- Location: LCCOMB_X64_Y50_N20
\u2|Add18~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add18~8_combout\ = (\u2|paddle1_pos_y\(5) & (\u2|Add18~7\ $ (GND))) # (!\u2|paddle1_pos_y\(5) & ((GND) # (!\u2|Add18~7\)))
-- \u2|Add18~9\ = CARRY((!\u2|Add18~7\) # (!\u2|paddle1_pos_y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(5),
	datad => VCC,
	cin => \u2|Add18~7\,
	combout => \u2|Add18~8_combout\,
	cout => \u2|Add18~9\);

-- Location: LCCOMB_X64_Y50_N22
\u2|Add18~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add18~10_combout\ = (\u2|paddle1_pos_y\(6) & (!\u2|Add18~9\)) # (!\u2|paddle1_pos_y\(6) & (\u2|Add18~9\ & VCC))
-- \u2|Add18~11\ = CARRY((\u2|paddle1_pos_y\(6) & !\u2|Add18~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(6),
	datad => VCC,
	cin => \u2|Add18~9\,
	combout => \u2|Add18~10_combout\,
	cout => \u2|Add18~11\);

-- Location: LCCOMB_X64_Y50_N24
\u2|Add18~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add18~12_combout\ = (\u2|paddle1_pos_y\(7) & (\u2|Add18~11\ $ (GND))) # (!\u2|paddle1_pos_y\(7) & ((GND) # (!\u2|Add18~11\)))
-- \u2|Add18~13\ = CARRY((!\u2|Add18~11\) # (!\u2|paddle1_pos_y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(7),
	datad => VCC,
	cin => \u2|Add18~11\,
	combout => \u2|Add18~12_combout\,
	cout => \u2|Add18~13\);

-- Location: LCCOMB_X64_Y50_N26
\u2|Add18~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add18~14_combout\ = (\u2|paddle1_pos_y\(8) & (\u2|Add18~13\ & VCC)) # (!\u2|paddle1_pos_y\(8) & (!\u2|Add18~13\))
-- \u2|Add18~15\ = CARRY((!\u2|paddle1_pos_y\(8) & !\u2|Add18~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(8),
	datad => VCC,
	cin => \u2|Add18~13\,
	combout => \u2|Add18~14_combout\,
	cout => \u2|Add18~15\);

-- Location: LCCOMB_X64_Y50_N28
\u2|Add18~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add18~16_combout\ = (\u2|paddle1_pos_y\(9) & ((GND) # (!\u2|Add18~15\))) # (!\u2|paddle1_pos_y\(9) & (\u2|Add18~15\ $ (GND)))
-- \u2|Add18~17\ = CARRY((\u2|paddle1_pos_y\(9)) # (!\u2|Add18~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(9),
	datad => VCC,
	cin => \u2|Add18~15\,
	combout => \u2|Add18~16_combout\,
	cout => \u2|Add18~17\);

-- Location: LCCOMB_X64_Y46_N4
\u2|LessThan10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan10~1_cout\ = CARRY((\u2|paddle1_pos_y\(0) & !\u2|Ball_pos_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(0),
	datab => \u2|Ball_pos_y\(0),
	datad => VCC,
	cout => \u2|LessThan10~1_cout\);

-- Location: LCCOMB_X64_Y46_N6
\u2|LessThan10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan10~3_cout\ = CARRY((\u2|Ball_pos_y\(1) & ((\u2|paddle1_pos_y\(1)) # (!\u2|LessThan10~1_cout\))) # (!\u2|Ball_pos_y\(1) & (\u2|paddle1_pos_y\(1) & !\u2|LessThan10~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(1),
	datab => \u2|paddle1_pos_y\(1),
	datad => VCC,
	cin => \u2|LessThan10~1_cout\,
	cout => \u2|LessThan10~3_cout\);

-- Location: LCCOMB_X64_Y46_N8
\u2|LessThan10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan10~5_cout\ = CARRY((\u2|Add18~2_combout\ & ((!\u2|LessThan10~3_cout\) # (!\u2|Ball_pos_y\(2)))) # (!\u2|Add18~2_combout\ & (!\u2|Ball_pos_y\(2) & !\u2|LessThan10~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add18~2_combout\,
	datab => \u2|Ball_pos_y\(2),
	datad => VCC,
	cin => \u2|LessThan10~3_cout\,
	cout => \u2|LessThan10~5_cout\);

-- Location: LCCOMB_X64_Y46_N10
\u2|LessThan10~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan10~7_cout\ = CARRY((\u2|Ball_pos_y\(3) & ((!\u2|LessThan10~5_cout\) # (!\u2|Add18~4_combout\))) # (!\u2|Ball_pos_y\(3) & (!\u2|Add18~4_combout\ & !\u2|LessThan10~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(3),
	datab => \u2|Add18~4_combout\,
	datad => VCC,
	cin => \u2|LessThan10~5_cout\,
	cout => \u2|LessThan10~7_cout\);

-- Location: LCCOMB_X64_Y46_N12
\u2|LessThan10~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan10~9_cout\ = CARRY((\u2|Ball_pos_y\(4) & ((\u2|Add18~6_combout\) # (!\u2|LessThan10~7_cout\))) # (!\u2|Ball_pos_y\(4) & (\u2|Add18~6_combout\ & !\u2|LessThan10~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(4),
	datab => \u2|Add18~6_combout\,
	datad => VCC,
	cin => \u2|LessThan10~7_cout\,
	cout => \u2|LessThan10~9_cout\);

-- Location: LCCOMB_X64_Y46_N14
\u2|LessThan10~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan10~11_cout\ = CARRY((\u2|Add18~8_combout\ & (!\u2|Ball_pos_y\(5) & !\u2|LessThan10~9_cout\)) # (!\u2|Add18~8_combout\ & ((!\u2|LessThan10~9_cout\) # (!\u2|Ball_pos_y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add18~8_combout\,
	datab => \u2|Ball_pos_y\(5),
	datad => VCC,
	cin => \u2|LessThan10~9_cout\,
	cout => \u2|LessThan10~11_cout\);

-- Location: LCCOMB_X64_Y46_N16
\u2|LessThan10~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan10~13_cout\ = CARRY((\u2|Add18~10_combout\ & ((\u2|Ball_pos_y\(6)) # (!\u2|LessThan10~11_cout\))) # (!\u2|Add18~10_combout\ & (\u2|Ball_pos_y\(6) & !\u2|LessThan10~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add18~10_combout\,
	datab => \u2|Ball_pos_y\(6),
	datad => VCC,
	cin => \u2|LessThan10~11_cout\,
	cout => \u2|LessThan10~13_cout\);

-- Location: LCCOMB_X64_Y46_N18
\u2|LessThan10~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan10~15_cout\ = CARRY((\u2|Ball_pos_y\(7) & (!\u2|Add18~12_combout\ & !\u2|LessThan10~13_cout\)) # (!\u2|Ball_pos_y\(7) & ((!\u2|LessThan10~13_cout\) # (!\u2|Add18~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(7),
	datab => \u2|Add18~12_combout\,
	datad => VCC,
	cin => \u2|LessThan10~13_cout\,
	cout => \u2|LessThan10~15_cout\);

-- Location: LCCOMB_X64_Y46_N20
\u2|LessThan10~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan10~17_cout\ = CARRY((\u2|Ball_pos_y\(8) & (\u2|Add18~14_combout\ & !\u2|LessThan10~15_cout\)) # (!\u2|Ball_pos_y\(8) & ((\u2|Add18~14_combout\) # (!\u2|LessThan10~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(8),
	datab => \u2|Add18~14_combout\,
	datad => VCC,
	cin => \u2|LessThan10~15_cout\,
	cout => \u2|LessThan10~17_cout\);

-- Location: LCCOMB_X64_Y46_N22
\u2|LessThan10~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan10~18_combout\ = (\u2|Ball_pos_y\(9) & (\u2|LessThan10~17_cout\ & \u2|Add18~16_combout\)) # (!\u2|Ball_pos_y\(9) & ((\u2|LessThan10~17_cout\) # (\u2|Add18~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(9),
	datad => \u2|Add18~16_combout\,
	cin => \u2|LessThan10~17_cout\,
	combout => \u2|LessThan10~18_combout\);

-- Location: LCCOMB_X65_Y48_N0
\u2|Add19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add19~0_combout\ = (\u2|paddle1_pos_y\(2) & (\u2|paddle1_pos_y\(1) $ (VCC))) # (!\u2|paddle1_pos_y\(2) & (\u2|paddle1_pos_y\(1) & VCC))
-- \u2|Add19~1\ = CARRY((\u2|paddle1_pos_y\(2) & \u2|paddle1_pos_y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(2),
	datab => \u2|paddle1_pos_y\(1),
	datad => VCC,
	combout => \u2|Add19~0_combout\,
	cout => \u2|Add19~1\);

-- Location: LCCOMB_X65_Y48_N2
\u2|Add19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add19~2_combout\ = (\u2|paddle1_pos_y\(3) & (\u2|Add19~1\ & VCC)) # (!\u2|paddle1_pos_y\(3) & (!\u2|Add19~1\))
-- \u2|Add19~3\ = CARRY((!\u2|paddle1_pos_y\(3) & !\u2|Add19~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(3),
	datad => VCC,
	cin => \u2|Add19~1\,
	combout => \u2|Add19~2_combout\,
	cout => \u2|Add19~3\);

-- Location: LCCOMB_X65_Y48_N4
\u2|Add19~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add19~4_combout\ = (\u2|paddle1_pos_y\(4) & (!\u2|Add19~3\ & VCC)) # (!\u2|paddle1_pos_y\(4) & (\u2|Add19~3\ $ (GND)))
-- \u2|Add19~5\ = CARRY((!\u2|paddle1_pos_y\(4) & !\u2|Add19~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(4),
	datad => VCC,
	cin => \u2|Add19~3\,
	combout => \u2|Add19~4_combout\,
	cout => \u2|Add19~5\);

-- Location: LCCOMB_X65_Y48_N6
\u2|Add19~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add19~6_combout\ = (\u2|paddle1_pos_y\(5) & ((\u2|Add19~5\) # (GND))) # (!\u2|paddle1_pos_y\(5) & (!\u2|Add19~5\))
-- \u2|Add19~7\ = CARRY((\u2|paddle1_pos_y\(5)) # (!\u2|Add19~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(5),
	datad => VCC,
	cin => \u2|Add19~5\,
	combout => \u2|Add19~6_combout\,
	cout => \u2|Add19~7\);

-- Location: LCCOMB_X65_Y48_N8
\u2|Add19~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add19~8_combout\ = (\u2|paddle1_pos_y\(6) & (!\u2|Add19~7\ & VCC)) # (!\u2|paddle1_pos_y\(6) & (\u2|Add19~7\ $ (GND)))
-- \u2|Add19~9\ = CARRY((!\u2|paddle1_pos_y\(6) & !\u2|Add19~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(6),
	datad => VCC,
	cin => \u2|Add19~7\,
	combout => \u2|Add19~8_combout\,
	cout => \u2|Add19~9\);

-- Location: LCCOMB_X65_Y48_N10
\u2|Add19~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add19~10_combout\ = (\u2|paddle1_pos_y\(7) & ((\u2|Add19~9\) # (GND))) # (!\u2|paddle1_pos_y\(7) & (!\u2|Add19~9\))
-- \u2|Add19~11\ = CARRY((\u2|paddle1_pos_y\(7)) # (!\u2|Add19~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(7),
	datad => VCC,
	cin => \u2|Add19~9\,
	combout => \u2|Add19~10_combout\,
	cout => \u2|Add19~11\);

-- Location: LCCOMB_X65_Y48_N12
\u2|Add19~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add19~12_combout\ = (\u2|paddle1_pos_y\(8) & (\u2|Add19~11\ $ (GND))) # (!\u2|paddle1_pos_y\(8) & (!\u2|Add19~11\ & VCC))
-- \u2|Add19~13\ = CARRY((\u2|paddle1_pos_y\(8) & !\u2|Add19~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(8),
	datad => VCC,
	cin => \u2|Add19~11\,
	combout => \u2|Add19~12_combout\,
	cout => \u2|Add19~13\);

-- Location: LCCOMB_X65_Y48_N14
\u2|Add19~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add19~14_combout\ = (\u2|paddle1_pos_y\(9) & (!\u2|Add19~13\)) # (!\u2|paddle1_pos_y\(9) & ((\u2|Add19~13\) # (GND)))
-- \u2|Add19~15\ = CARRY((!\u2|Add19~13\) # (!\u2|paddle1_pos_y\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(9),
	datad => VCC,
	cin => \u2|Add19~13\,
	combout => \u2|Add19~14_combout\,
	cout => \u2|Add19~15\);

-- Location: LCCOMB_X65_Y48_N16
\u2|Add19~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add19~16_combout\ = !\u2|Add19~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u2|Add19~15\,
	combout => \u2|Add19~16_combout\);

-- Location: LCCOMB_X64_Y50_N30
\u2|Add18~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add18~18_combout\ = !\u2|Add18~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u2|Add18~17\,
	combout => \u2|Add18~18_combout\);

-- Location: LCCOMB_X64_Y48_N2
\u2|LessThan11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan11~1_cout\ = CARRY((!\u2|paddle1_pos_y\(0) & \u2|Ball_pos_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(0),
	datab => \u2|Ball_pos_y\(0),
	datad => VCC,
	cout => \u2|LessThan11~1_cout\);

-- Location: LCCOMB_X64_Y48_N4
\u2|LessThan11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan11~3_cout\ = CARRY((\u2|Ball_pos_y\(1) & (!\u2|paddle1_pos_y\(1) & !\u2|LessThan11~1_cout\)) # (!\u2|Ball_pos_y\(1) & ((!\u2|LessThan11~1_cout\) # (!\u2|paddle1_pos_y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(1),
	datab => \u2|paddle1_pos_y\(1),
	datad => VCC,
	cin => \u2|LessThan11~1_cout\,
	cout => \u2|LessThan11~3_cout\);

-- Location: LCCOMB_X64_Y48_N6
\u2|LessThan11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan11~5_cout\ = CARRY((\u2|Ball_pos_y\(2) & ((!\u2|LessThan11~3_cout\) # (!\u2|Add19~0_combout\))) # (!\u2|Ball_pos_y\(2) & (!\u2|Add19~0_combout\ & !\u2|LessThan11~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(2),
	datab => \u2|Add19~0_combout\,
	datad => VCC,
	cin => \u2|LessThan11~3_cout\,
	cout => \u2|LessThan11~5_cout\);

-- Location: LCCOMB_X64_Y48_N8
\u2|LessThan11~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan11~7_cout\ = CARRY((\u2|Add19~2_combout\ & ((!\u2|LessThan11~5_cout\) # (!\u2|Ball_pos_y\(3)))) # (!\u2|Add19~2_combout\ & (!\u2|Ball_pos_y\(3) & !\u2|LessThan11~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add19~2_combout\,
	datab => \u2|Ball_pos_y\(3),
	datad => VCC,
	cin => \u2|LessThan11~5_cout\,
	cout => \u2|LessThan11~7_cout\);

-- Location: LCCOMB_X64_Y48_N10
\u2|LessThan11~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan11~9_cout\ = CARRY((\u2|Add19~4_combout\ & (!\u2|Ball_pos_y\(4) & !\u2|LessThan11~7_cout\)) # (!\u2|Add19~4_combout\ & ((!\u2|LessThan11~7_cout\) # (!\u2|Ball_pos_y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add19~4_combout\,
	datab => \u2|Ball_pos_y\(4),
	datad => VCC,
	cin => \u2|LessThan11~7_cout\,
	cout => \u2|LessThan11~9_cout\);

-- Location: LCCOMB_X64_Y48_N12
\u2|LessThan11~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan11~11_cout\ = CARRY((\u2|Add19~6_combout\ & ((\u2|Ball_pos_y\(5)) # (!\u2|LessThan11~9_cout\))) # (!\u2|Add19~6_combout\ & (\u2|Ball_pos_y\(5) & !\u2|LessThan11~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add19~6_combout\,
	datab => \u2|Ball_pos_y\(5),
	datad => VCC,
	cin => \u2|LessThan11~9_cout\,
	cout => \u2|LessThan11~11_cout\);

-- Location: LCCOMB_X64_Y48_N14
\u2|LessThan11~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan11~13_cout\ = CARRY((\u2|Ball_pos_y\(6) & (!\u2|Add19~8_combout\ & !\u2|LessThan11~11_cout\)) # (!\u2|Ball_pos_y\(6) & ((!\u2|LessThan11~11_cout\) # (!\u2|Add19~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(6),
	datab => \u2|Add19~8_combout\,
	datad => VCC,
	cin => \u2|LessThan11~11_cout\,
	cout => \u2|LessThan11~13_cout\);

-- Location: LCCOMB_X64_Y48_N16
\u2|LessThan11~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan11~15_cout\ = CARRY((\u2|Ball_pos_y\(7) & ((\u2|Add19~10_combout\) # (!\u2|LessThan11~13_cout\))) # (!\u2|Ball_pos_y\(7) & (\u2|Add19~10_combout\ & !\u2|LessThan11~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(7),
	datab => \u2|Add19~10_combout\,
	datad => VCC,
	cin => \u2|LessThan11~13_cout\,
	cout => \u2|LessThan11~15_cout\);

-- Location: LCCOMB_X64_Y48_N18
\u2|LessThan11~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan11~17_cout\ = CARRY((\u2|Ball_pos_y\(8) & ((!\u2|LessThan11~15_cout\) # (!\u2|Add19~12_combout\))) # (!\u2|Ball_pos_y\(8) & (!\u2|Add19~12_combout\ & !\u2|LessThan11~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(8),
	datab => \u2|Add19~12_combout\,
	datad => VCC,
	cin => \u2|LessThan11~15_cout\,
	cout => \u2|LessThan11~17_cout\);

-- Location: LCCOMB_X64_Y48_N20
\u2|LessThan11~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan11~18_combout\ = (\u2|Add19~14_combout\ & (\u2|LessThan11~17_cout\ & \u2|Ball_pos_y\(9))) # (!\u2|Add19~14_combout\ & ((\u2|LessThan11~17_cout\) # (\u2|Ball_pos_y\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Add19~14_combout\,
	datad => \u2|Ball_pos_y\(9),
	cin => \u2|LessThan11~17_cout\,
	combout => \u2|LessThan11~18_combout\);

-- Location: LCCOMB_X64_Y46_N0
\u2|process_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|process_2~1_combout\ = (\u2|LessThan10~18_combout\ & (((!\u2|Add19~16_combout\ & \u2|LessThan11~18_combout\)) # (!\u2|Add18~18_combout\))) # (!\u2|LessThan10~18_combout\ & (!\u2|Add19~16_combout\ & ((\u2|LessThan11~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan10~18_combout\,
	datab => \u2|Add19~16_combout\,
	datac => \u2|Add18~18_combout\,
	datad => \u2|LessThan11~18_combout\,
	combout => \u2|process_2~1_combout\);

-- Location: LCCOMB_X60_Y46_N30
\u2|Ball_direction~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~66_combout\ = ((\u2|Ball_direction~65_combout\ & \u2|Ball_direction~23_combout\)) # (!\u2|process_2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction~65_combout\,
	datac => \u2|Ball_direction~23_combout\,
	datad => \u2|process_2~1_combout\,
	combout => \u2|Ball_direction~66_combout\);

-- Location: LCCOMB_X66_Y46_N10
\u2|Add16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add16~1_cout\ = CARRY((\u2|Ball_pos_x\(1) & \u2|Ball_pos_x\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(1),
	datab => \u2|Ball_pos_x\(0),
	datad => VCC,
	cout => \u2|Add16~1_cout\);

-- Location: LCCOMB_X66_Y46_N12
\u2|Add16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add16~2_combout\ = (\u2|Ball_pos_x\(2) & (\u2|Add16~1_cout\ & VCC)) # (!\u2|Ball_pos_x\(2) & (!\u2|Add16~1_cout\))
-- \u2|Add16~3\ = CARRY((!\u2|Ball_pos_x\(2) & !\u2|Add16~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_x\(2),
	datad => VCC,
	cin => \u2|Add16~1_cout\,
	combout => \u2|Add16~2_combout\,
	cout => \u2|Add16~3\);

-- Location: LCCOMB_X66_Y46_N14
\u2|Add16~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add16~4_combout\ = (\u2|Ball_pos_x\(3) & ((GND) # (!\u2|Add16~3\))) # (!\u2|Ball_pos_x\(3) & (\u2|Add16~3\ $ (GND)))
-- \u2|Add16~5\ = CARRY((\u2|Ball_pos_x\(3)) # (!\u2|Add16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_x\(3),
	datad => VCC,
	cin => \u2|Add16~3\,
	combout => \u2|Add16~4_combout\,
	cout => \u2|Add16~5\);

-- Location: LCCOMB_X66_Y46_N16
\u2|Add16~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add16~6_combout\ = (\u2|Ball_pos_x\(4) & (\u2|Add16~5\ & VCC)) # (!\u2|Ball_pos_x\(4) & (!\u2|Add16~5\))
-- \u2|Add16~7\ = CARRY((!\u2|Ball_pos_x\(4) & !\u2|Add16~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_x\(4),
	datad => VCC,
	cin => \u2|Add16~5\,
	combout => \u2|Add16~6_combout\,
	cout => \u2|Add16~7\);

-- Location: LCCOMB_X66_Y46_N18
\u2|Add16~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add16~8_combout\ = (\u2|Ball_pos_x\(5) & ((GND) # (!\u2|Add16~7\))) # (!\u2|Ball_pos_x\(5) & (\u2|Add16~7\ $ (GND)))
-- \u2|Add16~9\ = CARRY((\u2|Ball_pos_x\(5)) # (!\u2|Add16~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(5),
	datad => VCC,
	cin => \u2|Add16~7\,
	combout => \u2|Add16~8_combout\,
	cout => \u2|Add16~9\);

-- Location: LCCOMB_X66_Y46_N20
\u2|Add16~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add16~10_combout\ = (\u2|Ball_pos_x\(6) & (!\u2|Add16~9\)) # (!\u2|Ball_pos_x\(6) & (\u2|Add16~9\ & VCC))
-- \u2|Add16~11\ = CARRY((\u2|Ball_pos_x\(6) & !\u2|Add16~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(6),
	datad => VCC,
	cin => \u2|Add16~9\,
	combout => \u2|Add16~10_combout\,
	cout => \u2|Add16~11\);

-- Location: LCCOMB_X66_Y46_N22
\u2|Add16~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add16~12_combout\ = (\u2|Ball_pos_x\(7) & ((GND) # (!\u2|Add16~11\))) # (!\u2|Ball_pos_x\(7) & (\u2|Add16~11\ $ (GND)))
-- \u2|Add16~13\ = CARRY((\u2|Ball_pos_x\(7)) # (!\u2|Add16~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(7),
	datad => VCC,
	cin => \u2|Add16~11\,
	combout => \u2|Add16~12_combout\,
	cout => \u2|Add16~13\);

-- Location: LCCOMB_X66_Y46_N24
\u2|Add16~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add16~14_combout\ = (\u2|Ball_pos_x\(8) & (!\u2|Add16~13\)) # (!\u2|Ball_pos_x\(8) & (\u2|Add16~13\ & VCC))
-- \u2|Add16~15\ = CARRY((\u2|Ball_pos_x\(8) & !\u2|Add16~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(8),
	datad => VCC,
	cin => \u2|Add16~13\,
	combout => \u2|Add16~14_combout\,
	cout => \u2|Add16~15\);

-- Location: LCCOMB_X66_Y46_N26
\u2|Add16~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add16~16_combout\ = (\u2|Ball_pos_x\(9) & ((GND) # (!\u2|Add16~15\))) # (!\u2|Ball_pos_x\(9) & (\u2|Add16~15\ $ (GND)))
-- \u2|Add16~17\ = CARRY((\u2|Ball_pos_x\(9)) # (!\u2|Add16~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_x\(9),
	datad => VCC,
	cin => \u2|Add16~15\,
	combout => \u2|Add16~16_combout\,
	cout => \u2|Add16~17\);

-- Location: LCCOMB_X66_Y46_N28
\u2|Add16~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add16~18_combout\ = !\u2|Add16~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u2|Add16~17\,
	combout => \u2|Add16~18_combout\);

-- Location: LCCOMB_X66_Y46_N6
\u2|Ball_direction~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~24_combout\ = (!\u2|Add16~12_combout\ & (!\u2|Add16~10_combout\ & (!\u2|Add16~16_combout\ & !\u2|Add16~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add16~12_combout\,
	datab => \u2|Add16~10_combout\,
	datac => \u2|Add16~16_combout\,
	datad => \u2|Add16~14_combout\,
	combout => \u2|Ball_direction~24_combout\);

-- Location: LCCOMB_X66_Y46_N8
\u2|LessThan7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan7~0_combout\ = (((!\u2|Add16~2_combout\ & !\u2|Add16~4_combout\)) # (!\u2|Add16~6_combout\)) # (!\u2|Add16~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add16~2_combout\,
	datab => \u2|Add16~8_combout\,
	datac => \u2|Add16~4_combout\,
	datad => \u2|Add16~6_combout\,
	combout => \u2|LessThan7~0_combout\);

-- Location: LCCOMB_X64_Y49_N4
\u2|Add25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add25~0_combout\ = \u2|paddle1_pos_y\(1) $ (VCC)
-- \u2|Add25~1\ = CARRY(\u2|paddle1_pos_y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(1),
	datad => VCC,
	combout => \u2|Add25~0_combout\,
	cout => \u2|Add25~1\);

-- Location: LCCOMB_X64_Y49_N6
\u2|Add25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add25~2_combout\ = (\u2|paddle1_pos_y\(2) & (\u2|Add25~1\ & VCC)) # (!\u2|paddle1_pos_y\(2) & (!\u2|Add25~1\))
-- \u2|Add25~3\ = CARRY((!\u2|paddle1_pos_y\(2) & !\u2|Add25~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(2),
	datad => VCC,
	cin => \u2|Add25~1\,
	combout => \u2|Add25~2_combout\,
	cout => \u2|Add25~3\);

-- Location: LCCOMB_X64_Y49_N8
\u2|Add25~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add25~4_combout\ = (\u2|paddle1_pos_y\(3) & ((GND) # (!\u2|Add25~3\))) # (!\u2|paddle1_pos_y\(3) & (\u2|Add25~3\ $ (GND)))
-- \u2|Add25~5\ = CARRY((\u2|paddle1_pos_y\(3)) # (!\u2|Add25~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(3),
	datad => VCC,
	cin => \u2|Add25~3\,
	combout => \u2|Add25~4_combout\,
	cout => \u2|Add25~5\);

-- Location: LCCOMB_X64_Y49_N10
\u2|Add25~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add25~6_combout\ = (\u2|paddle1_pos_y\(4) & (!\u2|Add25~5\)) # (!\u2|paddle1_pos_y\(4) & (\u2|Add25~5\ & VCC))
-- \u2|Add25~7\ = CARRY((\u2|paddle1_pos_y\(4) & !\u2|Add25~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(4),
	datad => VCC,
	cin => \u2|Add25~5\,
	combout => \u2|Add25~6_combout\,
	cout => \u2|Add25~7\);

-- Location: LCCOMB_X64_Y49_N12
\u2|Add25~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add25~8_combout\ = (\u2|paddle1_pos_y\(5) & (!\u2|Add25~7\ & VCC)) # (!\u2|paddle1_pos_y\(5) & (\u2|Add25~7\ $ (GND)))
-- \u2|Add25~9\ = CARRY((!\u2|paddle1_pos_y\(5) & !\u2|Add25~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(5),
	datad => VCC,
	cin => \u2|Add25~7\,
	combout => \u2|Add25~8_combout\,
	cout => \u2|Add25~9\);

-- Location: LCCOMB_X64_Y49_N14
\u2|Add25~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add25~10_combout\ = (\u2|paddle1_pos_y\(6) & ((\u2|Add25~9\) # (GND))) # (!\u2|paddle1_pos_y\(6) & (!\u2|Add25~9\))
-- \u2|Add25~11\ = CARRY((\u2|paddle1_pos_y\(6)) # (!\u2|Add25~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(6),
	datad => VCC,
	cin => \u2|Add25~9\,
	combout => \u2|Add25~10_combout\,
	cout => \u2|Add25~11\);

-- Location: LCCOMB_X64_Y49_N16
\u2|Add25~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add25~12_combout\ = (\u2|paddle1_pos_y\(7) & (!\u2|Add25~11\ & VCC)) # (!\u2|paddle1_pos_y\(7) & (\u2|Add25~11\ $ (GND)))
-- \u2|Add25~13\ = CARRY((!\u2|paddle1_pos_y\(7) & !\u2|Add25~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(7),
	datad => VCC,
	cin => \u2|Add25~11\,
	combout => \u2|Add25~12_combout\,
	cout => \u2|Add25~13\);

-- Location: LCCOMB_X64_Y49_N18
\u2|Add25~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add25~14_combout\ = (\u2|paddle1_pos_y\(8) & (!\u2|Add25~13\)) # (!\u2|paddle1_pos_y\(8) & ((\u2|Add25~13\) # (GND)))
-- \u2|Add25~15\ = CARRY((!\u2|Add25~13\) # (!\u2|paddle1_pos_y\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(8),
	datad => VCC,
	cin => \u2|Add25~13\,
	combout => \u2|Add25~14_combout\,
	cout => \u2|Add25~15\);

-- Location: LCCOMB_X64_Y49_N20
\u2|Add25~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add25~16_combout\ = (\u2|paddle1_pos_y\(9) & (\u2|Add25~15\ $ (GND))) # (!\u2|paddle1_pos_y\(9) & (!\u2|Add25~15\ & VCC))
-- \u2|Add25~17\ = CARRY((\u2|paddle1_pos_y\(9) & !\u2|Add25~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(9),
	datad => VCC,
	cin => \u2|Add25~15\,
	combout => \u2|Add25~16_combout\,
	cout => \u2|Add25~17\);

-- Location: LCCOMB_X64_Y49_N22
\u2|Add25~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add25~18_combout\ = \u2|Add25~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u2|Add25~17\,
	combout => \u2|Add25~18_combout\);

-- Location: LCCOMB_X63_Y46_N4
\u2|LessThan8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan8~1_cout\ = CARRY((\u2|Add12~0_combout\ & !\u2|paddle1_pos_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add12~0_combout\,
	datab => \u2|paddle1_pos_y\(0),
	datad => VCC,
	cout => \u2|LessThan8~1_cout\);

-- Location: LCCOMB_X63_Y46_N6
\u2|LessThan8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan8~3_cout\ = CARRY((\u2|Add25~0_combout\ & ((!\u2|LessThan8~1_cout\) # (!\u2|Add12~2_combout\))) # (!\u2|Add25~0_combout\ & (!\u2|Add12~2_combout\ & !\u2|LessThan8~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add25~0_combout\,
	datab => \u2|Add12~2_combout\,
	datad => VCC,
	cin => \u2|LessThan8~1_cout\,
	cout => \u2|LessThan8~3_cout\);

-- Location: LCCOMB_X63_Y46_N8
\u2|LessThan8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan8~5_cout\ = CARRY((\u2|Add25~2_combout\ & (\u2|Add12~4_combout\ & !\u2|LessThan8~3_cout\)) # (!\u2|Add25~2_combout\ & ((\u2|Add12~4_combout\) # (!\u2|LessThan8~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add25~2_combout\,
	datab => \u2|Add12~4_combout\,
	datad => VCC,
	cin => \u2|LessThan8~3_cout\,
	cout => \u2|LessThan8~5_cout\);

-- Location: LCCOMB_X63_Y46_N10
\u2|LessThan8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan8~7_cout\ = CARRY((\u2|Add12~6_combout\ & (\u2|Add25~4_combout\ & !\u2|LessThan8~5_cout\)) # (!\u2|Add12~6_combout\ & ((\u2|Add25~4_combout\) # (!\u2|LessThan8~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add12~6_combout\,
	datab => \u2|Add25~4_combout\,
	datad => VCC,
	cin => \u2|LessThan8~5_cout\,
	cout => \u2|LessThan8~7_cout\);

-- Location: LCCOMB_X63_Y46_N12
\u2|LessThan8~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan8~9_cout\ = CARRY((\u2|Add12~8_combout\ & ((!\u2|LessThan8~7_cout\) # (!\u2|Add25~6_combout\))) # (!\u2|Add12~8_combout\ & (!\u2|Add25~6_combout\ & !\u2|LessThan8~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add12~8_combout\,
	datab => \u2|Add25~6_combout\,
	datad => VCC,
	cin => \u2|LessThan8~7_cout\,
	cout => \u2|LessThan8~9_cout\);

-- Location: LCCOMB_X63_Y46_N14
\u2|LessThan8~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan8~11_cout\ = CARRY((\u2|Add25~8_combout\ & ((!\u2|LessThan8~9_cout\) # (!\u2|Add12~10_combout\))) # (!\u2|Add25~8_combout\ & (!\u2|Add12~10_combout\ & !\u2|LessThan8~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add25~8_combout\,
	datab => \u2|Add12~10_combout\,
	datad => VCC,
	cin => \u2|LessThan8~9_cout\,
	cout => \u2|LessThan8~11_cout\);

-- Location: LCCOMB_X63_Y46_N16
\u2|LessThan8~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan8~13_cout\ = CARRY((\u2|Add12~12_combout\ & ((!\u2|LessThan8~11_cout\) # (!\u2|Add25~10_combout\))) # (!\u2|Add12~12_combout\ & (!\u2|Add25~10_combout\ & !\u2|LessThan8~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add12~12_combout\,
	datab => \u2|Add25~10_combout\,
	datad => VCC,
	cin => \u2|LessThan8~11_cout\,
	cout => \u2|LessThan8~13_cout\);

-- Location: LCCOMB_X63_Y46_N18
\u2|LessThan8~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan8~15_cout\ = CARRY((\u2|Add25~12_combout\ & ((!\u2|LessThan8~13_cout\) # (!\u2|Add12~14_combout\))) # (!\u2|Add25~12_combout\ & (!\u2|Add12~14_combout\ & !\u2|LessThan8~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add25~12_combout\,
	datab => \u2|Add12~14_combout\,
	datad => VCC,
	cin => \u2|LessThan8~13_cout\,
	cout => \u2|LessThan8~15_cout\);

-- Location: LCCOMB_X63_Y46_N20
\u2|LessThan8~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan8~17_cout\ = CARRY((\u2|Add12~16_combout\ & ((!\u2|LessThan8~15_cout\) # (!\u2|Add25~14_combout\))) # (!\u2|Add12~16_combout\ & (!\u2|Add25~14_combout\ & !\u2|LessThan8~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add12~16_combout\,
	datab => \u2|Add25~14_combout\,
	datad => VCC,
	cin => \u2|LessThan8~15_cout\,
	cout => \u2|LessThan8~17_cout\);

-- Location: LCCOMB_X63_Y46_N22
\u2|LessThan8~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan8~19_cout\ = CARRY((\u2|Add25~16_combout\ & ((!\u2|LessThan8~17_cout\) # (!\u2|Add12~18_combout\))) # (!\u2|Add25~16_combout\ & (!\u2|Add12~18_combout\ & !\u2|LessThan8~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add25~16_combout\,
	datab => \u2|Add12~18_combout\,
	datad => VCC,
	cin => \u2|LessThan8~17_cout\,
	cout => \u2|LessThan8~19_cout\);

-- Location: LCCOMB_X63_Y46_N24
\u2|LessThan8~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan8~20_combout\ = (\u2|Add12~20_combout\ & ((!\u2|Add25~18_combout\) # (!\u2|LessThan8~19_cout\))) # (!\u2|Add12~20_combout\ & (!\u2|LessThan8~19_cout\ & !\u2|Add25~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add12~20_combout\,
	datad => \u2|Add25~18_combout\,
	cin => \u2|LessThan8~19_cout\,
	combout => \u2|LessThan8~20_combout\);

-- Location: LCCOMB_X63_Y50_N4
\u2|Add17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add17~0_combout\ = (\u2|paddle1_pos_y\(2) & (\u2|paddle1_pos_y\(1) $ (VCC))) # (!\u2|paddle1_pos_y\(2) & (\u2|paddle1_pos_y\(1) & VCC))
-- \u2|Add17~1\ = CARRY((\u2|paddle1_pos_y\(2) & \u2|paddle1_pos_y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(2),
	datab => \u2|paddle1_pos_y\(1),
	datad => VCC,
	combout => \u2|Add17~0_combout\,
	cout => \u2|Add17~1\);

-- Location: LCCOMB_X63_Y50_N6
\u2|Add17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add17~2_combout\ = (\u2|paddle1_pos_y\(3) & (!\u2|Add17~1\)) # (!\u2|paddle1_pos_y\(3) & ((\u2|Add17~1\) # (GND)))
-- \u2|Add17~3\ = CARRY((!\u2|Add17~1\) # (!\u2|paddle1_pos_y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(3),
	datad => VCC,
	cin => \u2|Add17~1\,
	combout => \u2|Add17~2_combout\,
	cout => \u2|Add17~3\);

-- Location: LCCOMB_X63_Y50_N8
\u2|Add17~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add17~4_combout\ = (\u2|paddle1_pos_y\(4) & (!\u2|Add17~3\ & VCC)) # (!\u2|paddle1_pos_y\(4) & (\u2|Add17~3\ $ (GND)))
-- \u2|Add17~5\ = CARRY((!\u2|paddle1_pos_y\(4) & !\u2|Add17~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(4),
	datad => VCC,
	cin => \u2|Add17~3\,
	combout => \u2|Add17~4_combout\,
	cout => \u2|Add17~5\);

-- Location: LCCOMB_X63_Y50_N10
\u2|Add17~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add17~6_combout\ = (\u2|paddle1_pos_y\(5) & (!\u2|Add17~5\)) # (!\u2|paddle1_pos_y\(5) & (\u2|Add17~5\ & VCC))
-- \u2|Add17~7\ = CARRY((\u2|paddle1_pos_y\(5) & !\u2|Add17~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(5),
	datad => VCC,
	cin => \u2|Add17~5\,
	combout => \u2|Add17~6_combout\,
	cout => \u2|Add17~7\);

-- Location: LCCOMB_X63_Y50_N12
\u2|Add17~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add17~8_combout\ = (\u2|paddle1_pos_y\(6) & (\u2|Add17~7\ $ (GND))) # (!\u2|paddle1_pos_y\(6) & ((GND) # (!\u2|Add17~7\)))
-- \u2|Add17~9\ = CARRY((!\u2|Add17~7\) # (!\u2|paddle1_pos_y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(6),
	datad => VCC,
	cin => \u2|Add17~7\,
	combout => \u2|Add17~8_combout\,
	cout => \u2|Add17~9\);

-- Location: LCCOMB_X63_Y50_N14
\u2|Add17~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add17~10_combout\ = (\u2|paddle1_pos_y\(7) & (!\u2|Add17~9\)) # (!\u2|paddle1_pos_y\(7) & (\u2|Add17~9\ & VCC))
-- \u2|Add17~11\ = CARRY((\u2|paddle1_pos_y\(7) & !\u2|Add17~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(7),
	datad => VCC,
	cin => \u2|Add17~9\,
	combout => \u2|Add17~10_combout\,
	cout => \u2|Add17~11\);

-- Location: LCCOMB_X63_Y50_N16
\u2|Add17~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add17~12_combout\ = (\u2|paddle1_pos_y\(8) & ((GND) # (!\u2|Add17~11\))) # (!\u2|paddle1_pos_y\(8) & (\u2|Add17~11\ $ (GND)))
-- \u2|Add17~13\ = CARRY((\u2|paddle1_pos_y\(8)) # (!\u2|Add17~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(8),
	datad => VCC,
	cin => \u2|Add17~11\,
	combout => \u2|Add17~12_combout\,
	cout => \u2|Add17~13\);

-- Location: LCCOMB_X63_Y50_N18
\u2|Add17~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add17~14_combout\ = (\u2|paddle1_pos_y\(9) & (\u2|Add17~13\ & VCC)) # (!\u2|paddle1_pos_y\(9) & (!\u2|Add17~13\))
-- \u2|Add17~15\ = CARRY((!\u2|paddle1_pos_y\(9) & !\u2|Add17~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(9),
	datad => VCC,
	cin => \u2|Add17~13\,
	combout => \u2|Add17~14_combout\,
	cout => \u2|Add17~15\);

-- Location: LCCOMB_X63_Y50_N20
\u2|Add17~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add17~16_combout\ = \u2|Add17~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u2|Add17~15\,
	combout => \u2|Add17~16_combout\);

-- Location: LCCOMB_X62_Y47_N0
\u2|LessThan9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan9~1_cout\ = CARRY((!\u2|Add31~0_combout\ & \u2|paddle1_pos_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add31~0_combout\,
	datab => \u2|paddle1_pos_y\(0),
	datad => VCC,
	cout => \u2|LessThan9~1_cout\);

-- Location: LCCOMB_X62_Y47_N2
\u2|LessThan9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan9~3_cout\ = CARRY((\u2|Add31~2_combout\ & ((\u2|paddle1_pos_y\(1)) # (!\u2|LessThan9~1_cout\))) # (!\u2|Add31~2_combout\ & (\u2|paddle1_pos_y\(1) & !\u2|LessThan9~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add31~2_combout\,
	datab => \u2|paddle1_pos_y\(1),
	datad => VCC,
	cin => \u2|LessThan9~1_cout\,
	cout => \u2|LessThan9~3_cout\);

-- Location: LCCOMB_X62_Y47_N4
\u2|LessThan9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan9~5_cout\ = CARRY((\u2|Add17~0_combout\ & ((!\u2|LessThan9~3_cout\) # (!\u2|Add31~4_combout\))) # (!\u2|Add17~0_combout\ & (!\u2|Add31~4_combout\ & !\u2|LessThan9~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add17~0_combout\,
	datab => \u2|Add31~4_combout\,
	datad => VCC,
	cin => \u2|LessThan9~3_cout\,
	cout => \u2|LessThan9~5_cout\);

-- Location: LCCOMB_X62_Y47_N6
\u2|LessThan9~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan9~7_cout\ = CARRY((\u2|Add17~2_combout\ & (\u2|Add31~6_combout\ & !\u2|LessThan9~5_cout\)) # (!\u2|Add17~2_combout\ & ((\u2|Add31~6_combout\) # (!\u2|LessThan9~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add17~2_combout\,
	datab => \u2|Add31~6_combout\,
	datad => VCC,
	cin => \u2|LessThan9~5_cout\,
	cout => \u2|LessThan9~7_cout\);

-- Location: LCCOMB_X62_Y47_N8
\u2|LessThan9~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan9~9_cout\ = CARRY((\u2|Add31~8_combout\ & (\u2|Add17~4_combout\ & !\u2|LessThan9~7_cout\)) # (!\u2|Add31~8_combout\ & ((\u2|Add17~4_combout\) # (!\u2|LessThan9~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add31~8_combout\,
	datab => \u2|Add17~4_combout\,
	datad => VCC,
	cin => \u2|LessThan9~7_cout\,
	cout => \u2|LessThan9~9_cout\);

-- Location: LCCOMB_X62_Y47_N10
\u2|LessThan9~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan9~11_cout\ = CARRY((\u2|Add31~10_combout\ & ((!\u2|LessThan9~9_cout\) # (!\u2|Add17~6_combout\))) # (!\u2|Add31~10_combout\ & (!\u2|Add17~6_combout\ & !\u2|LessThan9~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add31~10_combout\,
	datab => \u2|Add17~6_combout\,
	datad => VCC,
	cin => \u2|LessThan9~9_cout\,
	cout => \u2|LessThan9~11_cout\);

-- Location: LCCOMB_X62_Y47_N12
\u2|LessThan9~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan9~13_cout\ = CARRY((\u2|Add31~12_combout\ & (\u2|Add17~8_combout\ & !\u2|LessThan9~11_cout\)) # (!\u2|Add31~12_combout\ & ((\u2|Add17~8_combout\) # (!\u2|LessThan9~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add31~12_combout\,
	datab => \u2|Add17~8_combout\,
	datad => VCC,
	cin => \u2|LessThan9~11_cout\,
	cout => \u2|LessThan9~13_cout\);

-- Location: LCCOMB_X62_Y47_N14
\u2|LessThan9~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan9~15_cout\ = CARRY((\u2|Add31~14_combout\ & ((!\u2|LessThan9~13_cout\) # (!\u2|Add17~10_combout\))) # (!\u2|Add31~14_combout\ & (!\u2|Add17~10_combout\ & !\u2|LessThan9~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add31~14_combout\,
	datab => \u2|Add17~10_combout\,
	datad => VCC,
	cin => \u2|LessThan9~13_cout\,
	cout => \u2|LessThan9~15_cout\);

-- Location: LCCOMB_X62_Y47_N16
\u2|LessThan9~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan9~17_cout\ = CARRY((\u2|Add31~16_combout\ & (\u2|Add17~12_combout\ & !\u2|LessThan9~15_cout\)) # (!\u2|Add31~16_combout\ & ((\u2|Add17~12_combout\) # (!\u2|LessThan9~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add31~16_combout\,
	datab => \u2|Add17~12_combout\,
	datad => VCC,
	cin => \u2|LessThan9~15_cout\,
	cout => \u2|LessThan9~17_cout\);

-- Location: LCCOMB_X62_Y47_N18
\u2|LessThan9~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan9~19_cout\ = CARRY((\u2|Add17~14_combout\ & (\u2|Add31~18_combout\ & !\u2|LessThan9~17_cout\)) # (!\u2|Add17~14_combout\ & ((\u2|Add31~18_combout\) # (!\u2|LessThan9~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add17~14_combout\,
	datab => \u2|Add31~18_combout\,
	datad => VCC,
	cin => \u2|LessThan9~17_cout\,
	cout => \u2|LessThan9~19_cout\);

-- Location: LCCOMB_X62_Y47_N20
\u2|LessThan9~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan9~20_combout\ = (\u2|Add17~16_combout\ & ((!\u2|Add31~20_combout\) # (!\u2|LessThan9~19_cout\))) # (!\u2|Add17~16_combout\ & (!\u2|LessThan9~19_cout\ & !\u2|Add31~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Add17~16_combout\,
	datad => \u2|Add31~20_combout\,
	cin => \u2|LessThan9~19_cout\,
	combout => \u2|LessThan9~20_combout\);

-- Location: LCCOMB_X63_Y46_N0
\u2|Ball_direction~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~26_combout\ = (\u2|Add12~20_combout\ & (((\u2|Add17~16_combout\) # (!\u2|LessThan9~20_combout\)))) # (!\u2|Add12~20_combout\ & (!\u2|LessThan8~20_combout\ & ((\u2|Add17~16_combout\) # (!\u2|LessThan9~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add12~20_combout\,
	datab => \u2|LessThan8~20_combout\,
	datac => \u2|Add17~16_combout\,
	datad => \u2|LessThan9~20_combout\,
	combout => \u2|Ball_direction~26_combout\);

-- Location: LCCOMB_X63_Y46_N2
\u2|Ball_direction~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~46_combout\ = (\u2|Ball_direction~26_combout\ & ((\u2|Add16~18_combout\) # ((\u2|Ball_direction~24_combout\ & \u2|LessThan7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add16~18_combout\,
	datab => \u2|Ball_direction~24_combout\,
	datac => \u2|LessThan7~0_combout\,
	datad => \u2|Ball_direction~26_combout\,
	combout => \u2|Ball_direction~46_combout\);

-- Location: LCCOMB_X60_Y46_N16
\u2|Ball_direction[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[2]~11_combout\ = \u2|Ball_direction[2]~9_combout\ $ (((\u2|Ball_direction~46_combout\ & (\u2|Ball_direction~66_combout\)) # (!\u2|Ball_direction~46_combout\ & ((\u2|Ball_direction~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction~66_combout\,
	datab => \u2|Ball_direction[2]~9_combout\,
	datac => \u2|Ball_direction~65_combout\,
	datad => \u2|Ball_direction~46_combout\,
	combout => \u2|Ball_direction[2]~11_combout\);

-- Location: FF_X60_Y46_N17
\u2|Ball_direction[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|Ball_direction[2]~11_combout\,
	clrn => \u2|ALT_INV_process_2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Ball_direction[2]~_emulated_q\);

-- Location: LCCOMB_X65_Y46_N28
\u2|Ball_direction[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[2]~10_combout\ = (\u2|process_2~0_combout\ & (!\u2|Ball_direction~67_combout\)) # (!\u2|process_2~0_combout\ & ((\u2|Ball_direction[2]~9_combout\ $ (!\u2|Ball_direction[2]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction~67_combout\,
	datab => \u2|Ball_direction[2]~9_combout\,
	datac => \u2|Ball_direction[2]~_emulated_q\,
	datad => \u2|process_2~0_combout\,
	combout => \u2|Ball_direction[2]~10_combout\);

-- Location: LCCOMB_X65_Y46_N18
\u2|Ball_direction~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~23_combout\ = (\u2|Ball_direction[1]~2_combout\ & ((\u2|Ball_direction[0]~6_combout\) # (!\u2|Ball_direction[2]~10_combout\))) # (!\u2|Ball_direction[1]~2_combout\ & (!\u2|Ball_direction[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_direction[1]~2_combout\,
	datac => \u2|Ball_direction[0]~6_combout\,
	datad => \u2|Ball_direction[2]~10_combout\,
	combout => \u2|Ball_direction~23_combout\);

-- Location: LCCOMB_X65_Y46_N6
\u2|Ball_direction[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[1]~1_combout\ = (GLOBAL(\u2|process_2~0clkctrl_outclk\) & ((!\u2|Ball_direction~23_combout\))) # (!GLOBAL(\u2|process_2~0clkctrl_outclk\) & (\u2|Ball_direction[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[1]~1_combout\,
	datac => \u2|process_2~0clkctrl_outclk\,
	datad => \u2|Ball_direction~23_combout\,
	combout => \u2|Ball_direction[1]~1_combout\);

-- Location: LCCOMB_X65_Y46_N12
\u2|Ball_direction[0]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[0]~69_combout\ = (!\u2|Ball_pos_x\(7) & (\u2|Equal10~2_combout\ & (!\u2|Ball_pos_x\(9) & !\u2|Ball_direction~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(7),
	datab => \u2|Equal10~2_combout\,
	datac => \u2|Ball_pos_x\(9),
	datad => \u2|Ball_direction~23_combout\,
	combout => \u2|Ball_direction[0]~69_combout\);

-- Location: LCCOMB_X66_Y46_N0
\u2|Ball_direction~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~25_combout\ = (\u2|Add16~18_combout\) # ((\u2|LessThan7~0_combout\ & \u2|Ball_direction~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Add16~18_combout\,
	datac => \u2|LessThan7~0_combout\,
	datad => \u2|Ball_direction~24_combout\,
	combout => \u2|Ball_direction~25_combout\);

-- Location: LCCOMB_X63_Y46_N26
\u2|Ball_direction[0]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[0]~27_combout\ = (((\u2|Ball_direction~23_combout\ & \u2|process_2~1_combout\)) # (!\u2|Ball_direction~26_combout\)) # (!\u2|Ball_direction~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction~23_combout\,
	datab => \u2|Ball_direction~25_combout\,
	datac => \u2|process_2~1_combout\,
	datad => \u2|Ball_direction~26_combout\,
	combout => \u2|Ball_direction[0]~27_combout\);

-- Location: LCCOMB_X62_Y48_N10
\u2|Ball_direction[0]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[0]~68_combout\ = (\u2|process_2~2_combout\ & ((\u2|Ball_direction[0]~6_combout\ & ((!\u2|Ball_direction[1]~2_combout\) # (!\u2|Ball_direction[2]~10_combout\))) # (!\u2|Ball_direction[0]~6_combout\ & 
-- ((\u2|Ball_direction[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[2]~10_combout\,
	datab => \u2|Ball_direction[0]~6_combout\,
	datac => \u2|Ball_direction[1]~2_combout\,
	datad => \u2|process_2~2_combout\,
	combout => \u2|Ball_direction[0]~68_combout\);

-- Location: LCCOMB_X62_Y46_N0
\u2|Ball_direction[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[0]~34_combout\ = (\u2|Ball_direction[0]~27_combout\ & ((\u2|Ball_direction[0]~68_combout\) # (\u2|Ball_direction~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_direction[0]~27_combout\,
	datac => \u2|Ball_direction[0]~68_combout\,
	datad => \u2|Ball_direction~33_combout\,
	combout => \u2|Ball_direction[0]~34_combout\);

-- Location: LCCOMB_X64_Y47_N2
\u2|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal7~0_combout\ = (\u2|Ball_pos_y\(4) & (!\u2|Ball_pos_y\(3) & (!\u2|Ball_pos_y\(2) & !\u2|Ball_pos_y\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(4),
	datab => \u2|Ball_pos_y\(3),
	datac => \u2|Ball_pos_y\(2),
	datad => \u2|Ball_pos_y\(9),
	combout => \u2|Equal7~0_combout\);

-- Location: LCCOMB_X64_Y47_N4
\u2|Ball_direction[0]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[0]~36_combout\ = (((\u2|Ball_pos_y\(8)) # (!\u2|Ball_pos_y\(5))) # (!\u2|Ball_pos_y\(6))) # (!\u2|Ball_pos_y\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(7),
	datab => \u2|Ball_pos_y\(6),
	datac => \u2|Ball_pos_y\(8),
	datad => \u2|Ball_pos_y\(5),
	combout => \u2|Ball_direction[0]~36_combout\);

-- Location: LCCOMB_X64_Y47_N8
\u2|Ball_direction[0]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[0]~37_combout\ = (\u2|Ball_pos_y\(1)) # (((\u2|Ball_direction[0]~36_combout\) # (\u2|Ball_pos_y\(0))) # (!\u2|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(1),
	datab => \u2|Equal7~0_combout\,
	datac => \u2|Ball_direction[0]~36_combout\,
	datad => \u2|Ball_pos_y\(0),
	combout => \u2|Ball_direction[0]~37_combout\);

-- Location: LCCOMB_X64_Y47_N30
\u2|Equal7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal7~1_combout\ = (!\u2|Ball_pos_y\(7) & (!\u2|Ball_pos_y\(6) & (\u2|Ball_pos_y\(8) & !\u2|Ball_pos_y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(7),
	datab => \u2|Ball_pos_y\(6),
	datac => \u2|Ball_pos_y\(8),
	datad => \u2|Ball_pos_y\(5),
	combout => \u2|Equal7~1_combout\);

-- Location: LCCOMB_X64_Y47_N0
\u2|Equal7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal7~2_combout\ = (!\u2|Ball_pos_y\(1) & (\u2|Equal7~0_combout\ & (\u2|Equal7~1_combout\ & !\u2|Ball_pos_y\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(1),
	datab => \u2|Equal7~0_combout\,
	datac => \u2|Equal7~1_combout\,
	datad => \u2|Ball_pos_y\(0),
	combout => \u2|Equal7~2_combout\);

-- Location: LCCOMB_X65_Y46_N0
\u2|Ball_direction[0]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[0]~38_combout\ = ((\u2|Ball_direction[1]~2_combout\ & ((!\u2|Equal7~2_combout\))) # (!\u2|Ball_direction[1]~2_combout\ & (\u2|Ball_direction[0]~37_combout\))) # (!\u2|Ball_direction[2]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[1]~2_combout\,
	datab => \u2|Ball_direction[0]~37_combout\,
	datac => \u2|Ball_direction[2]~10_combout\,
	datad => \u2|Equal7~2_combout\,
	combout => \u2|Ball_direction[0]~38_combout\);

-- Location: LCCOMB_X62_Y46_N26
\u2|Ball_direction[0]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[0]~40_combout\ = (!\u2|Ball_direction[0]~69_combout\ & (\u2|Ball_direction[0]~35_combout\ & (\u2|Ball_direction[0]~34_combout\ & \u2|Ball_direction[0]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[0]~69_combout\,
	datab => \u2|Ball_direction[0]~35_combout\,
	datac => \u2|Ball_direction[0]~34_combout\,
	datad => \u2|Ball_direction[0]~38_combout\,
	combout => \u2|Ball_direction[0]~40_combout\);

-- Location: LCCOMB_X61_Y46_N30
\u2|Ball_direction[0]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[0]~41_combout\ = (\u2|Ball_direction[0]~35_combout\ & ((\u2|Ball_direction~29_combout\) # ((!\u2|Add29~20_combout\ & \u2|Ball_direction~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add29~20_combout\,
	datab => \u2|Ball_direction[0]~35_combout\,
	datac => \u2|Ball_direction~29_combout\,
	datad => \u2|Ball_direction~32_combout\,
	combout => \u2|Ball_direction[0]~41_combout\);

-- Location: LCCOMB_X62_Y46_N24
\u2|Ball_direction[0]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[0]~42_combout\ = (\u2|Ball_direction[0]~27_combout\ & ((\u2|Ball_direction[0]~68_combout\) # (\u2|Ball_direction[0]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_direction[0]~27_combout\,
	datac => \u2|Ball_direction[0]~68_combout\,
	datad => \u2|Ball_direction[0]~41_combout\,
	combout => \u2|Ball_direction[0]~42_combout\);

-- Location: LCCOMB_X62_Y46_N16
\u2|Ball_direction[0]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[0]~52_combout\ = ((\u2|Equal12~0_combout\ & (!\u2|Ball_direction[0]~39_combout\)) # (!\u2|Equal12~0_combout\ & ((\u2|Ball_direction~28_combout\)))) # (!\u2|Equal10~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[0]~39_combout\,
	datab => \u2|Equal10~2_combout\,
	datac => \u2|Equal12~0_combout\,
	datad => \u2|Ball_direction~28_combout\,
	combout => \u2|Ball_direction[0]~52_combout\);

-- Location: LCCOMB_X62_Y46_N14
\u2|Ball_direction[0]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[0]~53_combout\ = (\u2|Ball_direction[0]~52_combout\ & (\u2|Ball_direction[0]~27_combout\ & ((\u2|Ball_direction[0]~68_combout\) # (\u2|Ball_direction~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[0]~52_combout\,
	datab => \u2|Ball_direction[0]~27_combout\,
	datac => \u2|Ball_direction[0]~68_combout\,
	datad => \u2|Ball_direction~33_combout\,
	combout => \u2|Ball_direction[0]~53_combout\);

-- Location: LCCOMB_X64_Y46_N2
\u2|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal5~0_combout\ = (\u2|Ball_direction[1]~2_combout\ & \u2|Ball_direction[2]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_direction[1]~2_combout\,
	datac => \u2|Ball_direction[2]~10_combout\,
	combout => \u2|Equal5~0_combout\);

-- Location: LCCOMB_X61_Y46_N28
\u2|Ball_direction[0]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[0]~43_combout\ = (\u2|Ball_direction[0]~39_combout\ & (!\u2|Equal10~2_combout\ & ((!\u2|Equal5~0_combout\) # (!\u2|Equal7~2_combout\)))) # (!\u2|Ball_direction[0]~39_combout\ & (((!\u2|Equal5~0_combout\)) # (!\u2|Equal7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[0]~39_combout\,
	datab => \u2|Equal7~2_combout\,
	datac => \u2|Equal5~0_combout\,
	datad => \u2|Equal10~2_combout\,
	combout => \u2|Ball_direction[0]~43_combout\);

-- Location: LCCOMB_X62_Y46_N6
\u2|Ball_direction[0]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[0]~44_combout\ = (\u2|Ball_direction[0]~43_combout\ & (\u2|Ball_direction[0]~27_combout\ & ((\u2|Ball_direction[0]~68_combout\) # (\u2|Ball_direction[0]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[0]~43_combout\,
	datab => \u2|Ball_direction[0]~27_combout\,
	datac => \u2|Ball_direction[0]~68_combout\,
	datad => \u2|Ball_direction[0]~41_combout\,
	combout => \u2|Ball_direction[0]~44_combout\);

-- Location: LCCOMB_X62_Y46_N22
\u2|Ball_direction~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~55_combout\ = (!\u2|Ball_direction[0]~44_combout\ & ((\u2|Ball_direction[0]~42_combout\) # ((\u2|Ball_direction[0]~34_combout\) # (\u2|Ball_direction[0]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[0]~42_combout\,
	datab => \u2|Ball_direction[0]~34_combout\,
	datac => \u2|Ball_direction[0]~53_combout\,
	datad => \u2|Ball_direction[0]~44_combout\,
	combout => \u2|Ball_direction~55_combout\);

-- Location: LCCOMB_X63_Y49_N10
\u2|LessThan12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan12~1_cout\ = CARRY((\u2|Ball_pos_y\(0) & !\u2|paddle1_pos_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(0),
	datab => \u2|paddle1_pos_y\(0),
	datad => VCC,
	cout => \u2|LessThan12~1_cout\);

-- Location: LCCOMB_X63_Y49_N12
\u2|LessThan12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan12~3_cout\ = CARRY((\u2|Ball_pos_y\(1) & (\u2|paddle1_pos_y\(1) & !\u2|LessThan12~1_cout\)) # (!\u2|Ball_pos_y\(1) & ((\u2|paddle1_pos_y\(1)) # (!\u2|LessThan12~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(1),
	datab => \u2|paddle1_pos_y\(1),
	datad => VCC,
	cin => \u2|LessThan12~1_cout\,
	cout => \u2|LessThan12~3_cout\);

-- Location: LCCOMB_X63_Y49_N14
\u2|LessThan12~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan12~5_cout\ = CARRY((\u2|Ball_pos_y\(2) & ((!\u2|LessThan12~3_cout\) # (!\u2|paddle1_pos_y\(2)))) # (!\u2|Ball_pos_y\(2) & (!\u2|paddle1_pos_y\(2) & !\u2|LessThan12~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(2),
	datab => \u2|paddle1_pos_y\(2),
	datad => VCC,
	cin => \u2|LessThan12~3_cout\,
	cout => \u2|LessThan12~5_cout\);

-- Location: LCCOMB_X63_Y49_N16
\u2|LessThan12~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan12~7_cout\ = CARRY((\u2|Ball_pos_y\(3) & (\u2|paddle1_pos_y\(3) & !\u2|LessThan12~5_cout\)) # (!\u2|Ball_pos_y\(3) & ((\u2|paddle1_pos_y\(3)) # (!\u2|LessThan12~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(3),
	datab => \u2|paddle1_pos_y\(3),
	datad => VCC,
	cin => \u2|LessThan12~5_cout\,
	cout => \u2|LessThan12~7_cout\);

-- Location: LCCOMB_X63_Y49_N18
\u2|LessThan12~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan12~9_cout\ = CARRY((\u2|paddle1_pos_y\(4) & ((!\u2|LessThan12~7_cout\) # (!\u2|Ball_pos_y\(4)))) # (!\u2|paddle1_pos_y\(4) & (!\u2|Ball_pos_y\(4) & !\u2|LessThan12~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(4),
	datab => \u2|Ball_pos_y\(4),
	datad => VCC,
	cin => \u2|LessThan12~7_cout\,
	cout => \u2|LessThan12~9_cout\);

-- Location: LCCOMB_X63_Y49_N20
\u2|LessThan12~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan12~11_cout\ = CARRY((\u2|Ball_pos_y\(5) & ((!\u2|LessThan12~9_cout\) # (!\u2|paddle1_pos_y\(5)))) # (!\u2|Ball_pos_y\(5) & (!\u2|paddle1_pos_y\(5) & !\u2|LessThan12~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(5),
	datab => \u2|paddle1_pos_y\(5),
	datad => VCC,
	cin => \u2|LessThan12~9_cout\,
	cout => \u2|LessThan12~11_cout\);

-- Location: LCCOMB_X63_Y49_N22
\u2|LessThan12~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan12~13_cout\ = CARRY((\u2|paddle1_pos_y\(6) & ((!\u2|LessThan12~11_cout\) # (!\u2|Ball_pos_y\(6)))) # (!\u2|paddle1_pos_y\(6) & (!\u2|Ball_pos_y\(6) & !\u2|LessThan12~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(6),
	datab => \u2|Ball_pos_y\(6),
	datad => VCC,
	cin => \u2|LessThan12~11_cout\,
	cout => \u2|LessThan12~13_cout\);

-- Location: LCCOMB_X63_Y49_N24
\u2|LessThan12~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan12~15_cout\ = CARRY((\u2|paddle1_pos_y\(7) & (\u2|Ball_pos_y\(7) & !\u2|LessThan12~13_cout\)) # (!\u2|paddle1_pos_y\(7) & ((\u2|Ball_pos_y\(7)) # (!\u2|LessThan12~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(7),
	datab => \u2|Ball_pos_y\(7),
	datad => VCC,
	cin => \u2|LessThan12~13_cout\,
	cout => \u2|LessThan12~15_cout\);

-- Location: LCCOMB_X63_Y49_N26
\u2|LessThan12~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan12~17_cout\ = CARRY((\u2|paddle1_pos_y\(8) & (\u2|Ball_pos_y\(8) & !\u2|LessThan12~15_cout\)) # (!\u2|paddle1_pos_y\(8) & ((\u2|Ball_pos_y\(8)) # (!\u2|LessThan12~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(8),
	datab => \u2|Ball_pos_y\(8),
	datad => VCC,
	cin => \u2|LessThan12~15_cout\,
	cout => \u2|LessThan12~17_cout\);

-- Location: LCCOMB_X63_Y49_N28
\u2|LessThan12~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan12~18_combout\ = (\u2|paddle1_pos_y\(9) & (\u2|Ball_pos_y\(9) & \u2|LessThan12~17_cout\)) # (!\u2|paddle1_pos_y\(9) & ((\u2|Ball_pos_y\(9)) # (\u2|LessThan12~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(9),
	datab => \u2|Ball_pos_y\(9),
	cin => \u2|LessThan12~17_cout\,
	combout => \u2|LessThan12~18_combout\);

-- Location: LCCOMB_X64_Y46_N24
\u2|Ball_direction~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~47_combout\ = (\u2|Ball_direction[0]~6_combout\ & (\u2|LessThan12~18_combout\ & ((\u2|Ball_direction[1]~2_combout\) # (!\u2|Ball_direction[2]~10_combout\)))) # (!\u2|Ball_direction[0]~6_combout\ & ((\u2|LessThan12~18_combout\) # 
-- ((\u2|Ball_direction[1]~2_combout\ & \u2|Ball_direction[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[0]~6_combout\,
	datab => \u2|LessThan12~18_combout\,
	datac => \u2|Ball_direction[1]~2_combout\,
	datad => \u2|Ball_direction[2]~10_combout\,
	combout => \u2|Ball_direction~47_combout\);

-- Location: LCCOMB_X63_Y46_N28
\u2|Ball_direction~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~48_combout\ = (!\u2|Ball_direction~23_combout\ & (\u2|Ball_direction~47_combout\ & (\u2|process_2~1_combout\ & \u2|Ball_direction~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction~23_combout\,
	datab => \u2|Ball_direction~47_combout\,
	datac => \u2|process_2~1_combout\,
	datad => \u2|Ball_direction~46_combout\,
	combout => \u2|Ball_direction~48_combout\);

-- Location: LCCOMB_X62_Y46_N12
\u2|Ball_direction[0]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[0]~45_combout\ = (\u2|Ball_direction[0]~44_combout\) # ((\u2|Ball_direction[0]~42_combout\) # (\u2|Ball_direction[0]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[0]~44_combout\,
	datab => \u2|Ball_direction[0]~42_combout\,
	datac => \u2|Ball_direction[0]~34_combout\,
	combout => \u2|Ball_direction[0]~45_combout\);

-- Location: LCCOMB_X61_Y49_N8
\u2|LessThan6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan6~1_cout\ = CARRY((!\u2|paddle2_pos_y\(0) & \u2|Ball_pos_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(0),
	datab => \u2|Ball_pos_y\(0),
	datad => VCC,
	cout => \u2|LessThan6~1_cout\);

-- Location: LCCOMB_X61_Y49_N10
\u2|LessThan6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan6~3_cout\ = CARRY((\u2|paddle2_pos_y\(1) & ((!\u2|LessThan6~1_cout\) # (!\u2|Ball_pos_y\(1)))) # (!\u2|paddle2_pos_y\(1) & (!\u2|Ball_pos_y\(1) & !\u2|LessThan6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(1),
	datab => \u2|Ball_pos_y\(1),
	datad => VCC,
	cin => \u2|LessThan6~1_cout\,
	cout => \u2|LessThan6~3_cout\);

-- Location: LCCOMB_X61_Y49_N12
\u2|LessThan6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan6~5_cout\ = CARRY((\u2|paddle2_pos_y\(2) & (\u2|Ball_pos_y\(2) & !\u2|LessThan6~3_cout\)) # (!\u2|paddle2_pos_y\(2) & ((\u2|Ball_pos_y\(2)) # (!\u2|LessThan6~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(2),
	datab => \u2|Ball_pos_y\(2),
	datad => VCC,
	cin => \u2|LessThan6~3_cout\,
	cout => \u2|LessThan6~5_cout\);

-- Location: LCCOMB_X61_Y49_N14
\u2|LessThan6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan6~7_cout\ = CARRY((\u2|Ball_pos_y\(3) & (\u2|paddle2_pos_y\(3) & !\u2|LessThan6~5_cout\)) # (!\u2|Ball_pos_y\(3) & ((\u2|paddle2_pos_y\(3)) # (!\u2|LessThan6~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(3),
	datab => \u2|paddle2_pos_y\(3),
	datad => VCC,
	cin => \u2|LessThan6~5_cout\,
	cout => \u2|LessThan6~7_cout\);

-- Location: LCCOMB_X61_Y49_N16
\u2|LessThan6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan6~9_cout\ = CARRY((\u2|paddle2_pos_y\(4) & ((!\u2|LessThan6~7_cout\) # (!\u2|Ball_pos_y\(4)))) # (!\u2|paddle2_pos_y\(4) & (!\u2|Ball_pos_y\(4) & !\u2|LessThan6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(4),
	datab => \u2|Ball_pos_y\(4),
	datad => VCC,
	cin => \u2|LessThan6~7_cout\,
	cout => \u2|LessThan6~9_cout\);

-- Location: LCCOMB_X61_Y49_N18
\u2|LessThan6~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan6~11_cout\ = CARRY((\u2|paddle2_pos_y\(5) & (\u2|Ball_pos_y\(5) & !\u2|LessThan6~9_cout\)) # (!\u2|paddle2_pos_y\(5) & ((\u2|Ball_pos_y\(5)) # (!\u2|LessThan6~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(5),
	datab => \u2|Ball_pos_y\(5),
	datad => VCC,
	cin => \u2|LessThan6~9_cout\,
	cout => \u2|LessThan6~11_cout\);

-- Location: LCCOMB_X61_Y49_N20
\u2|LessThan6~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan6~13_cout\ = CARRY((\u2|paddle2_pos_y\(6) & ((!\u2|LessThan6~11_cout\) # (!\u2|Ball_pos_y\(6)))) # (!\u2|paddle2_pos_y\(6) & (!\u2|Ball_pos_y\(6) & !\u2|LessThan6~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(6),
	datab => \u2|Ball_pos_y\(6),
	datad => VCC,
	cin => \u2|LessThan6~11_cout\,
	cout => \u2|LessThan6~13_cout\);

-- Location: LCCOMB_X61_Y49_N22
\u2|LessThan6~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan6~15_cout\ = CARRY((\u2|paddle2_pos_y\(7) & (\u2|Ball_pos_y\(7) & !\u2|LessThan6~13_cout\)) # (!\u2|paddle2_pos_y\(7) & ((\u2|Ball_pos_y\(7)) # (!\u2|LessThan6~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(7),
	datab => \u2|Ball_pos_y\(7),
	datad => VCC,
	cin => \u2|LessThan6~13_cout\,
	cout => \u2|LessThan6~15_cout\);

-- Location: LCCOMB_X61_Y49_N24
\u2|LessThan6~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan6~17_cout\ = CARRY((\u2|paddle2_pos_y\(8) & (\u2|Ball_pos_y\(8) & !\u2|LessThan6~15_cout\)) # (!\u2|paddle2_pos_y\(8) & ((\u2|Ball_pos_y\(8)) # (!\u2|LessThan6~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(8),
	datab => \u2|Ball_pos_y\(8),
	datad => VCC,
	cin => \u2|LessThan6~15_cout\,
	cout => \u2|LessThan6~17_cout\);

-- Location: LCCOMB_X61_Y49_N26
\u2|LessThan6~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan6~18_combout\ = (\u2|Ball_pos_y\(9) & ((\u2|LessThan6~17_cout\) # (!\u2|paddle2_pos_y\(9)))) # (!\u2|Ball_pos_y\(9) & (\u2|LessThan6~17_cout\ & !\u2|paddle2_pos_y\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(9),
	datad => \u2|paddle2_pos_y\(9),
	cin => \u2|LessThan6~17_cout\,
	combout => \u2|LessThan6~18_combout\);

-- Location: LCCOMB_X62_Y48_N2
\u2|Ball_direction~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~49_combout\ = (\u2|Ball_direction[2]~10_combout\ & ((\u2|Ball_direction[0]~6_combout\ & ((\u2|Ball_direction[1]~2_combout\) # (\u2|LessThan6~18_combout\))) # (!\u2|Ball_direction[0]~6_combout\ & (\u2|Ball_direction[1]~2_combout\ & 
-- \u2|LessThan6~18_combout\)))) # (!\u2|Ball_direction[2]~10_combout\ & (((\u2|LessThan6~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[2]~10_combout\,
	datab => \u2|Ball_direction[0]~6_combout\,
	datac => \u2|Ball_direction[1]~2_combout\,
	datad => \u2|LessThan6~18_combout\,
	combout => \u2|Ball_direction~49_combout\);

-- Location: LCCOMB_X62_Y48_N8
\u2|Ball_direction~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~50_combout\ = (\u2|Ball_direction~49_combout\ & \u2|process_2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|Ball_direction~49_combout\,
	datad => \u2|process_2~2_combout\,
	combout => \u2|Ball_direction~50_combout\);

-- Location: LCCOMB_X62_Y46_N10
\u2|Ball_direction[1]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[1]~51_combout\ = (\u2|Ball_direction~48_combout\) # ((\u2|Ball_direction[0]~45_combout\) # ((\u2|Ball_direction[0]~27_combout\ & \u2|Ball_direction~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[0]~27_combout\,
	datab => \u2|Ball_direction~48_combout\,
	datac => \u2|Ball_direction[0]~45_combout\,
	datad => \u2|Ball_direction~50_combout\,
	combout => \u2|Ball_direction[1]~51_combout\);

-- Location: LCCOMB_X62_Y46_N8
\u2|Ball_direction~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~54_combout\ = (!\u2|Ball_direction[0]~53_combout\ & (\u2|Equal5~0_combout\ & (\u2|Ball_direction[0]~42_combout\ $ (\u2|Ball_direction[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[0]~42_combout\,
	datab => \u2|Ball_direction[0]~53_combout\,
	datac => \u2|Ball_direction[0]~6_combout\,
	datad => \u2|Equal5~0_combout\,
	combout => \u2|Ball_direction~54_combout\);

-- Location: LCCOMB_X62_Y46_N20
\u2|Ball_direction[1]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[1]~56_combout\ = (\u2|Ball_direction[1]~51_combout\ & (!\u2|Ball_direction[0]~40_combout\ & ((\u2|Ball_direction~54_combout\) # (!\u2|Ball_direction~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction~55_combout\,
	datab => \u2|Ball_direction[1]~51_combout\,
	datac => \u2|Ball_direction~54_combout\,
	datad => \u2|Ball_direction[0]~40_combout\,
	combout => \u2|Ball_direction[1]~56_combout\);

-- Location: LCCOMB_X62_Y46_N28
\u2|Ball_direction[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[1]~3_combout\ = \u2|Ball_direction[1]~1_combout\ $ (((\u2|Ball_direction[1]~56_combout\) # ((\u2|Ball_direction[1]~2_combout\ & \u2|Ball_direction[0]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[1]~2_combout\,
	datab => \u2|Ball_direction[1]~1_combout\,
	datac => \u2|Ball_direction[0]~40_combout\,
	datad => \u2|Ball_direction[1]~56_combout\,
	combout => \u2|Ball_direction[1]~3_combout\);

-- Location: FF_X62_Y46_N29
\u2|Ball_direction[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|Ball_direction[1]~3_combout\,
	clrn => \u2|ALT_INV_process_2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Ball_direction[1]~_emulated_q\);

-- Location: LCCOMB_X65_Y46_N4
\u2|Ball_direction[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[1]~2_combout\ = (\u2|process_2~0_combout\ & (!\u2|Ball_direction~23_combout\)) # (!\u2|process_2~0_combout\ & ((\u2|Ball_direction[1]~_emulated_q\ $ (\u2|Ball_direction[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|process_2~0_combout\,
	datab => \u2|Ball_direction~23_combout\,
	datac => \u2|Ball_direction[1]~_emulated_q\,
	datad => \u2|Ball_direction[1]~1_combout\,
	combout => \u2|Ball_direction[1]~2_combout\);

-- Location: LCCOMB_X65_Y46_N20
\u2|Ball_direction~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~61_combout\ = (\u2|Ball_direction[0]~6_combout\) # ((\u2|Ball_direction[1]~2_combout\ & !\u2|Ball_direction[2]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_direction[1]~2_combout\,
	datac => \u2|Ball_direction[0]~6_combout\,
	datad => \u2|Ball_direction[2]~10_combout\,
	combout => \u2|Ball_direction~61_combout\);

-- Location: LCCOMB_X65_Y46_N8
\u2|Ball_direction[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[0]~5_combout\ = (GLOBAL(\u2|process_2~0clkctrl_outclk\) & (!\u2|Ball_direction~61_combout\)) # (!GLOBAL(\u2|process_2~0clkctrl_outclk\) & ((\u2|Ball_direction[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction~61_combout\,
	datac => \u2|Ball_direction[0]~5_combout\,
	datad => \u2|process_2~0clkctrl_outclk\,
	combout => \u2|Ball_direction[0]~5_combout\);

-- Location: LCCOMB_X63_Y46_N30
\u2|Ball_direction~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~57_combout\ = (!\u2|Ball_direction[0]~44_combout\ & ((\u2|Ball_direction~48_combout\) # ((!\u2|Ball_direction~50_combout\ & \u2|Ball_direction[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction~50_combout\,
	datab => \u2|Ball_direction[0]~27_combout\,
	datac => \u2|Ball_direction[0]~44_combout\,
	datad => \u2|Ball_direction~48_combout\,
	combout => \u2|Ball_direction~57_combout\);

-- Location: LCCOMB_X64_Y46_N30
\u2|Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Equal5~1_combout\ = (!\u2|Ball_direction[1]~2_combout\ & (!\u2|Ball_direction[0]~6_combout\ & \u2|Ball_direction[2]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[1]~2_combout\,
	datab => \u2|Ball_direction[0]~6_combout\,
	datac => \u2|Ball_direction[2]~10_combout\,
	combout => \u2|Equal5~1_combout\);

-- Location: LCCOMB_X62_Y46_N18
\u2|Ball_direction~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~58_combout\ = (\u2|Ball_direction~57_combout\ & (((\u2|Equal5~1_combout\ & \u2|Ball_direction[0]~44_combout\)) # (!\u2|Ball_direction[0]~45_combout\))) # (!\u2|Ball_direction~57_combout\ & (((\u2|Equal5~1_combout\ & 
-- \u2|Ball_direction[0]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction~57_combout\,
	datab => \u2|Ball_direction[0]~45_combout\,
	datac => \u2|Equal5~1_combout\,
	datad => \u2|Ball_direction[0]~44_combout\,
	combout => \u2|Ball_direction~58_combout\);

-- Location: LCCOMB_X62_Y46_N4
\u2|Ball_direction~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~59_combout\ = (\u2|Equal5~0_combout\ & (((!\u2|Ball_direction[0]~6_combout\)))) # (!\u2|Equal5~0_combout\ & (!\u2|Ball_direction[0]~42_combout\ & ((!\u2|Ball_direction[0]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[0]~42_combout\,
	datab => \u2|Ball_direction[0]~6_combout\,
	datac => \u2|Ball_direction[0]~53_combout\,
	datad => \u2|Equal5~0_combout\,
	combout => \u2|Ball_direction~59_combout\);

-- Location: LCCOMB_X62_Y46_N2
\u2|Ball_direction~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction~60_combout\ = (\u2|Ball_direction~58_combout\) # ((\u2|Ball_direction~55_combout\ & \u2|Ball_direction~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction~55_combout\,
	datab => \u2|Ball_direction~58_combout\,
	datac => \u2|Ball_direction~59_combout\,
	combout => \u2|Ball_direction~60_combout\);

-- Location: LCCOMB_X62_Y46_N30
\u2|Ball_direction[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[0]~7_combout\ = \u2|Ball_direction[0]~5_combout\ $ (((\u2|Ball_direction[0]~40_combout\ & ((\u2|Ball_direction[0]~6_combout\))) # (!\u2|Ball_direction[0]~40_combout\ & (\u2|Ball_direction~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[0]~5_combout\,
	datab => \u2|Ball_direction~60_combout\,
	datac => \u2|Ball_direction[0]~6_combout\,
	datad => \u2|Ball_direction[0]~40_combout\,
	combout => \u2|Ball_direction[0]~7_combout\);

-- Location: FF_X62_Y46_N31
\u2|Ball_direction[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|Ball_direction[0]~7_combout\,
	clrn => \u2|ALT_INV_process_2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Ball_direction[0]~_emulated_q\);

-- Location: LCCOMB_X65_Y46_N30
\u2|Ball_direction[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Ball_direction[0]~6_combout\ = (\u2|process_2~0_combout\ & (((!\u2|Ball_direction~61_combout\)))) # (!\u2|process_2~0_combout\ & (\u2|Ball_direction[0]~_emulated_q\ $ (((\u2|Ball_direction[0]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[0]~_emulated_q\,
	datab => \u2|Ball_direction~61_combout\,
	datac => \u2|Ball_direction[0]~5_combout\,
	datad => \u2|process_2~0_combout\,
	combout => \u2|Ball_direction[0]~6_combout\);

-- Location: LCCOMB_X66_Y48_N28
\u2|Add9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add9~0_combout\ = \u2|Ball_direction[0]~6_combout\ $ (\u2|Ball_direction[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_direction[0]~6_combout\,
	datab => \u2|Ball_direction[1]~2_combout\,
	combout => \u2|Add9~0_combout\);

-- Location: FF_X69_Y48_N25
\u2|Ball_pos_x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u2|Add9~15_combout\,
	clrn => \u2|ALT_INV_process_2~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|Ball_pos_x\(7));

-- Location: LCCOMB_X69_Y48_N2
\u2|LessThan14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan14~0_combout\ = (\u2|Ball_pos_x\(4) & ((\u2|Ball_pos_x\(1)) # ((\u2|Ball_pos_x\(2)) # (\u2|Ball_pos_x\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(1),
	datab => \u2|Ball_pos_x\(2),
	datac => \u2|Ball_pos_x\(0),
	datad => \u2|Ball_pos_x\(4),
	combout => \u2|LessThan14~0_combout\);

-- Location: LCCOMB_X69_Y48_N8
\u2|LessThan14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan14~1_combout\ = (!\u2|Ball_pos_x\(6) & ((\u2|Ball_pos_x\(5)) # ((\u2|Ball_pos_x\(3) & \u2|LessThan14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(6),
	datab => \u2|Ball_pos_x\(3),
	datac => \u2|Ball_pos_x\(5),
	datad => \u2|LessThan14~0_combout\,
	combout => \u2|LessThan14~1_combout\);

-- Location: LCCOMB_X70_Y48_N24
\u2|score1[29]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[29]~40_combout\ = (!\u2|Ball_pos_x\(7) & (\u2|Ball_pos_x\(8) & !\u2|LessThan14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_x\(7),
	datac => \u2|Ball_pos_x\(8),
	datad => \u2|LessThan14~1_combout\,
	combout => \u2|score1[29]~40_combout\);

-- Location: LCCOMB_X70_Y51_N0
\u2|score2[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[0]~33_combout\ = \u2|score2\(0) $ (VCC)
-- \u2|score2[0]~34\ = CARRY(\u2|score2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|score2\(0),
	datad => VCC,
	combout => \u2|score2[0]~33_combout\,
	cout => \u2|score2[0]~34\);

-- Location: LCCOMB_X70_Y46_N18
\u4|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal4~0_combout\ = (\u2|score1\(1)) # ((\u2|score1\(0)) # (!\u2|score1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|score1\(1),
	datac => \u2|score1\(0),
	datad => \u2|score1\(2),
	combout => \u4|Equal4~0_combout\);

-- Location: LCCOMB_X69_Y46_N16
\u2|score2~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2~41_combout\ = (!\u2|Ball_pos_x\(7) & (\u2|Ball_pos_x\(8) & !\u2|LessThan14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(7),
	datab => \u2|Ball_pos_x\(8),
	datad => \u2|LessThan14~1_combout\,
	combout => \u2|score2~41_combout\);

-- Location: LCCOMB_X70_Y46_N26
\u2|score2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2~42_combout\ = (\u2|Ball_pos_x\(9) & (!\u4|Equal4~0_combout\ & (!\u2|score2~41_combout\ & \u4|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(9),
	datab => \u4|Equal4~0_combout\,
	datac => \u2|score2~41_combout\,
	datad => \u4|Equal0~9_combout\,
	combout => \u2|score2~42_combout\);

-- Location: LCCOMB_X71_Y50_N18
\u2|score2[30]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[30]~43_combout\ = (\u2|score2~42_combout\) # (!\u4|Equal9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|Equal9~0_combout\,
	datad => \u2|score2~42_combout\,
	combout => \u2|score2[30]~43_combout\);

-- Location: LCCOMB_X69_Y50_N24
\u2|score2[0]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[0]~44_combout\ = (\u2|state~q\ & ((\u2|score2~42_combout\) # ((!\u2|Ball_pos_x\(9) & \u2|score2[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(9),
	datab => \u2|state~q\,
	datac => \u2|score2[0]~32_combout\,
	datad => \u2|score2~42_combout\,
	combout => \u2|score2[0]~44_combout\);

-- Location: FF_X70_Y51_N1
\u2|score2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[0]~33_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(0));

-- Location: LCCOMB_X70_Y51_N2
\u2|score2[1]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[1]~35_combout\ = (\u2|score2\(1) & (!\u2|score2[0]~34\)) # (!\u2|score2\(1) & ((\u2|score2[0]~34\) # (GND)))
-- \u2|score2[1]~36\ = CARRY((!\u2|score2[0]~34\) # (!\u2|score2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score2\(1),
	datad => VCC,
	cin => \u2|score2[0]~34\,
	combout => \u2|score2[1]~35_combout\,
	cout => \u2|score2[1]~36\);

-- Location: FF_X70_Y51_N3
\u2|score2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[1]~35_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(1));

-- Location: LCCOMB_X70_Y51_N4
\u2|score2[2]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[2]~37_combout\ = (\u2|score2\(2) & (\u2|score2[1]~36\ $ (GND))) # (!\u2|score2\(2) & (!\u2|score2[1]~36\ & VCC))
-- \u2|score2[2]~38\ = CARRY((\u2|score2\(2) & !\u2|score2[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score2\(2),
	datad => VCC,
	cin => \u2|score2[1]~36\,
	combout => \u2|score2[2]~37_combout\,
	cout => \u2|score2[2]~38\);

-- Location: FF_X70_Y51_N5
\u2|score2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[2]~37_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(2));

-- Location: LCCOMB_X70_Y51_N6
\u2|score2[3]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[3]~39_combout\ = (\u2|score2\(3) & (!\u2|score2[2]~38\)) # (!\u2|score2\(3) & ((\u2|score2[2]~38\) # (GND)))
-- \u2|score2[3]~40\ = CARRY((!\u2|score2[2]~38\) # (!\u2|score2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(3),
	datad => VCC,
	cin => \u2|score2[2]~38\,
	combout => \u2|score2[3]~39_combout\,
	cout => \u2|score2[3]~40\);

-- Location: FF_X70_Y51_N7
\u2|score2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[3]~39_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(3));

-- Location: LCCOMB_X70_Y51_N8
\u2|score2[4]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[4]~45_combout\ = (\u2|score2\(4) & (\u2|score2[3]~40\ $ (GND))) # (!\u2|score2\(4) & (!\u2|score2[3]~40\ & VCC))
-- \u2|score2[4]~46\ = CARRY((\u2|score2\(4) & !\u2|score2[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score2\(4),
	datad => VCC,
	cin => \u2|score2[3]~40\,
	combout => \u2|score2[4]~45_combout\,
	cout => \u2|score2[4]~46\);

-- Location: FF_X71_Y50_N1
\u2|score2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	asdata => \u2|score2[4]~45_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	sload => VCC,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(4));

-- Location: LCCOMB_X70_Y51_N10
\u2|score2[5]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[5]~47_combout\ = (\u2|score2\(5) & (!\u2|score2[4]~46\)) # (!\u2|score2\(5) & ((\u2|score2[4]~46\) # (GND)))
-- \u2|score2[5]~48\ = CARRY((!\u2|score2[4]~46\) # (!\u2|score2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(5),
	datad => VCC,
	cin => \u2|score2[4]~46\,
	combout => \u2|score2[5]~47_combout\,
	cout => \u2|score2[5]~48\);

-- Location: FF_X70_Y51_N11
\u2|score2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[5]~47_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(5));

-- Location: LCCOMB_X70_Y51_N12
\u2|score2[6]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[6]~49_combout\ = (\u2|score2\(6) & (\u2|score2[5]~48\ $ (GND))) # (!\u2|score2\(6) & (!\u2|score2[5]~48\ & VCC))
-- \u2|score2[6]~50\ = CARRY((\u2|score2\(6) & !\u2|score2[5]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score2\(6),
	datad => VCC,
	cin => \u2|score2[5]~48\,
	combout => \u2|score2[6]~49_combout\,
	cout => \u2|score2[6]~50\);

-- Location: FF_X71_Y50_N31
\u2|score2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	asdata => \u2|score2[6]~49_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	sload => VCC,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(6));

-- Location: LCCOMB_X70_Y51_N14
\u2|score2[7]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[7]~51_combout\ = (\u2|score2\(7) & (!\u2|score2[6]~50\)) # (!\u2|score2\(7) & ((\u2|score2[6]~50\) # (GND)))
-- \u2|score2[7]~52\ = CARRY((!\u2|score2[6]~50\) # (!\u2|score2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score2\(7),
	datad => VCC,
	cin => \u2|score2[6]~50\,
	combout => \u2|score2[7]~51_combout\,
	cout => \u2|score2[7]~52\);

-- Location: FF_X70_Y51_N15
\u2|score2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[7]~51_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(7));

-- Location: LCCOMB_X70_Y51_N16
\u2|score2[8]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[8]~53_combout\ = (\u2|score2\(8) & (\u2|score2[7]~52\ $ (GND))) # (!\u2|score2\(8) & (!\u2|score2[7]~52\ & VCC))
-- \u2|score2[8]~54\ = CARRY((\u2|score2\(8) & !\u2|score2[7]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score2\(8),
	datad => VCC,
	cin => \u2|score2[7]~52\,
	combout => \u2|score2[8]~53_combout\,
	cout => \u2|score2[8]~54\);

-- Location: FF_X70_Y51_N17
\u2|score2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[8]~53_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(8));

-- Location: LCCOMB_X70_Y51_N18
\u2|score2[9]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[9]~55_combout\ = (\u2|score2\(9) & (!\u2|score2[8]~54\)) # (!\u2|score2\(9) & ((\u2|score2[8]~54\) # (GND)))
-- \u2|score2[9]~56\ = CARRY((!\u2|score2[8]~54\) # (!\u2|score2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score2\(9),
	datad => VCC,
	cin => \u2|score2[8]~54\,
	combout => \u2|score2[9]~55_combout\,
	cout => \u2|score2[9]~56\);

-- Location: FF_X70_Y51_N19
\u2|score2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[9]~55_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(9));

-- Location: LCCOMB_X70_Y51_N20
\u2|score2[10]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[10]~57_combout\ = (\u2|score2\(10) & (\u2|score2[9]~56\ $ (GND))) # (!\u2|score2\(10) & (!\u2|score2[9]~56\ & VCC))
-- \u2|score2[10]~58\ = CARRY((\u2|score2\(10) & !\u2|score2[9]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score2\(10),
	datad => VCC,
	cin => \u2|score2[9]~56\,
	combout => \u2|score2[10]~57_combout\,
	cout => \u2|score2[10]~58\);

-- Location: FF_X70_Y51_N21
\u2|score2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[10]~57_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(10));

-- Location: LCCOMB_X70_Y51_N22
\u2|score2[11]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[11]~59_combout\ = (\u2|score2\(11) & (!\u2|score2[10]~58\)) # (!\u2|score2\(11) & ((\u2|score2[10]~58\) # (GND)))
-- \u2|score2[11]~60\ = CARRY((!\u2|score2[10]~58\) # (!\u2|score2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(11),
	datad => VCC,
	cin => \u2|score2[10]~58\,
	combout => \u2|score2[11]~59_combout\,
	cout => \u2|score2[11]~60\);

-- Location: FF_X70_Y51_N23
\u2|score2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[11]~59_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(11));

-- Location: LCCOMB_X70_Y51_N24
\u2|score2[12]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[12]~61_combout\ = (\u2|score2\(12) & (\u2|score2[11]~60\ $ (GND))) # (!\u2|score2\(12) & (!\u2|score2[11]~60\ & VCC))
-- \u2|score2[12]~62\ = CARRY((\u2|score2\(12) & !\u2|score2[11]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score2\(12),
	datad => VCC,
	cin => \u2|score2[11]~60\,
	combout => \u2|score2[12]~61_combout\,
	cout => \u2|score2[12]~62\);

-- Location: FF_X70_Y51_N25
\u2|score2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[12]~61_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(12));

-- Location: LCCOMB_X70_Y51_N26
\u2|score2[13]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[13]~63_combout\ = (\u2|score2\(13) & (!\u2|score2[12]~62\)) # (!\u2|score2\(13) & ((\u2|score2[12]~62\) # (GND)))
-- \u2|score2[13]~64\ = CARRY((!\u2|score2[12]~62\) # (!\u2|score2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(13),
	datad => VCC,
	cin => \u2|score2[12]~62\,
	combout => \u2|score2[13]~63_combout\,
	cout => \u2|score2[13]~64\);

-- Location: FF_X70_Y51_N27
\u2|score2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[13]~63_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(13));

-- Location: LCCOMB_X70_Y51_N28
\u2|score2[14]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[14]~65_combout\ = (\u2|score2\(14) & (\u2|score2[13]~64\ $ (GND))) # (!\u2|score2\(14) & (!\u2|score2[13]~64\ & VCC))
-- \u2|score2[14]~66\ = CARRY((\u2|score2\(14) & !\u2|score2[13]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(14),
	datad => VCC,
	cin => \u2|score2[13]~64\,
	combout => \u2|score2[14]~65_combout\,
	cout => \u2|score2[14]~66\);

-- Location: FF_X72_Y50_N1
\u2|score2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	asdata => \u2|score2[14]~65_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	sload => VCC,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(14));

-- Location: LCCOMB_X70_Y51_N30
\u2|score2[15]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[15]~67_combout\ = (\u2|score2\(15) & (!\u2|score2[14]~66\)) # (!\u2|score2\(15) & ((\u2|score2[14]~66\) # (GND)))
-- \u2|score2[15]~68\ = CARRY((!\u2|score2[14]~66\) # (!\u2|score2\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(15),
	datad => VCC,
	cin => \u2|score2[14]~66\,
	combout => \u2|score2[15]~67_combout\,
	cout => \u2|score2[15]~68\);

-- Location: FF_X70_Y51_N31
\u2|score2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[15]~67_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(15));

-- Location: LCCOMB_X70_Y50_N0
\u2|score2[16]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[16]~69_combout\ = (\u2|score2\(16) & (\u2|score2[15]~68\ $ (GND))) # (!\u2|score2\(16) & (!\u2|score2[15]~68\ & VCC))
-- \u2|score2[16]~70\ = CARRY((\u2|score2\(16) & !\u2|score2[15]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score2\(16),
	datad => VCC,
	cin => \u2|score2[15]~68\,
	combout => \u2|score2[16]~69_combout\,
	cout => \u2|score2[16]~70\);

-- Location: FF_X70_Y50_N1
\u2|score2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[16]~69_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(16));

-- Location: LCCOMB_X70_Y50_N2
\u2|score2[17]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[17]~71_combout\ = (\u2|score2\(17) & (!\u2|score2[16]~70\)) # (!\u2|score2\(17) & ((\u2|score2[16]~70\) # (GND)))
-- \u2|score2[17]~72\ = CARRY((!\u2|score2[16]~70\) # (!\u2|score2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score2\(17),
	datad => VCC,
	cin => \u2|score2[16]~70\,
	combout => \u2|score2[17]~71_combout\,
	cout => \u2|score2[17]~72\);

-- Location: FF_X70_Y50_N3
\u2|score2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[17]~71_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(17));

-- Location: LCCOMB_X70_Y50_N4
\u2|score2[18]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[18]~73_combout\ = (\u2|score2\(18) & (\u2|score2[17]~72\ $ (GND))) # (!\u2|score2\(18) & (!\u2|score2[17]~72\ & VCC))
-- \u2|score2[18]~74\ = CARRY((\u2|score2\(18) & !\u2|score2[17]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score2\(18),
	datad => VCC,
	cin => \u2|score2[17]~72\,
	combout => \u2|score2[18]~73_combout\,
	cout => \u2|score2[18]~74\);

-- Location: FF_X70_Y50_N5
\u2|score2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[18]~73_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(18));

-- Location: LCCOMB_X70_Y50_N6
\u2|score2[19]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[19]~75_combout\ = (\u2|score2\(19) & (!\u2|score2[18]~74\)) # (!\u2|score2\(19) & ((\u2|score2[18]~74\) # (GND)))
-- \u2|score2[19]~76\ = CARRY((!\u2|score2[18]~74\) # (!\u2|score2\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(19),
	datad => VCC,
	cin => \u2|score2[18]~74\,
	combout => \u2|score2[19]~75_combout\,
	cout => \u2|score2[19]~76\);

-- Location: FF_X70_Y50_N7
\u2|score2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[19]~75_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(19));

-- Location: LCCOMB_X70_Y50_N8
\u2|score2[20]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[20]~77_combout\ = (\u2|score2\(20) & (\u2|score2[19]~76\ $ (GND))) # (!\u2|score2\(20) & (!\u2|score2[19]~76\ & VCC))
-- \u2|score2[20]~78\ = CARRY((\u2|score2\(20) & !\u2|score2[19]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score2\(20),
	datad => VCC,
	cin => \u2|score2[19]~76\,
	combout => \u2|score2[20]~77_combout\,
	cout => \u2|score2[20]~78\);

-- Location: FF_X70_Y50_N9
\u2|score2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[20]~77_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(20));

-- Location: LCCOMB_X70_Y50_N10
\u2|score2[21]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[21]~79_combout\ = (\u2|score2\(21) & (!\u2|score2[20]~78\)) # (!\u2|score2\(21) & ((\u2|score2[20]~78\) # (GND)))
-- \u2|score2[21]~80\ = CARRY((!\u2|score2[20]~78\) # (!\u2|score2\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(21),
	datad => VCC,
	cin => \u2|score2[20]~78\,
	combout => \u2|score2[21]~79_combout\,
	cout => \u2|score2[21]~80\);

-- Location: FF_X72_Y50_N19
\u2|score2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	asdata => \u2|score2[21]~79_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	sload => VCC,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(21));

-- Location: LCCOMB_X70_Y50_N12
\u2|score2[22]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[22]~81_combout\ = (\u2|score2\(22) & (\u2|score2[21]~80\ $ (GND))) # (!\u2|score2\(22) & (!\u2|score2[21]~80\ & VCC))
-- \u2|score2[22]~82\ = CARRY((\u2|score2\(22) & !\u2|score2[21]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score2\(22),
	datad => VCC,
	cin => \u2|score2[21]~80\,
	combout => \u2|score2[22]~81_combout\,
	cout => \u2|score2[22]~82\);

-- Location: FF_X72_Y50_N13
\u2|score2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	asdata => \u2|score2[22]~81_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	sload => VCC,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(22));

-- Location: LCCOMB_X70_Y50_N14
\u2|score2[23]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[23]~83_combout\ = (\u2|score2\(23) & (!\u2|score2[22]~82\)) # (!\u2|score2\(23) & ((\u2|score2[22]~82\) # (GND)))
-- \u2|score2[23]~84\ = CARRY((!\u2|score2[22]~82\) # (!\u2|score2\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score2\(23),
	datad => VCC,
	cin => \u2|score2[22]~82\,
	combout => \u2|score2[23]~83_combout\,
	cout => \u2|score2[23]~84\);

-- Location: FF_X70_Y50_N15
\u2|score2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[23]~83_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(23));

-- Location: LCCOMB_X70_Y50_N16
\u2|score2[24]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[24]~85_combout\ = (\u2|score2\(24) & (\u2|score2[23]~84\ $ (GND))) # (!\u2|score2\(24) & (!\u2|score2[23]~84\ & VCC))
-- \u2|score2[24]~86\ = CARRY((\u2|score2\(24) & !\u2|score2[23]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score2\(24),
	datad => VCC,
	cin => \u2|score2[23]~84\,
	combout => \u2|score2[24]~85_combout\,
	cout => \u2|score2[24]~86\);

-- Location: FF_X70_Y50_N17
\u2|score2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[24]~85_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(24));

-- Location: LCCOMB_X70_Y50_N18
\u2|score2[25]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[25]~87_combout\ = (\u2|score2\(25) & (!\u2|score2[24]~86\)) # (!\u2|score2\(25) & ((\u2|score2[24]~86\) # (GND)))
-- \u2|score2[25]~88\ = CARRY((!\u2|score2[24]~86\) # (!\u2|score2\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score2\(25),
	datad => VCC,
	cin => \u2|score2[24]~86\,
	combout => \u2|score2[25]~87_combout\,
	cout => \u2|score2[25]~88\);

-- Location: FF_X70_Y50_N19
\u2|score2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[25]~87_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(25));

-- Location: LCCOMB_X70_Y50_N20
\u2|score2[26]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[26]~89_combout\ = (\u2|score2\(26) & (\u2|score2[25]~88\ $ (GND))) # (!\u2|score2\(26) & (!\u2|score2[25]~88\ & VCC))
-- \u2|score2[26]~90\ = CARRY((\u2|score2\(26) & !\u2|score2[25]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score2\(26),
	datad => VCC,
	cin => \u2|score2[25]~88\,
	combout => \u2|score2[26]~89_combout\,
	cout => \u2|score2[26]~90\);

-- Location: FF_X70_Y50_N21
\u2|score2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[26]~89_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(26));

-- Location: LCCOMB_X71_Y50_N12
\u4|Equal5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal5~6_combout\ = (!\u2|score2\(24) & (!\u2|score2\(23) & (!\u2|score2\(26) & !\u2|score2\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(24),
	datab => \u2|score2\(23),
	datac => \u2|score2\(26),
	datad => \u2|score2\(25),
	combout => \u4|Equal5~6_combout\);

-- Location: LCCOMB_X72_Y50_N10
\u4|Equal5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal5~5_combout\ = (!\u2|score2\(22) & (!\u2|score2\(21) & (!\u2|score2\(19) & !\u2|score2\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(22),
	datab => \u2|score2\(21),
	datac => \u2|score2\(19),
	datad => \u2|score2\(20),
	combout => \u4|Equal5~5_combout\);

-- Location: LCCOMB_X70_Y50_N22
\u2|score2[27]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[27]~91_combout\ = (\u2|score2\(27) & (!\u2|score2[26]~90\)) # (!\u2|score2\(27) & ((\u2|score2[26]~90\) # (GND)))
-- \u2|score2[27]~92\ = CARRY((!\u2|score2[26]~90\) # (!\u2|score2\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(27),
	datad => VCC,
	cin => \u2|score2[26]~90\,
	combout => \u2|score2[27]~91_combout\,
	cout => \u2|score2[27]~92\);

-- Location: FF_X70_Y50_N23
\u2|score2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[27]~91_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(27));

-- Location: LCCOMB_X70_Y50_N24
\u2|score2[28]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[28]~93_combout\ = (\u2|score2\(28) & (\u2|score2[27]~92\ $ (GND))) # (!\u2|score2\(28) & (!\u2|score2[27]~92\ & VCC))
-- \u2|score2[28]~94\ = CARRY((\u2|score2\(28) & !\u2|score2[27]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score2\(28),
	datad => VCC,
	cin => \u2|score2[27]~92\,
	combout => \u2|score2[28]~93_combout\,
	cout => \u2|score2[28]~94\);

-- Location: FF_X70_Y50_N25
\u2|score2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[28]~93_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(28));

-- Location: LCCOMB_X70_Y50_N26
\u2|score2[29]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[29]~95_combout\ = (\u2|score2\(29) & (!\u2|score2[28]~94\)) # (!\u2|score2\(29) & ((\u2|score2[28]~94\) # (GND)))
-- \u2|score2[29]~96\ = CARRY((!\u2|score2[28]~94\) # (!\u2|score2\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(29),
	datad => VCC,
	cin => \u2|score2[28]~94\,
	combout => \u2|score2[29]~95_combout\,
	cout => \u2|score2[29]~96\);

-- Location: FF_X70_Y50_N27
\u2|score2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[29]~95_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(29));

-- Location: LCCOMB_X70_Y50_N28
\u2|score2[30]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[30]~97_combout\ = (\u2|score2\(30) & (\u2|score2[29]~96\ $ (GND))) # (!\u2|score2\(30) & (!\u2|score2[29]~96\ & VCC))
-- \u2|score2[30]~98\ = CARRY((\u2|score2\(30) & !\u2|score2[29]~96\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score2\(30),
	datad => VCC,
	cin => \u2|score2[29]~96\,
	combout => \u2|score2[30]~97_combout\,
	cout => \u2|score2[30]~98\);

-- Location: FF_X70_Y50_N29
\u2|score2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[30]~97_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(30));

-- Location: LCCOMB_X70_Y50_N30
\u2|score2[31]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score2[31]~99_combout\ = \u2|score2\(31) $ (\u2|score2[30]~98\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(31),
	cin => \u2|score2[30]~98\,
	combout => \u2|score2[31]~99_combout\);

-- Location: FF_X70_Y50_N31
\u2|score2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score2[31]~99_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score2[30]~43_combout\,
	ena => \u2|score2[0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score2\(31));

-- Location: LCCOMB_X71_Y50_N26
\u4|Equal5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal5~7_combout\ = (!\u2|score2\(27) & !\u2|score2\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|score2\(27),
	datad => \u2|score2\(28),
	combout => \u4|Equal5~7_combout\);

-- Location: LCCOMB_X71_Y50_N8
\u4|Equal5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal5~8_combout\ = (!\u2|score2\(29) & (!\u2|score2\(31) & (\u4|Equal5~7_combout\ & !\u2|score2\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(29),
	datab => \u2|score2\(31),
	datac => \u4|Equal5~7_combout\,
	datad => \u2|score2\(30),
	combout => \u4|Equal5~8_combout\);

-- Location: LCCOMB_X71_Y50_N30
\u4|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal5~0_combout\ = (!\u2|score2\(3) & (!\u2|score2\(4) & (!\u2|score2\(6) & !\u2|score2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(3),
	datab => \u2|score2\(4),
	datac => \u2|score2\(6),
	datad => \u2|score2\(5),
	combout => \u4|Equal5~0_combout\);

-- Location: LCCOMB_X71_Y50_N14
\u4|Equal5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal5~2_combout\ = (!\u2|score2\(14) & (!\u2|score2\(12) & (!\u2|score2\(13) & !\u2|score2\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(14),
	datab => \u2|score2\(12),
	datac => \u2|score2\(13),
	datad => \u2|score2\(11),
	combout => \u4|Equal5~2_combout\);

-- Location: LCCOMB_X71_Y50_N4
\u4|Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal5~1_combout\ = (!\u2|score2\(9) & (!\u2|score2\(8) & (!\u2|score2\(7) & !\u2|score2\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(9),
	datab => \u2|score2\(8),
	datac => \u2|score2\(7),
	datad => \u2|score2\(10),
	combout => \u4|Equal5~1_combout\);

-- Location: LCCOMB_X71_Y50_N16
\u4|Equal5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal5~3_combout\ = (!\u2|score2\(15) & (!\u2|score2\(18) & (!\u2|score2\(16) & !\u2|score2\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(15),
	datab => \u2|score2\(18),
	datac => \u2|score2\(16),
	datad => \u2|score2\(17),
	combout => \u4|Equal5~3_combout\);

-- Location: LCCOMB_X71_Y50_N10
\u4|Equal5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal5~4_combout\ = (\u4|Equal5~0_combout\ & (\u4|Equal5~2_combout\ & (\u4|Equal5~1_combout\ & \u4|Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Equal5~0_combout\,
	datab => \u4|Equal5~2_combout\,
	datac => \u4|Equal5~1_combout\,
	datad => \u4|Equal5~3_combout\,
	combout => \u4|Equal5~4_combout\);

-- Location: LCCOMB_X71_Y50_N2
\u4|Equal5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal5~9_combout\ = (\u4|Equal5~6_combout\ & (\u4|Equal5~5_combout\ & (\u4|Equal5~8_combout\ & \u4|Equal5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Equal5~6_combout\,
	datab => \u4|Equal5~5_combout\,
	datac => \u4|Equal5~8_combout\,
	datad => \u4|Equal5~4_combout\,
	combout => \u4|Equal5~9_combout\);

-- Location: LCCOMB_X71_Y50_N28
\u4|Equal9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal9~0_combout\ = (\u2|score2\(1)) # ((\u2|score2\(0)) # ((!\u4|Equal5~9_combout\) # (!\u2|score2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(1),
	datab => \u2|score2\(0),
	datac => \u2|score2\(2),
	datad => \u4|Equal5~9_combout\,
	combout => \u4|Equal9~0_combout\);

-- Location: LCCOMB_X71_Y50_N6
\u2|score1[29]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[29]~42_combout\ = (!\u2|Ball_pos_x\(9) & ((\u4|Equal9~0_combout\) # (!\u2|score2[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|score2[0]~32_combout\,
	datac => \u2|Ball_pos_x\(9),
	datad => \u4|Equal9~0_combout\,
	combout => \u2|score1[29]~42_combout\);

-- Location: LCCOMB_X71_Y50_N20
\u2|score1[31]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[31]~43_combout\ = (\u2|state~q\ & (!\u2|score1[29]~42_combout\ & ((!\u2|Ball_pos_x\(9)) # (!\u2|score1[29]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1[29]~40_combout\,
	datab => \u2|state~q\,
	datac => \u2|Ball_pos_x\(9),
	datad => \u2|score1[29]~42_combout\,
	combout => \u2|score1[31]~43_combout\);

-- Location: FF_X71_Y47_N7
\u2|score1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[3]~38_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(3));

-- Location: LCCOMB_X71_Y47_N8
\u2|score1[4]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[4]~44_combout\ = (\u2|score1\(4) & (\u2|score1[3]~39\ $ (GND))) # (!\u2|score1\(4) & (!\u2|score1[3]~39\ & VCC))
-- \u2|score1[4]~45\ = CARRY((\u2|score1\(4) & !\u2|score1[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score1\(4),
	datad => VCC,
	cin => \u2|score1[3]~39\,
	combout => \u2|score1[4]~44_combout\,
	cout => \u2|score1[4]~45\);

-- Location: FF_X71_Y47_N9
\u2|score1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[4]~44_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(4));

-- Location: LCCOMB_X71_Y47_N10
\u2|score1[5]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[5]~46_combout\ = (\u2|score1\(5) & (!\u2|score1[4]~45\)) # (!\u2|score1\(5) & ((\u2|score1[4]~45\) # (GND)))
-- \u2|score1[5]~47\ = CARRY((!\u2|score1[4]~45\) # (!\u2|score1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(5),
	datad => VCC,
	cin => \u2|score1[4]~45\,
	combout => \u2|score1[5]~46_combout\,
	cout => \u2|score1[5]~47\);

-- Location: FF_X71_Y47_N11
\u2|score1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[5]~46_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(5));

-- Location: LCCOMB_X71_Y47_N12
\u2|score1[6]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[6]~48_combout\ = (\u2|score1\(6) & (\u2|score1[5]~47\ $ (GND))) # (!\u2|score1\(6) & (!\u2|score1[5]~47\ & VCC))
-- \u2|score1[6]~49\ = CARRY((\u2|score1\(6) & !\u2|score1[5]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(6),
	datad => VCC,
	cin => \u2|score1[5]~47\,
	combout => \u2|score1[6]~48_combout\,
	cout => \u2|score1[6]~49\);

-- Location: FF_X71_Y47_N13
\u2|score1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[6]~48_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(6));

-- Location: LCCOMB_X71_Y47_N14
\u2|score1[7]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[7]~50_combout\ = (\u2|score1\(7) & (!\u2|score1[6]~49\)) # (!\u2|score1\(7) & ((\u2|score1[6]~49\) # (GND)))
-- \u2|score1[7]~51\ = CARRY((!\u2|score1[6]~49\) # (!\u2|score1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score1\(7),
	datad => VCC,
	cin => \u2|score1[6]~49\,
	combout => \u2|score1[7]~50_combout\,
	cout => \u2|score1[7]~51\);

-- Location: FF_X71_Y47_N15
\u2|score1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[7]~50_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(7));

-- Location: LCCOMB_X71_Y47_N16
\u2|score1[8]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[8]~52_combout\ = (\u2|score1\(8) & (\u2|score1[7]~51\ $ (GND))) # (!\u2|score1\(8) & (!\u2|score1[7]~51\ & VCC))
-- \u2|score1[8]~53\ = CARRY((\u2|score1\(8) & !\u2|score1[7]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score1\(8),
	datad => VCC,
	cin => \u2|score1[7]~51\,
	combout => \u2|score1[8]~52_combout\,
	cout => \u2|score1[8]~53\);

-- Location: FF_X71_Y47_N17
\u2|score1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[8]~52_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(8));

-- Location: LCCOMB_X71_Y47_N18
\u2|score1[9]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[9]~54_combout\ = (\u2|score1\(9) & (!\u2|score1[8]~53\)) # (!\u2|score1\(9) & ((\u2|score1[8]~53\) # (GND)))
-- \u2|score1[9]~55\ = CARRY((!\u2|score1[8]~53\) # (!\u2|score1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score1\(9),
	datad => VCC,
	cin => \u2|score1[8]~53\,
	combout => \u2|score1[9]~54_combout\,
	cout => \u2|score1[9]~55\);

-- Location: FF_X71_Y47_N19
\u2|score1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[9]~54_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(9));

-- Location: LCCOMB_X71_Y47_N20
\u2|score1[10]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[10]~56_combout\ = (\u2|score1\(10) & (\u2|score1[9]~55\ $ (GND))) # (!\u2|score1\(10) & (!\u2|score1[9]~55\ & VCC))
-- \u2|score1[10]~57\ = CARRY((\u2|score1\(10) & !\u2|score1[9]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score1\(10),
	datad => VCC,
	cin => \u2|score1[9]~55\,
	combout => \u2|score1[10]~56_combout\,
	cout => \u2|score1[10]~57\);

-- Location: FF_X71_Y47_N21
\u2|score1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[10]~56_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(10));

-- Location: LCCOMB_X70_Y46_N30
\u4|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal0~1_combout\ = (!\u2|score1\(9) & (!\u2|score1\(7) & (!\u2|score1\(8) & !\u2|score1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(9),
	datab => \u2|score1\(7),
	datac => \u2|score1\(8),
	datad => \u2|score1\(10),
	combout => \u4|Equal0~1_combout\);

-- Location: LCCOMB_X70_Y46_N4
\u4|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal0~0_combout\ = (!\u2|score1\(3) & (!\u2|score1\(6) & (!\u2|score1\(4) & !\u2|score1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(3),
	datab => \u2|score1\(6),
	datac => \u2|score1\(4),
	datad => \u2|score1\(5),
	combout => \u4|Equal0~0_combout\);

-- Location: LCCOMB_X71_Y47_N22
\u2|score1[11]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[11]~58_combout\ = (\u2|score1\(11) & (!\u2|score1[10]~57\)) # (!\u2|score1\(11) & ((\u2|score1[10]~57\) # (GND)))
-- \u2|score1[11]~59\ = CARRY((!\u2|score1[10]~57\) # (!\u2|score1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(11),
	datad => VCC,
	cin => \u2|score1[10]~57\,
	combout => \u2|score1[11]~58_combout\,
	cout => \u2|score1[11]~59\);

-- Location: FF_X71_Y47_N23
\u2|score1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[11]~58_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(11));

-- Location: LCCOMB_X71_Y47_N24
\u2|score1[12]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[12]~60_combout\ = (\u2|score1\(12) & (\u2|score1[11]~59\ $ (GND))) # (!\u2|score1\(12) & (!\u2|score1[11]~59\ & VCC))
-- \u2|score1[12]~61\ = CARRY((\u2|score1\(12) & !\u2|score1[11]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score1\(12),
	datad => VCC,
	cin => \u2|score1[11]~59\,
	combout => \u2|score1[12]~60_combout\,
	cout => \u2|score1[12]~61\);

-- Location: FF_X71_Y47_N25
\u2|score1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[12]~60_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(12));

-- Location: LCCOMB_X71_Y47_N26
\u2|score1[13]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[13]~62_combout\ = (\u2|score1\(13) & (!\u2|score1[12]~61\)) # (!\u2|score1\(13) & ((\u2|score1[12]~61\) # (GND)))
-- \u2|score1[13]~63\ = CARRY((!\u2|score1[12]~61\) # (!\u2|score1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(13),
	datad => VCC,
	cin => \u2|score1[12]~61\,
	combout => \u2|score1[13]~62_combout\,
	cout => \u2|score1[13]~63\);

-- Location: FF_X71_Y47_N27
\u2|score1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[13]~62_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(13));

-- Location: LCCOMB_X71_Y47_N28
\u2|score1[14]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[14]~64_combout\ = (\u2|score1\(14) & (\u2|score1[13]~63\ $ (GND))) # (!\u2|score1\(14) & (!\u2|score1[13]~63\ & VCC))
-- \u2|score1[14]~65\ = CARRY((\u2|score1\(14) & !\u2|score1[13]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score1\(14),
	datad => VCC,
	cin => \u2|score1[13]~63\,
	combout => \u2|score1[14]~64_combout\,
	cout => \u2|score1[14]~65\);

-- Location: FF_X71_Y47_N29
\u2|score1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[14]~64_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(14));

-- Location: LCCOMB_X71_Y47_N30
\u2|score1[15]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[15]~66_combout\ = (\u2|score1\(15) & (!\u2|score1[14]~65\)) # (!\u2|score1\(15) & ((\u2|score1[14]~65\) # (GND)))
-- \u2|score1[15]~67\ = CARRY((!\u2|score1[14]~65\) # (!\u2|score1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(15),
	datad => VCC,
	cin => \u2|score1[14]~65\,
	combout => \u2|score1[15]~66_combout\,
	cout => \u2|score1[15]~67\);

-- Location: FF_X71_Y47_N31
\u2|score1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[15]~66_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(15));

-- Location: LCCOMB_X71_Y46_N0
\u2|score1[16]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[16]~68_combout\ = (\u2|score1\(16) & (\u2|score1[15]~67\ $ (GND))) # (!\u2|score1\(16) & (!\u2|score1[15]~67\ & VCC))
-- \u2|score1[16]~69\ = CARRY((\u2|score1\(16) & !\u2|score1[15]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score1\(16),
	datad => VCC,
	cin => \u2|score1[15]~67\,
	combout => \u2|score1[16]~68_combout\,
	cout => \u2|score1[16]~69\);

-- Location: FF_X71_Y46_N1
\u2|score1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[16]~68_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(16));

-- Location: LCCOMB_X71_Y46_N2
\u2|score1[17]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[17]~70_combout\ = (\u2|score1\(17) & (!\u2|score1[16]~69\)) # (!\u2|score1\(17) & ((\u2|score1[16]~69\) # (GND)))
-- \u2|score1[17]~71\ = CARRY((!\u2|score1[16]~69\) # (!\u2|score1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score1\(17),
	datad => VCC,
	cin => \u2|score1[16]~69\,
	combout => \u2|score1[17]~70_combout\,
	cout => \u2|score1[17]~71\);

-- Location: FF_X71_Y46_N3
\u2|score1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[17]~70_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(17));

-- Location: LCCOMB_X71_Y46_N4
\u2|score1[18]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[18]~72_combout\ = (\u2|score1\(18) & (\u2|score1[17]~71\ $ (GND))) # (!\u2|score1\(18) & (!\u2|score1[17]~71\ & VCC))
-- \u2|score1[18]~73\ = CARRY((\u2|score1\(18) & !\u2|score1[17]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score1\(18),
	datad => VCC,
	cin => \u2|score1[17]~71\,
	combout => \u2|score1[18]~72_combout\,
	cout => \u2|score1[18]~73\);

-- Location: FF_X71_Y46_N5
\u2|score1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[18]~72_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(18));

-- Location: LCCOMB_X71_Y46_N6
\u2|score1[19]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[19]~74_combout\ = (\u2|score1\(19) & (!\u2|score1[18]~73\)) # (!\u2|score1\(19) & ((\u2|score1[18]~73\) # (GND)))
-- \u2|score1[19]~75\ = CARRY((!\u2|score1[18]~73\) # (!\u2|score1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(19),
	datad => VCC,
	cin => \u2|score1[18]~73\,
	combout => \u2|score1[19]~74_combout\,
	cout => \u2|score1[19]~75\);

-- Location: FF_X71_Y46_N7
\u2|score1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[19]~74_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(19));

-- Location: LCCOMB_X71_Y46_N8
\u2|score1[20]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[20]~76_combout\ = (\u2|score1\(20) & (\u2|score1[19]~75\ $ (GND))) # (!\u2|score1\(20) & (!\u2|score1[19]~75\ & VCC))
-- \u2|score1[20]~77\ = CARRY((\u2|score1\(20) & !\u2|score1[19]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score1\(20),
	datad => VCC,
	cin => \u2|score1[19]~75\,
	combout => \u2|score1[20]~76_combout\,
	cout => \u2|score1[20]~77\);

-- Location: FF_X71_Y46_N9
\u2|score1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[20]~76_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(20));

-- Location: LCCOMB_X71_Y46_N10
\u2|score1[21]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[21]~78_combout\ = (\u2|score1\(21) & (!\u2|score1[20]~77\)) # (!\u2|score1\(21) & ((\u2|score1[20]~77\) # (GND)))
-- \u2|score1[21]~79\ = CARRY((!\u2|score1[20]~77\) # (!\u2|score1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(21),
	datad => VCC,
	cin => \u2|score1[20]~77\,
	combout => \u2|score1[21]~78_combout\,
	cout => \u2|score1[21]~79\);

-- Location: FF_X71_Y46_N11
\u2|score1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[21]~78_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(21));

-- Location: LCCOMB_X71_Y46_N12
\u2|score1[22]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[22]~80_combout\ = (\u2|score1\(22) & (\u2|score1[21]~79\ $ (GND))) # (!\u2|score1\(22) & (!\u2|score1[21]~79\ & VCC))
-- \u2|score1[22]~81\ = CARRY((\u2|score1\(22) & !\u2|score1[21]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(22),
	datad => VCC,
	cin => \u2|score1[21]~79\,
	combout => \u2|score1[22]~80_combout\,
	cout => \u2|score1[22]~81\);

-- Location: FF_X71_Y46_N13
\u2|score1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[22]~80_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(22));

-- Location: LCCOMB_X70_Y46_N22
\u4|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal0~5_combout\ = (!\u2|score1\(19) & (!\u2|score1\(20) & (!\u2|score1\(21) & !\u2|score1\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(19),
	datab => \u2|score1\(20),
	datac => \u2|score1\(21),
	datad => \u2|score1\(22),
	combout => \u4|Equal0~5_combout\);

-- Location: LCCOMB_X71_Y46_N14
\u2|score1[23]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[23]~82_combout\ = (\u2|score1\(23) & (!\u2|score1[22]~81\)) # (!\u2|score1\(23) & ((\u2|score1[22]~81\) # (GND)))
-- \u2|score1[23]~83\ = CARRY((!\u2|score1[22]~81\) # (!\u2|score1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score1\(23),
	datad => VCC,
	cin => \u2|score1[22]~81\,
	combout => \u2|score1[23]~82_combout\,
	cout => \u2|score1[23]~83\);

-- Location: FF_X71_Y46_N15
\u2|score1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[23]~82_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(23));

-- Location: LCCOMB_X71_Y46_N16
\u2|score1[24]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[24]~84_combout\ = (\u2|score1\(24) & (\u2|score1[23]~83\ $ (GND))) # (!\u2|score1\(24) & (!\u2|score1[23]~83\ & VCC))
-- \u2|score1[24]~85\ = CARRY((\u2|score1\(24) & !\u2|score1[23]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score1\(24),
	datad => VCC,
	cin => \u2|score1[23]~83\,
	combout => \u2|score1[24]~84_combout\,
	cout => \u2|score1[24]~85\);

-- Location: FF_X71_Y46_N17
\u2|score1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[24]~84_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(24));

-- Location: LCCOMB_X71_Y46_N18
\u2|score1[25]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[25]~86_combout\ = (\u2|score1\(25) & (!\u2|score1[24]~85\)) # (!\u2|score1\(25) & ((\u2|score1[24]~85\) # (GND)))
-- \u2|score1[25]~87\ = CARRY((!\u2|score1[24]~85\) # (!\u2|score1\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score1\(25),
	datad => VCC,
	cin => \u2|score1[24]~85\,
	combout => \u2|score1[25]~86_combout\,
	cout => \u2|score1[25]~87\);

-- Location: FF_X71_Y46_N19
\u2|score1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[25]~86_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(25));

-- Location: LCCOMB_X71_Y46_N20
\u2|score1[26]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[26]~88_combout\ = (\u2|score1\(26) & (\u2|score1[25]~87\ $ (GND))) # (!\u2|score1\(26) & (!\u2|score1[25]~87\ & VCC))
-- \u2|score1[26]~89\ = CARRY((\u2|score1\(26) & !\u2|score1[25]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score1\(26),
	datad => VCC,
	cin => \u2|score1[25]~87\,
	combout => \u2|score1[26]~88_combout\,
	cout => \u2|score1[26]~89\);

-- Location: FF_X71_Y46_N21
\u2|score1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[26]~88_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(26));

-- Location: LCCOMB_X71_Y46_N22
\u2|score1[27]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[27]~90_combout\ = (\u2|score1\(27) & (!\u2|score1[26]~89\)) # (!\u2|score1\(27) & ((\u2|score1[26]~89\) # (GND)))
-- \u2|score1[27]~91\ = CARRY((!\u2|score1[26]~89\) # (!\u2|score1\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(27),
	datad => VCC,
	cin => \u2|score1[26]~89\,
	combout => \u2|score1[27]~90_combout\,
	cout => \u2|score1[27]~91\);

-- Location: FF_X71_Y46_N23
\u2|score1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[27]~90_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(27));

-- Location: LCCOMB_X71_Y46_N24
\u2|score1[28]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[28]~92_combout\ = (\u2|score1\(28) & (\u2|score1[27]~91\ $ (GND))) # (!\u2|score1\(28) & (!\u2|score1[27]~91\ & VCC))
-- \u2|score1[28]~93\ = CARRY((\u2|score1\(28) & !\u2|score1[27]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score1\(28),
	datad => VCC,
	cin => \u2|score1[27]~91\,
	combout => \u2|score1[28]~92_combout\,
	cout => \u2|score1[28]~93\);

-- Location: FF_X71_Y46_N25
\u2|score1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[28]~92_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(28));

-- Location: LCCOMB_X71_Y46_N26
\u2|score1[29]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[29]~94_combout\ = (\u2|score1\(29) & (!\u2|score1[28]~93\)) # (!\u2|score1\(29) & ((\u2|score1[28]~93\) # (GND)))
-- \u2|score1[29]~95\ = CARRY((!\u2|score1[28]~93\) # (!\u2|score1\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(29),
	datad => VCC,
	cin => \u2|score1[28]~93\,
	combout => \u2|score1[29]~94_combout\,
	cout => \u2|score1[29]~95\);

-- Location: FF_X71_Y46_N27
\u2|score1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[29]~94_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(29));

-- Location: LCCOMB_X71_Y46_N28
\u2|score1[30]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[30]~96_combout\ = (\u2|score1\(30) & (\u2|score1[29]~95\ $ (GND))) # (!\u2|score1\(30) & (!\u2|score1[29]~95\ & VCC))
-- \u2|score1[30]~97\ = CARRY((\u2|score1\(30) & !\u2|score1[29]~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score1\(30),
	datad => VCC,
	cin => \u2|score1[29]~95\,
	combout => \u2|score1[30]~96_combout\,
	cout => \u2|score1[30]~97\);

-- Location: FF_X71_Y46_N29
\u2|score1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[30]~96_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(30));

-- Location: LCCOMB_X71_Y46_N30
\u2|score1[31]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[31]~98_combout\ = \u2|score1\(31) $ (\u2|score1[30]~97\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(31),
	cin => \u2|score1[30]~97\,
	combout => \u2|score1[31]~98_combout\);

-- Location: FF_X71_Y46_N31
\u2|score1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[31]~98_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(31));

-- Location: LCCOMB_X70_Y46_N14
\u4|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal0~7_combout\ = (!\u2|score1\(30) & (!\u2|score1\(29) & (!\u2|score1\(27) & !\u2|score1\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(30),
	datab => \u2|score1\(29),
	datac => \u2|score1\(27),
	datad => \u2|score1\(28),
	combout => \u4|Equal0~7_combout\);

-- Location: LCCOMB_X70_Y46_N12
\u4|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal0~6_combout\ = (!\u2|score1\(26) & (!\u2|score1\(24) & (!\u2|score1\(23) & !\u2|score1\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(26),
	datab => \u2|score1\(24),
	datac => \u2|score1\(23),
	datad => \u2|score1\(25),
	combout => \u4|Equal0~6_combout\);

-- Location: LCCOMB_X70_Y46_N8
\u4|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal0~8_combout\ = (\u4|Equal0~5_combout\ & (!\u2|score1\(31) & (\u4|Equal0~7_combout\ & \u4|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Equal0~5_combout\,
	datab => \u2|score1\(31),
	datac => \u4|Equal0~7_combout\,
	datad => \u4|Equal0~6_combout\,
	combout => \u4|Equal0~8_combout\);

-- Location: LCCOMB_X70_Y46_N10
\u4|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal0~3_combout\ = (!\u2|score1\(17) & !\u2|score1\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|score1\(17),
	datad => \u2|score1\(18),
	combout => \u4|Equal0~3_combout\);

-- Location: LCCOMB_X70_Y46_N24
\u4|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal0~2_combout\ = (!\u2|score1\(12) & (!\u2|score1\(13) & (!\u2|score1\(11) & !\u2|score1\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(12),
	datab => \u2|score1\(13),
	datac => \u2|score1\(11),
	datad => \u2|score1\(14),
	combout => \u4|Equal0~2_combout\);

-- Location: LCCOMB_X70_Y46_N20
\u4|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal0~4_combout\ = (\u4|Equal0~3_combout\ & (!\u2|score1\(16) & (!\u2|score1\(15) & \u4|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Equal0~3_combout\,
	datab => \u2|score1\(16),
	datac => \u2|score1\(15),
	datad => \u4|Equal0~2_combout\,
	combout => \u4|Equal0~4_combout\);

-- Location: LCCOMB_X70_Y46_N6
\u4|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal0~9_combout\ = (\u4|Equal0~1_combout\ & (\u4|Equal0~0_combout\ & (\u4|Equal0~8_combout\ & \u4|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Equal0~1_combout\,
	datab => \u4|Equal0~0_combout\,
	datac => \u4|Equal0~8_combout\,
	datad => \u4|Equal0~4_combout\,
	combout => \u4|Equal0~9_combout\);

-- Location: LCCOMB_X70_Y46_N16
\u2|score1[29]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[29]~41_combout\ = ((\u2|score1[29]~40_combout\) # ((\u4|Equal0~9_combout\ & !\u4|Equal4~0_combout\))) # (!\u2|Ball_pos_x\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Equal0~9_combout\,
	datab => \u4|Equal4~0_combout\,
	datac => \u2|Ball_pos_x\(9),
	datad => \u2|score1[29]~40_combout\,
	combout => \u2|score1[29]~41_combout\);

-- Location: FF_X71_Y47_N1
\u2|score1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[0]~32_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(0));

-- Location: LCCOMB_X71_Y47_N2
\u2|score1[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|score1[1]~34_combout\ = (\u2|score1\(1) & (!\u2|score1[0]~33\)) # (!\u2|score1\(1) & ((\u2|score1[0]~33\) # (GND)))
-- \u2|score1[1]~35\ = CARRY((!\u2|score1[0]~33\) # (!\u2|score1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|score1\(1),
	datad => VCC,
	cin => \u2|score1[0]~33\,
	combout => \u2|score1[1]~34_combout\,
	cout => \u2|score1[1]~35\);

-- Location: FF_X71_Y47_N3
\u2|score1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[1]~34_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(1));

-- Location: FF_X71_Y47_N5
\u2|score1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|score1[2]~36_combout\,
	clrn => \reset~input_o\,
	sclr => \u2|score1[29]~41_combout\,
	ena => \u2|score1[31]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|score1\(2));

-- Location: LCCOMB_X69_Y50_N28
\u4|seg1[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|seg1\(0) = (!\u2|score1\(1) & (\u4|Equal0~9_combout\ & (\u2|score1\(2) $ (\u2|score1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(2),
	datab => \u2|score1\(1),
	datac => \u2|score1\(0),
	datad => \u4|Equal0~9_combout\,
	combout => \u4|seg1\(0));

-- Location: LCCOMB_X69_Y50_N14
\u4|WideNor0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|WideNor0~combout\ = (\u4|Equal0~9_combout\ & (((!\u2|score1\(1) & !\u2|score1\(0))) # (!\u2|score1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(2),
	datab => \u2|score1\(1),
	datac => \u2|score1\(0),
	datad => \u4|Equal0~9_combout\,
	combout => \u4|WideNor0~combout\);

-- Location: LCCOMB_X69_Y50_N26
\u4|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal2~0_combout\ = (!\u2|score1\(2) & (\u2|score1\(1) & (!\u2|score1\(0) & \u4|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(2),
	datab => \u2|score1\(1),
	datac => \u2|score1\(0),
	datad => \u4|Equal0~9_combout\,
	combout => \u4|Equal2~0_combout\);

-- Location: LCCOMB_X69_Y50_N30
\u4|seg1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|seg1~0_combout\ = (!\u2|score1\(2) & (!\u2|score1\(0) & \u4|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(2),
	datab => \u2|score1\(0),
	datad => \u4|Equal0~9_combout\,
	combout => \u4|seg1~0_combout\);

-- Location: LCCOMB_X69_Y50_N0
\u4|WideOr0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|WideOr0~combout\ = (\u2|score1\(2)) # (((!\u2|score1\(1) & !\u2|score1\(0))) # (!\u4|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(2),
	datab => \u2|score1\(1),
	datac => \u2|score1\(0),
	datad => \u4|Equal0~9_combout\,
	combout => \u4|WideOr0~combout\);

-- Location: LCCOMB_X70_Y46_N28
\u4|WideNor0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|WideNor0~0_combout\ = (\u2|score1\(2)) # ((\u2|score1\(1)) # (!\u4|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score1\(2),
	datab => \u2|score1\(1),
	datad => \u4|Equal0~9_combout\,
	combout => \u4|WideNor0~0_combout\);

-- Location: LCCOMB_X70_Y49_N4
\u4|seg2[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|seg2\(0) = (!\u2|score2\(1) & (\u4|Equal5~9_combout\ & (\u2|score2\(2) $ (\u2|score2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(1),
	datab => \u2|score2\(2),
	datac => \u2|score2\(0),
	datad => \u4|Equal5~9_combout\,
	combout => \u4|seg2\(0));

-- Location: LCCOMB_X71_Y50_N24
\u4|WideNor1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|WideNor1~combout\ = (\u4|Equal5~9_combout\ & (((!\u2|score2\(1) & !\u2|score2\(0))) # (!\u2|score2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(1),
	datab => \u4|Equal5~9_combout\,
	datac => \u2|score2\(2),
	datad => \u2|score2\(0),
	combout => \u4|WideNor1~combout\);

-- Location: LCCOMB_X70_Y49_N26
\u4|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|Equal7~0_combout\ = (\u2|score2\(1) & (!\u2|score2\(2) & (!\u2|score2\(0) & \u4|Equal5~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(1),
	datab => \u2|score2\(2),
	datac => \u2|score2\(0),
	datad => \u4|Equal5~9_combout\,
	combout => \u4|Equal7~0_combout\);

-- Location: LCCOMB_X70_Y49_N0
\u4|seg2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|seg2~0_combout\ = (\u4|Equal5~9_combout\ & (!\u2|score2\(0) & !\u2|score2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|Equal5~9_combout\,
	datac => \u2|score2\(0),
	datad => \u2|score2\(2),
	combout => \u4|seg2~0_combout\);

-- Location: LCCOMB_X71_Y50_N22
\u4|WideOr1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|WideOr1~combout\ = ((\u2|score2\(2)) # ((!\u2|score2\(1) & !\u2|score2\(0)))) # (!\u4|Equal5~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(1),
	datab => \u4|Equal5~9_combout\,
	datac => \u2|score2\(2),
	datad => \u2|score2\(0),
	combout => \u4|WideOr1~combout\);

-- Location: LCCOMB_X71_Y50_N0
\u4|WideNor1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u4|WideNor1~0_combout\ = (\u2|score2\(1)) # ((\u2|score2\(2)) # (!\u4|Equal5~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|score2\(1),
	datab => \u2|score2\(2),
	datad => \u4|Equal5~9_combout\,
	combout => \u4|WideNor1~0_combout\);

-- Location: LCCOMB_X64_Y52_N6
\u1|Hactive~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Hactive~0_combout\ = (\u1|Add0~16_combout\ & (\u1|Equal0~0_combout\ & \u1|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Add0~16_combout\,
	datac => \u1|Equal0~0_combout\,
	datad => \u1|Add0~18_combout\,
	combout => \u1|Hactive~0_combout\);

-- Location: LCCOMB_X65_Y52_N30
\u1|Hactive~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Hactive~1_combout\ = (!\u1|Add0~12_combout\ & (\reset~input_o\ & !\u1|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add0~12_combout\,
	datac => \reset~input_o\,
	datad => \u1|Add0~10_combout\,
	combout => \u1|Hactive~1_combout\);

-- Location: LCCOMB_X65_Y52_N16
\u1|Hactive~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Hactive~2_combout\ = (\u1|Hactive~1_combout\ & (\u1|Add0~8_combout\ & (\u1|Add0~14_combout\ $ (\u1|Hactive~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add0~14_combout\,
	datab => \u1|Hactive~q\,
	datac => \u1|Hactive~1_combout\,
	datad => \u1|Add0~8_combout\,
	combout => \u1|Hactive~2_combout\);

-- Location: LCCOMB_X65_Y52_N22
\u1|Hactive~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Hactive~3_combout\ = (\u1|Hactive~q\ & (((!\u1|Hactive~2_combout\) # (!\u1|Hactive~0_combout\)))) # (!\u1|Hactive~q\ & (\u1|Equal0~1_combout\ & ((\u1|Hactive~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~1_combout\,
	datab => \u1|Hactive~0_combout\,
	datac => \u1|Hactive~q\,
	datad => \u1|Hactive~2_combout\,
	combout => \u1|Hactive~3_combout\);

-- Location: FF_X65_Y52_N23
\u1|Hactive\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u1|Hactive~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Hactive~q\);

-- Location: LCCOMB_X64_Y52_N30
\u2|col_counter[0]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|col_counter[0]~28_combout\ = \u2|col_counter\(0) $ (\u1|Hactive~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|col_counter\(0),
	datad => \u1|Hactive~q\,
	combout => \u2|col_counter[0]~28_combout\);

-- Location: LCCOMB_X64_Y52_N0
\u2|col_counter[9]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|col_counter[9]~27_combout\ = (!\u1|Hsync~q\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \u1|Hsync~q\,
	combout => \u2|col_counter[9]~27_combout\);

-- Location: FF_X64_Y52_N31
\u2|col_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|col_counter[0]~28_combout\,
	clrn => \u2|ALT_INV_col_counter[9]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|col_counter\(0));

-- Location: LCCOMB_X64_Y51_N12
\u2|col_counter[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|col_counter[1]~9_combout\ = (\u2|col_counter\(0) & (\u2|col_counter\(1) $ (VCC))) # (!\u2|col_counter\(0) & (\u2|col_counter\(1) & VCC))
-- \u2|col_counter[1]~10\ = CARRY((\u2|col_counter\(0) & \u2|col_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|col_counter\(0),
	datab => \u2|col_counter\(1),
	datad => VCC,
	combout => \u2|col_counter[1]~9_combout\,
	cout => \u2|col_counter[1]~10\);

-- Location: FF_X64_Y51_N13
\u2|col_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|col_counter[1]~9_combout\,
	clrn => \u2|ALT_INV_col_counter[9]~27_combout\,
	ena => \u1|Hactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|col_counter\(1));

-- Location: LCCOMB_X64_Y51_N14
\u2|col_counter[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|col_counter[2]~11_combout\ = (\u2|col_counter\(2) & (!\u2|col_counter[1]~10\)) # (!\u2|col_counter\(2) & ((\u2|col_counter[1]~10\) # (GND)))
-- \u2|col_counter[2]~12\ = CARRY((!\u2|col_counter[1]~10\) # (!\u2|col_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|col_counter\(2),
	datad => VCC,
	cin => \u2|col_counter[1]~10\,
	combout => \u2|col_counter[2]~11_combout\,
	cout => \u2|col_counter[2]~12\);

-- Location: FF_X64_Y51_N15
\u2|col_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|col_counter[2]~11_combout\,
	clrn => \u2|ALT_INV_col_counter[9]~27_combout\,
	ena => \u1|Hactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|col_counter\(2));

-- Location: LCCOMB_X64_Y51_N16
\u2|col_counter[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|col_counter[3]~13_combout\ = (\u2|col_counter\(3) & (\u2|col_counter[2]~12\ $ (GND))) # (!\u2|col_counter\(3) & (!\u2|col_counter[2]~12\ & VCC))
-- \u2|col_counter[3]~14\ = CARRY((\u2|col_counter\(3) & !\u2|col_counter[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|col_counter\(3),
	datad => VCC,
	cin => \u2|col_counter[2]~12\,
	combout => \u2|col_counter[3]~13_combout\,
	cout => \u2|col_counter[3]~14\);

-- Location: FF_X64_Y51_N17
\u2|col_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|col_counter[3]~13_combout\,
	clrn => \u2|ALT_INV_col_counter[9]~27_combout\,
	ena => \u1|Hactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|col_counter\(3));

-- Location: LCCOMB_X64_Y51_N18
\u2|col_counter[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|col_counter[4]~15_combout\ = (\u2|col_counter\(4) & (!\u2|col_counter[3]~14\)) # (!\u2|col_counter\(4) & ((\u2|col_counter[3]~14\) # (GND)))
-- \u2|col_counter[4]~16\ = CARRY((!\u2|col_counter[3]~14\) # (!\u2|col_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|col_counter\(4),
	datad => VCC,
	cin => \u2|col_counter[3]~14\,
	combout => \u2|col_counter[4]~15_combout\,
	cout => \u2|col_counter[4]~16\);

-- Location: FF_X64_Y51_N19
\u2|col_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|col_counter[4]~15_combout\,
	clrn => \u2|ALT_INV_col_counter[9]~27_combout\,
	ena => \u1|Hactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|col_counter\(4));

-- Location: LCCOMB_X64_Y51_N20
\u2|col_counter[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|col_counter[5]~17_combout\ = (\u2|col_counter\(5) & (\u2|col_counter[4]~16\ $ (GND))) # (!\u2|col_counter\(5) & (!\u2|col_counter[4]~16\ & VCC))
-- \u2|col_counter[5]~18\ = CARRY((\u2|col_counter\(5) & !\u2|col_counter[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|col_counter\(5),
	datad => VCC,
	cin => \u2|col_counter[4]~16\,
	combout => \u2|col_counter[5]~17_combout\,
	cout => \u2|col_counter[5]~18\);

-- Location: FF_X64_Y51_N21
\u2|col_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|col_counter[5]~17_combout\,
	clrn => \u2|ALT_INV_col_counter[9]~27_combout\,
	ena => \u1|Hactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|col_counter\(5));

-- Location: LCCOMB_X64_Y51_N22
\u2|col_counter[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|col_counter[6]~19_combout\ = (\u2|col_counter\(6) & (!\u2|col_counter[5]~18\)) # (!\u2|col_counter\(6) & ((\u2|col_counter[5]~18\) # (GND)))
-- \u2|col_counter[6]~20\ = CARRY((!\u2|col_counter[5]~18\) # (!\u2|col_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|col_counter\(6),
	datad => VCC,
	cin => \u2|col_counter[5]~18\,
	combout => \u2|col_counter[6]~19_combout\,
	cout => \u2|col_counter[6]~20\);

-- Location: FF_X64_Y51_N23
\u2|col_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|col_counter[6]~19_combout\,
	clrn => \u2|ALT_INV_col_counter[9]~27_combout\,
	ena => \u1|Hactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|col_counter\(6));

-- Location: LCCOMB_X64_Y51_N24
\u2|col_counter[7]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|col_counter[7]~21_combout\ = (\u2|col_counter\(7) & (\u2|col_counter[6]~20\ $ (GND))) # (!\u2|col_counter\(7) & (!\u2|col_counter[6]~20\ & VCC))
-- \u2|col_counter[7]~22\ = CARRY((\u2|col_counter\(7) & !\u2|col_counter[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|col_counter\(7),
	datad => VCC,
	cin => \u2|col_counter[6]~20\,
	combout => \u2|col_counter[7]~21_combout\,
	cout => \u2|col_counter[7]~22\);

-- Location: FF_X64_Y51_N25
\u2|col_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|col_counter[7]~21_combout\,
	clrn => \u2|ALT_INV_col_counter[9]~27_combout\,
	ena => \u1|Hactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|col_counter\(7));

-- Location: LCCOMB_X64_Y51_N26
\u2|col_counter[8]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|col_counter[8]~23_combout\ = (\u2|col_counter\(8) & (!\u2|col_counter[7]~22\)) # (!\u2|col_counter\(8) & ((\u2|col_counter[7]~22\) # (GND)))
-- \u2|col_counter[8]~24\ = CARRY((!\u2|col_counter[7]~22\) # (!\u2|col_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|col_counter\(8),
	datad => VCC,
	cin => \u2|col_counter[7]~22\,
	combout => \u2|col_counter[8]~23_combout\,
	cout => \u2|col_counter[8]~24\);

-- Location: FF_X64_Y51_N27
\u2|col_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|col_counter[8]~23_combout\,
	clrn => \u2|ALT_INV_col_counter[9]~27_combout\,
	ena => \u1|Hactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|col_counter\(8));

-- Location: LCCOMB_X64_Y51_N28
\u2|col_counter[9]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|col_counter[9]~25_combout\ = \u2|col_counter\(9) $ (!\u2|col_counter[8]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|col_counter\(9),
	cin => \u2|col_counter[8]~24\,
	combout => \u2|col_counter[9]~25_combout\);

-- Location: FF_X64_Y51_N29
\u2|col_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|temp~clkctrl_outclk\,
	d => \u2|col_counter[9]~25_combout\,
	clrn => \u2|ALT_INV_col_counter[9]~27_combout\,
	ena => \u1|Hactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|col_counter\(9));

-- Location: LCCOMB_X66_Y51_N30
\u2|R[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|R[0]~4_combout\ = (!\u2|col_counter\(6) & (!\u2|col_counter\(9) & (!\u2|col_counter\(8) & !\u2|col_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|col_counter\(6),
	datab => \u2|col_counter\(9),
	datac => \u2|col_counter\(8),
	datad => \u2|col_counter\(7),
	combout => \u2|R[0]~4_combout\);

-- Location: LCCOMB_X66_Y51_N0
\u2|R[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|R[0]~5_combout\ = (!\u2|col_counter\(1) & (\u2|col_counter\(2) & \u2|col_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|col_counter\(1),
	datab => \u2|col_counter\(2),
	datac => \u2|col_counter\(0),
	combout => \u2|R[0]~5_combout\);

-- Location: LCCOMB_X66_Y51_N4
\u2|R[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|R[0]~6_combout\ = (\u2|col_counter\(5) & ((\u2|col_counter\(3)) # (\u2|R[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|col_counter\(3),
	datac => \u2|col_counter\(5),
	datad => \u2|R[0]~5_combout\,
	combout => \u2|R[0]~6_combout\);

-- Location: LCCOMB_X65_Y52_N10
\u1|Vactive~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Vactive~0_combout\ = (\reset~input_o\ & ((\u1|Vactive~q\ & (!\u1|Add1~10_combout\ & \u1|Add1~18_combout\)) # (!\u1|Vactive~q\ & (\u1|Add1~10_combout\ & !\u1|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Vactive~q\,
	datab => \u1|Add1~10_combout\,
	datac => \u1|Add1~18_combout\,
	datad => \reset~input_o\,
	combout => \u1|Vactive~0_combout\);

-- Location: LCCOMB_X65_Y52_N4
\u1|Vactive~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Vactive~1_combout\ = (\u1|Add1~0_combout\ & (\u1|Vactive~0_combout\ & ((\u1|Vsync~0_combout\) # (!\u1|Vactive~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add1~0_combout\,
	datab => \u1|Vsync~0_combout\,
	datac => \u1|Vactive~0_combout\,
	datad => \u1|Vactive~q\,
	combout => \u1|Vactive~1_combout\);

-- Location: LCCOMB_X65_Y52_N26
\u1|Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Equal4~2_combout\ = (!\u1|Add1~6_combout\ & (!\u1|Add1~4_combout\ & \u1|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Add1~6_combout\,
	datac => \u1|Add1~4_combout\,
	datad => \u1|Add1~2_combout\,
	combout => \u1|Equal4~2_combout\);

-- Location: LCCOMB_X65_Y52_N28
\u1|Vactive~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|Vactive~2_combout\ = (\u1|Vactive~1_combout\ & ((\u1|Vactive~q\ & (!\u1|Equal4~2_combout\)) # (!\u1|Vactive~q\ & ((\u1|Equal4~4_combout\))))) # (!\u1|Vactive~1_combout\ & (((\u1|Vactive~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Vactive~1_combout\,
	datab => \u1|Equal4~2_combout\,
	datac => \u1|Vactive~q\,
	datad => \u1|Equal4~4_combout\,
	combout => \u1|Vactive~2_combout\);

-- Location: FF_X65_Y52_N29
\u1|Vactive\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|Hsync~clkctrl_outclk\,
	d => \u1|Vactive~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Vactive~q\);

-- Location: LCCOMB_X67_Y52_N26
\u2|row_counter[0]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|row_counter[0]~28_combout\ = \u1|Vactive~q\ $ (\u2|row_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Vactive~q\,
	datac => \u2|row_counter\(0),
	combout => \u2|row_counter[0]~28_combout\);

-- Location: LCCOMB_X67_Y52_N2
\u2|row_counter[9]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|row_counter[9]~27_combout\ = (!\u1|Vsync~q\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \u1|Vsync~q\,
	combout => \u2|row_counter[9]~27_combout\);

-- Location: FF_X67_Y52_N27
\u2|row_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|Hsync~clkctrl_outclk\,
	d => \u2|row_counter[0]~28_combout\,
	clrn => \u2|ALT_INV_row_counter[9]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|row_counter\(0));

-- Location: LCCOMB_X67_Y52_N6
\u2|row_counter[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|row_counter[1]~9_combout\ = (\u2|row_counter\(1) & (\u2|row_counter\(0) $ (VCC))) # (!\u2|row_counter\(1) & (\u2|row_counter\(0) & VCC))
-- \u2|row_counter[1]~10\ = CARRY((\u2|row_counter\(1) & \u2|row_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(1),
	datab => \u2|row_counter\(0),
	datad => VCC,
	combout => \u2|row_counter[1]~9_combout\,
	cout => \u2|row_counter[1]~10\);

-- Location: FF_X67_Y52_N7
\u2|row_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|Hsync~clkctrl_outclk\,
	d => \u2|row_counter[1]~9_combout\,
	clrn => \u2|ALT_INV_row_counter[9]~27_combout\,
	ena => \u1|Vactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|row_counter\(1));

-- Location: LCCOMB_X67_Y52_N8
\u2|row_counter[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|row_counter[2]~11_combout\ = (\u2|row_counter\(2) & (!\u2|row_counter[1]~10\)) # (!\u2|row_counter\(2) & ((\u2|row_counter[1]~10\) # (GND)))
-- \u2|row_counter[2]~12\ = CARRY((!\u2|row_counter[1]~10\) # (!\u2|row_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|row_counter\(2),
	datad => VCC,
	cin => \u2|row_counter[1]~10\,
	combout => \u2|row_counter[2]~11_combout\,
	cout => \u2|row_counter[2]~12\);

-- Location: FF_X67_Y52_N9
\u2|row_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|Hsync~clkctrl_outclk\,
	d => \u2|row_counter[2]~11_combout\,
	clrn => \u2|ALT_INV_row_counter[9]~27_combout\,
	ena => \u1|Vactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|row_counter\(2));

-- Location: LCCOMB_X67_Y52_N10
\u2|row_counter[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|row_counter[3]~13_combout\ = (\u2|row_counter\(3) & (\u2|row_counter[2]~12\ $ (GND))) # (!\u2|row_counter\(3) & (!\u2|row_counter[2]~12\ & VCC))
-- \u2|row_counter[3]~14\ = CARRY((\u2|row_counter\(3) & !\u2|row_counter[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(3),
	datad => VCC,
	cin => \u2|row_counter[2]~12\,
	combout => \u2|row_counter[3]~13_combout\,
	cout => \u2|row_counter[3]~14\);

-- Location: FF_X67_Y52_N11
\u2|row_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|Hsync~clkctrl_outclk\,
	d => \u2|row_counter[3]~13_combout\,
	clrn => \u2|ALT_INV_row_counter[9]~27_combout\,
	ena => \u1|Vactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|row_counter\(3));

-- Location: LCCOMB_X67_Y52_N12
\u2|row_counter[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|row_counter[4]~15_combout\ = (\u2|row_counter\(4) & (!\u2|row_counter[3]~14\)) # (!\u2|row_counter\(4) & ((\u2|row_counter[3]~14\) # (GND)))
-- \u2|row_counter[4]~16\ = CARRY((!\u2|row_counter[3]~14\) # (!\u2|row_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(4),
	datad => VCC,
	cin => \u2|row_counter[3]~14\,
	combout => \u2|row_counter[4]~15_combout\,
	cout => \u2|row_counter[4]~16\);

-- Location: FF_X67_Y52_N13
\u2|row_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|Hsync~clkctrl_outclk\,
	d => \u2|row_counter[4]~15_combout\,
	clrn => \u2|ALT_INV_row_counter[9]~27_combout\,
	ena => \u1|Vactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|row_counter\(4));

-- Location: LCCOMB_X67_Y52_N14
\u2|row_counter[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|row_counter[5]~17_combout\ = (\u2|row_counter\(5) & (\u2|row_counter[4]~16\ $ (GND))) # (!\u2|row_counter\(5) & (!\u2|row_counter[4]~16\ & VCC))
-- \u2|row_counter[5]~18\ = CARRY((\u2|row_counter\(5) & !\u2|row_counter[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|row_counter\(5),
	datad => VCC,
	cin => \u2|row_counter[4]~16\,
	combout => \u2|row_counter[5]~17_combout\,
	cout => \u2|row_counter[5]~18\);

-- Location: FF_X67_Y52_N15
\u2|row_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|Hsync~clkctrl_outclk\,
	d => \u2|row_counter[5]~17_combout\,
	clrn => \u2|ALT_INV_row_counter[9]~27_combout\,
	ena => \u1|Vactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|row_counter\(5));

-- Location: LCCOMB_X67_Y52_N16
\u2|row_counter[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|row_counter[6]~19_combout\ = (\u2|row_counter\(6) & (!\u2|row_counter[5]~18\)) # (!\u2|row_counter\(6) & ((\u2|row_counter[5]~18\) # (GND)))
-- \u2|row_counter[6]~20\ = CARRY((!\u2|row_counter[5]~18\) # (!\u2|row_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|row_counter\(6),
	datad => VCC,
	cin => \u2|row_counter[5]~18\,
	combout => \u2|row_counter[6]~19_combout\,
	cout => \u2|row_counter[6]~20\);

-- Location: FF_X67_Y52_N17
\u2|row_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|Hsync~clkctrl_outclk\,
	d => \u2|row_counter[6]~19_combout\,
	clrn => \u2|ALT_INV_row_counter[9]~27_combout\,
	ena => \u1|Vactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|row_counter\(6));

-- Location: LCCOMB_X67_Y52_N18
\u2|row_counter[7]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|row_counter[7]~21_combout\ = (\u2|row_counter\(7) & (\u2|row_counter[6]~20\ $ (GND))) # (!\u2|row_counter\(7) & (!\u2|row_counter[6]~20\ & VCC))
-- \u2|row_counter[7]~22\ = CARRY((\u2|row_counter\(7) & !\u2|row_counter[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|row_counter\(7),
	datad => VCC,
	cin => \u2|row_counter[6]~20\,
	combout => \u2|row_counter[7]~21_combout\,
	cout => \u2|row_counter[7]~22\);

-- Location: FF_X67_Y52_N19
\u2|row_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|Hsync~clkctrl_outclk\,
	d => \u2|row_counter[7]~21_combout\,
	clrn => \u2|ALT_INV_row_counter[9]~27_combout\,
	ena => \u1|Vactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|row_counter\(7));

-- Location: LCCOMB_X67_Y52_N20
\u2|row_counter[8]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|row_counter[8]~23_combout\ = (\u2|row_counter\(8) & (!\u2|row_counter[7]~22\)) # (!\u2|row_counter\(8) & ((\u2|row_counter[7]~22\) # (GND)))
-- \u2|row_counter[8]~24\ = CARRY((!\u2|row_counter[7]~22\) # (!\u2|row_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|row_counter\(8),
	datad => VCC,
	cin => \u2|row_counter[7]~22\,
	combout => \u2|row_counter[8]~23_combout\,
	cout => \u2|row_counter[8]~24\);

-- Location: FF_X67_Y52_N21
\u2|row_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|Hsync~clkctrl_outclk\,
	d => \u2|row_counter[8]~23_combout\,
	clrn => \u2|ALT_INV_row_counter[9]~27_combout\,
	ena => \u1|Vactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|row_counter\(8));

-- Location: LCCOMB_X67_Y52_N22
\u2|row_counter[9]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|row_counter[9]~25_combout\ = \u2|row_counter\(9) $ (!\u2|row_counter[8]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(9),
	cin => \u2|row_counter[8]~24\,
	combout => \u2|row_counter[9]~25_combout\);

-- Location: FF_X67_Y52_N23
\u2|row_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|Hsync~clkctrl_outclk\,
	d => \u2|row_counter[9]~25_combout\,
	clrn => \u2|ALT_INV_row_counter[9]~27_combout\,
	ena => \u1|Vactive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|row_counter\(9));

-- Location: LCCOMB_X62_Y52_N12
\u2|Add24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add24~0_combout\ = \u2|row_counter\(1) $ (VCC)
-- \u2|Add24~1\ = CARRY(\u2|row_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(1),
	datad => VCC,
	combout => \u2|Add24~0_combout\,
	cout => \u2|Add24~1\);

-- Location: LCCOMB_X62_Y52_N14
\u2|Add24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add24~2_combout\ = (\u2|row_counter\(2) & (\u2|Add24~1\ & VCC)) # (!\u2|row_counter\(2) & (!\u2|Add24~1\))
-- \u2|Add24~3\ = CARRY((!\u2|row_counter\(2) & !\u2|Add24~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(2),
	datad => VCC,
	cin => \u2|Add24~1\,
	combout => \u2|Add24~2_combout\,
	cout => \u2|Add24~3\);

-- Location: LCCOMB_X62_Y52_N16
\u2|Add24~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add24~4_combout\ = (\u2|row_counter\(3) & ((GND) # (!\u2|Add24~3\))) # (!\u2|row_counter\(3) & (\u2|Add24~3\ $ (GND)))
-- \u2|Add24~5\ = CARRY((\u2|row_counter\(3)) # (!\u2|Add24~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|row_counter\(3),
	datad => VCC,
	cin => \u2|Add24~3\,
	combout => \u2|Add24~4_combout\,
	cout => \u2|Add24~5\);

-- Location: LCCOMB_X62_Y52_N18
\u2|Add24~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add24~6_combout\ = (\u2|row_counter\(4) & (\u2|Add24~5\ & VCC)) # (!\u2|row_counter\(4) & (!\u2|Add24~5\))
-- \u2|Add24~7\ = CARRY((!\u2|row_counter\(4) & !\u2|Add24~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(4),
	datad => VCC,
	cin => \u2|Add24~5\,
	combout => \u2|Add24~6_combout\,
	cout => \u2|Add24~7\);

-- Location: LCCOMB_X62_Y52_N20
\u2|Add24~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add24~8_combout\ = (\u2|row_counter\(5) & (\u2|Add24~7\ $ (GND))) # (!\u2|row_counter\(5) & (!\u2|Add24~7\ & VCC))
-- \u2|Add24~9\ = CARRY((\u2|row_counter\(5) & !\u2|Add24~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(5),
	datad => VCC,
	cin => \u2|Add24~7\,
	combout => \u2|Add24~8_combout\,
	cout => \u2|Add24~9\);

-- Location: LCCOMB_X62_Y52_N22
\u2|Add24~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add24~10_combout\ = (\u2|row_counter\(6) & (!\u2|Add24~9\)) # (!\u2|row_counter\(6) & ((\u2|Add24~9\) # (GND)))
-- \u2|Add24~11\ = CARRY((!\u2|Add24~9\) # (!\u2|row_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|row_counter\(6),
	datad => VCC,
	cin => \u2|Add24~9\,
	combout => \u2|Add24~10_combout\,
	cout => \u2|Add24~11\);

-- Location: LCCOMB_X62_Y52_N24
\u2|Add24~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add24~12_combout\ = (\u2|row_counter\(7) & (\u2|Add24~11\ $ (GND))) # (!\u2|row_counter\(7) & (!\u2|Add24~11\ & VCC))
-- \u2|Add24~13\ = CARRY((\u2|row_counter\(7) & !\u2|Add24~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|row_counter\(7),
	datad => VCC,
	cin => \u2|Add24~11\,
	combout => \u2|Add24~12_combout\,
	cout => \u2|Add24~13\);

-- Location: LCCOMB_X62_Y52_N26
\u2|Add24~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add24~14_combout\ = (\u2|row_counter\(8) & (!\u2|Add24~13\)) # (!\u2|row_counter\(8) & ((\u2|Add24~13\) # (GND)))
-- \u2|Add24~15\ = CARRY((!\u2|Add24~13\) # (!\u2|row_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(8),
	datad => VCC,
	cin => \u2|Add24~13\,
	combout => \u2|Add24~14_combout\,
	cout => \u2|Add24~15\);

-- Location: LCCOMB_X62_Y52_N28
\u2|Add24~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add24~16_combout\ = (\u2|row_counter\(9) & (\u2|Add24~15\ $ (GND))) # (!\u2|row_counter\(9) & (!\u2|Add24~15\ & VCC))
-- \u2|Add24~17\ = CARRY((\u2|row_counter\(9) & !\u2|Add24~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|row_counter\(9),
	datad => VCC,
	cin => \u2|Add24~15\,
	combout => \u2|Add24~16_combout\,
	cout => \u2|Add24~17\);

-- Location: LCCOMB_X63_Y51_N0
\u2|LessThan17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan17~1_cout\ = CARRY((!\u2|row_counter\(0) & \u2|paddle1_pos_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(0),
	datab => \u2|paddle1_pos_y\(0),
	datad => VCC,
	cout => \u2|LessThan17~1_cout\);

-- Location: LCCOMB_X63_Y51_N2
\u2|LessThan17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan17~3_cout\ = CARRY((\u2|Add24~0_combout\ & ((!\u2|LessThan17~1_cout\) # (!\u2|paddle1_pos_y\(1)))) # (!\u2|Add24~0_combout\ & (!\u2|paddle1_pos_y\(1) & !\u2|LessThan17~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add24~0_combout\,
	datab => \u2|paddle1_pos_y\(1),
	datad => VCC,
	cin => \u2|LessThan17~1_cout\,
	cout => \u2|LessThan17~3_cout\);

-- Location: LCCOMB_X63_Y51_N4
\u2|LessThan17~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan17~5_cout\ = CARRY((\u2|Add24~2_combout\ & (\u2|paddle1_pos_y\(2) & !\u2|LessThan17~3_cout\)) # (!\u2|Add24~2_combout\ & ((\u2|paddle1_pos_y\(2)) # (!\u2|LessThan17~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add24~2_combout\,
	datab => \u2|paddle1_pos_y\(2),
	datad => VCC,
	cin => \u2|LessThan17~3_cout\,
	cout => \u2|LessThan17~5_cout\);

-- Location: LCCOMB_X63_Y51_N6
\u2|LessThan17~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan17~7_cout\ = CARRY((\u2|Add24~4_combout\ & ((!\u2|LessThan17~5_cout\) # (!\u2|paddle1_pos_y\(3)))) # (!\u2|Add24~4_combout\ & (!\u2|paddle1_pos_y\(3) & !\u2|LessThan17~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add24~4_combout\,
	datab => \u2|paddle1_pos_y\(3),
	datad => VCC,
	cin => \u2|LessThan17~5_cout\,
	cout => \u2|LessThan17~7_cout\);

-- Location: LCCOMB_X63_Y51_N8
\u2|LessThan17~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan17~9_cout\ = CARRY((\u2|paddle1_pos_y\(4) & (!\u2|Add24~6_combout\ & !\u2|LessThan17~7_cout\)) # (!\u2|paddle1_pos_y\(4) & ((!\u2|LessThan17~7_cout\) # (!\u2|Add24~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(4),
	datab => \u2|Add24~6_combout\,
	datad => VCC,
	cin => \u2|LessThan17~7_cout\,
	cout => \u2|LessThan17~9_cout\);

-- Location: LCCOMB_X63_Y51_N10
\u2|LessThan17~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan17~11_cout\ = CARRY((\u2|paddle1_pos_y\(5) & ((\u2|Add24~8_combout\) # (!\u2|LessThan17~9_cout\))) # (!\u2|paddle1_pos_y\(5) & (\u2|Add24~8_combout\ & !\u2|LessThan17~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(5),
	datab => \u2|Add24~8_combout\,
	datad => VCC,
	cin => \u2|LessThan17~9_cout\,
	cout => \u2|LessThan17~11_cout\);

-- Location: LCCOMB_X63_Y51_N12
\u2|LessThan17~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan17~13_cout\ = CARRY((\u2|Add24~10_combout\ & (!\u2|paddle1_pos_y\(6) & !\u2|LessThan17~11_cout\)) # (!\u2|Add24~10_combout\ & ((!\u2|LessThan17~11_cout\) # (!\u2|paddle1_pos_y\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add24~10_combout\,
	datab => \u2|paddle1_pos_y\(6),
	datad => VCC,
	cin => \u2|LessThan17~11_cout\,
	cout => \u2|LessThan17~13_cout\);

-- Location: LCCOMB_X63_Y51_N14
\u2|LessThan17~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan17~15_cout\ = CARRY((\u2|paddle1_pos_y\(7) & ((\u2|Add24~12_combout\) # (!\u2|LessThan17~13_cout\))) # (!\u2|paddle1_pos_y\(7) & (\u2|Add24~12_combout\ & !\u2|LessThan17~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(7),
	datab => \u2|Add24~12_combout\,
	datad => VCC,
	cin => \u2|LessThan17~13_cout\,
	cout => \u2|LessThan17~15_cout\);

-- Location: LCCOMB_X63_Y51_N16
\u2|LessThan17~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan17~17_cout\ = CARRY((\u2|Add24~14_combout\ & (\u2|paddle1_pos_y\(8) & !\u2|LessThan17~15_cout\)) # (!\u2|Add24~14_combout\ & ((\u2|paddle1_pos_y\(8)) # (!\u2|LessThan17~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add24~14_combout\,
	datab => \u2|paddle1_pos_y\(8),
	datad => VCC,
	cin => \u2|LessThan17~15_cout\,
	cout => \u2|LessThan17~17_cout\);

-- Location: LCCOMB_X63_Y51_N18
\u2|LessThan17~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan17~18_combout\ = (\u2|paddle1_pos_y\(9) & ((\u2|LessThan17~17_cout\) # (!\u2|Add24~16_combout\))) # (!\u2|paddle1_pos_y\(9) & (\u2|LessThan17~17_cout\ & !\u2|Add24~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|paddle1_pos_y\(9),
	datad => \u2|Add24~16_combout\,
	cin => \u2|LessThan17~17_cout\,
	combout => \u2|LessThan17~18_combout\);

-- Location: LCCOMB_X62_Y52_N30
\u2|Add24~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add24~18_combout\ = \u2|Add24~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u2|Add24~17\,
	combout => \u2|Add24~18_combout\);

-- Location: LCCOMB_X66_Y48_N0
\u2|LessThan18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan18~1_cout\ = CARRY((!\u2|paddle1_pos_y\(0) & \u2|row_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle1_pos_y\(0),
	datab => \u2|row_counter\(0),
	datad => VCC,
	cout => \u2|LessThan18~1_cout\);

-- Location: LCCOMB_X66_Y48_N2
\u2|LessThan18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan18~3_cout\ = CARRY((\u2|row_counter\(1) & (\u2|Add25~0_combout\ & !\u2|LessThan18~1_cout\)) # (!\u2|row_counter\(1) & ((\u2|Add25~0_combout\) # (!\u2|LessThan18~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(1),
	datab => \u2|Add25~0_combout\,
	datad => VCC,
	cin => \u2|LessThan18~1_cout\,
	cout => \u2|LessThan18~3_cout\);

-- Location: LCCOMB_X66_Y48_N4
\u2|LessThan18~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan18~5_cout\ = CARRY((\u2|Add25~2_combout\ & (\u2|row_counter\(2) & !\u2|LessThan18~3_cout\)) # (!\u2|Add25~2_combout\ & ((\u2|row_counter\(2)) # (!\u2|LessThan18~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add25~2_combout\,
	datab => \u2|row_counter\(2),
	datad => VCC,
	cin => \u2|LessThan18~3_cout\,
	cout => \u2|LessThan18~5_cout\);

-- Location: LCCOMB_X66_Y48_N6
\u2|LessThan18~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan18~7_cout\ = CARRY((\u2|Add25~4_combout\ & ((!\u2|LessThan18~5_cout\) # (!\u2|row_counter\(3)))) # (!\u2|Add25~4_combout\ & (!\u2|row_counter\(3) & !\u2|LessThan18~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add25~4_combout\,
	datab => \u2|row_counter\(3),
	datad => VCC,
	cin => \u2|LessThan18~5_cout\,
	cout => \u2|LessThan18~7_cout\);

-- Location: LCCOMB_X66_Y48_N8
\u2|LessThan18~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan18~9_cout\ = CARRY((\u2|Add25~6_combout\ & (\u2|row_counter\(4) & !\u2|LessThan18~7_cout\)) # (!\u2|Add25~6_combout\ & ((\u2|row_counter\(4)) # (!\u2|LessThan18~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add25~6_combout\,
	datab => \u2|row_counter\(4),
	datad => VCC,
	cin => \u2|LessThan18~7_cout\,
	cout => \u2|LessThan18~9_cout\);

-- Location: LCCOMB_X66_Y48_N10
\u2|LessThan18~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan18~11_cout\ = CARRY((\u2|row_counter\(5) & (\u2|Add25~8_combout\ & !\u2|LessThan18~9_cout\)) # (!\u2|row_counter\(5) & ((\u2|Add25~8_combout\) # (!\u2|LessThan18~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(5),
	datab => \u2|Add25~8_combout\,
	datad => VCC,
	cin => \u2|LessThan18~9_cout\,
	cout => \u2|LessThan18~11_cout\);

-- Location: LCCOMB_X66_Y48_N12
\u2|LessThan18~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan18~13_cout\ = CARRY((\u2|Add25~10_combout\ & (\u2|row_counter\(6) & !\u2|LessThan18~11_cout\)) # (!\u2|Add25~10_combout\ & ((\u2|row_counter\(6)) # (!\u2|LessThan18~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add25~10_combout\,
	datab => \u2|row_counter\(6),
	datad => VCC,
	cin => \u2|LessThan18~11_cout\,
	cout => \u2|LessThan18~13_cout\);

-- Location: LCCOMB_X66_Y48_N14
\u2|LessThan18~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan18~15_cout\ = CARRY((\u2|row_counter\(7) & (\u2|Add25~12_combout\ & !\u2|LessThan18~13_cout\)) # (!\u2|row_counter\(7) & ((\u2|Add25~12_combout\) # (!\u2|LessThan18~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(7),
	datab => \u2|Add25~12_combout\,
	datad => VCC,
	cin => \u2|LessThan18~13_cout\,
	cout => \u2|LessThan18~15_cout\);

-- Location: LCCOMB_X66_Y48_N16
\u2|LessThan18~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan18~17_cout\ = CARRY((\u2|row_counter\(8) & ((!\u2|LessThan18~15_cout\) # (!\u2|Add25~14_combout\))) # (!\u2|row_counter\(8) & (!\u2|Add25~14_combout\ & !\u2|LessThan18~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(8),
	datab => \u2|Add25~14_combout\,
	datad => VCC,
	cin => \u2|LessThan18~15_cout\,
	cout => \u2|LessThan18~17_cout\);

-- Location: LCCOMB_X66_Y48_N18
\u2|LessThan18~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan18~18_combout\ = (\u2|Add25~16_combout\ & (\u2|LessThan18~17_cout\ & \u2|row_counter\(9))) # (!\u2|Add25~16_combout\ & ((\u2|LessThan18~17_cout\) # (\u2|row_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Add25~16_combout\,
	datad => \u2|row_counter\(9),
	cin => \u2|LessThan18~17_cout\,
	combout => \u2|LessThan18~18_combout\);

-- Location: LCCOMB_X66_Y51_N28
\u2|R[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|R[0]~3_combout\ = (\u2|LessThan17~18_combout\ & (\u2|Add24~18_combout\ & ((\u2|Add25~18_combout\) # (!\u2|LessThan18~18_combout\)))) # (!\u2|LessThan17~18_combout\ & (((\u2|Add25~18_combout\) # (!\u2|LessThan18~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan17~18_combout\,
	datab => \u2|Add24~18_combout\,
	datac => \u2|Add25~18_combout\,
	datad => \u2|LessThan18~18_combout\,
	combout => \u2|R[0]~3_combout\);

-- Location: LCCOMB_X66_Y51_N2
\u2|R[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|R[0]~7_combout\ = (\u2|R[0]~4_combout\ & (\u2|R[0]~3_combout\ & ((!\u2|col_counter\(4)) # (!\u2|R[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|R[0]~4_combout\,
	datab => \u2|R[0]~6_combout\,
	datac => \u2|col_counter\(4),
	datad => \u2|R[0]~3_combout\,
	combout => \u2|R[0]~7_combout\);

-- Location: LCCOMB_X62_Y49_N0
\u2|LessThan26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan26~1_cout\ = CARRY((\u2|row_counter\(0) & !\u2|Add31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(0),
	datab => \u2|Add31~0_combout\,
	datad => VCC,
	cout => \u2|LessThan26~1_cout\);

-- Location: LCCOMB_X62_Y49_N2
\u2|LessThan26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan26~3_cout\ = CARRY((\u2|Add31~2_combout\ & ((!\u2|LessThan26~1_cout\) # (!\u2|row_counter\(1)))) # (!\u2|Add31~2_combout\ & (!\u2|row_counter\(1) & !\u2|LessThan26~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add31~2_combout\,
	datab => \u2|row_counter\(1),
	datad => VCC,
	cin => \u2|LessThan26~1_cout\,
	cout => \u2|LessThan26~3_cout\);

-- Location: LCCOMB_X62_Y49_N4
\u2|LessThan26~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan26~5_cout\ = CARRY((\u2|Add31~4_combout\ & (\u2|row_counter\(2) & !\u2|LessThan26~3_cout\)) # (!\u2|Add31~4_combout\ & ((\u2|row_counter\(2)) # (!\u2|LessThan26~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add31~4_combout\,
	datab => \u2|row_counter\(2),
	datad => VCC,
	cin => \u2|LessThan26~3_cout\,
	cout => \u2|LessThan26~5_cout\);

-- Location: LCCOMB_X62_Y49_N6
\u2|LessThan26~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan26~7_cout\ = CARRY((\u2|Add31~6_combout\ & ((!\u2|LessThan26~5_cout\) # (!\u2|row_counter\(3)))) # (!\u2|Add31~6_combout\ & (!\u2|row_counter\(3) & !\u2|LessThan26~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add31~6_combout\,
	datab => \u2|row_counter\(3),
	datad => VCC,
	cin => \u2|LessThan26~5_cout\,
	cout => \u2|LessThan26~7_cout\);

-- Location: LCCOMB_X62_Y49_N8
\u2|LessThan26~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan26~9_cout\ = CARRY((\u2|row_counter\(4) & ((!\u2|LessThan26~7_cout\) # (!\u2|Add31~8_combout\))) # (!\u2|row_counter\(4) & (!\u2|Add31~8_combout\ & !\u2|LessThan26~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(4),
	datab => \u2|Add31~8_combout\,
	datad => VCC,
	cin => \u2|LessThan26~7_cout\,
	cout => \u2|LessThan26~9_cout\);

-- Location: LCCOMB_X62_Y49_N10
\u2|LessThan26~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan26~11_cout\ = CARRY((\u2|Add31~10_combout\ & ((!\u2|LessThan26~9_cout\) # (!\u2|row_counter\(5)))) # (!\u2|Add31~10_combout\ & (!\u2|row_counter\(5) & !\u2|LessThan26~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add31~10_combout\,
	datab => \u2|row_counter\(5),
	datad => VCC,
	cin => \u2|LessThan26~9_cout\,
	cout => \u2|LessThan26~11_cout\);

-- Location: LCCOMB_X62_Y49_N12
\u2|LessThan26~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan26~13_cout\ = CARRY((\u2|row_counter\(6) & ((!\u2|LessThan26~11_cout\) # (!\u2|Add31~12_combout\))) # (!\u2|row_counter\(6) & (!\u2|Add31~12_combout\ & !\u2|LessThan26~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(6),
	datab => \u2|Add31~12_combout\,
	datad => VCC,
	cin => \u2|LessThan26~11_cout\,
	cout => \u2|LessThan26~13_cout\);

-- Location: LCCOMB_X62_Y49_N14
\u2|LessThan26~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan26~15_cout\ = CARRY((\u2|Add31~14_combout\ & ((!\u2|LessThan26~13_cout\) # (!\u2|row_counter\(7)))) # (!\u2|Add31~14_combout\ & (!\u2|row_counter\(7) & !\u2|LessThan26~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add31~14_combout\,
	datab => \u2|row_counter\(7),
	datad => VCC,
	cin => \u2|LessThan26~13_cout\,
	cout => \u2|LessThan26~15_cout\);

-- Location: LCCOMB_X62_Y49_N16
\u2|LessThan26~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan26~17_cout\ = CARRY((\u2|Add31~16_combout\ & (\u2|row_counter\(8) & !\u2|LessThan26~15_cout\)) # (!\u2|Add31~16_combout\ & ((\u2|row_counter\(8)) # (!\u2|LessThan26~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add31~16_combout\,
	datab => \u2|row_counter\(8),
	datad => VCC,
	cin => \u2|LessThan26~15_cout\,
	cout => \u2|LessThan26~17_cout\);

-- Location: LCCOMB_X62_Y49_N18
\u2|LessThan26~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan26~18_combout\ = (\u2|Add31~18_combout\ & (\u2|row_counter\(9) & \u2|LessThan26~17_cout\)) # (!\u2|Add31~18_combout\ & ((\u2|row_counter\(9)) # (\u2|LessThan26~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add31~18_combout\,
	datab => \u2|row_counter\(9),
	cin => \u2|LessThan26~17_cout\,
	combout => \u2|LessThan26~18_combout\);

-- Location: LCCOMB_X66_Y51_N6
\u2|Add28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add28~0_combout\ = \u2|col_counter\(0) $ (VCC)
-- \u2|Add28~1\ = CARRY(\u2|col_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|col_counter\(0),
	datad => VCC,
	combout => \u2|Add28~0_combout\,
	cout => \u2|Add28~1\);

-- Location: LCCOMB_X66_Y51_N8
\u2|Add28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add28~2_combout\ = (\u2|col_counter\(1) & (\u2|Add28~1\ & VCC)) # (!\u2|col_counter\(1) & (!\u2|Add28~1\))
-- \u2|Add28~3\ = CARRY((!\u2|col_counter\(1) & !\u2|Add28~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|col_counter\(1),
	datad => VCC,
	cin => \u2|Add28~1\,
	combout => \u2|Add28~2_combout\,
	cout => \u2|Add28~3\);

-- Location: LCCOMB_X66_Y51_N10
\u2|Add28~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add28~4_combout\ = (\u2|col_counter\(2) & (\u2|Add28~3\ $ (GND))) # (!\u2|col_counter\(2) & (!\u2|Add28~3\ & VCC))
-- \u2|Add28~5\ = CARRY((\u2|col_counter\(2) & !\u2|Add28~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|col_counter\(2),
	datad => VCC,
	cin => \u2|Add28~3\,
	combout => \u2|Add28~4_combout\,
	cout => \u2|Add28~5\);

-- Location: LCCOMB_X66_Y51_N12
\u2|Add28~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add28~6_combout\ = (\u2|col_counter\(3) & (!\u2|Add28~5\)) # (!\u2|col_counter\(3) & ((\u2|Add28~5\) # (GND)))
-- \u2|Add28~7\ = CARRY((!\u2|Add28~5\) # (!\u2|col_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|col_counter\(3),
	datad => VCC,
	cin => \u2|Add28~5\,
	combout => \u2|Add28~6_combout\,
	cout => \u2|Add28~7\);

-- Location: LCCOMB_X66_Y51_N14
\u2|Add28~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add28~8_combout\ = (\u2|col_counter\(4) & (\u2|Add28~7\ $ (GND))) # (!\u2|col_counter\(4) & (!\u2|Add28~7\ & VCC))
-- \u2|Add28~9\ = CARRY((\u2|col_counter\(4) & !\u2|Add28~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|col_counter\(4),
	datad => VCC,
	cin => \u2|Add28~7\,
	combout => \u2|Add28~8_combout\,
	cout => \u2|Add28~9\);

-- Location: LCCOMB_X66_Y51_N16
\u2|Add28~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add28~10_combout\ = (\u2|col_counter\(5) & (!\u2|Add28~9\)) # (!\u2|col_counter\(5) & ((\u2|Add28~9\) # (GND)))
-- \u2|Add28~11\ = CARRY((!\u2|Add28~9\) # (!\u2|col_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|col_counter\(5),
	datad => VCC,
	cin => \u2|Add28~9\,
	combout => \u2|Add28~10_combout\,
	cout => \u2|Add28~11\);

-- Location: LCCOMB_X66_Y51_N18
\u2|Add28~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add28~12_combout\ = (\u2|col_counter\(6) & (\u2|Add28~11\ $ (GND))) # (!\u2|col_counter\(6) & (!\u2|Add28~11\ & VCC))
-- \u2|Add28~13\ = CARRY((\u2|col_counter\(6) & !\u2|Add28~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|col_counter\(6),
	datad => VCC,
	cin => \u2|Add28~11\,
	combout => \u2|Add28~12_combout\,
	cout => \u2|Add28~13\);

-- Location: LCCOMB_X66_Y51_N20
\u2|Add28~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add28~14_combout\ = (\u2|col_counter\(7) & (!\u2|Add28~13\)) # (!\u2|col_counter\(7) & ((\u2|Add28~13\) # (GND)))
-- \u2|Add28~15\ = CARRY((!\u2|Add28~13\) # (!\u2|col_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|col_counter\(7),
	datad => VCC,
	cin => \u2|Add28~13\,
	combout => \u2|Add28~14_combout\,
	cout => \u2|Add28~15\);

-- Location: LCCOMB_X66_Y51_N22
\u2|Add28~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add28~16_combout\ = (\u2|col_counter\(8) & (\u2|Add28~15\ $ (GND))) # (!\u2|col_counter\(8) & (!\u2|Add28~15\ & VCC))
-- \u2|Add28~17\ = CARRY((\u2|col_counter\(8) & !\u2|Add28~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|col_counter\(8),
	datad => VCC,
	cin => \u2|Add28~15\,
	combout => \u2|Add28~16_combout\,
	cout => \u2|Add28~17\);

-- Location: LCCOMB_X66_Y51_N24
\u2|Add28~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add28~18_combout\ = (\u2|col_counter\(9) & (!\u2|Add28~17\)) # (!\u2|col_counter\(9) & ((\u2|Add28~17\) # (GND)))
-- \u2|Add28~19\ = CARRY((!\u2|Add28~17\) # (!\u2|col_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|col_counter\(9),
	datad => VCC,
	cin => \u2|Add28~17\,
	combout => \u2|Add28~18_combout\,
	cout => \u2|Add28~19\);

-- Location: LCCOMB_X65_Y51_N8
\u2|LessThan23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan23~1_cout\ = CARRY((!\u2|Add28~0_combout\ & \u2|Ball_pos_x\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add28~0_combout\,
	datab => \u2|Ball_pos_x\(0),
	datad => VCC,
	cout => \u2|LessThan23~1_cout\);

-- Location: LCCOMB_X65_Y51_N10
\u2|LessThan23~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan23~3_cout\ = CARRY((\u2|Ball_pos_x\(1) & (\u2|Add28~2_combout\ & !\u2|LessThan23~1_cout\)) # (!\u2|Ball_pos_x\(1) & ((\u2|Add28~2_combout\) # (!\u2|LessThan23~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(1),
	datab => \u2|Add28~2_combout\,
	datad => VCC,
	cin => \u2|LessThan23~1_cout\,
	cout => \u2|LessThan23~3_cout\);

-- Location: LCCOMB_X65_Y51_N12
\u2|LessThan23~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan23~5_cout\ = CARRY((\u2|Ball_pos_x\(2) & ((!\u2|LessThan23~3_cout\) # (!\u2|Add28~4_combout\))) # (!\u2|Ball_pos_x\(2) & (!\u2|Add28~4_combout\ & !\u2|LessThan23~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(2),
	datab => \u2|Add28~4_combout\,
	datad => VCC,
	cin => \u2|LessThan23~3_cout\,
	cout => \u2|LessThan23~5_cout\);

-- Location: LCCOMB_X65_Y51_N14
\u2|LessThan23~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan23~7_cout\ = CARRY((\u2|Ball_pos_x\(3) & (\u2|Add28~6_combout\ & !\u2|LessThan23~5_cout\)) # (!\u2|Ball_pos_x\(3) & ((\u2|Add28~6_combout\) # (!\u2|LessThan23~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(3),
	datab => \u2|Add28~6_combout\,
	datad => VCC,
	cin => \u2|LessThan23~5_cout\,
	cout => \u2|LessThan23~7_cout\);

-- Location: LCCOMB_X65_Y51_N16
\u2|LessThan23~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan23~9_cout\ = CARRY((\u2|Ball_pos_x\(4) & ((!\u2|LessThan23~7_cout\) # (!\u2|Add28~8_combout\))) # (!\u2|Ball_pos_x\(4) & (!\u2|Add28~8_combout\ & !\u2|LessThan23~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(4),
	datab => \u2|Add28~8_combout\,
	datad => VCC,
	cin => \u2|LessThan23~7_cout\,
	cout => \u2|LessThan23~9_cout\);

-- Location: LCCOMB_X65_Y51_N18
\u2|LessThan23~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan23~11_cout\ = CARRY((\u2|Ball_pos_x\(5) & (\u2|Add28~10_combout\ & !\u2|LessThan23~9_cout\)) # (!\u2|Ball_pos_x\(5) & ((\u2|Add28~10_combout\) # (!\u2|LessThan23~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(5),
	datab => \u2|Add28~10_combout\,
	datad => VCC,
	cin => \u2|LessThan23~9_cout\,
	cout => \u2|LessThan23~11_cout\);

-- Location: LCCOMB_X65_Y51_N20
\u2|LessThan23~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan23~13_cout\ = CARRY((\u2|Ball_pos_x\(6) & (!\u2|Add28~12_combout\ & !\u2|LessThan23~11_cout\)) # (!\u2|Ball_pos_x\(6) & ((!\u2|LessThan23~11_cout\) # (!\u2|Add28~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(6),
	datab => \u2|Add28~12_combout\,
	datad => VCC,
	cin => \u2|LessThan23~11_cout\,
	cout => \u2|LessThan23~13_cout\);

-- Location: LCCOMB_X65_Y51_N22
\u2|LessThan23~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan23~15_cout\ = CARRY((\u2|Add28~14_combout\ & ((!\u2|LessThan23~13_cout\) # (!\u2|Ball_pos_x\(7)))) # (!\u2|Add28~14_combout\ & (!\u2|Ball_pos_x\(7) & !\u2|LessThan23~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add28~14_combout\,
	datab => \u2|Ball_pos_x\(7),
	datad => VCC,
	cin => \u2|LessThan23~13_cout\,
	cout => \u2|LessThan23~15_cout\);

-- Location: LCCOMB_X65_Y51_N24
\u2|LessThan23~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan23~17_cout\ = CARRY((\u2|Ball_pos_x\(8) & (!\u2|Add28~16_combout\ & !\u2|LessThan23~15_cout\)) # (!\u2|Ball_pos_x\(8) & ((!\u2|LessThan23~15_cout\) # (!\u2|Add28~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_x\(8),
	datab => \u2|Add28~16_combout\,
	datad => VCC,
	cin => \u2|LessThan23~15_cout\,
	cout => \u2|LessThan23~17_cout\);

-- Location: LCCOMB_X65_Y51_N26
\u2|LessThan23~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan23~18_combout\ = (\u2|Ball_pos_x\(9) & ((\u2|LessThan23~17_cout\) # (!\u2|Add28~18_combout\))) # (!\u2|Ball_pos_x\(9) & (\u2|LessThan23~17_cout\ & !\u2|Add28~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|Ball_pos_x\(9),
	datad => \u2|Add28~18_combout\,
	cin => \u2|LessThan23~17_cout\,
	combout => \u2|LessThan23~18_combout\);

-- Location: LCCOMB_X66_Y51_N26
\u2|Add28~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add28~20_combout\ = !\u2|Add28~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u2|Add28~19\,
	combout => \u2|Add28~20_combout\);

-- Location: LCCOMB_X63_Y49_N4
\u2|R[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|R[0]~8_combout\ = (\u2|Add31~20_combout\ & (((\u2|Add28~20_combout\) # (!\u2|LessThan23~18_combout\)))) # (!\u2|Add31~20_combout\ & (!\u2|LessThan26~18_combout\ & ((\u2|Add28~20_combout\) # (!\u2|LessThan23~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add31~20_combout\,
	datab => \u2|LessThan26~18_combout\,
	datac => \u2|LessThan23~18_combout\,
	datad => \u2|Add28~20_combout\,
	combout => \u2|R[0]~8_combout\);

-- Location: LCCOMB_X66_Y53_N20
\u2|LessThan16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan16~0_combout\ = (\u2|col_counter\(2) & (\u2|col_counter\(4) & (\u2|col_counter\(1) & \u2|col_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|col_counter\(2),
	datab => \u2|col_counter\(4),
	datac => \u2|col_counter\(1),
	datad => \u2|col_counter\(5),
	combout => \u2|LessThan16~0_combout\);

-- Location: LCCOMB_X64_Y53_N0
\u2|Add22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add22~0_combout\ = \u2|col_counter\(1) $ (VCC)
-- \u2|Add22~1\ = CARRY(\u2|col_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|col_counter\(1),
	datad => VCC,
	combout => \u2|Add22~0_combout\,
	cout => \u2|Add22~1\);

-- Location: LCCOMB_X64_Y53_N2
\u2|Add22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add22~2_combout\ = (\u2|col_counter\(2) & (!\u2|Add22~1\)) # (!\u2|col_counter\(2) & ((\u2|Add22~1\) # (GND)))
-- \u2|Add22~3\ = CARRY((!\u2|Add22~1\) # (!\u2|col_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|col_counter\(2),
	datad => VCC,
	cin => \u2|Add22~1\,
	combout => \u2|Add22~2_combout\,
	cout => \u2|Add22~3\);

-- Location: LCCOMB_X64_Y53_N4
\u2|Add22~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add22~4_combout\ = (\u2|col_counter\(3) & (\u2|Add22~3\ $ (GND))) # (!\u2|col_counter\(3) & (!\u2|Add22~3\ & VCC))
-- \u2|Add22~5\ = CARRY((\u2|col_counter\(3) & !\u2|Add22~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|col_counter\(3),
	datad => VCC,
	cin => \u2|Add22~3\,
	combout => \u2|Add22~4_combout\,
	cout => \u2|Add22~5\);

-- Location: LCCOMB_X64_Y53_N6
\u2|Add22~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add22~6_combout\ = (\u2|col_counter\(4) & (!\u2|Add22~5\)) # (!\u2|col_counter\(4) & ((\u2|Add22~5\) # (GND)))
-- \u2|Add22~7\ = CARRY((!\u2|Add22~5\) # (!\u2|col_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|col_counter\(4),
	datad => VCC,
	cin => \u2|Add22~5\,
	combout => \u2|Add22~6_combout\,
	cout => \u2|Add22~7\);

-- Location: LCCOMB_X64_Y53_N8
\u2|Add22~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add22~8_combout\ = (\u2|col_counter\(5) & (\u2|Add22~7\ $ (GND))) # (!\u2|col_counter\(5) & (!\u2|Add22~7\ & VCC))
-- \u2|Add22~9\ = CARRY((\u2|col_counter\(5) & !\u2|Add22~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|col_counter\(5),
	datad => VCC,
	cin => \u2|Add22~7\,
	combout => \u2|Add22~8_combout\,
	cout => \u2|Add22~9\);

-- Location: LCCOMB_X64_Y53_N10
\u2|Add22~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add22~10_combout\ = (\u2|col_counter\(6) & (!\u2|Add22~9\)) # (!\u2|col_counter\(6) & ((\u2|Add22~9\) # (GND)))
-- \u2|Add22~11\ = CARRY((!\u2|Add22~9\) # (!\u2|col_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|col_counter\(6),
	datad => VCC,
	cin => \u2|Add22~9\,
	combout => \u2|Add22~10_combout\,
	cout => \u2|Add22~11\);

-- Location: LCCOMB_X64_Y53_N12
\u2|Add22~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add22~12_combout\ = (\u2|col_counter\(7) & (\u2|Add22~11\ $ (GND))) # (!\u2|col_counter\(7) & (!\u2|Add22~11\ & VCC))
-- \u2|Add22~13\ = CARRY((\u2|col_counter\(7) & !\u2|Add22~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|col_counter\(7),
	datad => VCC,
	cin => \u2|Add22~11\,
	combout => \u2|Add22~12_combout\,
	cout => \u2|Add22~13\);

-- Location: LCCOMB_X64_Y53_N14
\u2|Add22~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add22~14_combout\ = (\u2|col_counter\(8) & (!\u2|Add22~13\)) # (!\u2|col_counter\(8) & ((\u2|Add22~13\) # (GND)))
-- \u2|Add22~15\ = CARRY((!\u2|Add22~13\) # (!\u2|col_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|col_counter\(8),
	datad => VCC,
	cin => \u2|Add22~13\,
	combout => \u2|Add22~14_combout\,
	cout => \u2|Add22~15\);

-- Location: LCCOMB_X64_Y53_N16
\u2|Add22~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add22~16_combout\ = (\u2|col_counter\(9) & (\u2|Add22~15\ $ (GND))) # (!\u2|col_counter\(9) & (!\u2|Add22~15\ & VCC))
-- \u2|Add22~17\ = CARRY((\u2|col_counter\(9) & !\u2|Add22~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|col_counter\(9),
	datad => VCC,
	cin => \u2|Add22~15\,
	combout => \u2|Add22~16_combout\,
	cout => \u2|Add22~17\);

-- Location: LCCOMB_X64_Y53_N30
\u2|LessThan15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan15~1_combout\ = (!\u2|Add22~14_combout\ & !\u2|Add22~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|Add22~14_combout\,
	datad => \u2|Add22~12_combout\,
	combout => \u2|LessThan15~1_combout\);

-- Location: LCCOMB_X64_Y53_N18
\u2|Add22~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add22~18_combout\ = \u2|Add22~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u2|Add22~17\,
	combout => \u2|Add22~18_combout\);

-- Location: LCCOMB_X64_Y53_N24
\u2|LessThan15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan15~2_combout\ = (!\u2|Add22~10_combout\ & (!\u2|Add22~16_combout\ & (\u2|LessThan15~1_combout\ & !\u2|Add22~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add22~10_combout\,
	datab => \u2|Add22~16_combout\,
	datac => \u2|LessThan15~1_combout\,
	datad => \u2|Add22~18_combout\,
	combout => \u2|LessThan15~2_combout\);

-- Location: LCCOMB_X64_Y53_N20
\u2|LessThan15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan15~0_combout\ = ((!\u2|Add22~2_combout\ & (!\u2|Add22~4_combout\ & !\u2|Add22~0_combout\))) # (!\u2|Add22~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add22~6_combout\,
	datab => \u2|Add22~2_combout\,
	datac => \u2|Add22~4_combout\,
	datad => \u2|Add22~0_combout\,
	combout => \u2|LessThan15~0_combout\);

-- Location: LCCOMB_X64_Y53_N26
\u2|R[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|R[0]~2_combout\ = (!\u2|LessThan16~0_combout\ & (((\u2|Add22~8_combout\ & !\u2|LessThan15~0_combout\)) # (!\u2|LessThan15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan16~0_combout\,
	datab => \u2|LessThan15~2_combout\,
	datac => \u2|Add22~8_combout\,
	datad => \u2|LessThan15~0_combout\,
	combout => \u2|R[0]~2_combout\);

-- Location: LCCOMB_X63_Y48_N4
\u2|Add30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add30~0_combout\ = \u2|row_counter\(0) $ (VCC)
-- \u2|Add30~1\ = CARRY(\u2|row_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|row_counter\(0),
	datad => VCC,
	combout => \u2|Add30~0_combout\,
	cout => \u2|Add30~1\);

-- Location: LCCOMB_X63_Y48_N6
\u2|Add30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add30~2_combout\ = (\u2|row_counter\(1) & (\u2|Add30~1\ & VCC)) # (!\u2|row_counter\(1) & (!\u2|Add30~1\))
-- \u2|Add30~3\ = CARRY((!\u2|row_counter\(1) & !\u2|Add30~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|row_counter\(1),
	datad => VCC,
	cin => \u2|Add30~1\,
	combout => \u2|Add30~2_combout\,
	cout => \u2|Add30~3\);

-- Location: LCCOMB_X63_Y48_N8
\u2|Add30~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add30~4_combout\ = (\u2|row_counter\(2) & (\u2|Add30~3\ $ (GND))) # (!\u2|row_counter\(2) & (!\u2|Add30~3\ & VCC))
-- \u2|Add30~5\ = CARRY((\u2|row_counter\(2) & !\u2|Add30~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|row_counter\(2),
	datad => VCC,
	cin => \u2|Add30~3\,
	combout => \u2|Add30~4_combout\,
	cout => \u2|Add30~5\);

-- Location: LCCOMB_X63_Y48_N10
\u2|Add30~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add30~6_combout\ = (\u2|row_counter\(3) & (!\u2|Add30~5\)) # (!\u2|row_counter\(3) & ((\u2|Add30~5\) # (GND)))
-- \u2|Add30~7\ = CARRY((!\u2|Add30~5\) # (!\u2|row_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(3),
	datad => VCC,
	cin => \u2|Add30~5\,
	combout => \u2|Add30~6_combout\,
	cout => \u2|Add30~7\);

-- Location: LCCOMB_X63_Y48_N12
\u2|Add30~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add30~8_combout\ = (\u2|row_counter\(4) & (\u2|Add30~7\ $ (GND))) # (!\u2|row_counter\(4) & (!\u2|Add30~7\ & VCC))
-- \u2|Add30~9\ = CARRY((\u2|row_counter\(4) & !\u2|Add30~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(4),
	datad => VCC,
	cin => \u2|Add30~7\,
	combout => \u2|Add30~8_combout\,
	cout => \u2|Add30~9\);

-- Location: LCCOMB_X63_Y48_N14
\u2|Add30~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add30~10_combout\ = (\u2|row_counter\(5) & (!\u2|Add30~9\)) # (!\u2|row_counter\(5) & ((\u2|Add30~9\) # (GND)))
-- \u2|Add30~11\ = CARRY((!\u2|Add30~9\) # (!\u2|row_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(5),
	datad => VCC,
	cin => \u2|Add30~9\,
	combout => \u2|Add30~10_combout\,
	cout => \u2|Add30~11\);

-- Location: LCCOMB_X63_Y48_N16
\u2|Add30~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add30~12_combout\ = (\u2|row_counter\(6) & (\u2|Add30~11\ $ (GND))) # (!\u2|row_counter\(6) & (!\u2|Add30~11\ & VCC))
-- \u2|Add30~13\ = CARRY((\u2|row_counter\(6) & !\u2|Add30~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|row_counter\(6),
	datad => VCC,
	cin => \u2|Add30~11\,
	combout => \u2|Add30~12_combout\,
	cout => \u2|Add30~13\);

-- Location: LCCOMB_X63_Y48_N18
\u2|Add30~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add30~14_combout\ = (\u2|row_counter\(7) & (!\u2|Add30~13\)) # (!\u2|row_counter\(7) & ((\u2|Add30~13\) # (GND)))
-- \u2|Add30~15\ = CARRY((!\u2|Add30~13\) # (!\u2|row_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|row_counter\(7),
	datad => VCC,
	cin => \u2|Add30~13\,
	combout => \u2|Add30~14_combout\,
	cout => \u2|Add30~15\);

-- Location: LCCOMB_X63_Y48_N20
\u2|Add30~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add30~16_combout\ = (\u2|row_counter\(8) & (\u2|Add30~15\ $ (GND))) # (!\u2|row_counter\(8) & (!\u2|Add30~15\ & VCC))
-- \u2|Add30~17\ = CARRY((\u2|row_counter\(8) & !\u2|Add30~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(8),
	datad => VCC,
	cin => \u2|Add30~15\,
	combout => \u2|Add30~16_combout\,
	cout => \u2|Add30~17\);

-- Location: LCCOMB_X63_Y48_N22
\u2|Add30~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add30~18_combout\ = (\u2|row_counter\(9) & (!\u2|Add30~17\)) # (!\u2|row_counter\(9) & ((\u2|Add30~17\) # (GND)))
-- \u2|Add30~19\ = CARRY((!\u2|Add30~17\) # (!\u2|row_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(9),
	datad => VCC,
	cin => \u2|Add30~17\,
	combout => \u2|Add30~18_combout\,
	cout => \u2|Add30~19\);

-- Location: LCCOMB_X63_Y48_N24
\u2|Add30~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|Add30~20_combout\ = !\u2|Add30~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u2|Add30~19\,
	combout => \u2|Add30~20_combout\);

-- Location: LCCOMB_X63_Y45_N2
\u2|LessThan25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan25~1_cout\ = CARRY((!\u2|Add30~0_combout\ & \u2|Ball_pos_y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add30~0_combout\,
	datab => \u2|Ball_pos_y\(0),
	datad => VCC,
	cout => \u2|LessThan25~1_cout\);

-- Location: LCCOMB_X63_Y45_N4
\u2|LessThan25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan25~3_cout\ = CARRY((\u2|Ball_pos_y\(1) & (\u2|Add30~2_combout\ & !\u2|LessThan25~1_cout\)) # (!\u2|Ball_pos_y\(1) & ((\u2|Add30~2_combout\) # (!\u2|LessThan25~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(1),
	datab => \u2|Add30~2_combout\,
	datad => VCC,
	cin => \u2|LessThan25~1_cout\,
	cout => \u2|LessThan25~3_cout\);

-- Location: LCCOMB_X63_Y45_N6
\u2|LessThan25~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan25~5_cout\ = CARRY((\u2|Add30~4_combout\ & (\u2|Ball_pos_y\(2) & !\u2|LessThan25~3_cout\)) # (!\u2|Add30~4_combout\ & ((\u2|Ball_pos_y\(2)) # (!\u2|LessThan25~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add30~4_combout\,
	datab => \u2|Ball_pos_y\(2),
	datad => VCC,
	cin => \u2|LessThan25~3_cout\,
	cout => \u2|LessThan25~5_cout\);

-- Location: LCCOMB_X63_Y45_N8
\u2|LessThan25~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan25~7_cout\ = CARRY((\u2|Ball_pos_y\(3) & (\u2|Add30~6_combout\ & !\u2|LessThan25~5_cout\)) # (!\u2|Ball_pos_y\(3) & ((\u2|Add30~6_combout\) # (!\u2|LessThan25~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(3),
	datab => \u2|Add30~6_combout\,
	datad => VCC,
	cin => \u2|LessThan25~5_cout\,
	cout => \u2|LessThan25~7_cout\);

-- Location: LCCOMB_X63_Y45_N10
\u2|LessThan25~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan25~9_cout\ = CARRY((\u2|Ball_pos_y\(4) & (!\u2|Add30~8_combout\ & !\u2|LessThan25~7_cout\)) # (!\u2|Ball_pos_y\(4) & ((!\u2|LessThan25~7_cout\) # (!\u2|Add30~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(4),
	datab => \u2|Add30~8_combout\,
	datad => VCC,
	cin => \u2|LessThan25~7_cout\,
	cout => \u2|LessThan25~9_cout\);

-- Location: LCCOMB_X63_Y45_N12
\u2|LessThan25~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan25~11_cout\ = CARRY((\u2|Ball_pos_y\(5) & ((\u2|Add30~10_combout\) # (!\u2|LessThan25~9_cout\))) # (!\u2|Ball_pos_y\(5) & (\u2|Add30~10_combout\ & !\u2|LessThan25~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(5),
	datab => \u2|Add30~10_combout\,
	datad => VCC,
	cin => \u2|LessThan25~9_cout\,
	cout => \u2|LessThan25~11_cout\);

-- Location: LCCOMB_X63_Y45_N14
\u2|LessThan25~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan25~13_cout\ = CARRY((\u2|Ball_pos_y\(6) & (!\u2|Add30~12_combout\ & !\u2|LessThan25~11_cout\)) # (!\u2|Ball_pos_y\(6) & ((!\u2|LessThan25~11_cout\) # (!\u2|Add30~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(6),
	datab => \u2|Add30~12_combout\,
	datad => VCC,
	cin => \u2|LessThan25~11_cout\,
	cout => \u2|LessThan25~13_cout\);

-- Location: LCCOMB_X63_Y45_N16
\u2|LessThan25~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan25~15_cout\ = CARRY((\u2|Ball_pos_y\(7) & ((\u2|Add30~14_combout\) # (!\u2|LessThan25~13_cout\))) # (!\u2|Ball_pos_y\(7) & (\u2|Add30~14_combout\ & !\u2|LessThan25~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(7),
	datab => \u2|Add30~14_combout\,
	datad => VCC,
	cin => \u2|LessThan25~13_cout\,
	cout => \u2|LessThan25~15_cout\);

-- Location: LCCOMB_X63_Y45_N18
\u2|LessThan25~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan25~17_cout\ = CARRY((\u2|Add30~16_combout\ & (\u2|Ball_pos_y\(8) & !\u2|LessThan25~15_cout\)) # (!\u2|Add30~16_combout\ & ((\u2|Ball_pos_y\(8)) # (!\u2|LessThan25~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add30~16_combout\,
	datab => \u2|Ball_pos_y\(8),
	datad => VCC,
	cin => \u2|LessThan25~15_cout\,
	cout => \u2|LessThan25~17_cout\);

-- Location: LCCOMB_X63_Y45_N20
\u2|LessThan25~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan25~18_combout\ = (\u2|Ball_pos_y\(9) & ((\u2|LessThan25~17_cout\) # (!\u2|Add30~18_combout\))) # (!\u2|Ball_pos_y\(9) & (\u2|LessThan25~17_cout\ & !\u2|Add30~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Ball_pos_y\(9),
	datad => \u2|Add30~18_combout\,
	cin => \u2|LessThan25~17_cout\,
	combout => \u2|LessThan25~18_combout\);

-- Location: LCCOMB_X65_Y53_N4
\u2|LessThan24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan24~1_cout\ = CARRY((\u2|col_counter\(0) & !\u2|Add29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|col_counter\(0),
	datab => \u2|Add29~0_combout\,
	datad => VCC,
	cout => \u2|LessThan24~1_cout\);

-- Location: LCCOMB_X65_Y53_N6
\u2|LessThan24~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan24~3_cout\ = CARRY((\u2|col_counter\(1) & (\u2|Add29~2_combout\ & !\u2|LessThan24~1_cout\)) # (!\u2|col_counter\(1) & ((\u2|Add29~2_combout\) # (!\u2|LessThan24~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|col_counter\(1),
	datab => \u2|Add29~2_combout\,
	datad => VCC,
	cin => \u2|LessThan24~1_cout\,
	cout => \u2|LessThan24~3_cout\);

-- Location: LCCOMB_X65_Y53_N8
\u2|LessThan24~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan24~5_cout\ = CARRY((\u2|Add29~4_combout\ & (\u2|col_counter\(2) & !\u2|LessThan24~3_cout\)) # (!\u2|Add29~4_combout\ & ((\u2|col_counter\(2)) # (!\u2|LessThan24~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add29~4_combout\,
	datab => \u2|col_counter\(2),
	datad => VCC,
	cin => \u2|LessThan24~3_cout\,
	cout => \u2|LessThan24~5_cout\);

-- Location: LCCOMB_X65_Y53_N10
\u2|LessThan24~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan24~7_cout\ = CARRY((\u2|Add29~6_combout\ & ((!\u2|LessThan24~5_cout\) # (!\u2|col_counter\(3)))) # (!\u2|Add29~6_combout\ & (!\u2|col_counter\(3) & !\u2|LessThan24~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add29~6_combout\,
	datab => \u2|col_counter\(3),
	datad => VCC,
	cin => \u2|LessThan24~5_cout\,
	cout => \u2|LessThan24~7_cout\);

-- Location: LCCOMB_X65_Y53_N12
\u2|LessThan24~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan24~9_cout\ = CARRY((\u2|col_counter\(4) & ((!\u2|LessThan24~7_cout\) # (!\u2|Add29~8_combout\))) # (!\u2|col_counter\(4) & (!\u2|Add29~8_combout\ & !\u2|LessThan24~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|col_counter\(4),
	datab => \u2|Add29~8_combout\,
	datad => VCC,
	cin => \u2|LessThan24~7_cout\,
	cout => \u2|LessThan24~9_cout\);

-- Location: LCCOMB_X65_Y53_N14
\u2|LessThan24~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan24~11_cout\ = CARRY((\u2|col_counter\(5) & (\u2|Add29~10_combout\ & !\u2|LessThan24~9_cout\)) # (!\u2|col_counter\(5) & ((\u2|Add29~10_combout\) # (!\u2|LessThan24~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|col_counter\(5),
	datab => \u2|Add29~10_combout\,
	datad => VCC,
	cin => \u2|LessThan24~9_cout\,
	cout => \u2|LessThan24~11_cout\);

-- Location: LCCOMB_X65_Y53_N16
\u2|LessThan24~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan24~13_cout\ = CARRY((\u2|col_counter\(6) & ((!\u2|LessThan24~11_cout\) # (!\u2|Add29~12_combout\))) # (!\u2|col_counter\(6) & (!\u2|Add29~12_combout\ & !\u2|LessThan24~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|col_counter\(6),
	datab => \u2|Add29~12_combout\,
	datad => VCC,
	cin => \u2|LessThan24~11_cout\,
	cout => \u2|LessThan24~13_cout\);

-- Location: LCCOMB_X65_Y53_N18
\u2|LessThan24~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan24~15_cout\ = CARRY((\u2|col_counter\(7) & (\u2|Add29~14_combout\ & !\u2|LessThan24~13_cout\)) # (!\u2|col_counter\(7) & ((\u2|Add29~14_combout\) # (!\u2|LessThan24~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|col_counter\(7),
	datab => \u2|Add29~14_combout\,
	datad => VCC,
	cin => \u2|LessThan24~13_cout\,
	cout => \u2|LessThan24~15_cout\);

-- Location: LCCOMB_X65_Y53_N20
\u2|LessThan24~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan24~17_cout\ = CARRY((\u2|Add29~16_combout\ & (\u2|col_counter\(8) & !\u2|LessThan24~15_cout\)) # (!\u2|Add29~16_combout\ & ((\u2|col_counter\(8)) # (!\u2|LessThan24~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add29~16_combout\,
	datab => \u2|col_counter\(8),
	datad => VCC,
	cin => \u2|LessThan24~15_cout\,
	cout => \u2|LessThan24~17_cout\);

-- Location: LCCOMB_X65_Y53_N22
\u2|LessThan24~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan24~18_combout\ = (\u2|col_counter\(9) & ((\u2|LessThan24~17_cout\) # (!\u2|Add29~18_combout\))) # (!\u2|col_counter\(9) & (\u2|LessThan24~17_cout\ & !\u2|Add29~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|col_counter\(9),
	datad => \u2|Add29~18_combout\,
	cin => \u2|LessThan24~17_cout\,
	combout => \u2|LessThan24~18_combout\);

-- Location: LCCOMB_X64_Y48_N0
\u2|R[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|R[0]~1_combout\ = (\u2|Add29~20_combout\ & ((\u2|Add30~20_combout\) # ((!\u2|LessThan25~18_combout\)))) # (!\u2|Add29~20_combout\ & (!\u2|LessThan24~18_combout\ & ((\u2|Add30~20_combout\) # (!\u2|LessThan25~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add29~20_combout\,
	datab => \u2|Add30~20_combout\,
	datac => \u2|LessThan25~18_combout\,
	datad => \u2|LessThan24~18_combout\,
	combout => \u2|R[0]~1_combout\);

-- Location: LCCOMB_X63_Y49_N6
\u2|R[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|R[0]~9_combout\ = (\u2|R[0]~7_combout\ & ((\u2|R[0]~2_combout\) # ((\u2|R[0]~8_combout\ & \u2|R[0]~1_combout\)))) # (!\u2|R[0]~7_combout\ & (\u2|R[0]~8_combout\ & ((\u2|R[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|R[0]~7_combout\,
	datab => \u2|R[0]~8_combout\,
	datac => \u2|R[0]~2_combout\,
	datad => \u2|R[0]~1_combout\,
	combout => \u2|R[0]~9_combout\);

-- Location: LCCOMB_X66_Y53_N18
\u2|LessThan20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan20~0_combout\ = (\u2|col_counter\(3)) # ((\u2|col_counter\(2)) # ((\u2|col_counter\(1)) # (\u2|col_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|col_counter\(3),
	datab => \u2|col_counter\(2),
	datac => \u2|col_counter\(1),
	datad => \u2|col_counter\(0),
	combout => \u2|LessThan20~0_combout\);

-- Location: LCCOMB_X66_Y53_N16
\u2|LessThan20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan20~1_combout\ = (\u2|col_counter\(6) & ((\u2|col_counter\(5)) # ((\u2|LessThan20~0_combout\ & \u2|col_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan20~0_combout\,
	datab => \u2|col_counter\(6),
	datac => \u2|col_counter\(4),
	datad => \u2|col_counter\(5),
	combout => \u2|LessThan20~1_combout\);

-- Location: LCCOMB_X67_Y52_N28
\u2|LessThan20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan20~2_combout\ = (\u2|col_counter\(9) & ((\u2|col_counter\(8)) # ((\u2|col_counter\(7)) # (\u2|LessThan20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|col_counter\(8),
	datab => \u2|col_counter\(9),
	datac => \u2|col_counter\(7),
	datad => \u2|LessThan20~1_combout\,
	combout => \u2|LessThan20~2_combout\);

-- Location: LCCOMB_X67_Y52_N4
\u2|R[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|R[0]~0_combout\ = (\u1|Vactive~q\ & \u1|Hactive~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Vactive~q\,
	datad => \u1|Hactive~q\,
	combout => \u2|R[0]~0_combout\);

-- Location: LCCOMB_X64_Y53_N28
\u2|LessThan19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan19~0_combout\ = (!\u2|Add22~6_combout\ & (((!\u2|Add22~0_combout\) # (!\u2|Add22~4_combout\)) # (!\u2|Add22~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add22~6_combout\,
	datab => \u2|Add22~2_combout\,
	datac => \u2|Add22~4_combout\,
	datad => \u2|Add22~0_combout\,
	combout => \u2|LessThan19~0_combout\);

-- Location: LCCOMB_X64_Y53_N22
\u2|LessThan19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan19~1_combout\ = (\u2|LessThan15~1_combout\ & (((!\u2|Add22~8_combout\ & \u2|LessThan19~0_combout\)) # (!\u2|Add22~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add22~10_combout\,
	datab => \u2|Add22~8_combout\,
	datac => \u2|LessThan15~1_combout\,
	datad => \u2|LessThan19~0_combout\,
	combout => \u2|LessThan19~1_combout\);

-- Location: LCCOMB_X60_Y49_N12
\u2|LessThan21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan21~1_cout\ = CARRY((\u2|paddle2_pos_y\(0) & !\u2|row_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(0),
	datab => \u2|row_counter\(0),
	datad => VCC,
	cout => \u2|LessThan21~1_cout\);

-- Location: LCCOMB_X60_Y49_N14
\u2|LessThan21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan21~3_cout\ = CARRY((\u2|Add24~0_combout\ & ((!\u2|LessThan21~1_cout\) # (!\u2|paddle2_pos_y\(1)))) # (!\u2|Add24~0_combout\ & (!\u2|paddle2_pos_y\(1) & !\u2|LessThan21~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add24~0_combout\,
	datab => \u2|paddle2_pos_y\(1),
	datad => VCC,
	cin => \u2|LessThan21~1_cout\,
	cout => \u2|LessThan21~3_cout\);

-- Location: LCCOMB_X60_Y49_N16
\u2|LessThan21~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan21~5_cout\ = CARRY((\u2|Add24~2_combout\ & (\u2|paddle2_pos_y\(2) & !\u2|LessThan21~3_cout\)) # (!\u2|Add24~2_combout\ & ((\u2|paddle2_pos_y\(2)) # (!\u2|LessThan21~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add24~2_combout\,
	datab => \u2|paddle2_pos_y\(2),
	datad => VCC,
	cin => \u2|LessThan21~3_cout\,
	cout => \u2|LessThan21~5_cout\);

-- Location: LCCOMB_X60_Y49_N18
\u2|LessThan21~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan21~7_cout\ = CARRY((\u2|Add24~4_combout\ & ((!\u2|LessThan21~5_cout\) # (!\u2|paddle2_pos_y\(3)))) # (!\u2|Add24~4_combout\ & (!\u2|paddle2_pos_y\(3) & !\u2|LessThan21~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add24~4_combout\,
	datab => \u2|paddle2_pos_y\(3),
	datad => VCC,
	cin => \u2|LessThan21~5_cout\,
	cout => \u2|LessThan21~7_cout\);

-- Location: LCCOMB_X60_Y49_N20
\u2|LessThan21~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan21~9_cout\ = CARRY((\u2|paddle2_pos_y\(4) & (!\u2|Add24~6_combout\ & !\u2|LessThan21~7_cout\)) # (!\u2|paddle2_pos_y\(4) & ((!\u2|LessThan21~7_cout\) # (!\u2|Add24~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(4),
	datab => \u2|Add24~6_combout\,
	datad => VCC,
	cin => \u2|LessThan21~7_cout\,
	cout => \u2|LessThan21~9_cout\);

-- Location: LCCOMB_X60_Y49_N22
\u2|LessThan21~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan21~11_cout\ = CARRY((\u2|paddle2_pos_y\(5) & ((\u2|Add24~8_combout\) # (!\u2|LessThan21~9_cout\))) # (!\u2|paddle2_pos_y\(5) & (\u2|Add24~8_combout\ & !\u2|LessThan21~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(5),
	datab => \u2|Add24~8_combout\,
	datad => VCC,
	cin => \u2|LessThan21~9_cout\,
	cout => \u2|LessThan21~11_cout\);

-- Location: LCCOMB_X60_Y49_N24
\u2|LessThan21~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan21~13_cout\ = CARRY((\u2|paddle2_pos_y\(6) & (!\u2|Add24~10_combout\ & !\u2|LessThan21~11_cout\)) # (!\u2|paddle2_pos_y\(6) & ((!\u2|LessThan21~11_cout\) # (!\u2|Add24~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(6),
	datab => \u2|Add24~10_combout\,
	datad => VCC,
	cin => \u2|LessThan21~11_cout\,
	cout => \u2|LessThan21~13_cout\);

-- Location: LCCOMB_X60_Y49_N26
\u2|LessThan21~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan21~15_cout\ = CARRY((\u2|Add24~12_combout\ & ((\u2|paddle2_pos_y\(7)) # (!\u2|LessThan21~13_cout\))) # (!\u2|Add24~12_combout\ & (\u2|paddle2_pos_y\(7) & !\u2|LessThan21~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add24~12_combout\,
	datab => \u2|paddle2_pos_y\(7),
	datad => VCC,
	cin => \u2|LessThan21~13_cout\,
	cout => \u2|LessThan21~15_cout\);

-- Location: LCCOMB_X60_Y49_N28
\u2|LessThan21~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan21~17_cout\ = CARRY((\u2|paddle2_pos_y\(8) & ((!\u2|LessThan21~15_cout\) # (!\u2|Add24~14_combout\))) # (!\u2|paddle2_pos_y\(8) & (!\u2|Add24~14_combout\ & !\u2|LessThan21~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(8),
	datab => \u2|Add24~14_combout\,
	datad => VCC,
	cin => \u2|LessThan21~15_cout\,
	cout => \u2|LessThan21~17_cout\);

-- Location: LCCOMB_X60_Y49_N30
\u2|LessThan21~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan21~18_combout\ = (\u2|paddle2_pos_y\(9) & ((\u2|LessThan21~17_cout\) # (!\u2|Add24~16_combout\))) # (!\u2|paddle2_pos_y\(9) & (\u2|LessThan21~17_cout\ & !\u2|Add24~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(9),
	datad => \u2|Add24~16_combout\,
	cin => \u2|LessThan21~17_cout\,
	combout => \u2|LessThan21~18_combout\);

-- Location: LCCOMB_X61_Y51_N10
\u2|LessThan22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan22~1_cout\ = CARRY((!\u2|paddle2_pos_y\(0) & \u2|row_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|paddle2_pos_y\(0),
	datab => \u2|row_counter\(0),
	datad => VCC,
	cout => \u2|LessThan22~1_cout\);

-- Location: LCCOMB_X61_Y51_N12
\u2|LessThan22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan22~3_cout\ = CARRY((\u2|Add27~0_combout\ & ((!\u2|LessThan22~1_cout\) # (!\u2|row_counter\(1)))) # (!\u2|Add27~0_combout\ & (!\u2|row_counter\(1) & !\u2|LessThan22~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add27~0_combout\,
	datab => \u2|row_counter\(1),
	datad => VCC,
	cin => \u2|LessThan22~1_cout\,
	cout => \u2|LessThan22~3_cout\);

-- Location: LCCOMB_X61_Y51_N14
\u2|LessThan22~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan22~5_cout\ = CARRY((\u2|row_counter\(2) & ((!\u2|LessThan22~3_cout\) # (!\u2|Add27~2_combout\))) # (!\u2|row_counter\(2) & (!\u2|Add27~2_combout\ & !\u2|LessThan22~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(2),
	datab => \u2|Add27~2_combout\,
	datad => VCC,
	cin => \u2|LessThan22~3_cout\,
	cout => \u2|LessThan22~5_cout\);

-- Location: LCCOMB_X61_Y51_N16
\u2|LessThan22~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan22~7_cout\ = CARRY((\u2|Add27~4_combout\ & ((!\u2|LessThan22~5_cout\) # (!\u2|row_counter\(3)))) # (!\u2|Add27~4_combout\ & (!\u2|row_counter\(3) & !\u2|LessThan22~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add27~4_combout\,
	datab => \u2|row_counter\(3),
	datad => VCC,
	cin => \u2|LessThan22~5_cout\,
	cout => \u2|LessThan22~7_cout\);

-- Location: LCCOMB_X61_Y51_N18
\u2|LessThan22~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan22~9_cout\ = CARRY((\u2|Add27~6_combout\ & (\u2|row_counter\(4) & !\u2|LessThan22~7_cout\)) # (!\u2|Add27~6_combout\ & ((\u2|row_counter\(4)) # (!\u2|LessThan22~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add27~6_combout\,
	datab => \u2|row_counter\(4),
	datad => VCC,
	cin => \u2|LessThan22~7_cout\,
	cout => \u2|LessThan22~9_cout\);

-- Location: LCCOMB_X61_Y51_N20
\u2|LessThan22~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan22~11_cout\ = CARRY((\u2|Add27~8_combout\ & ((!\u2|LessThan22~9_cout\) # (!\u2|row_counter\(5)))) # (!\u2|Add27~8_combout\ & (!\u2|row_counter\(5) & !\u2|LessThan22~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add27~8_combout\,
	datab => \u2|row_counter\(5),
	datad => VCC,
	cin => \u2|LessThan22~9_cout\,
	cout => \u2|LessThan22~11_cout\);

-- Location: LCCOMB_X61_Y51_N22
\u2|LessThan22~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan22~13_cout\ = CARRY((\u2|Add27~10_combout\ & (\u2|row_counter\(6) & !\u2|LessThan22~11_cout\)) # (!\u2|Add27~10_combout\ & ((\u2|row_counter\(6)) # (!\u2|LessThan22~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add27~10_combout\,
	datab => \u2|row_counter\(6),
	datad => VCC,
	cin => \u2|LessThan22~11_cout\,
	cout => \u2|LessThan22~13_cout\);

-- Location: LCCOMB_X61_Y51_N24
\u2|LessThan22~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan22~15_cout\ = CARRY((\u2|row_counter\(7) & (\u2|Add27~12_combout\ & !\u2|LessThan22~13_cout\)) # (!\u2|row_counter\(7) & ((\u2|Add27~12_combout\) # (!\u2|LessThan22~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(7),
	datab => \u2|Add27~12_combout\,
	datad => VCC,
	cin => \u2|LessThan22~13_cout\,
	cout => \u2|LessThan22~15_cout\);

-- Location: LCCOMB_X61_Y51_N26
\u2|LessThan22~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan22~17_cout\ = CARRY((\u2|row_counter\(8) & ((!\u2|LessThan22~15_cout\) # (!\u2|Add27~14_combout\))) # (!\u2|row_counter\(8) & (!\u2|Add27~14_combout\ & !\u2|LessThan22~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|row_counter\(8),
	datab => \u2|Add27~14_combout\,
	datad => VCC,
	cin => \u2|LessThan22~15_cout\,
	cout => \u2|LessThan22~17_cout\);

-- Location: LCCOMB_X61_Y51_N28
\u2|LessThan22~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|LessThan22~18_combout\ = (\u2|row_counter\(9) & ((\u2|LessThan22~17_cout\) # (!\u2|Add27~16_combout\))) # (!\u2|row_counter\(9) & (\u2|LessThan22~17_cout\ & !\u2|Add27~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|row_counter\(9),
	datad => \u2|Add27~16_combout\,
	cin => \u2|LessThan22~17_cout\,
	combout => \u2|LessThan22~18_combout\);

-- Location: LCCOMB_X61_Y51_N0
\u2|R[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|R[0]~10_combout\ = (\u2|Add27~18_combout\ & (((\u2|Add24~18_combout\)) # (!\u2|LessThan21~18_combout\))) # (!\u2|Add27~18_combout\ & (!\u2|LessThan22~18_combout\ & ((\u2|Add24~18_combout\) # (!\u2|LessThan21~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add27~18_combout\,
	datab => \u2|LessThan21~18_combout\,
	datac => \u2|Add24~18_combout\,
	datad => \u2|LessThan22~18_combout\,
	combout => \u2|R[0]~10_combout\);

-- Location: LCCOMB_X67_Y53_N16
\u2|R[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|R[0]~11_combout\ = (\u2|R[0]~10_combout\ & ((\u2|Add22~18_combout\) # ((!\u2|LessThan19~1_combout\ & \u2|Add22~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan19~1_combout\,
	datab => \u2|Add22~18_combout\,
	datac => \u2|R[0]~10_combout\,
	datad => \u2|Add22~16_combout\,
	combout => \u2|R[0]~11_combout\);

-- Location: LCCOMB_X67_Y52_N24
\u2|R[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u2|R[0]~12_combout\ = (\u2|R[0]~0_combout\ & ((\u2|R[0]~9_combout\) # ((!\u2|LessThan20~2_combout\ & \u2|R[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|R[0]~9_combout\,
	datab => \u2|LessThan20~2_combout\,
	datac => \u2|R[0]~0_combout\,
	datad => \u2|R[0]~11_combout\,
	combout => \u2|R[0]~12_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
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

ww_Hsync <= \Hsync~output_o\;

ww_Vsync <= \Vsync~output_o\;

ww_seg1(0) <= \seg1[0]~output_o\;

ww_seg1(1) <= \seg1[1]~output_o\;

ww_seg1(2) <= \seg1[2]~output_o\;

ww_seg1(3) <= \seg1[3]~output_o\;

ww_seg1(4) <= \seg1[4]~output_o\;

ww_seg1(5) <= \seg1[5]~output_o\;

ww_seg1(6) <= \seg1[6]~output_o\;

ww_seg2(0) <= \seg2[0]~output_o\;

ww_seg2(1) <= \seg2[1]~output_o\;

ww_seg2(2) <= \seg2[2]~output_o\;

ww_seg2(3) <= \seg2[3]~output_o\;

ww_seg2(4) <= \seg2[4]~output_o\;

ww_seg2(5) <= \seg2[5]~output_o\;

ww_seg2(6) <= \seg2[6]~output_o\;

ww_bar <= \bar~output_o\;

ww_R(0) <= \R[0]~output_o\;

ww_R(1) <= \R[1]~output_o\;

ww_R(2) <= \R[2]~output_o\;

ww_R(3) <= \R[3]~output_o\;

ww_G(0) <= \G[0]~output_o\;

ww_G(1) <= \G[1]~output_o\;

ww_G(2) <= \G[2]~output_o\;

ww_G(3) <= \G[3]~output_o\;

ww_B(0) <= \B[0]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(3) <= \B[3]~output_o\;
END structure;


