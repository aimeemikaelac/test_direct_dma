############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2014 Xilinx Inc. All rights reserved.
############################################################
open_project test_direct_dma
set_top test_direct_dma
add_files test_direct_dma/source/test_direct_dma.cpp
add_files -tb test_direct_dma/source/test_direct_dma_testbench.cpp
open_solution "solution1"
set_part {xc7z010clg400-1}
create_clock -period 10 -name default
source "./test_direct_dma/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level none -rtl verilog -tool auto
export_design -format ip_catalog
