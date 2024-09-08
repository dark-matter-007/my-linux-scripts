#!/bin/bash

red_text="\033[31m"
green_text="\033[32m"
yellow_text="\033[33m"
blue_text="\033[34m"
purple_text="\033[35m"
white_text="\033[0m"



clear;

echo -e -n "${purple_text}Have you installed Orchis theme earlier? : ${white_text}"
read install_check

if [ "$install_check" != "y" ]; 
then
cp -r ./Orchis-theme ~/Themes/Orchis-theme;
echo -e "${white_text}Installed Orchis theme to your Themes folder :)"
fi;

cd ~/Themes
cd Orchis-theme;

echo -e -n "${purple_text}Accent Color \033[34m[default|orange|red|yellow|pink|purple|white|green] : ${white_text}";
read accent_name

echo -e -n "${purple_text}Theme Variant [dark|light|all] : ${white_text}";
read theme_name;

echo -e "${purple_text}\nInput    |  Output"
echo -e  "${yellow_text}black    ${purple_text}|  Amoled theme"
echo -e  "${yellow_text}submenu  ${purple_text}|  Fix white surface on dark theme"
echo -e  "${yellow_text}compact  ${purple_text}|  Stick top panel to edge of screen"

echo -e  "${purple_text}\nExample: ${yellow_text}black submenu ${purple_text}(to use both)\n"
echo -e -n "${purple_text}Tweaks : ${white_text}"
read tweaks_name;

echo -e -n "${purple_text}Link to LibAdwaita (gtk4)? \033[34m[y/n] : ";
read gtk4_link;

if [ "$gtk4_link" = "y" ]; 
then
./install.sh -t $accent_name -c $theme_name --tweaks $tweaks_name -l;
else
./install.sh -t $accent_name -c $theme_name  --tweaks $tweaks_name;
fi;