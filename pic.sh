#!/bin/bash
# dont copy created by sukhdevr898

clear
 
echo -e "\e[0;31m created by sukhdevr898"
figlet -f big PICTOOL
echo -e "\e[1;31m ------------------------------------------"
echo -e "\e[1;33m \n\t\t LETS ENJOY \n\t\tVERSION 1.0"
echo -e "\e[1;31m 1 => IMAGE METADATA FINDER  "
echo -e "\e[1;31m 2 => IMAGE SHOW IN TERMUX "
echo -e "\e[1;31m 3 => OWN LOGO MAKER "
echo -e "\e[1;31m 4 => ABOUT ME"
echo -e "\e[1;31m 5 => UPDATE "
echo -e "\e[1;31m 6 => EXIT"
echo -e "\e[1;31m ------------------------------------------"
read -p "ENTER A OPTION : " op 

if [ $op == 1 ];
then
echo -e "\e[0;35m \n\t\t ENTER A FILE PATH \n (FOR SDCARD FILES USE : /sdcard/your file path )" 
read -p "ENTER YOU IMAGE PATH : " path
echo -e "\e[0;35m \n\t YOUR FILE PATH IS  : $path )"

read -p "IF YOUR FILE PATH IS CORRECT THEN TYPE 'Y' OTHERWISE TYPE 'N' : " op2
fi
case "$op2" in
Y)
echo -e "|e[0;36m \n\t\t METADATA"
exiftool $path                                                                          ;;
N)
bash pic.sh
;;
y)
echo -e "|e[0;36m \n\t\t METADATA"
exiftool $path
;;
n)
bash /data/data/com.termux/files/usr/bin/pic.sh
;;
esac
if [ $op == 2 ];
then
echo -e "\e[0;35m \n\t\t ENTER A FILE PATH \n (FOR SDCARD FILES USE : /sdcard/your file path )" 
read -p "ENTER YOU IMAGE PATH : " path2
echo -e "\e[0;35m \n\t YOUR FILE PATH IS  : $path2 )"

read -p "IF YOUR FILE PATH IS CORRECT THEN TYPE 'Y' OTHERWISE TYPE 'N' : " op3
fi
case "$op3" in
Y)
echo -e "|e[0;36m \n\t\t VIEWER"
termimage $path2
;;
N)
bash /data/data/com.termux/files/usr/bin/pic.sh
;;
y)
                                                                                  
    echo -e "|e[0;36m \n\t\t VIEWER"
                                           termimage $path2
;;
n)
bash /data/data/com.termux/files/usr/bin/pic.sh
;;
esac
if [ $op == 4 ];
then
clear
figlet -f big SUKHDEVR898
echo -e "\e[1;33m \n\t\tABOUT ME "
echo -e "\e[1;31m ------------------------------------------"
echo -e "\e[1;31m USERNAME   :  SUKHDEVR898"
echo -e "\e[1;31m FACEBOOK   : fb.com/sukhdevr898"
echo -e "\e[1;31m ISTAGRAM   : instagram.com/sukhdevr898"
echo -e "\e[1;31m     SITE   : sukhdevr898.site123.me "  
echo -e "\e[1;31m  GITHUB    : github.com/sukhdevr898"
echo -e "\e[1;31m ------------------------------------------"
echo -e "\e[1;31m"
echo -e "\e[1;31m"
sleep 5.0
bash /data/data/com.termux/files/usr/bin/pic.sh
fi
if [ $op == 5 ];
then
echo -e "\e[1;31m ALREADY UPDATED"
fi
if [ $op == 6 ];
then
echo -e "\e[1;31m EXITING..."
fi
if [ $op == 3 ];
then
echo -e "\e[1;36m \n\t TYPE HERE YOU PNG LOGO PATH "
read -p " PATH TYPE HERE : " logo
termimage $logo
echo -e "\e[0;34m \n\t DO YOU WANT SAVE AS A LOGO "
read -p " TYPE Y OR N   " logo2
fi
case "$logo2" in
Y)
termimage $logo 
echo  " termimage $logo " >> data/data/com.termux/files/home/logo.sh
figlet -f big done
;;
N)
bash /data/data/com.termux/files/usr/bin/pic.sh
;;
y)
termimage $logo
echo  " termimage $logo " >> /data/data/com.termux/files/home/logo.sh
figlet -f big done
;;
n)
bash /data/data/com.termux/files/usr/bin/pic.sh
;;
esac
