# RTL Script to run Basic Synthesis Flow
set_db init_lib_search_path /home/install/FOUNDRY/digital/90nm/dig/lib   
set_db hdl_search_path macpro
set_db library slow.lib
read_hdl top.v
elaborate 
read_sdc constraints_sdc.sdc
set_db syn_generic_effort medium
syn_generic
set_db syn_map_effort medium
syn_map
set_db syn_opt_effort medium
syn_opt


write_hdl > top_netlist.v
write_sdc > top_block.sdc
report_area > top_area.rep
report_gates > top_gate.rep
report_power > top_power.rep
report_timing > top_timing.rep
gui_show


