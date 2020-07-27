-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:VGA_SOURCE:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY VGA_source_bd_VGA_SOURCE_0_0 IS
  PORT (
    clk_108MHz : IN STD_LOGIC;
    red_data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    green_data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    blue_data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    active_video_out : OUT STD_LOGIC;
    hsync_out : OUT STD_LOGIC;
    vsync_out : OUT STD_LOGIC
  );
END VGA_source_bd_VGA_SOURCE_0_0;

ARCHITECTURE VGA_source_bd_VGA_SOURCE_0_0_arch OF VGA_source_bd_VGA_SOURCE_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF VGA_source_bd_VGA_SOURCE_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT VGA_SOURCE IS
    PORT (
      clk_108MHz : IN STD_LOGIC;
      red_data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      green_data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      blue_data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      active_video_out : OUT STD_LOGIC;
      hsync_out : OUT STD_LOGIC;
      vsync_out : OUT STD_LOGIC
    );
  END COMPONENT VGA_SOURCE;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF VGA_source_bd_VGA_SOURCE_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk_108MHz: SIGNAL IS "XIL_INTERFACENAME clk_108MHz, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk_108MHz: SIGNAL IS "xilinx.com:signal:clock:1.0 clk_108MHz CLK";
BEGIN
  U0 : VGA_SOURCE
    PORT MAP (
      clk_108MHz => clk_108MHz,
      red_data_out => red_data_out,
      green_data_out => green_data_out,
      blue_data_out => blue_data_out,
      active_video_out => active_video_out,
      hsync_out => hsync_out,
      vsync_out => vsync_out
    );
END VGA_source_bd_VGA_SOURCE_0_0_arch;
