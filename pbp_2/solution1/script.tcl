############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project pbp_2
set_top top
add_files ../../Users/lin/Desktop/HLS_Final/pbp_2/perceptronBranchPredictor.h
add_files ../../Users/lin/Desktop/HLS_Final/pbp_2/perceptronBranchPredictor.cpp
add_files -tb ../../Users/lin/Desktop/HLS_Final/pbp_2/testbench.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
#source "./pbp_2/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
