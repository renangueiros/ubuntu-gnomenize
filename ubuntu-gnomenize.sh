#!/bin/bash

echo ""
echo "======================================================================"
echo "                           Ubuntu GNOMINIZE                           "
echo "======================================================================"
echo ""
echo "Enable the standard Gnome experience on Ubuntu."
echo ""
echo -e "\033[1mWARNING: Before you start make sure you have an internet connection.\033[0m"
echo ""
read -p "Press Enter to continue: "
echo ""

sudo -v && echo "" | exit 1
echo -n "Updating packages information..."
sudo apt update > /dev/null 2>&1

sudo -v && echo "" | exit 1
echo -n "Installing Gnome default icons theme (Adwaita)..."
sudo apt install adwaita-icon-theme-full -y > /dev/null 2>&1

sudo -v && echo "" | exit 1
echo -n "Installing Gnome default font (CantarellAdwaita)..."
sudo apt install fonts-cantarell -y > /dev/null 2>&1

sudo -v && echo "" | exit 1
echo -n "Installing Gnome Session..."
sudo apt install gnome-session -y > /dev/null 2>&1

sudo -v && echo "" | exit 1
echo -n "Installing Gnome Wallpapers..."
sudo apt install gnome-backgrounds -y > /dev/null 2>&1

sudo -v && echo "" | exit 1
echo -n "Setting Gnome as the default system session..."
sudo update-alternatives --set x-session-manager /usr/bin/gnome-session

sudo -v && echo "" | exit 1
echo -n "Setting Gnome theme (Adwaita) as the login screen theme"
sudo update-alternatives --set gdm3-theme.gresource /usr/share/gnome-shell/gnome-shell-theme.gresource

echo ""
echo "Setting default Gnome wallpaper..."
gsettings set org.gnome.desktop.screensaver picture-uri "file:///usr/share/backgrounds/gnome/adwaita-timed.xml"
gsettings set org.gnome.desktop.background picture-uri "file:///usr/share/backgrounds/gnome/adwaita-timed.xml"

echo ""
echo ""
echo "All ready!"
echo "----------------------------------------------------------------------"
echo "Restart the system to take advantage of the standard Gnome experience."
echo ""
