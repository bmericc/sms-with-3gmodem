#!/bin/bash

/usr/bin/screen -dmS TANITA /dev/ttyUSB1 460800

date=$(date)

screen -S TANITA -X stuff "AT+CMGF=1\r"
screen -S TANITA -X stuff "AT+CNMI=1,2,0,0,0\r"
read RES < /dev/ttyUSB1
echo $RES

screen -S TANITA -X kill

