--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
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
-- Design Name: VGA Source
-- Module Name: VGA_Source - Behavioral
-- Project Name: VGA Source Emulation
-- Target Devices: All
-- Tool Versions: 2017.4
-- Description: 
--  Emulate an VGA Source
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY VGA_SOURCE IS
    PORT ( 
       clk_108MHz           : IN STD_LOGIC;
       red_data_out         : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
       green_data_out       : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
       blue_data_out        : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
       active_video_out     : OUT STD_LOGIC;
       hsync_out            : OUT STD_LOGIC;
       vsync_out            : OUT STD_LOGIC
      );
END VGA_SOURCE;

ARCHITECTURE Behavioral OF VGA_SOURCE IS

SIGNAL active_video, clk    : STD_LOGIC := '0';
SIGNAL line_counter         : STD_LOGIC_VECTOR(10 DOWNTO 0) := (OTHERS => '0');
SIGNAL pixel_counter        : STD_LOGIC_VECTOR(11 DOWNTO 0) := (OTHERS => '0');
SIGNAL hsync, vsync         : STD_LOGIC := '0';

SIGNAL red, green, blue     : STD_LOGIC_VECTOR(7 DOWNTO 0);

COMPONENT v_tc_0
    PORT (
        clk                 : IN STD_LOGIC;
        clken               : IN STD_LOGIC;
        gen_clken           : IN STD_LOGIC;
        hsync_out           : OUT STD_LOGIC;
        vsync_out           : OUT STD_LOGIC;
        active_video_out    : OUT STD_LOGIC;
        resetn              : IN STD_LOGIC;
        fsync_out           : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
END COMPONENT;

BEGIN

clk <= clk_108MHz;
active_video_out <= active_video;
hsync_out <= hsync;
vsync_out <= vsync;

vtc_gen : v_tc_0
    PORT MAP (
        clk     => clk,
        clken   => '1',
        gen_clken => '1',
        hsync_out => hsync,
        vsync_out => vsync,
        active_video_out => active_video,
        resetn => '1',
        fsync_out => OPEN
    );
    
red_data_out    <= red      WHEN active_video = '1' ELSE (OTHERS => '0');
green_data_out  <= green    WHEN active_video = '1' ELSE (OTHERS => '0');
blue_data_out   <= blue     WHEN active_video = '1' ELSE (OTHERS => '0');
    
PROCESS(clk)
BEGIN
    IF rising_edge(clk) THEN
        IF(active_video = '1') THEN
            pixel_counter   <= pixel_counter + '1';
            
        ELSE            
            IF(pixel_counter >= "010011111111") THEN
                pixel_counter <= (OTHERS => '0');
                line_counter  <= line_counter + '1';
            END IF;
            
            IF(line_counter >= "01111111111") THEN
                line_counter <= (others => '0');
            END IF;
            
        END IF;
        
    END IF;
    
END PROCESS;

PROCESS(clk)
BEGIN
    IF rising_edge(clk) THEN
        IF (pixel_counter < "000010110111") then    --White
            red     <= (OTHERS => '1');
            green   <= (OTHERS => '1');
            blue    <= (OTHERS => '1');
        ELSIF (pixel_counter < "000101101110") then --Yellow
            red     <= (OTHERS => '1');
            green   <= (OTHERS => '1');
            blue    <= (OTHERS => '0');
        ELSIF (pixel_counter < "000101101110") then --cyan
            red     <= (OTHERS => '0');
            green   <= (OTHERS => '1');
            blue    <= (OTHERS => '1');
        ELSIF (pixel_counter < "001000100101") then --green
            red     <= (OTHERS => '0');
            green   <= (OTHERS => '1');
            blue    <= (OTHERS => '0');
        ELSIF (pixel_counter < "001011011100") then --magenta
            red     <= (OTHERS => '1');
            green   <= (OTHERS => '0');
            blue    <= (OTHERS => '1');
        ELSIF (pixel_counter < "001110010011") then --red
            red     <= (OTHERS => '1');
            green   <= (OTHERS => '0');
            blue    <= (OTHERS => '0');
        ELSIF (pixel_counter < "010001001010") then --blue
            red     <= (OTHERS => '0');
            green   <= (OTHERS => '0');
            blue    <= (OTHERS => '1');
        END IF;
        
    END IF;
    
END PROCESS;


END Behavioral;
