#!/bin/bash
echo "I USE ARCH BTW!!!\n"

echo -e "\nUpdating Arch...\n"
sudo pacman -Syu --noconfirm

# Comment line 6-11 if you don't want to use fish shell   
echo -e "\nInstalling fish shell...\n"
sudo pacman -S fish --noconfirm

echo -e "\nChanging default shell to Fish...\n"
sudo chsh -s $(which fish)

echo -e "\nInstalling CURL...\n"
sudo pacman -S curl --noconfirm

echo -e "\nInstalling wget\n"
sudo pacman -S wget --noconfirm

echo -e "\nInstalling Zoxide...\n"
sudo apt pacman -S zoxide --noconfirm

echo -e "\nInstalling Git...\n"
sudo pacman -S git --noconfirm
git --version

# if you want to install google chrome from AUR uncomment this line
# echo "\nInstalling Google Chrome\n"
# git clone https://aur.archlinux.org/google-chrome.git
# cd google-chrome
# makepkg -si --noconfirm
# cd ..
# rm -rf google-chrome

echo -e "\nInstalling Visual Studio Code...\n"
git clone https://aur.archlinux.org/visual-studio-code-bin.git
cd visual-studio-code-bin
makepkg -si --noconfirm
cd ..
rm -rf visual-studio-code-bin

echo -e "\nInstalling Neovim...\n"
sudo pacman -S neovim --noconfirm
nvim --version

echo "\nReboot your system if you want to change default shell to fish\n"
