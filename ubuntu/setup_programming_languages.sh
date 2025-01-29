#!/bin/bash

# Update system
echo "Updating system..."
sudo apt update && sudo apt upgrade -y

# Install build-essential for C/C++ development
echo -e "\n\nInstalling build-essential for C/C++..."
sudo apt install build-essential -y

# Install C# SDK Version 9
echo -e "\n\nInstalling .NET SDK for C#..."
sudo apt install -y dotnet-sdk-9.0
dotnet --version

# Install Java
echo -e "\n\nInstalling Java (OpenJDK JRE)..."
sudo apt install -y default-jre
java -version

# Install Kotlin
echo -e "\n\nInstalling Kotlin using snapcraft..."
sudo apt install -y snapd
sudo snap install --classic kotlin
kotlin -version

# Install JavaScript and TypeScript
echo -e "\n\nInstalling Node.js and npm..."
sudo apt install -y nodejs npm
node --version
npm --version
sudo npm install -g typescript
sudo npm install -g ts-node
tsc --version

# Install Go
echo -e "\n\nInstalling Go..."
sudo apt install -y golang
go version

# Install Python
echo -e "\n\nInstalling Python 3..."
sudo apt install -y python3 python3-pip
python3 --version
pip3 --version

# Install Rust
echo -e "\n\nInstalling Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustc --version

# Install Ruby
echo -e "\n\nInstalling Ruby..."
sudo apt install -y ruby-full
ruby --version

# Install PHP
echo -e "\n\nInstalling PHP..."
sudo apt install -y php php-cli php-cgi php-mysql php-pgsql
php --version

# Install Dart
echo -e "\n\nInstalling Dart..."
sudo apt update
sudo apt install -y apt-transport-https
wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | gpg --dearmor > dart.gpg
sudo mv dart.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/dart.gpg] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main" > /etc/apt/sources.list.d/dart_stable.list'
sudo apt update
sudo apt install -y dart
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