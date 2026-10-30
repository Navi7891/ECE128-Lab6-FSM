set_property -dict { PACKAGE_PIN W5 IOSTANDARD LVCMOS33 } [get_ports {CLK}]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {CLK}]
set_property -dict { PACKAGE_PIN U18 IOSTANDARD LVCMOS33 } [get_ports {RAW}]
set_property -dict { PACKAGE_PIN U16 IOSTANDARD LVCMOS33 } [get_ports {LED}]
