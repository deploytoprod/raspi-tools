#!/bin/bash
# Author: Rafael Lopes
# Description: This script sets the raspberry pi hostname as the last 5 characters of the unit's serial number

sn=$(cat /proc/cpuinfo | grep Serial | cut -d ' ' -f 2)
snr="${sn: -5}"
echo $snr | sudo tee /etc/hostname

sudo cat >/etc/hosts <<EOL
127.0.0.1  localhost
::1    localhost ip6-localhost ip6-loopback
ff02::1    ip6-allnodes
ff02::2    ip6-allrouters

127.0.0.1  ${snr}
EOL

sudo hostnamectl set-hostname $snr

sudo systemctl restart avahi-daemon
