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

var1=$(find -type f -name "dhunter.rb" | grep tools/vulnerabilities/droid-hunter)
if [ -z $var1 ]
then
    droid="X"
    color1=$red
else
    droid="✔"
    color1=$okegreen
fi

var2=$(find -type f -name "run.sh" | grep tools/vulnerabilities/Mobile-Security-Framework-MobSF)
if [ -z $var2 ]
then
    mobsf="X"
    color2=$red
else
    mobsf="✔"
    color2=$okegreen
fi

var3=$(hash gvm-stop)
if [ -z $var3 ]
then
    gvm="X"
    color3=$red
else
    gvm="✔"
    color3=$okegreen
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

echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Vulnerabilities scanning tools Menu$okegreen]:"
read -p "   └─────► " main

#--------------------------------------------------------Main Menu------------------------------------------------------------------#

if [ $main -eq 1 ]
then
	./logo.sh
	echo "  $lightgreen Choose an option:"
	echo ""
	echo  $okegreen"   $okegreen["$orange"1$okegreen]──["$orange"Droid Hunter tool$okegreen]			 [$color1$droid$okegreen]"
	echo  $okegreen"   $okegreen["$orange"2$okegreen]──["$orange"MobSF tool$okegreen]      			 [$color2$mobsf$okegreen]"
	echo  $okegreen"   $okegreen["$orange"3$okegreen]──["$orange"OpenVAS tool - Kali Linux Only$okegreen]         [$color3$gvm$okegreen]"
	echo  $okegreen"   $okegreen["$orange"0$okegreen]──["$orange"Main Menu$okegreen]"
	echo ""

	echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Tools installation Menu$okegreen]:"
	read -p "   └─────► " install

    	if [ $install -eq 1 ]
    	then
        	echo "${white}"
            xterm -T "☣ INSTALLING DROID-HUNTER ☣" -geometry 100x30 -e "./logo.sh ; git clone https://github.com/hahwul/droid-hunter.git tools/vulnerabilities/droid-hunter ; cd tools/vulnerabilities/droid-hunter ; gem install html-table ; gem install colorize"
            xterm -T "☣ INSTALLING DROID-HUNTER ☣" -geometry 120x50 -e "./logo.sh ; cd tools/vulnerabilities/droid-hunter ; ruby dhunter.rb;bash"
    	    ./tools/vulnerabilities/tools.sh
        elif [ $install -eq 2 ]
    	then
            xterm -T "☣ INSTALLING MOBSF ☣" -geometry 100x30 -e "./logo.sh ; git clone https://github.com/MobSF/Mobile-Security-Framework-MobSF.git tools/vulnerabilities/Mobile-Security-Framework-MobSF"
            xterm -T "☣ INSTALLING MOBSF ☣" -geometry 100x30 -e "./logo.sh ; cd tools/vulnerabilities/Mobile-Security-Framework-MobSF ; sudo ./setup.sh"
        	echo ""
        	echo "  $lightgreen MobSF tool has been installed successfully"
        	sleep 3
        	./tools/vulnerabilities/tools.sh
        elif [ $install -eq 3 ]
    	then
            echo "${white}"
            echo "  $orange Important Note:"
            echo "  $orange End of the gvm setup, you have to save the password in our notes or copy it."
			echo "  $orange Login in to the openvas with admin username and the password will be given at the end of the setup."
            sleep 5
            xterm -T "☣ INSTALLING OPENVAS ☣" -geometry 170x80 -e "./logo.sh ; sudo apt update -y ; sudo apt upgrade -y ; sudo apt autoremove -y"
            xterm -T "☣ INSTALLING OPENVAS ☣" -geometry 170x80 -e "./logo.sh ; sudo apt-get install openvas -y ; sudo gvm-setup ; bash"
            echo ""
            echo "  $lightgreen Finished gvm setup"
            echo ""
            echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Press Enter to return$okegreen]:"
            read -p "   └─────► " m
            if [ -z $m ]; then
                ./tools/vulnerabilities/tools.sh
            fi

        elif [ $install -eq 0 ]
    	then
            ./tools/vulnerabilities/tools.sh
        else
            echo "$red"
            read -p  "   Wrong option. Press Enter to return" m
            if [ -z $m ]; then
                ./tools/vulnerabilities/tools.sh
            fi
        fi
elif [ $main -eq 2 ]
then
	./logo.sh
	echo "  $lightgreen Choose an option:"
	echo ""
	echo  $okegreen"   $okegreen["$orange"1$okegreen]──["$orange"Droid Hunter tool$okegreen]  			 [$color1$droid$okegreen]"
	echo  $okegreen"   $okegreen["$orange"2$okegreen]──["$orange"MobSF tool$okegreen]        			 [$color2$mobsf$okegreen]"
	echo  $okegreen"   $okegreen["$orange"3$okegreen]──["$orange"OpenVAS tool Start - Kali Linux Only$okegreen]   [$color3$gvm$okegreen]"
    echo  $okegreen"   $okegreen["$orange"4$okegreen]──["$orange"OpenVAS tool Stop - Kali Linux Only$okegreen]    [$color3$gvm$okegreen]"
	echo  $okegreen"   $okegreen["$orange"0$okegreen]──["$orange"Main Menu$okegreen]"
	echo ""

	echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Start scanning tools Menu$okegreen]:"
	read -p "   └─────► " start
	
	if [ $start -eq 1 ]
    then
        echo "${white}"
        echo "  $lightgreen Choose an option:"
        ruby ./tools/vulnerabilities/droid-hunter/dhunter.rb 
        echo "$orange"
        echo "   You can choose the option you want and scan multiple apk at the same time"
        echo "   For Example (Type --apk /directory/of/apk) The the output will show in different terminal"
        echo "$okegreen"
        read -p "   ruby ./dhunter.rb 'Your command here': " commandr
        xterm -T "☣ RUNNING DROID-HUNTER ☣" -geometry 100x30 -e "./logo.sh ; ruby ./tools/vulnerabilities/droid-hunter/dhunter.rb $commandr ; bash"
        ./tools/vulnerabilities/tools.sh
	elif [ $start -eq 2 ]
	then
		echo "${white}"
        xterm -T "☣ RUNNING MOBSF ☣" -geometry 100x30 -e "cd tools/vulnerabilities/Mobile-Security-Framework-MobSF ; ./run.sh 127.0.0.1:5000"
        ./tools/vulnerabilities/tools.sh
		
	elif [ $start -eq 3 ]
	then
		echo "${white}"
        xterm -T "☣ RUNNING OPENVAS ☣" -geometry 120x50 -e "./logo.sh ; sudo gvm-start ; bash"
        ./tools/vulnerabilities/tools.sh
    elif [ $start -eq 4 ]
	then
		echo "${white}"
        xterm -T "☣ STOPPING OPENVAS ☣" -geometry 120x50 -e "./logo.sh ; sudo gvm-stop ; bash"
        ./tools/vulnerabilities/tools.sh
	elif [ $start -eq 0 ]
    then 
        ./tools/vulnerabilities/tools.sh
	else
		echo "$red"
		read -p  "   Wrong option. Press Enter to return" m
		if [ -z $m ]; then
		    ./tools/vulnerabilities/tools.sh
		fi
    fi
elif [ $main -eq 3 ]
then
    ./logo.sh
	echo "  $lightgreen Choose an option:"
	echo ""
	echo  $okegreen"   $okegreen["$orange"1$okegreen]──["$orange"Droid Hunter tool$okegreen]  			 [$color1$droid$okegreen]"
	echo  $okegreen"   $okegreen["$orange"2$okegreen]──["$orange"MobSF tool$okegreen]       			 [$color2$mobsf$okegreen]"
	echo  $okegreen"   $okegreen["$orange"3$okegreen]──["$orange"OpenVAS tool - Kali Linux Only$okegreen]         [$color3$gvm$okegreen]"
	echo  $okegreen"   $okegreen["$orange"0$okegreen]──["$orange"Main Menu$okegreen]"
	echo ""

	echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Removing tools Menu$okegreen]:"
	read -p "   └─────► " remove

    if [ $remove -eq 1 ]
    	then
    		echo "${white}"
			xterm -T "☣ REMOVING Droid Hunter ☣" -geometry 100x50 -e "./logo.sh ; sudo rm -r tools/vulnerabilities/droid-hunter"
    		echo ""
    		echo "  $lightgreen Droid Hunter tool has been removed successfully"
        	sleep 3
			./tools/vulnerabilities/tools.sh
    		
    	elif [ $remove -eq 2 ]
    	then
    		echo "${white}"
			xterm -T "☣ REMOVING MOBSF ☣" -geometry 100x50 -e "./logo.sh ; sudo rm -r tools/vulnerabilities/Mobile-Security-Framework-MobSF"
    		echo ""
    		echo "  $lightgreen MOBSF tool has been removed successfully"
        	sleep 3
			./tools/vulnerabilities/tools.sh
        elif [ $remove -eq 3 ]
    	then
    		echo "${white}"
			xterm -T "☣ REMOVING OPENVAS ☣" -geometry 100x50 -e "./logo.sh ; sudo apt-get purge openvas ; sudo apt-get purge --auto-remove openvas ; sudo apt-get remove openvas ; sudo apt-get remove --auto-remove openvas"
    		echo ""
    		echo "  $lightgreen OPENVAS tool has been removed successfully"
        	sleep 3
			./tools/vulnerabilities/tools.sh
        elif [ $remove -eq 0 ]
    	then
			./tools/vulnerabilities/tools.sh
        else
            echo "$red"
            read -p  "   Wrong option. Press Enter to return" m
            if [ -z $m ]; then
                ./tools/vulnerabilities/tools.sh
            fi
        fi

elif [ $main -eq 0 ]
then
    sudo ./home.sh
else
    echo "$red"
	read -p  "   Wrong option. Press Enter to return" m
	if [ -z $m ]; then
		./tools/vulnerabilities/tools.sh
	fi
fi
