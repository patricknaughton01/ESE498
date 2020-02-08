#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Fri Jan 31 15:43:25 CST 2020
# SW Build 2708876 on Wed Nov  6 21:39:14 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xsim top_tb_func_impl -key {Post-Implementation:sim_1:Functional:top_tb} -tclbatch top_tb.tcl -protoinst "protoinst_files/design_1.protoinst" -view /home/patricknaughton01/Documents/WashU/School/Sem6/ESE498/tdc/top_tb_behav.wcfg -log simulate.log"
xsim top_tb_func_impl -key {Post-Implementation:sim_1:Functional:top_tb} -tclbatch top_tb.tcl -protoinst "protoinst_files/design_1.protoinst" -view /home/patricknaughton01/Documents/WashU/School/Sem6/ESE498/tdc/top_tb_behav.wcfg -log simulate.log
