#!/bin/bash

clear;
echo -e "\n\n\033[34m     **** ASH THEME \033[31mRESET\033[0m ****\033[0m\n\n"
echo -e "\033[34mIs script me bhi, chahe jo reply do, bas Y ya N me dena kripa kar ke 😭\033[0m\n"

echo -e -n "Will you read \033[31mCarefully\033[0m what am gonna say now? \033[34m [ Y / n ]\033[0m : "; 
read hui;

while [[ "$hui" == "N" || "$hui" == "n" ]] do
    echo -e -n "\033[34mY\033[0m type karo shanti se 🙄\033[34m [ Y / n ] \033[0m: ";
    read hui;
done

echo -e "\n\nKangaroo Lotions! \n\033[34mYou successfully began executing this script by Ashwin Sharma :)\033[0m\n\n"
echo -e -n "This script, under your supervision: \n\033[34m>> Resets things one by one\033[0m \n\nAre you ready to continue? \033[34m[ Y / n ]\033[0m : "
read proceed;

if [[ "$proceed" == "Y" || "$proceed" == "y" ]]; then
echo -e "\033[32m[ ✓ ] Proceeding...\n\n\033[0m"
else 
    echo -e -n "\033[31m Really sure to step back from this mission to save Earth? [ y / n ] : \033[0m";
    read proceed;
    if [[ "$proceed" == "Y" || "$proceed" == "y" ]]; 
        then echo "Koi ni, karna to fir bhi padega 😂 ( Enter karo ) "; read trum; 
    fi
fi

echo -e "\033[34mNow, whatever you select will be changed and applied automatically.\nYou can still rollback to the original with reset-ash-theme.sh script :)\033[0m"

echo -e -n "\nReset Floating App Picker? \033[34m[y/n]\033[0m : ";
read yo1;

if [[ "$yo1" == "y" || "$yo1" == "Y" ]]; then 
    cp ~/.config/wofi/style.css.backup ~/.config/wofi/style.css
    # cp ./src/wofi/style.css ~/.config/wofi/style.css
    echo -e "\033[32m>> Success...\033[0m";
    wofi --allow-images

else 
    echo -e "\033[31m>> Skipping wofi...\n\033[0m";

fi

###############################

echo -e -n "\nReset power menu (nwgbar | win+shift+E)? \033[34m[y/n]\033[0m : ";
read yo1;

if [[ "$yo1" == "y" || "$yo1" == "Y" ]]; then 
    cp ~/.config/nwg-launchers/nwgbar/style.css ~/.config/nwg-launchers/nwgbar/style.css.backup 
    cp ./src/nwgbar/style.css  ~/.config/nwg-launchers/nwgbar/style.css
    echo -e "\033[32m>> Success...\033[0m";
    nwgbar

else 
    echo -e "\033[31m>> Skipping nwgbar...\n\033[0m";

fi

###############################

echo -e -n "\nReset waybar (topbar | win+w)? \033[34m[y/n]\033[0m : ";
read yo1;

if [[ "$yo1" == "y" || "$yo1" == "Y" ]]; then 
    cp ~/.config/waybar/style.css.backup ~/.config/waybar/style.css 
    # cp ./src/waybar/style.css  ~/.config/waybar/style.css
    
    cp ~/.config/waybar/config.backup ~/.config/waybar/config 
    # cp ./src/waybar/config  ~/.config/waybar/config
    
    echo -e "\033[32m>> Success...\033[0m";

    ~/.config/hypr/brain/scripts/waybar_restart.sh

else 
    echo -e "\033[31m>> Skipping waybar...\n\033[0m";

fi

###############################

echo -e -n "\nReset animations, rounded-corners and borderless windows? \033[34m[y/n]\033[0m : ";
read yo1;

if [[ "$yo1" == "y" || "$yo1" == "Y" ]]; then 
    cp ~/.config/hypr/settingsBackup ~/.config/hypr/settings
    # cp ./src/hypr/settings  ~/.config/hypr/settings
        
    echo -e "\033[32m>> Success...\033[0m";
    
    hyprctl reload
    
    echo -e "\033[32m>> Reloaded new settings...\033[0m";

else 
    echo -e "\033[31m>> Skipping hyprland natives...\n\033[0m";

fi

###############################

echo -e -n "\nAdd emoji pickers (win+E && win+alt+e)? \033[34m[y/n]\033[0m : ";
read yo1;

if [[ "$yo1" == "y" || "$yo1" == "Y" ]]; then 
    cp ~/.config/hypr/settings/manual_settings.conf.backup ~/.config/hypr/settings/manual_settings.conf
    # cp ./src/hypr/settings/manual_settings.conf  ~/.config/hypr/settings/manual_settings.conf

    # echo -e "\033[34m>> Let me install them first...\033[0m";

    # sudo pacman -S emote wofi-emoji

    # echo -e "\033[32m>> Installed Packages...\033[0m";
    
    hyprctl reload
    
    echo -e "\033[32m>> Reloaded new settings...\033[0m";

else 
    echo -e "\033[31m>> Skipping hyprland natives...\n\033[0m";

fi

###############################

echo -e -n "\nCustomize lockscreen (with beautiful effects and win+alt+L shortcut)? \033[34m[y/n]\033[0m : ";
read yo1;

if [[ "$yo1" == "y" || "$yo1" == "Y" ]]; then 

    cp ~/.config/nwg-launchers/nwgbar/bar.json.backup ~/.config/nwg-launchers/nwgbar/bar.json
    # cp ./src/nwgbar/bar.json ~/.config/nwg-launchers/nwgbar/bar.json

    # echo -e "\033[34m>> Let me install it first...\033[0m";

    # sudo pacman -S swaylock-effects

    # echo -e "\033[32m>> Installed Packages...\033[0m";
        
    echo -e "\033[32m>> Applied successfully\033[0m";

else 
    echo -e "\033[31m>> Skipping lockscreen...\n\033[0m";

fi

echo -e "You are all set and ready to go! 🥳\n"