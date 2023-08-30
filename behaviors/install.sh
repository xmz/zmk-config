#!/bin/bash

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

if [ -d app/ ]
then
    
    for f in $(find $SCRIPT_DIR -iname *.diff)
    do
        git apply $f
    done

    for f in $(find $SCRIPT_DIR -iname *.yaml)
    do
        cp -r $f app/dts/bindings/behaviors/
    done
    for f in $(find $SCRIPT_DIR -iname *.c)
    do
        cp -r $f app/src/behaviors/
    done
else
    echo "TODO: Linking"
fi