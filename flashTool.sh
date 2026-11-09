#!/bin/bash
clear
green='\033[0;32m' # ${green}
red='\033[1;38;5;196m'  # ${red}
blue='\033[1;36m' # ${blue}
yellow='\033[0;33m' # ${yellow}
orange='\033[38;5;208m' # ${orange}
pink='\033[38;5;201m' # ${pink}
nc='\033[0m' # ${nc}

echo -e "${orange}$(figlet 'Mi Flash Tool')"
echo -e "Developed by: b4rden-del${nc}"
echo -e "${orange}Useful for both${nc}${pink} MIUI${nc}${orange} &${nc} XiaomiHyper\033[38;5;33mO${nc}s"
echo -e "\n${red}Choose your type of flashing:"
echo -e "1. Flash all"
echo -e "2. Flash all except storage"
echo -e "3. Flash all and lock"
read -p "Enter your choice [1-3]:" choice
case "$choice" in
    [123])
    echo ""
    ;;
    *)
    echo -e "${red}Invalid Input!"
    exit 1
    ;;
esac
echo -e "${green}Do you need custom path?(Default: ~/storage/shared/Download/)[y/N]:"
read pth
echo -e "${nc}"
case "$pth" in
    [Yy])
    echo -e "${blue}Enter your custom path including ROM filename:"
    read cpth
    readonly a=0
    ;;
    [Nn]|"")
    cd ~/storage/shared/Download/
    list=$(ls)
    echo -e "${blue}Which is your your fastboot ROM?"
    echo -e "${yellow}$list"
    echo -e "${blue}\nFile:${yellow}"
    read cpth
    readonly a=1
    ;;
    *)
    echo -e "Invalid option${nc}"
    exit 1
    ;;
esac
if [ ! -f "$cpth" ]
then
    echo -e "${red}Error: File does not exist!${nc}"
    exit 1
fi
folder=$(tar -tf "$cpth"|head -n 1)
rom=$(dirname "$cpth")
default= ~/storage/shared/Download
echo -e "${blue}Extracting..."
case "$a" in
    1)
    tar -xvf "$cpth" -C "$rom" &
    wait "$!"
    cd "$rom/$folder"
    ;;
    0)
    tar -xvf "$cpth" -C "$default" &
    wait "$!"
    cd "$default/$folder"
    ;;
esac
check() {
    if [ -z "$(fastboot devices)"]
    then
        echo -e "${red}\nMake sure that other device is in fastboot mode and  properly connected with this device!"
        sleep 10
    fi
        check2="$(fastboot devices)"
    if [ -z "$check2"]
    then
        echo -e "\nNot connected with other device!"
        exit 1
    else
        :
    fi
}
check
case $choice in
    1)
    echo -e "${green}Flashing all..."
    bash flash_all.sh
    ;;
    2)
    echo "Flashing all except storage..."
    bash flash_all_except_storage.sh
    ;;
    3)
    echo "Flashing all and locking bootloader...${nc}"
    bash flash_all_lock.sh
    ;;
esac
