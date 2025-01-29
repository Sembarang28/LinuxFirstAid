#!/bin/bash
echo -e "I USE ARCH BTW!!!\n"

echo -e "\nUpdating Arch...\n"
sudo pacman -Syu --noconfirm

# Comment line 6-11 if you don't want to use fish shell   
echo -e "\nInstalling fish shell...\n"
sudo pacman -S fish --noconfirm

echo -e "\nChanging default shell to Fish...\n"
sudo chsh -s $(which fish)

echo -e "\nInstalling CURL...\n"
sudo pacman -S curl --noconfirm

echo -e "\nInstalling Zoxide...\n"
sudo apt pacman -S zoxide --noconfirm

echo -e "\nInstalling Git...\n"
sudo pacman -S git --noconfirm
git --version

echo -e "\nInstalling Visual Studio Code...\n"
sudo pacman -S code 

echo -e "\nInstalling Neovim...\n"
sudo pacman -S neovim --noconfirm
nvim --version

echo -e "\nReboot your system if you want to change default shell to fish\n"