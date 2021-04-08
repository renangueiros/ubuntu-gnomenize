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

exit | sudo su
echo ""
echo -n "Updating packages information..."
sudo apt update > /dev/null 2>&1

exit | sudo su
echo ""
echo -n "Installing Gnome theme (Adwaita)..."
sudo apt install gnome-session fonts-cantarell adwaita-icon-theme-full gnome-backgrounds -y > /dev/null 2>&1

exit | sudo su
echo ""
echo -n "Setting Gnome as the default system session..."
sudo update-alternatives --set x-session-manager /usr/bin/gnome-session

exit | sudo su
echo ""
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
