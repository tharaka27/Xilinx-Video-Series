// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jul 27 10:33:59 2020
// Host        : LAPTOP-DR5BCRPM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ VGA_source_bd_VGA_SOURCE_0_0_stub.v
// Design      : VGA_source_bd_VGA_SOURCE_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "VGA_SOURCE,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk_108MHz, red_data_out, green_data_out, 
  blue_data_out, active_video_out, hsync_out, vsync_out)
/* synthesis syn_black_box black_box_pad_pin="clk_108MHz,red_data_out[7:0],green_data_out[7:0],blue_data_out[7:0],active_video_out,hsync_out,vsync_out" */;
  input clk_108MHz;
  output [7:0]red_data_out;
  output [7:0]green_data_out;
  output [7:0]blue_data_out;
  output active_video_out;
  output hsync_out;
  output vsync_out;
endmodule
