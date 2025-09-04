#!/bin/bash

# Darkfetch - A simple system information fetcher script
# Version 0.01
UPTIME=$(uptime -p)
DE=$(echo $XDG_CURRENT_DESKTOP)
WM=$(echo $XDG_SESSION_DESKTOP)
SHELL_NAME=$(basename $SHELL)
DU=$(df -h --total | grep 'total' | awk '{print $2, "used:", $3, "avail:", $4, "use%:", $5}')
NPROC=$(lscpu | grep 'Model name:' | sed 's/Model name: *//g')
PROC_COUNT=$(lscpu | grep 'CPU(s):' | awk '{print $2}' | head -n 1)
DATA=$(date)
MEM=$(free -h | awk '{print $2}' | grep 'G' | head -n 1)
wmi=$(whoami)
namer=$(uname -r)
names=$(uname -s)
nameo=$(lsb_release -d | cut -f2)
namen=$(uname -n)
namem=$(uname -m)
namep=$(uname -p)
bold=$(tput bold)
normal=$(tput sgr0)
RED='\033[31m'
GREEN='\033[32m'
YELLOW='\033[33m'
BLUE='\033[34m'
NC='\033[0m'
MF='
-#############################-
-#-.........................-#-
-#-..###.######.############-#-
-#-.##+##..+###.#...########-#-
-#-.........................-#-
-#-..............-..........-#-
-#-..............-.......-..-#-
-#-............##-.......#..-#-
-#-.........-####-.....###..-#-
-#-.......#######-..-#####..-#-
-#-.....#########-#######....#-
-#-...#################...####-
-#-.#################+-.######-
-##########.#########.########-
-########.+########.##########-
-######..-#################.-#-
-###-...#################...-#-
-#....######+##########.....-#-
-#-.######..-########.......-#-
-#-.####....-#####-.........-#-
-#-.##-.....-###............-#-
-#-.#+......-#-.............-#-
-##.........-+..............##-
 .###.....................###. 
   .###.................###.   
     .###.............###.     
       .#+-.........-+#.       
         .#.........#.         
           .#.....#.           
             +#.#+             
              .#.              

'
echo -e "${YELLOW}${MF}${NC}"


echo -e "${RED}${bold}Darkfetch 0.01${NC}${normal}"
echo -e "${BLUE}${bold}===========================${NC}${normal}"
echo -e "${GREEN}${bold}Kernel version: ${NC}${normal}${namer}"
echo -e "${GREEN}${bold}Current date and time: ${NC}${normal}${DATA}"
echo -e "${GREEN}${bold}OS name: ${NC}${normal}${nameo}"
echo -e "${GREEN}${bold}host@name: ${NC}${normal}${namen}@${wmi}"
echo -e "${GREEN}${bold}DE: ${NC}${normal}${DE}"
#echo -e "${GREEN}${bold}WM: ${NC}${normal}${WM}"
echo -e "${GREEN}${bold}Default shell: ${NC}${normal}${SHELL_NAME}"
echo -e "${GREEN}${bold}System uptime: ${NC}${normal}${UPTIME}"
echo -e "${GREEN}${bold}Machine hardware name: ${NC}${normal}${NPROC}"
echo -e "${GREEN}${bold}Processor type: ${NC}${normal}${namem}"
echo -e "${GREEN}${bold}Number of processors: ${NC}${normal}${PROC_COUNT}"
echo -e "${GREEN}${bold}Total memory: ${NC}${normal}${MEM}"
echo -e "${GREEN}${bold}Disk usage: ${NC}${normal}\n${DU}"
echo -e "${BLUE}${bold}===========================${NC}${normal}"
echo -e "${YELLOW}Тищенко підар!${NC}"
