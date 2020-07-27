-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Jul 27 10:34:04 2020
-- Host        : LAPTOP-DR5BCRPM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/ASUS/Desktop/Vivado video
--               series/Tutorial_1/Tutorial_1.srcs/sources_1/bd/VGA_source_bd/ip/VGA_source_bd_VGA_SOURCE_0_0/VGA_source_bd_VGA_SOURCE_0_0_stub.vhdl}
-- Design      : VGA_source_bd_VGA_SOURCE_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity VGA_source_bd_VGA_SOURCE_0_0 is
  Port ( 
    clk_108MHz : in STD_LOGIC;
    red_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    green_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    blue_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    active_video_out : out STD_LOGIC;
    hsync_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC
  );

end VGA_source_bd_VGA_SOURCE_0_0;

architecture stub of VGA_source_bd_VGA_SOURCE_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_108MHz,red_data_out[7:0],green_data_out[7:0],blue_data_out[7:0],active_video_out,hsync_out,vsync_out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "VGA_SOURCE,Vivado 2018.3";
begin
end;
