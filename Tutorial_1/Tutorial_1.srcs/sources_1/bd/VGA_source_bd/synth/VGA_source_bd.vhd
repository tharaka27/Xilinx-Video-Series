--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Mon Jul 27 10:10:30 2020
--Host        : LAPTOP-DR5BCRPM running 64-bit major release  (build 9200)
--Command     : generate_target VGA_source_bd.bd
--Design      : VGA_source_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity VGA_source_bd is
  port (
    blue_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_in1 : in STD_LOGIC;
    green_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    hsync_out : out STD_LOGIC;
    red_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vsync_out : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of VGA_source_bd : entity is "VGA_source_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=VGA_source_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of VGA_source_bd : entity is "VGA_source_bd.hwdef";
end VGA_source_bd;

architecture STRUCTURE of VGA_source_bd is
  component VGA_source_bd_VGA_SOURCE_0_0 is
  port (
    clk_108MHz : in STD_LOGIC;
    red_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    green_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    blue_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    active_video_out : out STD_LOGIC;
    hsync_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC
  );
  end component VGA_source_bd_VGA_SOURCE_0_0;
  component VGA_source_bd_clk_wiz_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component VGA_source_bd_clk_wiz_0;
  signal VGA_SOURCE_0_blue_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal VGA_SOURCE_0_green_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal VGA_SOURCE_0_hsync_out : STD_LOGIC;
  signal VGA_SOURCE_0_red_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal VGA_SOURCE_0_vsync_out : STD_LOGIC;
  signal clk_in1_0_1 : STD_LOGIC;
  signal clk_wiz_clk_out1 : STD_LOGIC;
  signal NLW_VGA_SOURCE_0_active_video_out_UNCONNECTED : STD_LOGIC;
  signal NLW_clk_wiz_locked_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_in1 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_IN1 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_in1 : signal is "XIL_INTERFACENAME CLK.CLK_IN1, CLK_DOMAIN VGA_source_bd_clk_in1_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
begin
  blue_data_out(7 downto 0) <= VGA_SOURCE_0_blue_data_out(7 downto 0);
  clk_in1_0_1 <= clk_in1;
  green_data_out(7 downto 0) <= VGA_SOURCE_0_green_data_out(7 downto 0);
  hsync_out <= VGA_SOURCE_0_hsync_out;
  red_data_out(7 downto 0) <= VGA_SOURCE_0_red_data_out(7 downto 0);
  vsync_out <= VGA_SOURCE_0_vsync_out;
VGA_SOURCE_0: component VGA_source_bd_VGA_SOURCE_0_0
     port map (
      active_video_out => NLW_VGA_SOURCE_0_active_video_out_UNCONNECTED,
      blue_data_out(7 downto 0) => VGA_SOURCE_0_blue_data_out(7 downto 0),
      clk_108MHz => clk_wiz_clk_out1,
      green_data_out(7 downto 0) => VGA_SOURCE_0_green_data_out(7 downto 0),
      hsync_out => VGA_SOURCE_0_hsync_out,
      red_data_out(7 downto 0) => VGA_SOURCE_0_red_data_out(7 downto 0),
      vsync_out => VGA_SOURCE_0_vsync_out
    );
clk_wiz: component VGA_source_bd_clk_wiz_0
     port map (
      clk_in1 => clk_in1_0_1,
      clk_out1 => clk_wiz_clk_out1,
      locked => NLW_clk_wiz_locked_UNCONNECTED,
      reset => '0'
    );
end STRUCTURE;
