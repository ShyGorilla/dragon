clear
#COLOUR
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
chmod +x logo.sh


./logo.sh
echo "  $lightgreen Choose an option:"
echo ""
echo  $okegreen"   $okegreen["$orange"1$okegreen]──["$orange"Brute Force tools$okegreen]"
echo  $okegreen"   $okegreen["$orange"2$okegreen]──["$orange"Vulnerabilities tools$okegreen]"
echo  $okegreen"   $okegreen["$orange"3$okegreen]──["$orange"Rootkits scanning tools$okegreen]"
echo  $okegreen"   $okegreen["$orange"4$okegreen]──["$orange"Networking tools$okegreen]"
echo  $okegreen"   $okegreen["$orange"0$okegreen]──["$orange"Main Menu$okegreen]"
echo ""

echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Main Menu$okegreen]:"
read -p "   └─────► " linux

if [ $linux -eq 1 ]
then
    ./tools/brute/tools.sh
elif [ $linux -eq 2 ]
then
    ./tools/vulnerabilities/tools.sh
elif [ $linux -eq 3 ]
then
    ./tools/rootkits/tools.sh
elif [ $linux -eq 4 ]
then
    ./tools/network/tools.sh
elif [ $linux -eq 0 ]
then
    ./dragon.sh
else
    echo "$red"
    read -p  "   Wrong option. Press Enter to return" m
    if [ -z $m ]; then
        ./dragon.sh
    fi
fi

