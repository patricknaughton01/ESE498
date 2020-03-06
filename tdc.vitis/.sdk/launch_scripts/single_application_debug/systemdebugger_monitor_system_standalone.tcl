connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248AC88AA" && level==0} -index 1
fpga -file /home/patricknaughton01/Documents/WashU/School/Sem6/ESE498/tdc/tdc.vitis/monitor/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/patricknaughton01/Documents/WashU/School/Sem6/ESE498/tdc/tdc.vitis/monitor_hw/export/monitor_hw/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/patricknaughton01/Documents/WashU/School/Sem6/ESE498/tdc/tdc.vitis/monitor/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/patricknaughton01/Documents/WashU/School/Sem6/ESE498/tdc/tdc.vitis/monitor/Debug/monitor.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
