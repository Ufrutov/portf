#!/bin/bash

GR='\033[1;32m'
BL='\033[1;34m'
RD='\033[1;31m'
NC='\033[0m'

echo -e "${BL}Port forwarding utility${NC}\n"

function make_tunnel {
	address=$1
	ip1=$(hostname -I | cut -f1 -d ' ')
	ip2=$(hostname -I | cut -f2 -d ' ')
	target=${address##*.}

	port80=$(printf "8%03d" $target)
	port81=$(printf "8%03d" $(($target+1)))

	echo -e "Create connection for address $address\n"
	echo -e "ip1: ${BL}$ip1:${GR}$port80${NC}"
	echo -e "ip2: ${BL}$ip2:${GR}$port80${NC}\n"

	eval "ssh -g -L $port80:$address:80 -L $port81:$address:81 127.0.0.1"
}

args=($@)

if [ -z "$args" ]
then
	echo -e "${RD}[E] No argument passed${NC}"
	exit 1
else
	make_tunnel "${args}"
fi