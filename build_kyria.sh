#!/usr/bin/bash

SHIELD="kyria_rev2"
ARGS=""

if [ -f config/${SHIELD}_left.conf ]
then
    mv config/kyria.conf config/kyria.conf.old
    cat config/kyria.conf.old config/${SHIELD}_left.conf >> config/kyria.conf
fi
west build ${ARGS} -s ../app -d .build/left -b nice_nano_v2 -- -DSHIELD=${SHIELD}_left -DZMK_CONFIG=$(pwd)/config && \
cp -r .build/left/zephyr/zmk.uf2 zmk_${SHIELD}_left.uf2

if [ -f config/kyria.conf.old ]
then
    mv config/kyria.conf.old config/kyria.conf
fi

if [ -f config/${SHIELD}_right.conf ]
then
    mv config/kyria.conf config/kyria.conf.old
    cat config/kyria.conf.old config/${SHIELD}_right.conf >> config/kyria.conf
fi
west build ${ARGS} -s ../app -d .build/right -b nice_nano_v2 -- -DSHIELD=${SHIELD}_right -DZMK_CONFIG=$(pwd)/config && \
cp -r .build/right/zephyr/zmk.uf2 zmk_${SHIELD}_right.uf2

if [ -f config/kyria.conf.old ]
then
    mv config/kyria.conf.old config/kyria.conf
fi

#west build -s ../app -d .build/reset -b nice_nano_v2 -- -DSHIELD=settings_reset && cp -r .build/reset/zephyr/zmk.uf2 zmk_settings_reset.uf2