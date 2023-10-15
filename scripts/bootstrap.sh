#!/bin/bash

SCRIPT_PATH=$(dirname "$0")
echo $SCRIPT_PATH

source "${SCRIPT_PATH}/vars.sh"

mkvirtualenv dht11
pip3 install -r requirements.txt


