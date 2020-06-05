# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CHALLENGE_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CHALLENGE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DELAY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DELAY_CYCLES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INITIAL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MEAN_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MEM_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_READS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "READ_MAX_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "REC_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RUNS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VAR_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VIRUS_B_SIZE" -parent ${Page_0}


}

proc update_PARAM_VALUE.CHALLENGE_ADDR { PARAM_VALUE.CHALLENGE_ADDR } {
	# Procedure called to update CHALLENGE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CHALLENGE_ADDR { PARAM_VALUE.CHALLENGE_ADDR } {
	# Procedure called to validate CHALLENGE_ADDR
	return true
}

proc update_PARAM_VALUE.CHALLENGE_WIDTH { PARAM_VALUE.CHALLENGE_WIDTH } {
	# Procedure called to update CHALLENGE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CHALLENGE_WIDTH { PARAM_VALUE.CHALLENGE_WIDTH } {
	# Procedure called to validate CHALLENGE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.DELAY { PARAM_VALUE.DELAY } {
	# Procedure called to update DELAY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DELAY { PARAM_VALUE.DELAY } {
	# Procedure called to validate DELAY
	return true
}

proc update_PARAM_VALUE.DELAY_CYCLES { PARAM_VALUE.DELAY_CYCLES } {
	# Procedure called to update DELAY_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DELAY_CYCLES { PARAM_VALUE.DELAY_CYCLES } {
	# Procedure called to validate DELAY_CYCLES
	return true
}

proc update_PARAM_VALUE.INITIAL { PARAM_VALUE.INITIAL } {
	# Procedure called to update INITIAL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INITIAL { PARAM_VALUE.INITIAL } {
	# Procedure called to validate INITIAL
	return true
}

proc update_PARAM_VALUE.MEAN_ADDR { PARAM_VALUE.MEAN_ADDR } {
	# Procedure called to update MEAN_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEAN_ADDR { PARAM_VALUE.MEAN_ADDR } {
	# Procedure called to validate MEAN_ADDR
	return true
}

proc update_PARAM_VALUE.MEM_WIDTH { PARAM_VALUE.MEM_WIDTH } {
	# Procedure called to update MEM_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEM_WIDTH { PARAM_VALUE.MEM_WIDTH } {
	# Procedure called to validate MEM_WIDTH
	return true
}

proc update_PARAM_VALUE.NUM_READS { PARAM_VALUE.NUM_READS } {
	# Procedure called to update NUM_READS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_READS { PARAM_VALUE.NUM_READS } {
	# Procedure called to validate NUM_READS
	return true
}

proc update_PARAM_VALUE.READ_MAX_ADDR { PARAM_VALUE.READ_MAX_ADDR } {
	# Procedure called to update READ_MAX_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.READ_MAX_ADDR { PARAM_VALUE.READ_MAX_ADDR } {
	# Procedure called to validate READ_MAX_ADDR
	return true
}

proc update_PARAM_VALUE.REC_ADDR { PARAM_VALUE.REC_ADDR } {
	# Procedure called to update REC_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.REC_ADDR { PARAM_VALUE.REC_ADDR } {
	# Procedure called to validate REC_ADDR
	return true
}

proc update_PARAM_VALUE.RUNS { PARAM_VALUE.RUNS } {
	# Procedure called to update RUNS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RUNS { PARAM_VALUE.RUNS } {
	# Procedure called to validate RUNS
	return true
}

proc update_PARAM_VALUE.VAR_ADDR { PARAM_VALUE.VAR_ADDR } {
	# Procedure called to update VAR_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VAR_ADDR { PARAM_VALUE.VAR_ADDR } {
	# Procedure called to validate VAR_ADDR
	return true
}

proc update_PARAM_VALUE.VIRUS_B_SIZE { PARAM_VALUE.VIRUS_B_SIZE } {
	# Procedure called to update VIRUS_B_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VIRUS_B_SIZE { PARAM_VALUE.VIRUS_B_SIZE } {
	# Procedure called to validate VIRUS_B_SIZE
	return true
}


proc update_MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.INITIAL { MODELPARAM_VALUE.INITIAL PARAM_VALUE.INITIAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INITIAL}] ${MODELPARAM_VALUE.INITIAL}
}

proc update_MODELPARAM_VALUE.DELAY { MODELPARAM_VALUE.DELAY PARAM_VALUE.DELAY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DELAY}] ${MODELPARAM_VALUE.DELAY}
}

proc update_MODELPARAM_VALUE.READ_MAX_ADDR { MODELPARAM_VALUE.READ_MAX_ADDR PARAM_VALUE.READ_MAX_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.READ_MAX_ADDR}] ${MODELPARAM_VALUE.READ_MAX_ADDR}
}

proc update_MODELPARAM_VALUE.REC_ADDR { MODELPARAM_VALUE.REC_ADDR PARAM_VALUE.REC_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.REC_ADDR}] ${MODELPARAM_VALUE.REC_ADDR}
}

proc update_MODELPARAM_VALUE.MEM_WIDTH { MODELPARAM_VALUE.MEM_WIDTH PARAM_VALUE.MEM_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEM_WIDTH}] ${MODELPARAM_VALUE.MEM_WIDTH}
}

proc update_MODELPARAM_VALUE.DELAY_CYCLES { MODELPARAM_VALUE.DELAY_CYCLES PARAM_VALUE.DELAY_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DELAY_CYCLES}] ${MODELPARAM_VALUE.DELAY_CYCLES}
}

proc update_MODELPARAM_VALUE.VIRUS_B_SIZE { MODELPARAM_VALUE.VIRUS_B_SIZE PARAM_VALUE.VIRUS_B_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VIRUS_B_SIZE}] ${MODELPARAM_VALUE.VIRUS_B_SIZE}
}

proc update_MODELPARAM_VALUE.CHALLENGE_WIDTH { MODELPARAM_VALUE.CHALLENGE_WIDTH PARAM_VALUE.CHALLENGE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CHALLENGE_WIDTH}] ${MODELPARAM_VALUE.CHALLENGE_WIDTH}
}

proc update_MODELPARAM_VALUE.CHALLENGE_ADDR { MODELPARAM_VALUE.CHALLENGE_ADDR PARAM_VALUE.CHALLENGE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CHALLENGE_ADDR}] ${MODELPARAM_VALUE.CHALLENGE_ADDR}
}

proc update_MODELPARAM_VALUE.RUNS { MODELPARAM_VALUE.RUNS PARAM_VALUE.RUNS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RUNS}] ${MODELPARAM_VALUE.RUNS}
}

proc update_MODELPARAM_VALUE.MEAN_ADDR { MODELPARAM_VALUE.MEAN_ADDR PARAM_VALUE.MEAN_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEAN_ADDR}] ${MODELPARAM_VALUE.MEAN_ADDR}
}

proc update_MODELPARAM_VALUE.VAR_ADDR { MODELPARAM_VALUE.VAR_ADDR PARAM_VALUE.VAR_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VAR_ADDR}] ${MODELPARAM_VALUE.VAR_ADDR}
}

proc update_MODELPARAM_VALUE.NUM_READS { MODELPARAM_VALUE.NUM_READS PARAM_VALUE.NUM_READS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_READS}] ${MODELPARAM_VALUE.NUM_READS}
}

