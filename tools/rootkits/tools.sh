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

if ! hash chkrootkit 2>/dev/null
then
	ckecho="x"
	color1=$red
else
	ckecho="✔"
	color1=$okegreen
fi

if ! hash rkhunter 2>/dev/null
then
	rkhunter="x"
	color2=$red
else
	rkhunter="✔"
	color2=$okegreen
fi

var=$(find -type f -name "lynis" | grep tools/rootkits/lynis/lynis)
if [ -z $var ]
then
	lynis="x"
	color3=$red
else
	lynis="✔"
	color3=$okegreen
fi

if ! hash clamscan 2>/dev/null
then
	clamav="x"
	color4=$red
else
	clamav="✔"
	color4=$okegreen
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

echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Rootkits scanning tools Menu$okegreen]:"
read -p "   └─────► " main

#--------------------------------------------------------Main Menu------------------------------------------------------------------#

if [ $main -eq 1 ]
then
	./logo.sh
	echo "  $lightgreen Choose an option:"
	echo ""
	echo  $okegreen"   $okegreen["$orange"1$okegreen]──["$orange"Lynis tool $okegreen]		[$color3$lynis$okegreen]"
	echo  $okegreen"   $okegreen["$orange"2$okegreen]──["$orange"Chkrootkit tool $okegreen]	[$color1$ckecho$okegreen]"
	echo  $okegreen"   $okegreen["$orange"3$okegreen]──["$orange"Rkhunter tool $okegreen]	[$color2$rkhunter$okegreen]"
    echo  $okegreen"   $okegreen["$orange"4$okegreen]──["$orange"ClamAV tool $okegreen]		[$color4$clamav$okegreen]"
	echo  $okegreen"   $okegreen["$orange"0$okegreen]──["$orange"Main Menu$okegreen]"
	echo ""

	echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Tools installation Menu$okegreen]:"
	read -p "   └─────► " install

    	if [ $install -eq 1 ]
    	then
			xterm -T "☣ INSTALLING LYNIS ☣" -geometry 100x30 -e "./logo.sh ; git clone https://github.com/CISOfy/lynis tools/rootkits/lynis ; sudo chown -R 0:0 tools/rootkits/lynis"
        	echo ""
        	echo "  $lightgreen Lynis tool has been installed successfully"
        	sleep 2
        	./tools/rootkits/tools.sh
    	elif [ $install -eq 2 ]
    	then 
			xterm -T "☣ INSTALLING CHKROOTKIT ☣" -geometry 100x30 -e "./logo.sh ; sudo apt-get install chkrootkit -y"
			echo ""
			echo "  $lightgreen Chkrootkit tool has been installed successfully"
        	sleep 2
			./tools/rootkits/tools.sh
    	elif [ $install -eq 3 ]
    	then 
			xterm -T "☣ INSTALLING RKHUNTER ☣" -geometry 100x30 -e "./logo.sh ; sudo apt-get install rkhunter -y"
			echo ""
			echo "  $lightgreen Rkhunter tool has been installed successfully"
        	sleep 2
			./tools/rootkits/tools.sh
    	elif [ $install -eq 4 ]
    	then 
			xterm -T "☣ INSTALLING CLAMAV ☣" -geometry 100x30 -e "./logo.sh ; sudo apt-get install clamav -y"
			echo ""
			echo "  $lightgreen ClamAV tool has been installed successfully"
        	sleep 2
			./tools/rootkits/tools.sh
    	elif [ $install -eq 0 ]
    	then 
        	./tools/rootkits/tools.sh
    	else
    		echo "$red"
    		read -p  "   Wrong option. Press Enter to return" m
    		if [ -z $m ]; then
			./tools/rootkits/tools.sh
		fi
    	fi
	
elif [ $main -eq 2 ]
then
	./logo.sh
	echo "  $lightgreen Choose an option:"
	echo ""
	echo  $okegreen"   $okegreen["$orange"1$okegreen]──["$orange"Lynis tool $okegreen]		[$color3$lynis$okegreen]"
	echo  $okegreen"   $okegreen["$orange"2$okegreen]──["$orange"Chkrootkit tool $okegreen]	[$color1$ckecho$okegreen]"
	echo  $okegreen"   $okegreen["$orange"3$okegreen]──["$orange"Rkhunter tool $okegreen]	[$color2$rkhunter$okegreen]"
    echo  $okegreen"   $okegreen["$orange"4$okegreen]──["$orange"ClamAV tool $okegreen]		[$color4$clamav$okegreen]"
	echo  $okegreen"   $okegreen["$orange"0$okegreen]──["$orange"Main Menu$okegreen]"
	echo ""

	echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Start scanning tools Menu$okegreen]:"
	read -p "   └─────► " start
	
	if [ $start -eq 1 ]
    	then
    		echo "${white}"
			xterm -T "☣ RUNNING LYNIS ☣" -geometry 170x80 -e "./logo.sh ; cd tools/rootkits/lynis; ./lynis audit system ; bash"
    		echo ""
    		echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Press Enter to return$okegreen]:"
			read -p "   └─────► " m
    		if [ -z $m ]; then
				./tools/rootkits/tools.sh
			fi	
	elif [ $start -eq 2 ]
	then
		echo "${white}"
		xterm -T "☣ RUNNING CHKROOTKIT ☣" -geometry 170x80 -e "./logo.sh ; sudo chkrootkit ; bash"
		echo ""
		echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Press Enter to return$okegreen]:"
		read -p "   └─────► " m
		if [ -z $m ]; then
			./tools/rootkits/tools.sh
		fi
		
	elif [ $start -eq 3 ]
	then
		echo "${white}"
		xterm -T "☣ RUNNING RKHUNTER ☣" -geometry 170x80 -e "./logo.sh ; sudo rkhunter -c ; bash"
		echo ""
		echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Press Enter to return$okegreen]:"
		read -p "   └─────► " m
		if [ -z $m ]; then
			./tools/rootkits/tools.sh
		fi
		
	elif [ $start -eq 4 ]
	then
		echo "${white}"
		sudo clamscan -h
		echo ""
		echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Choose an option:$okegreen]:"
		read -p "   └─────► " calms
		echo "${white}"
		sudo clamscan $calms
		echo ""
		echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Press Enter to return$okegreen]:"
		read -p "   └─────► " m
		if [ -z $m ]; then
			./tools/rootkits/tools.sh
		fi
	elif [ $start -eq 0 ]
    	then 
        	./tools/rootkits/tools.sh
	else
		echo "$red"
		read -p  "   Wrong option. Press Enter to return" m
		if [ -z $m ]; then
			./tools/rootkits/tools.sh
		fi
    fi
elif [ $main -eq 3 ]
then
	./logo.sh
	echo "  $lightgreen Choose an option:"
	echo ""
	echo  $okegreen"   $okegreen["$orange"1$okegreen]──["$orange"Lynis tool $okegreen]		[$color3$lynis$okegreen]"
	echo  $okegreen"   $okegreen["$orange"2$okegreen]──["$orange"Chkrootkit tool $okegreen]	[$color1$ckecho$okegreen]"
	echo  $okegreen"   $okegreen["$orange"3$okegreen]──["$orange"Rkhunter tool $okegreen]	[$color2$rkhunter$okegreen]"
    echo  $okegreen"   $okegreen["$orange"4$okegreen]──["$orange"ClamAV tool $okegreen]		[$color4$clamav$okegreen]"
	echo  $okegreen"   $okegreen["$orange"0$okegreen]──["$orange"Main Menu$okegreen]"
	echo ""
	echo  $okegreen"   ┌─["$red"Dragon$okegreen]──[$red~$okegreen]─["$orange"Removing tools Menu$okegreen]:"
	read -p "   └─────► " remove
	
	if [ $remove -eq 1 ]
    	then
    		echo "${white}"
			xterm -T "☣ REMOVING LYNIS ☣" -geometry 100x50 -e "./logo.sh ; sudo rm -r tools/rootkits/lynis"
    		echo ""
    		echo "  $lightgreen Lynis tool has been removed successfully"
        	sleep 2
			./tools/rootkits/tools.sh
    		
    	elif [ $remove -eq 2 ]
    	then
    		echo "${white}"
			xterm -T "☣ REMOVING CHKROOTKIT ☣" -geometry 100x50 -e "./logo.sh ; sudo apt-get remove chkrootkit -y ; sudo apt-get purge chkrootkit -y"
    		echo ""
    		echo "  $lightgreen Chkrootkit tool has been removed successfully"
        	sleep 2
			./tools/rootkits/tools.sh
    		
    	elif [ $remove -eq 3 ]
    	then
    		echo "${white}"
			xterm -T "☣ REMOVING RKHUNTER ☣" -geometry 100x50 -e "./logo.sh ; sudo apt-get remove rkhunter -y ; sudo apt-get purge rkhunter -y"
    		echo ""
    		echo "  $lightgreen Rkhunter tool has been removed successfully"
        	sleep 2
			./tools/rootkits/tools.sh
    		
    	elif [ $remove -eq 4 ]
    	then
    		echo "${white}"
			xterm -T "☣ REMOVING CLAMAV ☣" -geometry 100x50 -e "./logo.sh ; sudo apt-get remove clamav -y ; sudo apt-get purge clamav -y"
    		echo ""
    		echo "  $lightgreen ClamAV tool has been removed successfully"
        	sleep 2
			./tools/rootkits/tools.sh
    		
    	elif [ $remove -eq 0 ]
    	then 
        	./tools/rootkits/tools.sh
        
    	else
    		echo "$red"
    		read -p  "   Wrong option. Press Enter to return" m
    		if [ -z $m ]; then
				./tools/rootkits/tools.sh
			fi
    	fi
elif [ $main -eq 0 ]
then
    sudo ./home.sh
else
    echo "$red"
	read -p  "   Wrong option. Press Enter to return" m
	if [ -z $m ]; then
		./tools/rootkits/tools.sh
	fi
fi
