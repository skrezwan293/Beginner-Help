#!/bin/bash
banner(){
echo "###########################################"
echo "#                                         #"
echo "#                                         #"
echo "#              Beginner Help              #"
echo "#                                         #"
echo "#                                         #"
echo "###########################################"
}
msg(){
echo "enter '1'  show your ip-address"
echo "enter '2'  install all  important packges"
echo "enter '0'  exit"
}
main(){
read -p"ENTER:" ip
if [ $ip == 1 ];
then
        echo "your ip is :" $(hostname -i)
elif [ $ip == 2 ];
then
        pkg install coreutils
        pkg install git
        pkg install python
        pkg install clang
        pkg install curl
        pkg install wget
        pkg install nano
        pkg install openssh
        pkg install vim
        pkg install php
        pkg install nodejs

elif [ $ip == 0 ];
then
        exit
else    echo "try again"
fi
}

for ((; ;))
do
        banner
        msg
        main
done
