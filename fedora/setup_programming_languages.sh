#!/bin/bash

# Update system
echo "Updating system..."
sudo dnf update -y

# Install Development Tools for C/C++
echo -e "\n\nInstalling Development Tools for C/C++..."
sudo dnf groupinstall -y "Development Tools"

# Install C# SDK Version 9
echo -e "\n\nInstalling .NET SDK for C#..."
sudo dnf install -y dotnet-sdk-9.0
dotnet --version

# Install Java
echo -e "\n\nInstalling Java (OpenJDK JRE)..."
sudo dnf install -y java-17-openjdk java-17-openjdk-devel
java -version

# Install Kotlin
echo -e "\n\nInstalling Kotlin..."
sudo dnf install -y kotlin
kotlin -version

# Install JavaScript and TypeScript
echo -e "\n\nInstalling Node.js and npm..."
sudo dnf install -y nodejs npm
node --version
npm --version
sudo npm install -g typescript
sudo npm install -g ts-node
tsc --version

# Install Go
echo -e "\n\nInstalling Go..."
sudo dnf install -y golang
go version

# Install Python
echo -e "\n\nInstalling Python 3..."
sudo dnf install -y python3 python3-pip
python3 --version
pip3 --version

# Install Rust
echo -e "\n\nInstalling Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustc --version

# Install Ruby
echo -e "\n\nInstalling Ruby..."
sudo dnf install -y ruby
ruby --version

# Install PHP
echo -e "\n\nInstalling PHP..."
sudo dnf install -y php php-cli php-mysqlnd php-pgsql
php --version

# Install Dart
echo -e "\n\nInstalling Dart..."
sudo dnf install -y dart

dart --version

# Check All Programming Version
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
python3 --version
pip3 --version

echo -e "\n8. Rust"
rustc --version

echo -e "\n9. Ruby"
ruby --version

echo -e "\n10. PHP"
php --version

echo -e "\n11. Dart"
dart --version