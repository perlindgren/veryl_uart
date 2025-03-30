# build the veryl project, note veryl currently outputs built files 
set build [exec veryl build 2>/dev/null]

# Vivado in project mode is less bad, pick part here, we use arty a35t dev board
create_project uart ../xilinx_prj -force -part xc7a35ticsg324-1L;

# add source files
add_files -norecurse -fileset [current_fileset] "./ip/clk_wiz_0.xci"

set source_files [exec cat ../veryl_uart.f]
add_files -norecurse -fileset [current_fileset] $source_files

# add constraints
add_files -norecurse -fileset constrs_1 "./constraints/ARTY.xdc"

set_property verilog_define [list \
    TARGET_FPGA \
    TARGET_SYNTHESIS \
    TARGET_VIVADO \
    TARGET_XILINX \
] [current_fileset]

set_property verilog_define [list \
    TARGET_FPGA \
    TARGET_SYNTHESIS \
    TARGET_VIVADO \
    TARGET_XILINX \
] [current_fileset -simset]

# generate a reasonable compile order
update_compile_order -fileset [current_fileset]

# set path to xilinx_prj
cd ../xilinx_prj
# start Vivado GUI (this can be omitted)
start_gui

