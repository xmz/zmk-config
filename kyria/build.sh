#!/usr/bin/bash

SHIELD="kyria_rev2"
ARGS="-p"

west build ${ARGS} -s ../../app -d .build/right -b nice_nano_v2 -- -DSHIELD=${SHIELD}_right -DZMK_CONFIG=$(pwd)/config && \
cp -r .build/right/zephyr/zmk.uf2 zmk_${SHIELD}_right.uf2 && \
west build ${ARGS} -s ../../app -d .build/left -b nice_nano_v2 -- -DSHIELD=${SHIELD}_left -DZMK_CONFIG=$(pwd)/config && \
cp -r .build/left/zephyr/zmk.uf2 zmk_${SHIELD}_left.uf2

#west build -s ../../app -d .build/reset -b nice_nano_v2 -- -DSHIELD=settings_reset && cp -r .build/reset/zephyr/zmk.uf2 zmk_settings_reset.uf2
