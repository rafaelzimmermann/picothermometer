#!/bin/bash

set -xe

SCRIPT_PATH=$(dirname "$0")
source "${SCRIPT_PATH}/base.sh"

mount_pico

DEPENDENCIES_DIR="${SCRIPT_PATH}/dependencies"

rm -rf "${DEPENDENCIES_DIR}"
mkdir -p "${DEPENDENCIES_DIR}"

wget \
    "https://micropython.org/download/rp2-pico/rp2-pico-latest.uf2" \
    -O "${DEPENDENCIES_DIR}/RPI_PICO.uf2"
sudo cp "${DEPENDENCIES_DIR}/RPI_PICO.uf2" "/mnt/pico/RPI_PICO.uf2"

