set_global_assignment -entity "ClockDivider" -library "lib_ClockDivider" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "ClockDivider" -library "lib_ClockDivider" -name IP_TOOL_VERSION "19.1"
set_global_assignment -entity "ClockDivider" -library "lib_ClockDivider" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_ClockDivider" -name SPD_FILE [file join $::quartus(sip_path) "ClockDivider.spd"]

set_global_assignment -library "lib_ClockDivider" -name MISC_FILE [file join $::quartus(sip_path) "ClockDivider_sim/ClockDivider.vho"]
