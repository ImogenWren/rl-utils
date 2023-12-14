#! /bin/sh
# . ~/.bash_profile

#run nmap on subnet 10.42.0.* 
#only return positive matches for raspberry pi

echo "Scanning Subnet 10.42.0.* for Raspberrys "
cd /
sudo nmap 10.42.0.* -sP | grep "Raspberry" -B 3
