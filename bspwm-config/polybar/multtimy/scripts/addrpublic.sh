#!/usr/bin/bash

# Get the ip public
IP_PUBLIC="$(curl ifconfig.me/ip > ".ifconfig.me" 2>/dev/null)"

# Filter the ip public
IFCONFIG="$(tail -n 1 ".ifconfig.me" 2>/dev/null)"

# Show if exist or not a connection to internet
echo -e "%{F#00ffff}%{F#C0C0C0} ${IFCONFIG:="No Internet Connection"}%{u-}"
