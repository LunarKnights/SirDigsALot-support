#!/bin/bash
## Download the firmware off of their website
wget http://canable.io/builds/gsusb_canable.bin

## Flash it
# sudo dfu-util --dfuse-address -d 0483:df11 -c 1 -i 0 -a 0 -s 0x08000000 -D gsusb_canable.bin
