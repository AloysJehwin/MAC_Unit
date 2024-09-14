#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed Nov  8 16:15:56 2023                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.15-s110_1 (64bit) 09/23/2022 13:08 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.15-s110_1 NR220912-2004/21_15-UB (database version 18.20.592) {superthreading v2.17}
#@(#)CDS: AAE 21.15-s039 (64bit) 09/23/2022 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.15-s038_1 () Sep 20 2022 11:42:13 ( )
#@(#)CDS: SYNTECH 21.15-s012_1 () Sep  5 2022 10:25:51 ( )
#@(#)CDS: CPE v21.15-s076
#@(#)CDS: IQuantus/TQuantus 21.1.1-s867 (64bit) Sun Jun 26 22:12:54 PDT 2022 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
win
save_global Default.globals
set init_gnd_net VSS
set init_lef_file {../../install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated.lef ../../install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated_ref.lef}
set init_design_settop 0
set init_verilog top_netlist.v
set init_mmmc_file Default.view
set init_pwr_net VDD
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site gsclib090site -r 1 0.6 6 6 6 6
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site gsclib090site -r 0.96835443038 0.599404 6.09 6.09 6.09 6.09
uiSetTool select
getIoFlowFlag
fit
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename * -hierarchicalInstance {}
globalNetConnect VSS -type pgpin -pin VSS -instanceBasename * -hierarchicalInstance {}
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename * -hierarchicalInstance {}
globalNetConnect VSS -type pgpin -pin VSS -instanceBasename * -hierarchicalInstance {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal9 bottom Metal9 left Metal8 right Metal9} -width {top 0.6 bottom 0.6 left 0.6 right 0.6} -spacing {top 0.4 bottom 0.4 left 0.4 right 0.4} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal9 bottom Metal9 left Metal8 right Metal9} -width {top 0.6 bottom 0.6 left 0.6 right 0.6} -spacing {top 0.4 bottom 0.4 left 0.4 right 0.4} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal9 -direction horizontal -width 0.6 -spacing 0.4 -number_of_sets 2 -start_from bottom -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal8 -direction vertical -width 0.6 -spacing 0.4 -number_of_sets 2 -start_from left -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal8 -direction vertical -width 0.6 -spacing 0.4 -number_of_sets 2 -start_from left -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
zoomBox 22.24450 27.05750 71.49350 54.65850
zoomBox 40.14400 39.09950 61.99750 51.34700
zoomBox 27.96400 29.52950 69.82950 52.99250
zoomBox 23.49250 25.76350 72.74600 53.36700
zoomBox 35.23350 37.68450 60.94450 52.09400
zoomBox 41.79200 43.90750 55.21350 51.42950
zoomBox 44.95250 46.46000 53.19500 51.07950
zoomBox 41.41000 44.25400 54.83250 51.77650
zoomBox 39.79000 43.25300 55.58150 52.10300
zoomBox 26.25100 34.90150 61.84100 54.84750
zoomBox 3.96500 21.25600 72.14350 59.46600
zoomBox -38.72900 -4.45450 91.88000 68.74400
zoomBox -67.30600 -7.66700 113.46750 93.64550
zoomBox -53.04900 -7.25450 100.60850 78.86100
zoomBox -40.93050 -6.90400 89.67850 66.29450
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal9(9) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal9(9) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal9(9) }
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal9(9) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal9(9) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal9(9) }
addWellTap -cell FILL1 -cellInterval 35 -prefix WELLTAP
addWellTap -cell FILL1 -cellInterval 35 -prefix WELLTAP
addWellTap -cell FILL2 -cellInterval 35 -prefix WELLTAP
addWellTap -cell FILL2 -cellInterval 35 -prefix WELLTAP
addEndCap -preCap FILL1 -postCap FILL2 -prefix ENDCAP
addEndCap -preCap FILL1 -postCap FILL2 -prefix ENDCAP
setPlaceMode -fp false
place_design
setPlaceMode -fp false
place_design
zoomBox -9.05600 5.28650 59.12350 43.49700
zoomBox -3.83450 7.28350 54.11800 39.76250
zoomBox 13.36950 11.30800 39.08400 25.71950
zoomBox -15.74650 4.53600 64.46750 49.49100
zoomBox -32.20650 0.70750 78.81700 62.92950
setPlaceMode -fp true
place_design
setPlaceMode -fp false
place_design -noPrePlaceOpt -incremental
setPlaceMode -fp false
place_design
setPlaceMode -fp false
place_design
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setNanoRouteMode -quiet -droutePostRouteWidenWireRule LEFDefaultRouteSpec_gpdk090
setNanoRouteMode -quiet -timingEngine {}
setUsefulSkewMode -noBoundary false -maxAllowedDelay 1
setPlaceMode -reset
setPlaceMode -congEffort auto -timingDriven 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 1 -moduleAwareSpare 0 -preserveRouting 1 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setUsefulSkewMode -noBoundary false -maxAllowedDelay 1
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setUsefulSkewMode -noBoundary false -maxAllowedDelay 1
setPlaceMode -fp false
place_design
zoomBox -62.23300 -7.11450 91.43300 79.00600
setPlaceMode -fp false
place_design
zoomBox -44.38550 -5.92600 86.23050 67.27650
zoomBox -29.21550 -4.91600 81.80900 57.30650
zoomBox -44.38600 -5.92650 86.23100 67.27650
zoomBox -163.29500 -41.13150 183.03400 152.96500
zoomBox -44.12350 11.91850 86.49450 85.12200
zoomBox -4.01550 27.88750 53.94100 60.36850
zoomBox 11.04100 32.66400 41.29600 49.62000
zoomBox 8.91950 31.53100 44.51400 51.47950
zoomBox 3.48800 28.63000 52.75400 56.24050
zoomBox 12.10850 33.71450 47.70400 53.66350
zoomBox 24.67800 41.01200 40.47250 49.86400
zoomBox 27.45950 42.59000 38.87200 48.98600
zoomBox 19.12550 39.66150 44.84750 54.07700
zoomBox 5.40750 35.01400 54.68300 62.63000
zoomBox -5.61600 31.30200 62.58600 69.52500
zoomBox -12.61550 28.95150 67.62200 73.92000
zoomBox -20.85100 26.18600 73.54700 79.09050
zoomBox -70.93800 9.72600 109.89900 111.07400
zoomBox -165.72600 -19.86150 180.70200 174.29050
zoomBox -69.28400 -8.66400 111.55450 92.68500
zoomBox -17.40650 -1.50400 76.99350 51.40150
zoomBox 8.37750 3.45400 57.65500 31.07100
zoomBox 21.51100 6.12150 47.23450 20.53800
zoomBox 29.32450 7.74200 40.73950 14.13950
zoomBox 32.30400 8.36000 38.26350 11.70000
zoomBox 25.39500 7.08900 43.98650 17.50850
zoomBox 8.60250 3.99950 57.89750 31.62650
zoomBox -16.08550 -0.54100 78.34950 52.38400
zoomBox -35.92350 -4.19000 94.78300 69.06300
zoomBox -19.95000 -0.12400 74.48600 52.80150
zoomBox -27.30350 -1.88500 83.79750 60.38050
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
create_ccopt_clock_tree_spec
ctd_win -side none -id ctd_window -unit_delay
ctd_win -side none -id ctd_window -unit_delay
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithSiDriven 1
setNanoRouteMode -quiet -routeTopRoutingLayer 9
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
setNanoRouteMode -quiet -drouteEndIteration 1
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithSiDriven 1
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
report_area
report_power
reset_parasitics
extractRC
reset_parasitics
extractRC
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report top.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report top.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
zoomSelected
zoomBox -2.26300 10.00150 65.96750 48.24050
zoomBox -42.10750 -19.27650 138.80500 82.11400
zoomBox -39.99700 -12.73900 113.77850 73.44300
ui_view_box
ui_view_box
dbquery -area {-39.997 -12.739 113.7785 73.443} -objType inst
dbquery -area {-39.997 -12.739 113.7785 73.443} -objType regular
dbquery -area {-39.997 -12.739 113.7785 73.443} -objType special
saveDesign top.enc
saveDesign top.enc
saveDesign top.enc
saveDesign top.enc
saveDesign top.enc
saveNetlist top_route.v
streamOut top.gds -libName DesignLib -units 2000 -mode ALL
streamOut top.gds -libName DesignLib -units 2000 -mode ALL
zoomBox -23.76600 -5.74150 87.33800 56.52550
zoomBox 2.55650 5.60600 44.46100 29.09100
zoomBox 6.97950 7.51250 37.25650 24.48100
zoomBox 7.90200 10.09200 26.49700 20.51350
zoomBox 9.59150 11.43650 19.29900 16.87700
zoomBox 10.31550 11.91750 16.27800 15.25900
zoomBox 10.48850 12.03200 15.55650 14.87250
zoomBox 10.56500 12.23100 14.87350 14.64550
zoomBox 10.62750 12.40300 14.29000 14.45550
zoomBox 10.72600 12.67350 13.37250 14.15650
selectMarker 11.0350 13.2700 11.1150 13.3400 1 1 2
gui_select -rect {11.05500 13.30650 11.25400 13.28650}
deselectAll
selectMarker 11.0350 13.2700 11.1150 13.3400 1 1 2
highlight -index 1
deselectAll
selectMarker 11.0350 13.2700 11.1150 13.3400 1 1 2
deselectAll
selectObject Pin {p03_ain_reg[3]/SE}
zoomBox 11.21500 13.02250 12.21450 13.58250
zoomBox 10.94250 12.82800 12.85800 13.90150
zoomBox 10.42000 12.45500 14.09050 14.51200
zoomBox 9.73400 11.96600 15.71000 15.31500
zoomBox 8.10500 10.80350 19.55450 17.22050
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report top.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
