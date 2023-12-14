#! /bin/sh
# . ~/.bash_profile

#Scan for removeable disks and save output to file, prompt the user to insert a drive, repeat scan
# and compare the difference to the origional file.


echo "Remove Removable Drive and enter any key "
read userin
ls -1a /dev/sd* > ./before.txt
#cat ~/before.txt
echo "Insert Removable Drive and Enter any key"
read userin
ls -1a /dev/sd* > ./after.txt
#cat ~/after.txt
diff ./before.txt ./after.txt > ./drives.txt
echo "New Drives Found:"
cat ./drives.txt
rm ./before.txt
rm ./after.txt
