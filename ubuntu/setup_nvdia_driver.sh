#!/bin/bash

# Install NVIDIA Driver

echo -e "\nInstalling NVIDIA proprietary driver\n"

# Update the system
echo -e "\nUpdating system...\n"
sudo apt update && sudo apt upgrade -y

# Add the NVIDIA Graphics Driver PPA
echo -e "\nAdding NVIDIA graphics driver PPA...\n"
sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo apt update

# Install the NVIDIA driver
echo -e "\nInstalling NVIDIA driver...\n"
sudo apt install -y nvidia-driver-535 # Replace "535" with the latest driver version for your card if necessary

echo -e "\nInstallation complete! Please reboot your system to finalize the NVIDIA driver.\n"
