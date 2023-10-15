#!/bin/bash

set -ex

SCRIPT_PATH=$(dirname "$0")

echo "Deploy started"


sudo rshell cp *.py "/mnt/pico"
sudo rshell cp -r lcd_i2c "/mnt/pico"

echo "Deploy done"
