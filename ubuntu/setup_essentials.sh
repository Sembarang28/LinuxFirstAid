#!/bin/bash

echo -e "Updating and Upgrading Ubuntu...\n"
sudo apt update && sudo apt upgrade -y

# Comment line 6-11 if you don't want to use fish shell   
echo -e "\nInstalling fish shell...\n"
sudo apt install fish -y

echo -e "\nChanging login shell to Fish...\n"
sudo chsh -s $(which fish)

echo -e "\nInstalling CURL...\n"
sudo apt install curl -y

echo -e "\nInstalling Mozilla Firefox\n"
sudo apt install -y firefox

echo -e "\Download Google Chrome...\n"
sudo apt install -y wget
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

echo -e "\Installing Google Chrome...\n"
sudo dpkg -i google-chrome-stable_current_amd64.deb
# During the installation process, it's possible that might encounter some dependency errors. so it need to run fix-broken install
sudo apt --fix-broken install

echo -e "\nInstalling Zoxide...\n"
sudo apt install zoxide -y

echo -e "\nInstalling Git...\n"
sudo apt install git -y
git --version

echo -e "\nInstalling Visual Studio Code...\n"
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg

sudo -e apt install apt-transport-https
sudo apt update
sudo apt install code

echo -e "\nInstalling Neovim...\n"
sudo apt install neovim -y
nvim --version

echo -e "\nReboot your system if you want to change login shell to fish\n"