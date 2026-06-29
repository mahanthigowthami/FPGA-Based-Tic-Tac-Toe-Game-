## Clock
set_property PACKAGE_PIN Y9 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

## Player position switches
set_property PACKAGE_PIN F22 [get_ports {player_position[0]}]
set_property PACKAGE_PIN G22 [get_ports {player_position[1]}]
set_property PACKAGE_PIN H22 [get_ports {player_position[2]}]
set_property PACKAGE_PIN F21 [get_ports {player_position[3]}]

## Computer position switches
set_property PACKAGE_PIN H19 [get_ports {computer_position[0]}]
set_property PACKAGE_PIN H18 [get_ports {computer_position[1]}]
set_property PACKAGE_PIN H17 [get_ports {computer_position[2]}]
set_property PACKAGE_PIN M15 [get_ports {computer_position[3]}]

## Buttons
set_property PACKAGE_PIN R18 [get_ports reset]
set_property PACKAGE_PIN P16 [get_ports play]
set_property PACKAGE_PIN R16 [get_ports pc]

## LEDs
set_property PACKAGE_PIN U14 [get_ports {winner[0]}]
set_property PACKAGE_PIN U19 [get_ports {winner[1]}]
set_property PACKAGE_PIN V22 [get_ports illegal_move]
set_property PACKAGE_PIN V23 [get_ports no_space]