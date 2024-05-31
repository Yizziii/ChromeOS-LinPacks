# Welcoming message.
clear
echo Welcome to the LinPacks install. this script will give you access to using Apks, flatpacks, exes, and fuse!
echo 
echo Make sure you have your linux space to atleast 15gb.
sleep 2
clear
echo Initializing WINE-on-ChromeOS

# Wine Install script, credits to cknermann.
sudo dpkg --add-architecture i386

# Prepare temp directory
sudo mkdir /root/.gnupg
sudo chmod 700 /root/.gnupg

# Import repository keys
wget -O- https://dl.winehq.org/wine-builds/winehq.key | gpg --dearmor | sudo tee /usr/share/keyrings/winehq.gpg

# Add repository
printf "deb [signed-by=/usr/share/keyrings/winehq.gpg] https://dl.winehq.org/wine-builds/debian/ bullseye main" | sudo tee -a /etc/apt/sources.list

# Update, install and configure
sudo apt update
sudo apt install --yes --install-recommends winehq-stable
winecfg
sleep 2
clear
echo Congrats! you just installed wine!! now we are going to install the Apk packages.
pause 3
sudo apt install apk
clear
echo Install Complete. Installing the flatpak Script
pause 2
sudo apt install flatpak
clear
echo Congrats! you have officially installed the flatpak script!
echo By the way, fuse for some reason doesnt download so yeah sorry about that D:
pause 3
clear
echo closing!
pause 1.5
exit
