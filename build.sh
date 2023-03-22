#!/usr/bin/bash

SHIELD="splitkb_aurora_lily58"
ARGS="-p"

if [ ! -z $1 ]
then
    SHIELD=$1
fi

west build ${ARGS} -s ../app -d .build/${SHIELD}_right -b nice_nano_v2 -- -DSHIELD=${SHIELD}_right -DZMK_CONFIG=$(pwd)/${SHIELD} && \
cp -r .build/${SHIELD}_right/zephyr/zmk.uf2 zmk_${SHIELD}_right.uf2 && \
west build ${ARGS} -s ../app -d .build/${SHIELD}_left -b nice_nano_v2 -- -DSHIELD=${SHIELD}_left -DZMK_CONFIG=$(pwd)/${SHIELD} && \
cp -r .build/${SHIELD}_left/zephyr/zmk.uf2 zmk_${SHIELD}_left.uf2

#west build -s ../../app -d .build/reset -b nice_nano_v2 -- -DSHIELD=settings_reset && cp -r .build/reset/zephyr/zmk.uf2 zmk_settings_reset.uf2
