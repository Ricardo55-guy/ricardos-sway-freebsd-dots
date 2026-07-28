#!/bin/sh

sudo pkg update
sudo pkg install -y sway wofi firefox nautilus git ufetch foot fish dejavu

sudo sysrc seatd_enable="YES"
sudo service seatd start

sudo pw groupmod video -m $(whoami)
sudo pw groupmod input -m $(whoami)

mkdir -p ~/.config/sway
cp -r config ~/.config/sway/
cp -r scripts ~/.config/sway/
chmod +x ~/.config/sway/scripts/*
mkdir -p ~/Pictures/Wallpapers/
cp flowers.jpg /Pictures/Wallpapers/
cp -r fish ~/.config/
cp -r foot ~/.config/

echo "==========================================================="
echo "                  Installation complete!                   "
echo "  You can launch your desktop environment by typing: sway  "
echo "==========================================================="
