#!/bin/bash


clear;
echo -e "\n\n\033[34m     **** ASH THEME \033[31mAutomater\033[0m ****\033[0m\n\n"
chmod +x ./ash-theme-installer.sh
chmod +x ./ash-theme-reset.sh

echo -e -n "Select the action:\n\033[34m>> Kuch nhi krna prabhu [ 0 ]\n>> Install Ash's theme [ 1 ]\n>> Remove Ash's Theme [ 2 ]\n\033[0m\nEnter your choice \033[34m[ 0 / 1 / 2 ] : \033[0m"
read answer;

if [[ "$answer" == "1" ]]; then 
    ./ash-theme-installer.sh;
elif [[ "$answer" == "2" ]]; then
    ./ash-theme-reset.sh;
fi

if [[ "$answer" == "1" ]]; then 
    echo -e "\033[32mMaster Script did its work :)\033[0m";
else 
    echo -e "\033[31mMaster Script was not asked, or could not understand to do any work\033[0m";
fi