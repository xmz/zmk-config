#!/usr/bin/bash

SHIELD="kyria_rev2"
ARGS="-p"

CONFIG=$(pwd)/config

cd ../app
west build ${ARGS} -d .build/left -b nice_nano_v2 -- -DSHIELD=${SHIELD}_left -DZMK_CONFIG=${CONFIG} && \
cp -r .build/left/zephyr/zmk.uf2 ${CONFIG}/../zmk_${SHIELD}_left.uf2

west build ${ARGS} -d .build/right -b nice_nano_v2 -- -DSHIELD=${SHIELD}_right -DZMK_CONFIG=${CONFIG} && \
cp -r .build/right/zephyr/zmk.uf2 ${CONFIG}/../zmk_${SHIELD}_right.uf2

cd ${CONFIG}/..

#west build -s ../app -d .build/reset -b nice_nano_v2 -- -DSHIELD=settings_reset && \
#cp -r .build/reset/zephyr/zmk.uf2 zmk_settings_reset.uf2