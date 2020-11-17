#!/bin/bash

banner() {

printf "\e[1;31m  _   _______ ____  _   _ _____ _       ____   _    _   _ ___ ____ \e[0m\n"
printf "\e[1;31m | |/ / ____|  _ \| \ | | ____| |     |  _ \ / \  | \ | |_ _/ ___| \e[0m\n" 
printf "\e[1;31m | ' /|  _| | |_) |  \| |  _| | |     | |_) / _ \ |  \| || | |     \e[0m\n"
printf "\e[1;31m | . \| |___|  _ <| |\  | |___| |___  |  __/ ___ \| |\  || | |___  \e[0m\n"
printf "\e[1;31m |_|\_\_____|_| \_\_| \_|_____|_____| |_| /_/   \_\_| \_|___\____| \e[0m\n"
printf "\n                                                                          \e[0m\n"

}

menu() {
printf "\e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m]\e[0m\e[1;93m Defualt Packages\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m]\e[0m\e[1;93m Root Packages\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m3\e[0m\e[1;92m]\e[0m\e[1;93m Special Packages\e[0m\n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m\en' option

if [[ $option == 1 ]]; then
clear
printf "\e[1;93m Installing other Defualt packages... Please be patient \e[0m\n"
sleep 2
pkg install python php wget openssh openssl nano git -y
clear 
elif [[ $option == 2 ]]; then
clear
pkg install tsu -y
pkg install root-repo -y
clear
printf "\e[1;92m[\e[0m\e[1;77m!\e[0m\e[1;92m]\e[0m\e\e[1;93m Installing other Root packages... Please be patient \e[0m\n"
sleep 2
clear
pkg install aircrack-ng bettercap termshark -y
elif [[ $option == 3 ]]; then
clear 
pkg install unstable-repo -y
printf "\e[1;93m Installing other Special packages... It may take a long time. Please be patient \e[0m\n"
sleep 2
pkg install metasploit sqlmap rapidjson -y 
else
printf "\e[1;93m [!] Invalid option!\e[0m\n"
menu
fi
}
banner
menu
