




create_pblock pblock_tdc1
add_cells_to_pblock [get_pblocks pblock_tdc1] [get_cells -quiet [list design_1_i/top_0/inst/tdc1]]
resize_pblock [get_pblocks pblock_tdc1] -add {CLOCKREGION_X1Y2:CLOCKREGION_X1Y2}
