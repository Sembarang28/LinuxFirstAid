# Verify NVIDIA installation
echo -e "\nVerifying NVIDIA installation...\n"
lspci | grep -i nvidia
echo -e "\n\n"
uname -m && cat /etc/*release
echo -e "\n\n"
gcc --version 

# Installing CUDA Toolkit Propietary
echo -e "\n\nDownload Nvidia CUDA Toolkit..."
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/cuda-ubuntu2404.pin
sudo mv cuda-ubuntu2404.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/12.8.0/local_installers/cuda-repo-ubuntu2404-12-8-local_12.8.0-570.86.10-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu2404-12-8-local_12.8.0-570.86.10-1_amd64.deb
sudo cp /var/cuda-repo-ubuntu2404-12-8-local/cuda-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update
echo -e "\n\Installing Nvidia CUDA Toolkit..."
sudo apt-get -y install cuda-toolkit-12-8

echo -e "\n\Installing Nvidia CUDA Driver..."
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/$(lsb_release -cs)/x86_64/3bf863cc.pub
sudo add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/$(lsb_release -cs)/x86_64/ /"
sudo add-apt-repository "deb https://developer.download.nvidia.com/compute/machine-learning/repos/$(lsb_release -cs)/x86_64/ /"
sudo apt update

sudo apt install cuda-drivers-570                  # Installing nvdia cuda driver 570