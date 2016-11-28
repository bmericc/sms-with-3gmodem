#!/bin/bash

/usr/bin/screen -dmS TANITA /dev/ttyUSB1 460800

date=$(date)

screen -S TANITA -X stuff "AT+CMGF=1\r"
screen -S TANITA -X stuff "AT+CMGS=\"+905053127806\"\r"
screen -S TANITA -X stuff "$date tarihli sms"
screen -S TANITA -X stuff "\032"

screen -S TANITA -X kill

