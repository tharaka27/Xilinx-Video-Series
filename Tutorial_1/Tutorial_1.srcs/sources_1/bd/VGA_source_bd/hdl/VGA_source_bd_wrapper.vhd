--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Mon Jul 27 10:10:30 2020
--Host        : LAPTOP-DR5BCRPM running 64-bit major release  (build 9200)
--Command     : generate_target VGA_source_bd_wrapper.bd
--Design      : VGA_source_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity VGA_source_bd_wrapper is
  port (
    blue_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_in1 : in STD_LOGIC;
    green_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    hsync_out : out STD_LOGIC;
    red_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vsync_out : out STD_LOGIC
  );
end VGA_source_bd_wrapper;

architecture STRUCTURE of VGA_source_bd_wrapper is
  component VGA_source_bd is
  port (
    red_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    green_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    blue_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    hsync_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  end component VGA_source_bd;
begin
VGA_source_bd_i: component VGA_source_bd
     port map (
      blue_data_out(7 downto 0) => blue_data_out(7 downto 0),
      clk_in1 => clk_in1,
      green_data_out(7 downto 0) => green_data_out(7 downto 0),
      hsync_out => hsync_out,
      red_data_out(7 downto 0) => red_data_out(7 downto 0),
      vsync_out => vsync_out
    );
end STRUCTURE;
