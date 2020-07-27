-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
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
----------------------------------------------------------------------------------
-- Company: Xilinx  
-- Engineer: Florent Werbrouck
-- 
-- Create Date: 04/04/2018 
-- Design Name: VGA_source
-- Module Name: VGA_source_tb - Behavioral
-- Project Name: Xilinx Video Expert Series
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity VGA_source_tb is
end VGA_source_tb;

architecture Behavioral of VGA_source_tb is

signal clk_in : std_logic := '0';
signal red_data_out         :  STD_LOGIC_VECTOR (7 DOWNTO 0);
signal green_data_out       :  STD_LOGIC_VECTOR (7 DOWNTO 0);
signal blue_data_out        :  STD_LOGIC_VECTOR (7 DOWNTO 0);
signal hsync_out            :  STD_LOGIC;
signal vsync_out            :  STD_LOGIC;

COMPONENT VGA_source_bd_wrapper
    PORT ( 
       clk_in1              : IN STD_LOGIC;
       red_data_out         : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
       green_data_out       : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
       blue_data_out        : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
       hsync_out            : OUT STD_LOGIC;
       vsync_out            : OUT STD_LOGIC
      );
END COMPONENT VGA_source_bd_wrapper;

begin

clk_in <= not clk_in after 5ns;

uut: VGA_source_bd_wrapper
    PORT MAP( 
       clk_in1              => clk_in,
       red_data_out         => red_data_out,
       green_data_out       => green_data_out,
       blue_data_out        => blue_data_out,
       hsync_out            => hsync_out,
       vsync_out            => vsync_out
      );


end Behavioral;
