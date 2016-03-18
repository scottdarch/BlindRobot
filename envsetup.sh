#!/usr/bin/env bash

LOCALFILE="$( dirname "$BASH_SOURCE[0]" )/.env.local"

if [ -f "$LOCALFILE" ]
then
    echo "Sourcing ${LOCALFILE}"
    source ${LOCALFILE}
    if [ -n $USER_PATH ]
    then
        export USER_PATH=$PATH
    fi
    export PATH=$USER_PATH:${LOCAL_ENV_TOOLCHAIN_PATH}/bin
else
    >&2 echo "Missing ${LOCALFILE}. See README.md for details."
fi
