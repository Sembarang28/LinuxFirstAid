#!/bin/bash

# Update system
echo -e "\nUpdating system...\n"
sudo dnf update -y && sudo dnf upgrade -y

# Install Docker
echo -e "\nInstalling Docker...\n"

# Add Docker's official repository:
sudo dnf install -y dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf update -y

# Install Docker
sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable --now docker
sudo systemctl start docker
docker --version

# Post-installation steps for Docker to run containers from the current user
echo -e "\nAdding current user to Docker group...\n"
sudo usermod -aG docker $USER

# Install Podman
echo -e "\nInstalling Podman...\n"
sudo dnf install -y podman
podman --version

# Install MySQL
echo -e "\nInstalling MySQL...\n"
sudo dnf install -y mysql-server
sudo systemctl enable mysqld
sudo systemctl start mysqld
sudo systemctl status mysqld
mysql --version

# Install PostgreSQL
echo -e "\nInstalling PostgreSQL...\n"
sudo dnf install -y postgresql-server postgresql-contrib
sudo postgresql-setup --initdb
sudo systemctl enable postgresql
sudo systemctl start postgresql
psql --version


echo -e "\nSetup complete! Please log out and back in to use Docker without sudo.\n"
