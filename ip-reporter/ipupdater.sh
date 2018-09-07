#!/bin/bash

BASEDIR=$(dirname "$0")

sn=$(cat /proc/cpuinfo | grep Serial | cut -d ' ' -f 2)
snr="${sn: -5}"
wifiip=$(ip addr | grep inet | grep wlan0 | awk -F" " '{print $2}'| sed -e 's/\/.*$//')
[ -f $BASEDIR/wifiip.txt ] && previousip=$(cat $BASEDIR/wifiip.txt) || previousip=""

date

if [ "$wifiip" != "$previousip" ]
  then
    echo "New wifi IP addr detected: $wifiip"
    /home/pi/.local/bin/aws route53 change-resource-record-sets --hosted-zone-id ZVLG22V7GRDZ3 --change-batch "{\"Comment\":\"Wifi Address change\",\"Changes\":[{\"Action\":\"UPSERT\",\"ResourceRecordSet\":{\"Name\":\"$snr.simplecoffeeservice.cloud.\",\"Type\":\"A\",\"TTL\":30,\"ResourceRecords\":[{\"Value\":\"$wifiip\"}]}}]}"
    echo $wifiip > $BASEDIR/wifiip.txt
  else
    echo "IP addr not modified"
fi
