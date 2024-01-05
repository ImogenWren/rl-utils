#! /bin/sh
# . ~/.bash_profile

# Flash  sd-card.img  diskimage to SD card drive named in script call


echo "Flashing sd-card.img to /dev/sda"$1
#sudo dd if=sd-card.img of=/dev/sda
sudo dd if=sd-card.img of=/dev/sda bs=16M status=progress
