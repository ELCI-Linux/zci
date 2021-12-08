#! /bin/bash/


LR=$(zenity --list --checklist --title="Uninstall Libre Office" --height=300 --width=100 --text="Please select the libre office software you would like to install/uninstall"   --column="Uninstall?" --column="Title" "" "Libre Office" ""  "Base" "" "Calc" "" "Draw" "" "Math" "" "Writer")

LRLO=$(echo $LR | grep -c "Libre Office")

LRB=$(echo $LR | grep -c "Base")

LRC=$(echo $LR | grep -c "Calc")

LRD=$(echo $LR | grep -c "Draw")


LRM=$(echo $LR | grep -c "Math")

LRW=$(echo $LR | grep -c "Writer")



if [ $LRB -gt "0" ]; then
sudo apt-get remove libreoffice-base

elif [ $LRC -gt "0" ]; then
sudo apt-get remove libreoffice-calc

elif [ $LRD -gt "0" ]; then
sudo apt-get remove libreoffice-draw

elif [ $LRM -gt "0" ]; then
sudo apt-get remove libreoffice-math

elif [ $LRW -gt "0" ]; then
sudo apt-get remove libreoffice-writer

elif [ $LRLO -gt "0" ]; then
sudo apt-get remove libreoffice

fi



