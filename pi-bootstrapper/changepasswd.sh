#!/bin/bash
# Author: Rafael Lopes
# Description: Changes the password for the user 'raspberry' to the last 5 characters of the unit's serial number

# Note: I decided not to use this script because changing the password to the serial
# number for all students would be the same as not changing it, because if someone knows
# other student's serial number, in this case it would also know the password, so I will
# keep the password as the same for everyone.

#sn=$(cat /proc/cpuinfo | grep Serial | cut -d ' ' -f 2)
#snr="${sn: -5}"

#if [ "$(whoami)" == "root" ]; then
#  echo -e "$snr\n$snr" | passwd pi
#  exit
#elif [ "$(whoami)" == "pi" ]; then
#  echo -e "raspberry\n$snr\n$snr" | passwd pi
#  exit
#else
#  echo "This script should either run as root or pi"
#  exit 1
#fi
