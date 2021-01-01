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
    test=$(timeout 1 bash -c "ping -c 1 $initial.$last" | grep -oP "(?<=ttl=).*(?= t)" &)
    if [[ test -ge 1 ]]; then
	echo -n "ACTIVE: $initial.$last "
	if (( $test >= 60 && $test <= 66 )); then
	    echo "Linux based (If local network, may android)"
	elif (( $test >= 124 && $test <= 132 )); then
	    echo "Windows"
	else
	    echo "Unknown TTL: $ttl"
	fi
    fi
done
wait
