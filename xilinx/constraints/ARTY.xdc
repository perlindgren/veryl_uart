## This file is for the ARTY
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal 100 MHz

set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports sysclk]

set_false_path -to [get_ports led[0] ]
set_false_path -to [get_ports led[1] ]
set_false_path -to [get_ports led[2] ]
set_false_path -to [get_ports led[3] ]

# set_false_path -to [get_ports rx]
# set_false_path -from [get_ports tx]


## Rx/Tx
# set_property -dict {PACKAGE_PIN D10 IOSTANDARD LVCMOS33} [get_ports rx]
# set_property -dict {PACKAGE_PIN A9 IOSTANDARD LVCMOS33} [get_ports tx]

## LEDs 
set_property -dict {PACKAGE_PIN H5 IOSTANDARD LVCMOS33}  [get_ports led[0] ]
set_property -dict {PACKAGE_PIN J5 IOSTANDARD LVCMOS33}  [get_ports led[1] ]
set_property -dict {PACKAGE_PIN T9 IOSTANDARD LVCMOS33}  [get_ports led[2] ]
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports led[3] ]