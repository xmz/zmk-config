#!/usr/bin/bash

SHIELD="kyria_rev2"
ARGS=""

west build ${ARGS} -s ../app -d .build/left -b nice_nano_v2 -- -DSHIELD=${SHIELD}_left -DZMK_CONFIG=$(pwd)/config

cp -r .build/left/zephyr/zmk.uf2 zmk_${SHIELD}_left.uf2

west build ${ARGS} -s ../app -d .build/right -b nice_nano_v2 -- -DSHIELD=${SHIELD}_right -DZMK_CONFIG=$(pwd)/config

cp -r .build/right/zephyr/zmk.uf2 zmk_${SHIELD}_right.uf2
