#!/bin/sh
# Author: Rafael Lopes
# About: For a factory-like experience, this prepares the OS...

/home/pi/raspi-tools/pi-bootstrapper/sethostname.sh
> /home/pi/.bash_history
[ -f /home/pi/raspi-tools/ip-reporter/wifiip.txt ] && rm /home/pi/raspi-tools/ip-reporter/wifiip.txt
su - pi -c "/home/pi/raspi-tools/ip-reporter/ipupdater.sh"
