#!/bin/bash

# This script is used to install hugegraph as a system service
# Usage: install.sh port

function abs_path() {
    SOURCE="${BASH_SOURCE[0]}"
    while [ -h "$SOURCE" ]; do
        DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
        SOURCE="$(readlink "$SOURCE")"
        [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
    done
    echo "$( cd -P "$( dirname "$SOURCE" )" && pwd )"
}

# Variables
BIN=`abs_path`
TOP="$(cd $BIN/../ && pwd)"
INIT_DIR=/etc/init.d
SCRIPT_NAME=hugegraph
SRC_SCRIPT=$BIN/$SCRIPT_NAME
TGT_SCRIPT=$INIT_DIR/$SCRIPT_NAME

# Set HugeGraphServer port if provided
if [ -n "$1" ]; then
    SERVER_PORT=$1
else
    SERVER_PORT=8080
fi
sed -i "s/SERVER_PORT=/SERVER_PORT=${SERVER_PORT}/g" $SRC_SCRIPT

# Set INSTALL PATH
sed -i "s?INSTALL_DIR=?INSTALL_DIR=${TOP}?g" $SRC_SCRIPT

# Install
sudo cp -f $SRC_SCRIPT $TGT_SCRIPT
sudo chmod +x $TGT_SCRIPT