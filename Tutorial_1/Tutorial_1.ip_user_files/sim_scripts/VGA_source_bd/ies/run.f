-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx2/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx2/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../Tutorial_1.srcs/sources_1/bd/VGA_source_bd/sim/VGA_source_bd.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

