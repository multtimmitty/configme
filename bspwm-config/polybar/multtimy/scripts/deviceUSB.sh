#!/usr/bin/bash


export IFS='
'
# count
declare -i count=0

# path devices mounted
DEVICES="/media/$USER"

# list devices mounted
for devices in $(ls ${DEVICES}); do
	echo -e "%{F#6495ed}  %{F#c0c0c0}${devices} \c%{u-}"
	count=$[${count}+1]
done

# Check if exist the devices mounted
if [[ ${count} -eq 0 ]]; then
	echo -e "%{F#F2595F} 禍%{F#C0C0C0} No Devices Mounted%{u-}"
fi
