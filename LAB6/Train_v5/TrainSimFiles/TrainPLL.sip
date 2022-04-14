set_global_assignment -entity "TrainPLL" -library "lib_TrainPLL" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "TrainPLL" -library "lib_TrainPLL" -name IP_TOOL_VERSION "19.1"
set_global_assignment -entity "TrainPLL" -library "lib_TrainPLL" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_TrainPLL" -name SPD_FILE [file join $::quartus(sip_path) "TrainPLL.spd"]

set_global_assignment -library "lib_TrainPLL" -name MISC_FILE [file join $::quartus(sip_path) "TrainPLL_sim/TrainPLL.vho"]
