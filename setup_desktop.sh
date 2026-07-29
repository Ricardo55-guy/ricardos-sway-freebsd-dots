#!/bin/sh

sudo pkg update
sudo pkg install -y sway wofi firefox nautilus git ufetch foot fish dejavu swayidle wmenu drm-kmod

sudo sysrc seatd_enable="YES"
sudo service seatd start

sudo pw groupadd input
sudo pw groupadd video
sudo pw groupmod video -m $(whoami)
sudo pw groupmod input -m $(whoami)

mkdir -p ~/.config/sway
cp -r config ~/.config/sway/
cp -r scripts ~/.config/sway/
chmod +x ~/.config/sway/scripts/*
mkdir -p ~/Pictures/Wallpapers/
cp flowers.jpg ~/Pictures/Wallpapers/
cp -r fish ~/.config/
cp -r foot ~/.config/

echo "==========================================================="
echo "                  Installation complete!                   "
echo "  You can launch your desktop environment by typing: sway  "
echo "==========================================================="
echo "You can also use the extra wallpapers by copying them into the newly created ~/Pictures/Wallpapers."
echo "Also, please load the drivers if you haven't by:
echo "eg. for Intel, kldload i915kms for AMD, kldload amdgpu." 
