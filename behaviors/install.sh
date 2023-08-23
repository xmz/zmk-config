#!/bin/bash

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

if [ -d app/ ]
then
    for f in $(find $SCRIPT_DIR -iname *.yaml)
    do
        cp $f app/dts/bindings/behaviors/
    done
    for f in $(find $SCRIPT_DIR -iname *.c)
    do
        cp $f app/src/behaviors/
    done

    git apply ${SCRIPT_DIR}/patch.diff
else
    echo "TODO: Linking"
fi