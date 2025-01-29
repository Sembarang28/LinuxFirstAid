#!/bin/bash

# Update system
echo -e "\nUpdating system...\n"
sudo pacman -Syu --noconfirm

# Install Docker
echo -e "\nInstalling Docker...\n"
sudo pacman -S docker --noconfirm
sudo systemctl enable docker
sudo systemctl start docker
docker --version

# Post-installation steps for Docker to allow running Docker containers as the current user
echo -e "\nAdding current user to Docker group...\n"
sudo groupadd docker 2>/dev/null || true
sudo usermod -aG docker $USER

# Install Podman
echo -e "\nInstalling Podman...\n"
sudo pacman -S podman --noconfirm
podman --version

# Install PostgreSQL
echo -e "\nInstalling PostgreSQL...\n"
sudo pacman -S postgresql --noconfirm
sudo systemctl enable postgresql
sudo systemctl start postgresql
psql --version

echo -e "\nSetup complete! Please log out and back in to use Docker without sudo.\n"
