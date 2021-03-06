#!/bin/sh

PARAMS=$@
if [ $# -eq 1 ]; then
    if [ -e $1 ]; then
        PARAMS=${1%.py}
    fi
fi

cd ../../
PYTHONPATH=./:test/unit python3 -m unittest ${PARAMS}
