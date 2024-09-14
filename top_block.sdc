# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Wed Nov 08 16:14:13 IST 2023

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design top

create_clock -name "clk" -period 2.0 -waveform {0.0 1.0} [get_ports clk]
set_clock_transition 0.1 [get_clocks clk]
set_load -pin_load 0.15 [get_ports {mac_out[7]}]
set_load -pin_load 0.15 [get_ports {mac_out[6]}]
set_load -pin_load 0.15 [get_ports {mac_out[5]}]
set_load -pin_load 0.15 [get_ports {mac_out[4]}]
set_load -pin_load 0.15 [get_ports {mac_out[3]}]
set_load -pin_load 0.15 [get_ports {mac_out[2]}]
set_load -pin_load 0.15 [get_ports {mac_out[1]}]
set_load -pin_load 0.15 [get_ports {mac_out[0]}]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay -max 0.8 [get_ports rst]
set_max_fanout 20.000 [current_design]
set_input_transition 0.12 [get_ports {a[3]}]
set_input_transition 0.12 [get_ports {a[2]}]
set_input_transition 0.12 [get_ports {a[1]}]
set_input_transition 0.12 [get_ports {a[0]}]
set_input_transition 0.12 [get_ports {b[3]}]
set_input_transition 0.12 [get_ports {b[2]}]
set_input_transition 0.12 [get_ports {b[1]}]
set_input_transition 0.12 [get_ports {b[0]}]
set_input_transition 0.12 [get_ports clk]
set_input_transition 0.12 [get_ports rst]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.01 [get_ports clk]
set_clock_uncertainty -hold 0.01 [get_ports clk]
