if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name SLOW\
   -timing\
    [list ${::IMEX::libVar}/mmmc/slow.lib]
create_library_set -name FAST\
   -timing\
    [list ${::IMEX::libVar}/mmmc/fast.lib]
create_rc_corner -name Rc\
   -cap_table ${::IMEX::libVar}/mmmc/gpdk090.lef.extended.CapTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -qx_tech_file ${::IMEX::libVar}/mmmc/Rc/gpdk090_9l.tch
create_delay_corner -name MIN\
   -library_set FAST\
   -rc_corner Rc
create_delay_corner -name MAX\
   -library_set SLOW\
   -rc_corner Rc
create_constraint_mode -name cons\
   -sdc_files\
    [list /dev/null]
create_analysis_view -name WC -constraint_mode cons -delay_corner MAX
create_analysis_view -name BC -constraint_mode cons -delay_corner MIN
set_analysis_view -setup [list BC] -hold [list WC]
