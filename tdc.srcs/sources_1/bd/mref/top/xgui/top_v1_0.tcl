# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ABS_READ_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DELAY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FFT_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FREQ_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INITIAL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MEM_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PP_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "READ_MAX_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "REC_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RMS_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SIM" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VIRUS_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VIRUS_B_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VIRUS_NUM_B" -parent ${Page_0}


}

proc update_PARAM_VALUE.ABS_READ_MAX { PARAM_VALUE.ABS_READ_MAX } {
	# Procedure called to update ABS_READ_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ABS_READ_MAX { PARAM_VALUE.ABS_READ_MAX } {
	# Procedure called to validate ABS_READ_MAX
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

proc update_PARAM_VALUE.FFT_ADDR { PARAM_VALUE.FFT_ADDR } {
	# Procedure called to update FFT_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FFT_ADDR { PARAM_VALUE.FFT_ADDR } {
	# Procedure called to validate FFT_ADDR
	return true
}

proc update_PARAM_VALUE.FREQ_ADDR { PARAM_VALUE.FREQ_ADDR } {
	# Procedure called to update FREQ_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FREQ_ADDR { PARAM_VALUE.FREQ_ADDR } {
	# Procedure called to validate FREQ_ADDR
	return true
}

proc update_PARAM_VALUE.INITIAL { PARAM_VALUE.INITIAL } {
	# Procedure called to update INITIAL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INITIAL { PARAM_VALUE.INITIAL } {
	# Procedure called to validate INITIAL
	return true
}

proc update_PARAM_VALUE.MEM_WIDTH { PARAM_VALUE.MEM_WIDTH } {
	# Procedure called to update MEM_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEM_WIDTH { PARAM_VALUE.MEM_WIDTH } {
	# Procedure called to validate MEM_WIDTH
	return true
}

proc update_PARAM_VALUE.PP_ADDR { PARAM_VALUE.PP_ADDR } {
	# Procedure called to update PP_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PP_ADDR { PARAM_VALUE.PP_ADDR } {
	# Procedure called to validate PP_ADDR
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

proc update_PARAM_VALUE.RMS_ADDR { PARAM_VALUE.RMS_ADDR } {
	# Procedure called to update RMS_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RMS_ADDR { PARAM_VALUE.RMS_ADDR } {
	# Procedure called to validate RMS_ADDR
	return true
}

proc update_PARAM_VALUE.SIM { PARAM_VALUE.SIM } {
	# Procedure called to update SIM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SIM { PARAM_VALUE.SIM } {
	# Procedure called to validate SIM
	return true
}

proc update_PARAM_VALUE.VIRUS_ADDR { PARAM_VALUE.VIRUS_ADDR } {
	# Procedure called to update VIRUS_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VIRUS_ADDR { PARAM_VALUE.VIRUS_ADDR } {
	# Procedure called to validate VIRUS_ADDR
	return true
}

proc update_PARAM_VALUE.VIRUS_B_SIZE { PARAM_VALUE.VIRUS_B_SIZE } {
	# Procedure called to update VIRUS_B_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VIRUS_B_SIZE { PARAM_VALUE.VIRUS_B_SIZE } {
	# Procedure called to validate VIRUS_B_SIZE
	return true
}

proc update_PARAM_VALUE.VIRUS_NUM_B { PARAM_VALUE.VIRUS_NUM_B } {
	# Procedure called to update VIRUS_NUM_B when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VIRUS_NUM_B { PARAM_VALUE.VIRUS_NUM_B } {
	# Procedure called to validate VIRUS_NUM_B
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

proc update_MODELPARAM_VALUE.FREQ_ADDR { MODELPARAM_VALUE.FREQ_ADDR PARAM_VALUE.FREQ_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FREQ_ADDR}] ${MODELPARAM_VALUE.FREQ_ADDR}
}

proc update_MODELPARAM_VALUE.VIRUS_ADDR { MODELPARAM_VALUE.VIRUS_ADDR PARAM_VALUE.VIRUS_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VIRUS_ADDR}] ${MODELPARAM_VALUE.VIRUS_ADDR}
}

proc update_MODELPARAM_VALUE.MEM_WIDTH { MODELPARAM_VALUE.MEM_WIDTH PARAM_VALUE.MEM_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEM_WIDTH}] ${MODELPARAM_VALUE.MEM_WIDTH}
}

proc update_MODELPARAM_VALUE.PP_ADDR { MODELPARAM_VALUE.PP_ADDR PARAM_VALUE.PP_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PP_ADDR}] ${MODELPARAM_VALUE.PP_ADDR}
}

proc update_MODELPARAM_VALUE.RMS_ADDR { MODELPARAM_VALUE.RMS_ADDR PARAM_VALUE.RMS_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RMS_ADDR}] ${MODELPARAM_VALUE.RMS_ADDR}
}

proc update_MODELPARAM_VALUE.FFT_ADDR { MODELPARAM_VALUE.FFT_ADDR PARAM_VALUE.FFT_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FFT_ADDR}] ${MODELPARAM_VALUE.FFT_ADDR}
}

proc update_MODELPARAM_VALUE.ABS_READ_MAX { MODELPARAM_VALUE.ABS_READ_MAX PARAM_VALUE.ABS_READ_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ABS_READ_MAX}] ${MODELPARAM_VALUE.ABS_READ_MAX}
}

proc update_MODELPARAM_VALUE.VIRUS_NUM_B { MODELPARAM_VALUE.VIRUS_NUM_B PARAM_VALUE.VIRUS_NUM_B } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VIRUS_NUM_B}] ${MODELPARAM_VALUE.VIRUS_NUM_B}
}

proc update_MODELPARAM_VALUE.VIRUS_B_SIZE { MODELPARAM_VALUE.VIRUS_B_SIZE PARAM_VALUE.VIRUS_B_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VIRUS_B_SIZE}] ${MODELPARAM_VALUE.VIRUS_B_SIZE}
}

proc update_MODELPARAM_VALUE.SIM { MODELPARAM_VALUE.SIM PARAM_VALUE.SIM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SIM}] ${MODELPARAM_VALUE.SIM}
}
