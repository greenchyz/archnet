#!/bin/bash
if [[ $EUID -ne 0 ]]
	then echo "Need Root"
	exit 1
fi

echo "Connecting to wifi"
wpa_supplicant -B -i wlan0 -c wpa.txt

ip addr add 192.168.1.66/24 dev wlan0 && ip r add default via 192.168.1.1
ip r 
echo "Connected"
