#!/bin/bash

echo -e "\nUpdating system..."
sudo dnf update -y

echo -e "\nAdding RPM Fusion repository for NVIDIA drivers..."
sudo dnf install -y \
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo -e "\nInstalling NVIDIA driver..."
sudo dnf install -y akmod-nvidia xorg-x11-drv-nvidia-cuda

echo -e "\nInstallation complete! Reboot system to apply changes..."