#!/usr/bin/env bash

print_status() {
	if amixer get Capture | grep -q '\[off\]'; then
		echo ""
	else
		echo " "
	fi
}

toggle() {
	amixer set Capture toggle 
	print_status
}

while true; do
	print_status
	sleep 0 &
	wait
done
