#!/bin/bash

# sudo slcan_attach -f -s8 -o /dev/ttyACM0
sudo slcand -o -c -f -s8 /dev/ttyACM0
# sleep 1
# sudo slcand ttyACM0 slcan0
sleep 1
sudo ifconfig slcan0 txqueuelen 1000
sudo ifconfig slcan0 up
