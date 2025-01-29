#!/usr/bin/env fish

# Update system
echo -e "\nUpdating system...\n"
sudo pacman -Syu --noconfirm

# Install NVIDIA driver
echo -e "\nInstalling proprietary NVIDIA driver...\n"
sudo pacman -S nvidia nvidia-settings nvidia-utils --noconfirm

# Load NVIDIA kernel modules
echo -e "\nLoading NVIDIA kernel modules...\n"
sudo modprobe nvidia
sudo modprobe nvidia_drm

# Install CUDA toolkit
echo -e "\nInstalling CUDA toolkit...\n"
sudo pacman -S cuda --noconfirm

# Add CUDA paths to Fish shell configuration
echo -e "\nAdding CUDA paths to Fish environment...\n"
set -U fish_user_paths /opt/cuda/bin $fish_user_paths
set -Ux LD_LIBRARY_PATH /opt/cuda/lib64 $LD_LIBRARY_PATH

# Verify installation
echo -e "\nVerifying NVIDIA driver and CUDA installation...\n"
nvidia-smi
nvcc --version

echo -e "\nNVIDIA driver and CUDA setup complete. Please reboot your system for changes to take effect.\n"
  