#!/bin/bash

# Ansı Escape
RED='\033[0;31m'
RESET='\033[0m'

# ASCII VISEC

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
          
          
        ❥ Created by VISEC Team ⛧
        ➤ VISEC                  
        ♥ VISECurity             
        
        
__     __          
\ \   / / #JoinUS  
 \ \ / / #Freedom  
  \ V / #VISECurity
   \_/             
      
"



full_message="$ascii_art$message"

IFS=$'\n' read -d '' -r -a lines <<< "$full_message"

# Terminal
rows=$(tput lines)
cols=$(tput cols)

# Padding Num
padding=5

# Ekranı temizle
clear

# Up
for ((i=0; i<${#lines[@]} + rows + padding; i++))
do
  clear
  for ((j=0; j<rows; j++))
  do
    index=$((i - rows + j))
    if (( index >= 0 && index < ${#lines[@]} )); then
      # Ekranda ortalanmış mesaj
      tput cup $((j)) $((cols / 2 - ${#lines[index]} / 2))
      echo -e "${lines[index]}"
    fi
  done
  # Speed
  sleep 0.2
done
