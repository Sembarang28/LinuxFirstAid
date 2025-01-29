#!/bin/bash

# Update system
echo "Updating system..."
sudo pacman -Syu --noconfirm

# Install development tools for C/C++ development
echo -e "\n\nInstalling development tools for C/C++..."
sudo pacman -S base-devel --noconfirm
g++ --version

# Install C# SDK Version 9
echo -e "\n\nInstalling .NET SDK for C#..."
sudo pacman -S dotnet-sdk --noconfirm
dotnet --version

# Install Java
echo -e "\n\nInstalling Java (OpenJDK JRE)..."
sudo pacman -S jre-openjdk --noconfirm
java -version

# Install Kotlin
echo -e "\n\nInstalling Kotlin..."
sudo pacman -S kotlin --noconfirm
kotlin -version

# Install JavaScript and TypeScript
echo -e "\n\nInstalling Node.js and npm..."
sudo pacman -S nodejs npm --noconfirm
node --version
npm --version
sudo npm install -g typescript ts-node
tsc --version

# Install Go
echo -e "\n\nInstalling Go..."
sudo pacman -S go --noconfirm
go version

# Install Python
echo -e "\n\nInstalling Python 3..."
sudo pacman -S python python-pip --noconfirm
python --version
pip --version

# Install Rust
echo -e "\n\nInstalling Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustc --version

# Install Ruby
echo -e "\n\nInstalling Ruby..."
sudo pacman -S ruby --noconfirm
ruby --version

# Install PHP
echo -e "\n\nInstalling PHP..."
sudo pacman -S php php-cli php-cgi php-mysql php-sqlite php-pgsql --noconfirm
php --version

# Install Dart
echo -e "\n\nInstalling Dart..."
sudo pacman -S dart --noconfirm
dart --version

# Check All Programming Language Versions
echo -e "\n\nCheck Programming Language Version"
echo -e "\n\n1. C/C++"
g++ --version

echo -e "\n2. C#"
dotnet --version

echo -e "\n3. Java"
java -version

echo -e "\n4. Kotlin"
kotlin -version

echo -e "\n5. JavaScript and TypeScript"
node --version
npm --version
tsc --version

echo -e "\n6. Go"
go version

echo -e "\n7. Python"
python --version
pip --version

echo -e "\n8. Rust"
rustc --version

echo -e "\n9. Ruby"
ruby --version

echo -e "\n10. PHP"
php --version

echo -e "\n11. Dart"
dart --version
