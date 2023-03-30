#!/bin/bash

# Update CMakeLists.txt with
#target_sources_ifdef(CONFIG_ZMK_BEHAVIOR_TRI_STATE app PRIVATE src/behaviors/behavior_tri_state.c)


# Update Kconfig with
#DT_COMPAT_ZMK_BEHAVIOR_TRI_STATE := zmk,behavior-tri-state

#config ZMK_BEHAVIOR_TRI_STATE
#        bool
#        default $(dt_compat_enabled,$(DT_COMPAT_ZMK_BEHAVIOR_TRI_STATE))

ln -sf $(pwd)/zmk,behavior-tri-state.yaml ../../../app/dts/bindings/behaviors/

ln -sf $(pwd)/behavior_tri_state.c ../../../app/src/behaviors/behavior_tri_state.c