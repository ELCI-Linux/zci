#! /bin/bash


# prompt user to choose the zen-core installation directory
# use $ to capture as variable, use >> to capture in a file

DIR=$(zenity --file-selection --title="Installing Zen-Core" --text="Please select the directory you would like to install and run Zen-Core from" --directory)


cd $DIR

git clone https://github.com/ELCI-Linux/zencore
cd zencore

ls -D | grep -v "README.md" >> zci.txt
while IFS= read -r line; do

touch $line/$line.desktop &&
echo "[Desktop Entry]" >> $line/$line.desktop
echo "Version=1.0"  >> $line/$line.desktop
echo "Exec=bash $DIR/zencore/$line.sh"  >> $line/$line.desktop
echo "Name=$line"  >> $line/$line.desktop
echo "GenericName=$line" >> $line/$line.desktop
echo "Terminal=false"  >> $line/$line.desktop
echo "Type=Application" >> $line/$line.desktop
echo "Path=$DIR/zencore/$line"  >> $line/$line.desktop
pwd
ls -D
chmod +x $line/$line.desktop
chmod +x $line/$line.sh
done < $zci




