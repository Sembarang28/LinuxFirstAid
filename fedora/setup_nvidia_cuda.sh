#!/bin/bash

echo -e "\nChecking NVIDIA Driver..."
if ! command -v nvidia-smi &> /dev/null; then
    echo "NVIDIA driver is not installed or not loaded. Please install the driver first and reboot."
    exit 1
fi

echo -e "\nInstalling CUDA Toolkit..."
sudo dnf install -y cuda

echo -e "\nVerifying CUDA installation..."
nvcc --version

echo -e "\nCUDA installation complete!"