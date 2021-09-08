#!/bin/bash

target=$(cat /home/$USER/.config/bin/target)

if [ "$target" ]; then
	ttl=$(timeout 1 /usr/bin/ping -c 1 $target | grep "ttl" | tr ' ' '\n' | tail -n 3 | head -n 1 | awk '{print $2}' FS="=")

	if [[ $ttl -eq 64 || $ttl -le 64 && $ttl -ge 1 ]]; then
		echo "%{F#e51d0b} %{F#ffffff}$target%{u-}"
	elif [[ $ttl -eq 128 || $ttl -le 128 && $ttl -ge 64 ]]; then
		echo "%{F#e51d0b} %{F#ffffff}$target%{u-}"
	else
		echo "%{F#e51d0b} %{F#ffffff}$target%{u-}"
	fi
else
	echo "%{F#e51d0b} %{u-}%{F#ffffff} No target"
fi
