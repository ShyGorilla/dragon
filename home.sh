clear
#COLOUR
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\033[1;32m'
white='\e[1;37m'
red='\033[1;31m'
yellow='\e[0;33m'
BlueF='\e[1;34m' #Biru
RESET="\033[00m" #normal
orange='\033[33m'
chmod +x logo.sh

./logo.sh
echo "  $lightgreen Before Starting any tool, you have to install it and get ✔ beside the tool"
echo "  $lightgreen You can copy any text from xterm by pressing CONTROL+SHIFT+C"
echo "  $lightgreen You can paste any text from xterm by pressing CONTROL+SHIFT+V"
echo ""
echo "  $lightgreen Choose an option:"
echo ""
echo  $okegreen"   $okegreen["$orange"01$okegreen]──["$orange"Brute Force tools$okegreen]"
echo  $okegreen"   $okegreen["$orange"02$okegreen]──["$orange"Vulnerabilities tools$okegreen]"
echo  $okegreen"   $okegreen["$orange"03$okegreen]──["$orange"Rootkits scanning tools$okegreen]"
echo  $okegreen"   $okegreen["$orange"04$okegreen]──["$orange"Networking tools$okegreen]"
echo  $okegreen"   $okegreen["$orange"05$okegreen]──["$orange"Phishing tools$okegreen]"
echo  $okegreen"   $okegreen["$orange"06$okegreen]──["$orange"Social Engineering tools$okegreen]"
echo  $okegreen"   $okegreen["$orange"00$okegreen]──["$orange"Main Menu$okegreen]"
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
elif [ $linux -eq 5 ]
then
    ./tools/phishing/tools.sh
elif [ $linux -eq 6 ]
then
    ./tools/social/tools.sh
elif [ $linux -eq 0 ]
then
    ./dragon.sh
else
    echo "$red"
    read -p  "   Wrong option. Press Enter to return" m
    if [ -z $m ]; then
        ./home.sh
    fi
fi

