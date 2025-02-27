#!/bin/bash

RED='\033[0;31m'
RESET='\033[0m'

ascii_art="
${RED}
__     _____ ____  _____ ____ 
\ \   / /_ _/ ___|| ____/ ___|
 \ \ / / | |\___ \|  _|| |    
  \ V /  | | ___) | |__| |___ 
   \_/  |___|____/|_____\____|
   
"
echo ""
message="
[1] We are hacked your system.      
     
[2] Your System & Security are Sucks.
 
[3] We don't FORGET	                
     
[4] We are dont Forgive.            
          
          
        ❥ Created by YourSecurity Team ⛧
        ➤ VISEC                  
        ♥ YourSecurity             
        
        
__     __          
\ \   / / #JoinUS  
 \ \ / / #Freedom  
  \ V / #YourSecurity
   \_/             
      
"



full_message="$ascii_art$message"

IFS=$'\n' read -d '' -r -a lines <<< "$full_message"

rows=$(tput lines)
cols=$(tput cols)

padding=5

clear

for ((i=0; i<${#lines[@]} + rows + padding; i++))
do
  clear
  for ((j=0; j<rows; j++))
  do
    index=$((i - rows + j))
    if (( index >= 0 && index < ${#lines[@]} )); then
      tput cup $((j)) $((cols / 2 - ${#lines[index]} / 2))
      echo -e "${lines[index]}"
    fi
  done
  sleep 0.2
done
