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
chmod +x end.sh


red1="`tput setaf 1`"
if [ $(id -u) -ne 0 ]; then
	echo "${red1}This script must be run as root!"
	exit 1
fi


echo "  $lightgreen Choose an option:"
echo ""
echo  $okegreen"   $okegreen["$orange"1$okegreen]──["$orange"Start the tool$okegreen]"
echo  $okegreen"   $okegreen["$orange"2$okegreen]──["$orange"Setup the tool$okegreen]"
echo  $okegreen"   $okegreen["$orange"0$okegreen]──["$orange"Exit$okegreen]"
echo ""

echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Main Menu$okegreen]:"
read -p "   └─────► " main

#--------------------------------------------------------Main Menu------------------------------------------------------------------#

if [ $main -eq 1 ]
then
	./home.sh
	
elif [ $main -eq 2 ]
then
	chmod +x setup.sh
	chmod +x xtermlogo.sh
	sudo apt-get install xterm -y
	xterm -T "☣ SETUP THE TOOL ☣" -geometry 100x30 -e "./xtermlogo.sh ; sudo ./setup.sh"
	./dragon.sh

elif [ $main -eq 0 ]
then
	./end.sh
	exit 1
else
	echo "$red"
		read -p  "   Wrong option. Press Enter to return" m
		if [ -z $m ]; then
			./dragon.sh
		fi
fi

