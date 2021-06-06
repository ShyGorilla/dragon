red1="`tput setaf 1`"
if [ $(id -u) -ne 0 ]; then
	echo "${red1}This script must be run as root!"
	exit 1
fi
chmod +x logo.sh
chmod +x end.sh
chmod +x tools/network/act.sh
chmod +x xtermlogo.sh
chmod +x home.sh
sudo apt-get install python3.8 -y
./logo.sh
sudo apt update -y
sudo apt install git -y
sudo apt install gedit -y
sudo apt install tor -y
chmod +x tools/rootkits/tools.sh
chmod +x tools/brute/tools.sh
chmod +x tools/social/tools.sh
chmod +x tools/phishing/tools.sh
chmod +x tools/network/tools.sh
chmod +x tools/network/wifite.py
chmod +x tools/vulnerabilities/tools.sh
chmod +x dragon.sh
sudo apt-get install bettercap -y
sudo apt-get install dnsmasq -y
sudo apt-get install hostapd-wpe -y
sudo apt-get install isc-dhcp-server-ldap -y
sudo apt-get install aapt -y
sudo apt-get install isc-dhcp-server-dbg -y
sudo apt-get install asleap -y
sudo apt-get install hostapd -y
sudo apt-get install mdk4 -y
sudo apt-get install libcurl4-openssl-dev libssl-dev pkg-config -y
git clone https://github.com/ZerBea/hcxdumptool.git
cd hcxdumptool
sudo make
sudo make install
cd ..
git clone https://github.com/ZerBea/hcxtools.git
cd hcxtools
sudo make 
sudo make install 
cd ..
sudo apt-get install beef-xss -y
sudo apt-get install lighttpd -y
sudo apt-get install xterm -y
sudo apt-get install git -y
sudo apt-get install aircrack-ng -y
sudo apt-get install openjdk-8-jdk -y
sudo apt install hcxdumptool -y
sudo apt install python3-dev python3-venv python3-pip build-essential libffi-dev libssl-dev libxml2-dev libxslt1-dev zlib1g-dev wkhtmltopdf -y
sudo apt update -y
sudo cat command.txt > ~/.Xresources
sudo xrdb -merge ~/.Xresources
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
sudo rm -r ngrok-stable-linux-amd64.zip