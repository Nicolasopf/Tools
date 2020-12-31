#!/bin/bash

if [[ -z $1 ]]; then # Check if arg 1 exist.
    echo -e "Please insert an ip as argument.\nUsage: $0 IP"
    exit
fi
initial=$(echo $1 | grep -oP '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}')
if [[ $initial != $1 ]]; then
    echo "Please insert a valid IP!"
    exit
fi
initial=$(echo $initial | cut -d "." -f1-3)
for last in $(seq 1 255); do
    if timeout 1 bash -c "ping -c 1 $initial.$last > /dev/null 2>&1"; then
	ttl=$(timeout 1 bash -c "ping -c 1 $initial.$last | grep -oP '(?<=ttl=).*(?= t)'")
	echo -n "OPEN: $initial.$last "
	if (( $ttl >= 60 && $ttl <= 66 )); then
	    echo "Linux based"
	elif (( $ttl >= 124 && $ttl <= 132 )); then
	    echo "Windows"
	else
	    echo "Unknown TTL: $ttl"
	fi
    fi
done
wait
