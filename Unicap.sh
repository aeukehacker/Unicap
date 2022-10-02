#! /bin/bash 
echo "This Tool Support root System , USe this tool in root mode ... This Tool is only for Educational and research purpose only ."

echo " Unicap"

echo Starting Unicap Engine '#####                     (33%)\r'
sleep 2
echo Environment  ' Creating Environment For Scanning            (66%)\r'
sleep 2
echo Process ' Finishing Done  (100%)\r'
echo -ne '\n'
sleep 2
echo "Checking the system Configuration ...........................100%"

echo "Installing the Basic Utility "

echo "1 . Updating System"
sleep 1
echo "2 . Please Run the Installation File Before running the tool"
sleep 2
echo "Done ..Starting Tool"
sleep 2

echo " " "



██╗░░░██╗███╗░░██╗██╗░█████╗░░█████╗░██████╗░
██║░░░██║████╗░██║██║██╔══██╗██╔══██╗██╔══██╗
██║░░░██║██╔██╗██║██║██║░░╚═╝███████║██████╔╝
██║░░░██║██║╚████║██║██║░░██╗██╔══██║██╔═══╝░
╚██████╔╝██║░╚███║██║╚█████╔╝██║░░██║██║░░░░░
░╚═════╝░╚═╝░░╚══╝╚═╝░╚════╝░╚═╝░░╚═╝╚═╝░░░░░

" " "
echo "Enter Target IP - :  "


read IP 

echo "Enter your Port to Indenity way - : "

read port 

echo "Select a Scan - : \n 1 for Aggresive \n 2 for Syn \n 3 for TCP Scan"

read st

if [ $st -eq 1  ]
then 
   nmap -A $IP -p $port | grep open 
   
elif [ $st -eq 2  ]
then 
  nmap -sS -O -sV $IP -p $port | grep open 
  
 elif [ $st -eq 3 ]
 then 
    nmap -st -O -sV $IP -p $port | grep open 
fi         
