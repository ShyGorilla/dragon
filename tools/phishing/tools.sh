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
white="`tput setaf 7`"

var1=$(find -type f -name "blackeye.sh" | grep tools/phishing/blackeye-im)
if [ -z $var1 ]
then
    blacke="X"
    color1=$red
else
    blacke="✔"
    color1=$okegreen
fi

var2=$(find -type f -name "camphish.sh" | grep tools/phishing/CamPhish)
if [ -z $var2 ]
then
    cam="X"
    color2=$red
else
    cam="✔"
    color2=$okegreen
fi

./logo.sh

echo "  $lightgreen Before Starting any tool, you have to install it and get ✔ beside the tool"
echo "  $lightgreen You can copy any text from xterm by pressing CONTROL+SHIFT+C"
echo "  $lightgreen You can paste any text from xterm by pressing CONTROL+SHIFT+V"
echo ""
echo "  $lightgreen Choose an option:"
echo ""
echo  $okegreen"   $okegreen["$orange"1$okegreen]──["$orange"Tools installation$okegreen]"
echo  $okegreen"   $okegreen["$orange"2$okegreen]──["$orange"Start tools$okegreen]"
echo  $okegreen"   $okegreen["$orange"3$okegreen]──["$orange"Removing tools$okegreen]"
echo  $okegreen"   $okegreen["$orange"0$okegreen]──["$orange"Main Menu$okegreen]"
echo ""

echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Phishing tools Menu$okegreen]:"
read -p "   └─────► " main

#--------------------------------------------------------Main Menu------------------------------------------------------------------#

if [ $main -eq 1 ]
then
	./logo.sh
	echo "  $lightgreen Choose an option:"
	echo ""
	echo  $okegreen"   $okegreen["$orange"1$okegreen]──["$orange"BlackEye-im tool$okegreen]     [$color1$blacke$okegreen]"
    echo  $okegreen"   $okegreen["$orange"2$okegreen]──["$orange"CamPhish tool$okegreen]        [$color2$cam$okegreen]"
	echo  $okegreen"   $okegreen["$orange"0$okegreen]──["$orange"Main Menu$okegreen]"
	echo ""

	echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Tools installation Menu$okegreen]:"
	read -p "   └─────► " install

    if [ $install -eq 1 ]
    then
        echo "${white}"
        xterm -T "☣ INSTALLING BlackEye-im ☣" -geometry 100x30 -e "./logo.sh ; git clone https://github.com/Git-Ankitraj/blackeye-im.git tools/phishing/blackeye-im ; chmod +x tools/phishing/blackeye-im/blackeye.sh"
        echo ""
        echo "  $lightgreen BlackEye-im tool has been installed successfully"
        sleep 2
        ./tools/phishing/tools.sh
    elif [ $install -eq 2 ]
    then
        echo "${white}"
        xterm -T "☣ INSTALLING CAMPHISH ☣" -geometry 100x30 -e "./logo.sh ; git clone https://github.com/techchipnet/CamPhish.git tools/phishing/CamPhish ; chmod +x tools/phishing/CamPhish/camphish.sh"
        echo ""
        echo "  $lightgreen CamPhish tool has been installed successfully"
        sleep 2
        ./tools/phishing/tools.sh
    elif [ $install -eq 0 ]
    then
        ./tools/phishing/tools.sh
    else
        echo "$red"
        read -p  "   Wrong option. Press Enter to return" m
        if [ -z $m ]; then
            ./tools/phishing/tools.sh
        fi

    fi

elif [ $main -eq 2 ]
then
    ./logo.sh
	echo "  $lightgreen Choose an option:"
	echo ""
	echo  $okegreen"   $okegreen["$orange"1$okegreen]──["$orange"BlackEye-im tool$okegreen]     [$color1$blacke$okegreen]"
    echo  $okegreen"   $okegreen["$orange"2$okegreen]──["$orange"CamPhish tool$okegreen]        [$color2$cam$okegreen]"
	echo  $okegreen"   $okegreen["$orange"0$okegreen]──["$orange"Main Menu$okegreen]"
	echo ""

	echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Start Tools Menu$okegreen]:"
	read -p "   └─────► " start

    if [ $start -eq 1 ]
    then
        echo "${white}"
        xterm -T "☣ RUNNING BlackEye-im ☣" -geometry 100x30 -e "./logo.sh ; cd tools/phishing/blackeye-im ; sudo ./blackeye.sh ; bash"
        ./tools/phishing/tools.sh
    elif [ $start -eq 2 ]
    then
        echo "${white}"
        xterm -T "☣ RUNNING CAMPHISH ☣" -geometry 100x30 -e "./logo.sh ; cd tools/phishing/CamPhish ; sudo ./camphish.sh ; bash"
        ./tools/phishing/tools.sh
    elif [ $start -eq 0 ]
    then
        ./tools/phishing/tools.sh
    else
        echo "$red"
        read -p  "   Wrong option. Press Enter to return" m
        if [ -z $m ]; then
            ./tools/phishing/tools.sh
        fi

    fi

elif [ $main -eq 3 ]
then
    ./logo.sh
	echo "  $lightgreen Choose an option:"
	echo ""
	echo  $okegreen"   $okegreen["$orange"1$okegreen]──["$orange"BlackEye-im tool$okegreen]     [$color1$blacke$okegreen]"
    echo  $okegreen"   $okegreen["$orange"2$okegreen]──["$orange"CamPhish tool$okegreen]        [$color2$cam$okegreen]"
	echo  $okegreen"   $okegreen["$orange"0$okegreen]──["$orange"Main Menu$okegreen]"
	echo ""

	echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Removing Tools Menu$okegreen]:"
	read -p "   └─────► " remove

    if [ $remove -eq 1 ]
    then
        echo "${white}"
        xterm -T "☣ REMOVING BlackEye-im ☣" -geometry 100x30 -e "./logo.sh ; sudo rm -r tools/phishing/blackeye-im"
        echo ""
        echo "  $lightgreen BlackEye-im tool has been removed successfully"
        sleep 2
        ./tools/phishing/tools.sh
    elif [ $remove -eq 2 ]
    then
        echo "${white}"
        xterm -T "☣ REMOVING CAMPHISH ☣" -geometry 100x30 -e "./logo.sh ; sudo rm -r tools/phishing/CamPhish"
        echo ""
        echo "  $lightgreen CamPhish tool has been removed successfully"
        sleep 2
        ./tools/phishing/tools.sh
    elif [ $remove -eq 0 ]
    then
        ./tools/phishing/tools.sh
    else
        echo "$red"
        read -p  "   Wrong option. Press Enter to return" m
        if [ -z $m ]; then
            ./tools/phishing/tools.sh
        fi

    fi

elif [ $main -eq 0 ]
then
    sudo ./home.sh
else
    echo "$red"
	read -p  "   Wrong option. Press Enter to return" m
	if [ -z $m ]; then
		./tools/phishing/tools.sh
	fi
fi