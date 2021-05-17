#!/bin/bash
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[0;33m'
BlueF='\e[1;34m' #Biru
RESET="\033[00m" #normal
orange='\e[38;5;166m'
white="`tput setaf 7`"


ip=$(ip -4 addr | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | grep '19')
network_id="${ip%.*}."
count=0
last_alive_host=""

echo -e "$okegreen"
read -rp "Enter Number of Hosts you want to scan: " input

if [[ "$input" =~ ^[0-9]+$ ]]
then
	echo -e "$okegreen"
    echo -e "Your ip is: $orange$ip$okegreen"
    echo -e "You will scan $orange$input$okegreen input"
    echo ""
    while [ "$count" -le $input ]
    do 
        count=$(($count+1))
        current_ip=$network_id$count
        if ping -c 1 $current_ip &> /dev/null
            then
                echo -e "$orange$current_ip${okegreen} - ${okegreen}Active host${okegreen}"
                last_alive_host=$current_ip
            else
                echo -e "$orange$current_ip${okegreen} - ${red}Inactive host${okegreen}"
        fi
    done
else
	echo -e "$red"
    read -p  "Wrong input, please run the tool again." m
fi
