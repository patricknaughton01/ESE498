set_property SRC_FILE_INFO {cfile:C:/Users/ressw/Documents/School/ESE498/Utilization/ESE498/tdc.srcs/constrs_1/new/placement.xdc rfile:../../../tdc.srcs/constrs_1/new/placement.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_else
resize_pblock [get_pblocks pblock_else] -add {CLOCKREGION_X1Y2:CLOCKREGION_X1Y2}
set_property src_info {type:XDC file:1 line:3 export:INPUT save:INPUT read:READ} [current_design]
add_cells_to_pblock [get_pblocks pblock_else] [get_cells -quiet [list design_1_i/top_0/inst]]
set_property src_info {type:XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_tdc1
resize_pblock [get_pblocks pblock_tdc1] -add {CLOCKREGION_X1Y0:CLOCKREGION_X1Y0}
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
add_cells_to_pblock [get_pblocks pblock_tdc1] [get_cells -quiet [list design_1_i/top_0/inst/tdc1]]
