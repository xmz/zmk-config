#!/usr/bin/bash

SHIELD="splitkb_aurora_lily58"
ARGS="-p"

if [ ! -z $1 ]
then
    SHIELD=$1
fi

DIR=${SHIELD}

if [ -d ${DIR} ]
then
    if [ -f ${DIR}/.build_vars ]
    then
        source ${DIR}/.build_vars
    fi
fi


west build ${ARGS} -s ../app -d .build/${DIR}_right -b nice_nano_v2 -- -DSHIELD="${SHIELD}_right${SHIELDS}" -DZMK_CONFIG=$(pwd)/${DIR} && \
cp -r .build/${DIR}_right/zephyr/zmk.uf2 zmk_${DIR}_right.uf2 && \
west build ${ARGS} -s ../app -d .build/${DIR}_left -b nice_nano_v2 -- -DSHIELD="${SHIELD}_left${SHIELDS}" -DZMK_CONFIG=$(pwd)/${DIR} && \
cp -r .build/${DIR}_left/zephyr/zmk.uf2 zmk_${DIR}_left.uf2

#west build -s ../../app -d .build/reset -b nice_nano_v2 -- -DSHIELD=settings_reset && cp -r .build/reset/zephyr/zmk.uf2 zmk_settings_reset.uf2
