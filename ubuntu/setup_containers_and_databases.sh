#!/bin/bash

# Update system
echo -e "\nUpdating system...\n"
sudo apt update && sudo apt upgrade -y

# Install Docker
echo -e "\nInstalling Docker...\n"

# Add Docker's official GPG key:
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update

# Install Docker After Add to APT Repository
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable docker
sudo systemctl start docker
docker --version

# Post-installation steps for Docker for Run Docker Container from current user
echo -e "\nAdding current user to Docker group...\n"
sudo usermod -aG docker $USER

echo -e "\nInstalling Podman...\n"
sudo apt install -y podman
podman --version

# Install MySQL
echo -e "\nInstalling MySQL...\n"
sudo apt install -y mysql-server
sudo systemctl enable mysql
sudo service mysql status
mysql --version

# Install PostgreSQL
echo -e "\nInstalling PostgreSQL...\n"
sudo apt install -y postgresql postgresql-contrib
sudo systemctl enable postgresql
psql --version


echo -e "\nSetup complete! Please log out and back in to use Docker without sudo.\n"