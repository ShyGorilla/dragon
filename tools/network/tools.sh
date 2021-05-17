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
white="`tput setaf 7`"
color1=""
color2=""
color3=""
color4=""
tor=""
air=""

if ! find -type f -name "build.sh" | grep tools/network/torghost 2>/dev/null
then
    tor="X"
    color1=$red
else
    tor="✔"
    color1=$okegreen
fi

if ! find -type f -name "airgeddon.sh" | grep tools/network/airgeddon 2>/dev/null
then
    air="X"
    color2=$red
else
    air="✔"
    color2=$okegreen
fi

./logo.sh

echo "  $lightgreen Before Starting any tool, you have to install it and get ✔ beside the tool"
echo ""
echo "  $lightgreen Choose an option:"
echo ""
echo  $okegreen"   $okegreen["$orange"1$okegreen]──["$orange"Tools installation$okegreen]"
echo  $okegreen"   $okegreen["$orange"2$okegreen]──["$orange"Start tools$okegreen]"
echo  $okegreen"   $okegreen["$orange"3$okegreen]──["$orange"Removing tools$okegreen]"
echo  $okegreen"   $okegreen["$orange"0$okegreen]──["$orange"Main Menu$okegreen]"
echo ""

echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Networking tools Menu$okegreen]:"
read -p "   └─────► " main

#--------------------------------------------------------Main Menu------------------------------------------------------------------#

if [ $main -eq 1 ]
then
	./logo.sh
	echo "  $lightgreen Choose an option:"
	echo ""
	echo  $okegreen"   $okegreen["$orange"1$okegreen]──["$orange"Torghost tool - Kali Linux Only$okegreen]       [$color1$tor$okegreen]"
    echo  $okegreen"   $okegreen["$orange"2$okegreen]──["$orange"Airgeddon tool$okegreen]                        [$color2$air$okegreen]"
	echo  $okegreen"   $okegreen["$orange"0$okegreen]──["$orange"Main Menu$okegreen]"
	echo ""

	echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Tools installation Menu$okegreen]:"
	read -p "   └─────► " install

    if [ $install -eq 1 ]
    	then
        	echo "${white}"
            xterm -T "☣ INSTALLING TORGHOST ☣" -geometry 100x30 -e "./logo.sh ; git clone https://github.com/ShyGorilla/fixed_torghost.git tools/network/torghost ; chmod +x tools/network/torghost/build.sh ; cd tools/network/torghost ;  sudo ./build.sh"
    	    ./tools/network/tools.sh
    elif [ $install -eq 2 ]
    then
        echo "${white}"
            xterm -T "☣ INSTALLING AIRGEDDON ☣" -geometry 100x30 -e "./logo.sh ; git clone https://github.com/v1s1t0r1sh3r3/airgeddon.git tools/network/airgeddon ; chmod +x tools/network/airgeddon/airgeddon.sh"
    	    ./tools/network/tools.sh
    elif [ $install -eq 0 ]
    then
        ./tools/network/tools.sh
    else
        echo "$red"
        read -p  "   Wrong option. Press Enter to return" m
        if [ -z $m ]; then
            ./tools/network/tools.sh
        fi

    fi

elif [ $main -eq 2 ]
then
    ./logo.sh
	echo "  $lightgreen Choose an option:"
	echo ""
	echo  $okegreen"   $okegreen["$orange"1$okegreen]──["$orange"Start Torghost tool$okegreen]      [$color1$tor$okegreen]"
    echo  $okegreen"   $okegreen["$orange"2$okegreen]──["$orange"Stop Torghost tool$okegreen]       [$color1$tor$okegreen]"
    echo  $okegreen"   $okegreen["$orange"3$okegreen]──["$orange"Airgeddon tool$okegreen]           [$color2$air$okegreen]"
    echo  $okegreen"   $okegreen["$orange"4$okegreen]──["$orange"Host Checker tool$okegreen]        [$okegreen✔$okegreen]"
	echo  $okegreen"   $okegreen["$orange"0$okegreen]──["$orange"Main Menu$okegreen]"
	echo ""

	echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Start Tools Menu$okegreen]:"
	read -p "   └─────► " start

    if [ $start -eq 1 ]
    then
        echo "${white}"
        xterm -T "☣ STARTING TORGHOST ☣" -geometry 100x30 -e "./logo.sh ; sudo torghost -s"
        ./tools/network/tools.sh
    elif [ $start -eq 2 ]
    then
        echo "${white}"
        xterm -T "☣ STOPING TORGHOST ☣" -geometry 100x30 -e "./logo.sh ; sudo torghost -x"
        ./tools/network/tools.sh
    elif [ $start -eq 3 ]
    then
        echo "${white}"
        xterm -T "☣ RUNNING AIRGEDDON ☣" -geometry 180x70 -e "./logo.sh ; cd tools/network/airgeddon ; sudo ./airgeddon.sh ; bash"
        ./tools/network/tools.sh
    elif [ $start -eq 4 ]
    then
        ./logo.sh
        echo "$okegreen"
        xterm -T "☣ STARTING HOST CHECKER TOOL ☣" -geometry 100x30 -e "./logo.sh ; sudo ./tools/network/act.sh ; bash"
        ./tools/network/tools.sh
    elif [ $start -eq 0 ]
    then
        ./tools/network/tools.sh
    else
        echo "$red"
        read -p  "   Wrong option. Press Enter to return" m
        if [ -z $m ]; then
            ./tools/network/tools.sh
        fi

    fi

elif [ $main -eq 3 ]
then
    ./logo.sh
	echo "  $lightgreen Choose an option:"
	echo ""
	echo  $okegreen"   $okegreen["$orange"1$okegreen]──["$orange"Cupp tool$okegreen]"
	echo  $okegreen"   $okegreen["$orange"0$okegreen]──["$orange"Main Menu$okegreen]"
	echo ""

	echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Removing Tools Menu$okegreen]:"
	read -p "   └─────► " remove

    if [ $remove -eq 1 ]
    	then
        	echo "${white}"
            xterm -T "☣ INSTALLING CUPP ☣" -geometry 100x30 -e "./logo.sh ; sudo rm -r tools/brute/cupp"
            echo ""
    		echo "  $lightgreen Cupp tool has been removed successfully"
        	sleep 3
    	    ./tools/network/tools.sh
    elif [ $remove -eq 0 ]
    then
        ./tools/network/tools.sh
    else
        echo "$red"
        read -p  "   Wrong option. Press Enter to return" m
        if [ -z $m ]; then
            ./tools/network/tools.sh
        fi

    fi

elif [ $main -eq 0 ]
then
    sudo ./dragon.sh
else
    echo "$red"
	read -p  "   Wrong option. Press Enter to return" m
	if [ -z $m ]; then
		./tools/network/tools.sh
	fi
fi
