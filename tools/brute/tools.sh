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

var1=$(find -type f -name "cupp.py" | grep tools/brute/cupp/cupp)
if [ -z $var1 ]
then
    cupp="X"
    color1=$red
else
    cupp="✔"
    color1=$okegreen
fi

var2=$(find -type f -name "instapy-config.json" | grep tools/brute/instagram-py)
if [ -z $var2 ]
then
    py1="X"
    color2=$red
else
    py1="✔"
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

echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Brute Force tools Menu$okegreen]:"
read -p "   └─────► " main

#--------------------------------------------------------Main Menu------------------------------------------------------------------#

if [ $main -eq 1 ]
then
	./logo.sh
	echo "  $lightgreen Choose an option:"
	echo ""
	echo  $okegreen"   $okegreen["$orange"1$okegreen]──["$orange"Cupp tool$okegreen]            	[$color1$cupp$okegreen]"
    echo  $okegreen"   $okegreen["$orange"2$okegreen]──["$orange"Instagram-Py tool$okegreen]     [$color2$py1$okegreen]"
	echo  $okegreen"   $okegreen["$orange"0$okegreen]──["$orange"Main Menu$okegreen]"
	echo ""

	echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Tools installation Menu$okegreen]:"
	read -p "   └─────► " install

    if [ $install -eq 1 ]
    	then
        	echo "${white}"
            xterm -T "☣ INSTALLING CUPP ☣" -geometry 100x30 -e "./logo.sh ; git clone https://github.com/Mebus/cupp.git tools/brute/cupp"
    	    ./tools/brute/tools.sh
    elif [ $install -eq 2 ]
    then
    echo "${white}"
        xterm -T "☣ INSTALLING Instagram-Py ☣" -geometry 100x30 -e "./logo.sh ; git clone https://github.com/deathsec/instagram-py.git tools/brute/instagram-py"
        xterm -T "☣ INSTALLING Instagram-Py ☣" -geometry 100x30 -e "./logo.sh ; cd tools/brute ; sudo pip3 install requests --upgrade" &
        xterm -T "☣ INSTALLING Instagram-Py ☣" -geometry 100x30 -e "./logo.sh ; cd tools/brute ; sudo pip3 install requests[socks]" &
        xterm -T "☣ INSTALLING Instagram-Py ☣" -geometry 100x30 -e "./logo.sh ; cd tools/brute ; sudo pip3 install stem" &
        xterm -T "☣ INSTALLING Instagram-Py ☣" -geometry 100x30 -e "./logo.sh ; cd tools/brute ; sudo sed -i 's/#ControlPort 9051/ControlPort 9051/' /etc/tor/torrc" &
        xterm -T "☣ INSTALLING Instagram-Py ☣" -geometry 100x30 -e "./logo.sh ; cd tools/brute ; sudo pip3 install instagram-py"
        xterm -T "☣ INSTALLING Instagram-Py ☣" -geometry 100x30 -e "./logo.sh ; cd tools/brute ; sudo instagram-py --create-configuration"
        xterm -T "☣ INSTALLING Instagram-Py ☣" -geometry 100x30 -e "./logo.sh ; cd tools/brute ; sudo instagram-py --create-configuration --default-configuration"
        xterm -T "☣ INSTALLING Instagram-Py ☣" -geometry 100x30 -e "./logo.sh ; cd tools/brute/instagram-py ; sudo cp instapy-config.json /root"
        ./tools/brute/tools.sh
    elif [ $install -eq 0 ]
    then
        ./tools/brute/tools.sh
    else
        echo "$red"
        read -p  "   Wrong option. Press Enter to return" m
        if [ -z $m ]; then
            ./tools/brute/tools.sh
        fi

    fi

elif [ $main -eq 2 ]
then
    ./logo.sh
	echo "  $lightgreen Choose an option:"
	echo ""
	echo  $okegreen"   $okegreen["$orange"1$okegreen]──["$orange"Cupp tool$okegreen]            	[$color1$cupp$okegreen]"
    echo  $okegreen"   $okegreen["$orange"2$okegreen]──["$orange"Instagram-Py tool$okegreen]     [$color2$py1$okegreen]"
    echo  $okegreen"   $okegreen["$orange"3$okegreen]──["$orange"Hash tool$okegreen]             [$okegreen✔$okegreen]"
	echo  $okegreen"   $okegreen["$orange"0$okegreen]──["$orange"Main Menu$okegreen]"
	echo ""

	echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Start Tools Menu$okegreen]:"
	read -p "   └─────► " start

    if [ $start -eq 1 ]
    then
        echo "${white}"
        xterm -T "☣ RUNNING CUPP ☣" -geometry 100x30 -e "./logo.sh ; python3 tools/brute/cupp/cupp.py -i ; bash"
        ./tools/brute/tools.sh
    elif [ $start -eq 2 ]
    then
        echo "$okegreen"
        read -p "   Enter the username: " username
        read -p "   Enter password wordlist path : " passw
        xterm -T "☣ RUNNING Instagram-Py ☣" -geometry 100x30 -e "./logo.sh ; sudo systemctl stop tor ; sudo systemctl start tor ; sudo instagram-py -vvv -u $username -pl $passw ; bash" &
        xterm -T "☣ RUNNING Instagram-Py ☣" -geometry 100x30 -e "./logo.sh ; systemctl status tor"
        ./tools/brute/tools.sh
    elif [ $start -eq 3 ]
    then
        echo "${white}"
        xterm -T "☣ RUNNING HASH ☣" -geometry 100x30 -e "cd tools/brute ; sudo python3 hash.py ; bash"
        ./tools/brute/tools.sh
    elif [ $start -eq 0 ]
    then
        ./tools/brute/tools.sh
    else
        echo "$red"
        read -p  "   Wrong option. Press Enter to return" m
        if [ -z $m ]; then
            ./tools/brute/tools.sh
        fi

    fi

elif [ $main -eq 3 ]
then
    ./logo.sh
	echo "  $lightgreen Choose an option:"
	echo ""
	echo  $okegreen"   $okegreen["$orange"1$okegreen]──["$orange"Cupp tool$okegreen]            	[$color1$cupp$okegreen]"
    echo  $okegreen"   $okegreen["$orange"2$okegreen]──["$orange"Instagram-Py tool$okegreen]     [$color2$py1$okegreen]"
	echo  $okegreen"   $okegreen["$orange"0$okegreen]──["$orange"Main Menu$okegreen]"
	echo ""

	echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Removing Tools Menu$okegreen]:"
	read -p "   └─────► " remove

    if [ $remove -eq 1 ]
    then
        echo "${white}"
        xterm -T "☣ REMOVING CUPP ☣" -geometry 100x30 -e "./logo.sh ; sudo rm -r tools/brute/cupp"
        echo ""
        echo "  $lightgreen Cupp tool has been removed successfully"
        sleep 2
        ./tools/brute/tools.sh
    elif [ $remove -eq 2 ]
    then
        echo "${white}"
        xterm -T "☣ REMOVING Instagram-Py ☣" -geometry 100x30 -e "./logo.sh ; sudo rm -r tools/brute/instagram-py"
        echo ""
        echo "  $lightgreen Instagram-Py tool has been removed successfully"
        sleep 2
        ./tools/brute/tools.sh
    elif [ $remove -eq 0 ]
    then
        ./tools/brute/tools.sh
    else
        echo "$red"
        read -p  "   Wrong option. Press Enter to return" m
        if [ -z $m ]; then
            ./tools/brute/tools.sh
        fi

    fi

elif [ $main -eq 0 ]
then
    sudo ./home.sh
else
    echo "$red"
	read -p  "   Wrong option. Press Enter to return" m
	if [ -z $m ]; then
		./tools/brute/tools.sh
	fi
fi