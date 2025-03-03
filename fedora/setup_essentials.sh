#!/bin/bash

echo -e "Updating and Upgrading Fedora...\n"
sudo dnf update -y

# Comment line 6-11 if you don't want to use fish shell   
echo -e "\nInstalling fish shell...\n"
sudo dnf install fish -y

echo -e "\nChanging login shell to Fish...\n"
sudo chsh -s $(which fish)

echo -e "\nInstalling CURL...\n"
sudo dnf install curl -y

echo -e "\nInstalling Mozilla Firefox\n"
sudo dnf install -y firefox

echo -e "\nDownloading Google Chrome...\n"
sudo dnf install -y wget
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm

echo -e "\nInstalling Google Chrome...\n"
sudo dnf install -y ./google-chrome-stable_current_x86_64.rpm

echo -e "\nInstalling Zoxide...\n"
sudo dnf install zoxide -y

echo -e "\nInstalling Git...\n"
sudo dnf install git -y
git --version

echo -e "\nInstalling Visual Studio Code...\n"
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
dnf check-update
sudo dnf install code

echo -e "\nInstalling Neovim...\n"
sudo dnf install neovim -y
nvim --version

echo -e "\nReboot your system if you want to change login shell to fish\n"
