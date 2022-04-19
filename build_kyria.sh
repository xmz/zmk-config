#!/usr/bin/bash

SHIELD="kyria"
ARGS=""

west build ${ARGS} -s ../app -d .build/left -b nice_nano_v2 -- -DSHIELD=${SHIELD}_left -DZMK_CONFIG=$(pwd)/config

west build ${ARGS} -s ../app -d .build/right -b nice_nano_v2 -- -DSHIELD=${SHIELD}_right -DZMK_CONFIG=$(pwd)/config