#!/usr/bin/bash

UFW_STATUS="$(systemctl status ufw | grep -w "Active:" | awk '{print $2}')"

if [[ ${UFW_STATUS} == 'active' ]]; then
	echo -e "%{F#00FFFF} %{F#B5B8B1}Firewall Active %{u-}"
else
	echo -e "%{F#FF3170} %{F#B5B8B1}Firewall Inactive %{u-}"
fi
