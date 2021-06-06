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

var1=$(find -type f -name "seeker.py" | grep tools/social/seeker)
if [ -z $var1 ]
then
    seeker="X"
    color1=$red
else
    seeker="✔"
    color1=$okegreen
fi

var2=$(find -type f -name "sherlock" | grep tools/social/sherlock)
if [ -z $var2 ]
then
    sher="X"
    color2=$red
else
    sher="✔"
    color2=$okegreen
fi

var3=$(find -type f -name "fatrat" | grep tools/social/TheFatRat)
if [ -z $var2 ]
then
    fat="X"
    color3=$red
else
    fat="✔"
    color3=$okegreen
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

echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Social Engineering tools Menu$okegreen]:"
read -p "   └─────► " main

#--------------------------------------------------------Main Menu------------------------------------------------------------------#

if [ $main -eq 1 ]
then
	./logo.sh
	echo "  $lightgreen Choose an option:"
	echo ""
	echo  $okegreen"   $okegreen["$orange"1$okegreen]──["$orange"Seeker tool - Location$okegreen]             [$color1$seeker$okegreen]"
    echo  $okegreen"   $okegreen["$orange"2$okegreen]──["$orange"Sherlock tool - Hunt usernames$okegreen]     [$color2$sher$okegreen]"
    echo  $okegreen"   $okegreen["$orange"3$okegreen]──["$orange"TheFatRat$okegreen]                          [$color3$fat$okegreen]"
    echo  $okegreen"   $okegreen["$orange"4$okegreen]──["$orange"Social Engineering toolkit$okegreen]"
	echo  $okegreen"   $okegreen["$orange"0$okegreen]──["$orange"Main Menu$okegreen]"
	echo ""

	echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Tools installation Menu$okegreen]:"
	read -p "   └─────► " install

    if [ $install -eq 1 ]
    then
        echo "${white}"
        xterm -T "☣ INSTALLING SEEKER ☣" -geometry 100x30 -e "./logo.sh ; git clone https://github.com/thewhiteh4t/seeker.git tools/social/seeker ; chmod +x tools/social/seeker/install.sh ; cd tools/social/seeker ; sudo ./install.sh"
        ./tools/social/tools.sh
    elif [ $install -eq 2 ]
    then
        echo "${white}"
        xterm -T "☣ INSTALLING SHERLOCK ☣" -geometry 100x30 -e "./logo.sh ; git clone https://github.com/sherlock-project/sherlock.git tools/social/sherlock ; cd tools/social/sherlock ; python3 -m pip install -r requirements.txt"
        ./tools/social/tools.sh
    elif [ $install -eq 3 ]
    then
        echo "${white}"
        xterm -T "☣ INSTALLING TheFatRat ☣" -geometry 100x30 -e "./logo.sh ; git clone https://github.com/Screetsec/TheFatRat.git tools/social/TheFatRat ; cd tools/social/TheFatRat ; chmod +x setup.sh ; sudo ./setup.sh"
        ./tools/social/tools.sh
    elif [ $install -eq 4 ]
    then
        echo "${white}"
        xterm -T "☣ INSTALLING SETKIT ☣" -geometry 100x30 -e "./logo.sh ; git clone https://github.com/trustedsec/social-engineer-toolkit/ tools/social/setoolkit/ ; cd tools/social/setoolkit ; sudo pip3 install -r requirements.txt ; sudo python setup.py"
        ./tools/social/tools.sh
    elif [ $install -eq 0 ]
    then
        ./tools/social/tools.sh
    else
        echo "$red"
        read -p  "   Wrong option. Press Enter to return" m
        if [ -z $m ]; then
            ./tools/social/tools.sh
        fi

    fi

elif [ $main -eq 2 ]
then
    ./logo.sh
	echo "  $lightgreen Choose an option:"
	echo ""
	echo  $okegreen"   $okegreen["$orange"1$okegreen]──["$orange"Seeker tool - Location$okegreen]             [$color1$seeker$okegreen]"
    echo  $okegreen"   $okegreen["$orange"2$okegreen]──["$orange"Sherlock tool - Hunt usernames$okegreen]     [$color2$sher$okegreen]"
    echo  $okegreen"   $okegreen["$orange"3$okegreen]──["$orange"TheFatRat$okegreen]                          [$color3$fat$okegreen]"
    echo  $okegreen"   $okegreen["$orange"4$okegreen]──["$orange"Social Engineering toolkit$okegreen]"
	echo  $okegreen"   $okegreen["$orange"0$okegreen]──["$orange"Main Menu$okegreen]"
	echo ""

	echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Start Tools Menu$okegreen]:"
	read -p "   └─────► " start

    if [ $start -eq 1 ]
    then
        echo "${white}"
        echo "  $lightgreen After choosing from the Seeker tool send the ngrok link to the victom"
        xterm -T "☣ RUNNING SEEKER ☣" -geometry 100x30 -e "./logo.sh ; cd tools/social/seeker ; sudo ./seeker.py -t manual ; bash" &
        xterm -T "☣ RUNNING SEEKER ☣" -geometry 100x30 -e "./logo.sh ; sudo ./ngrok http 8080"
        ./tools/social/tools.sh
    elif [ $start -eq 2 ]
    then
        echo "$okegreen"
        read -p "   Enter username to hunt it: " username
        xterm -T "☣ RUNNING SHERLOCK ☣" -geometry 100x30 -e "./logo.sh ; cd tools/social/sherlock ; python3 sherlock $username"
        ./tools/social/tools.sh
    elif [ $start -eq 3 ]
    then
        echo "$okegreen"
        xterm -T "☣ RUNNING TheFatRat ☣" -geometry 100x30 -e "./logo.sh ; cd tools/social/TheFatRat ; sudo ./fatrat"
        ./tools/social/tools.sh
    elif [ $start -eq 4 ]
    then
        xterm -T "☣ RUNNING SETKIT ☣" -geometry 150x50 -e "./logo.sh ; sudo setoolkit"
        ./tools/social/tools.sh
    elif [ $start -eq 0 ]
    then
        ./tools/social/tools.sh
    else
        echo "$red"
        read -p  "   Wrong option. Press Enter to return" m
        if [ -z $m ]; then
            ./tools/social/tools.sh
        fi

    fi

elif [ $main -eq 3 ]
then
    ./logo.sh
	echo "  $lightgreen Choose an option:"
	echo ""
	echo  $okegreen"   $okegreen["$orange"1$okegreen]──["$orange"Seeker tool - Location$okegreen]             [$color1$seeker$okegreen]"
    echo  $okegreen"   $okegreen["$orange"2$okegreen]──["$orange"Sherlock tool - Hunt usernames$okegreen]     [$color2$sher$okegreen]"
    echo  $okegreen"   $okegreen["$orange"3$okegreen]──["$orange"TheFatRat$okegreen]                          [$color3$fat$okegreen]"
	echo  $okegreen"   $okegreen["$orange"0$okegreen]──["$orange"Main Menu$okegreen]"
	echo ""

	echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Removing Tools Menu$okegreen]:"
	read -p "   └─────► " remove

    if [ $remove -eq 1 ]
    then
        echo "${white}"
        xterm -T "☣ REMOVING SEEKER ☣" -geometry 100x30 -e "./logo.sh ; sudo rm -r tools/social/seeker"
        echo ""
        echo "  $lightgreen SEEKER tool has been removed successfully"
        sleep 2
        ./tools/social/tools.sh
    elif [ $remove -eq 2 ]
    then
        echo "${white}"
        xterm -T "☣ REMOVING SHERLOCK ☣" -geometry 100x30 -e "./logo.sh ; sudo rm -r tools/social/sherlock"
        echo ""
        echo "  $lightgreen Sherlock tool has been removed successfully"
        sleep 2
        ./tools/social/tools.sh
    elif [ $remove -eq 2 ]
    then
        echo "${white}"
        xterm -T "☣ REMOVING TheFatRat ☣" -geometry 100x30 -e "./logo.sh ; sudo rm -r tools/social/TheFatRat"
        echo ""
        echo "  $lightgreen TheFatRat tool has been removed successfully"
        sleep 2
        ./tools/social/tools.sh
    elif [ $remove -eq 0 ]
    then
        ./tools/social/tools.sh
    else
        echo "$red"
        read -p  "   Wrong option. Press Enter to return" m
        if [ -z $m ]; then
            ./tools/social/tools.sh
        fi

    fi

elif [ $main -eq 0 ]
then
    sudo ./home.sh
else
    echo "$red"
	read -p  "   Wrong option. Press Enter to return" m
	if [ -z $m ]; then
		./tools/social/tools.sh
	fi
fi