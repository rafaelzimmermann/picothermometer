#!/bin/bash

set -x

MOUNT_POINT="/mnt/pico"
DEVICE=$(sudo fdisk -l | grep FAT12 | cut -d' ' -f1)

if [ -z "$DEVICE" ]; then
    DEVICE=$(sudo fdisk -l | grep FAT16 | cut -d' ' -f1)
fi

mount_pico() {
    mountpoint -q "${MOUNT_POINT}" || \
        sudo mount "${DEVICE}" "${MOUNT_POINT}"
}