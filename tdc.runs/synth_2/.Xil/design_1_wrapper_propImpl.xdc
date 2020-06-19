set_property SRC_FILE_INFO {cfile:C:/Users/ressw/Documents/School/ESE498/retest/ESE498/tdc.srcs/constrs_1/new/zedboard.xdc rfile:../../../tdc.srcs/constrs_1/new/zedboard.xdc id:1} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/ressw/Documents/School/ESE498/retest/ESE498/tdc.srcs/constrs_1/new/platform.xdc rfile:../../../tdc.srcs/constrs_1/new/platform.xdc id:2} [current_design]
set_property src_info {type:XDC file:1 line:88 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y11 [get_ports trigger_0]
set_property src_info {type:XDC file:2 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_tdc1
resize_pblock [get_pblocks pblock_tdc1] -add {CLOCKREGION_X0Y0:CLOCKREGION_X0Y0}
set_property src_info {type:XDC file:2 line:2 export:INPUT save:INPUT read:READ} [current_design]
add_cells_to_pblock [get_pblocks pblock_tdc1] [get_cells -quiet [list design_1_i/top_0/inst/tdc1]]
