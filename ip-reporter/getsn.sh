#!/bin/bash

sn=$(cat /proc/cpuinfo | grep Serial | cut -d ' ' -f 2)
snr="${sn: -5}"
echo "Full S/N:" $sn
echo "  Last 5:" $snr
