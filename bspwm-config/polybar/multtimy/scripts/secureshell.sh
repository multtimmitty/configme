#!/usr/bin/bash

# List of Ports
PORTS=(22 2222 2022 8022)

# Counter
declare -i count=0
declare -i ttl=1

# Check if exist a Connection ssh
for ports in ${PORTS[@]}; do
   CPORTS=$(netstat -t | grep -w 'tcp' | grep -w 'ESTABLISHED' | grep -w "${ports}" | awk '{print $5}' | cut -d ':' -f 1)
   for cports in ${CPORTS}; do
		if [[ $(echo ${cports} | wc -c) -eq 15 ]]; then 
			echo -e "%{F#009975} %{F#b5b8b1}${cports} \c%{u-}"
			count=$[${count}+1]
		fi
   done
done

# Message if not exist a Connection ssh
if [[ ${count} -eq 0 ]]; then
   echo -e "%{F#ff3170} %{F#b5b8b1}No SSH Connections%{u-}"
fi
