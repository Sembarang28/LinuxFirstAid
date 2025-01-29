# Linux First Aid

Welcome to **Linux First-Time Setup**, a comprehensive guide and toolset for configuring your Linux environment quickly and efficiently. This project provides automated scripts for setting up essential tools, NVIDIA drivers, Docker, and other development utilities tailored for a productive experience.

**LinuxFirstAid** is a comprehensive setup script for quickly preparing a Linux environment for development, gaming, and machine learning. It is designed to simplify the initial configuration of Linux systems, providing tools and environments that users commonly need right after installation.	

## Linux Distrubition Support

- **Ubuntu**

-   **Arch** (Not Tested)
  
-   **Fedora** (Coming Soon..)

## Features

- **Essential Tools Setup:** Install Fish shell, Zoxide, Visual Studio Code, and Neovim.

-   **Docker and Podman Installation** for containerization.
  
-   **Development Environment** setup with support for multiple programming languages, including C++, Python, Rust, Node.js, and more.

-    **Proprietary NVIDIA Driver Installation** for maximum GPU performance.

-   **CUDA Toolkit Setup** for machine learning and GPU programming.


## Why Using Fish Shell?
Fish is a user-friendly and feature-rich shell that includes autocompletions, syntax highlighting, and better defaults.

**Advantages:**

-   Autosuggestions for faster commands.
    
-   Easier customization with built-in configuration.
    
-   Clear and intuitive scripting syntax.

## Why Using Zoxide?
Zoxide is a blazing fast directory jumper that saves time navigating file paths.

**Advantages:**

-   Automatically remembers your most used directories.
    
-   Simple, fast, and integrates seamlessly with your shell.
    
-   Aliases like `z` for quick access.

This script only helps installation of Zoxide but does not handle its configuration and setup. You can find **configuration instructions based on your linux shell** on the [official Zoxide repository](https://github.com/ajeetdsouza/zoxide).

## Customization

If you don't need a specific package or configuration from the script, simply comment out the corresponding lines in the script. This flexibility allows you to tailor the setup to your needs.

## How to Use
1. Clone this repository
```
  git clone https://github.com/Sembarang28/LinuxFirstAid.git
```
2. Navigate to the directory
```
  cd LinuxFirstAid
```
3. Navigate to directory based on your linux distribution (example ubuntu)
```
  cd ubuntu
```
4. Make Scripts Executable
```
  chmod +x *.sh
```
5. Run the script you need (example running setup_essentials.sh script)
```
  ./setup_essentials.sh
```

## Included Scripts

1.  **setup_essentials.sh**
    
    - Install fish shell.
    - Change default shell to fish shell
    - Install curl
    - Install Zoxide
    - Install git
    - Install Visual Studio Code
    - Install Neovim
        
2.  **setup_programming_languages.sh**
    
    - Install C/C++ Programming Language
    - Install C# Programming Language
    - Install Java Programming Language
    - Install Kotlin Programming Language
    - Install JavaScript & TypeScript Programming Language
    - Install Go Programming Language
    - Install Python Programming Language
    - Install Rust Programming Language
    - Install Ruby Programming Language
    - Install PHP Programming Language
    - Install Dart Programming Language
        
3.  **setup_containers_and_databases.sh**
    
    - Install Docker
    - Install Podman
    - Install MySQL
    - Install PostgreSQL

4. **setup_nvidia_driver.sh**
    - Install Nvidia Driver Version 535

5. **setup_nvidia_cuda.sh**
    - Install Nvidia CUDA
    - Install Nvidia CUDA Driver version 570


## Contributing

Contributions are welcome! If you have ideas to improve the scripts or add more features:

1.  Fork the repository.
    
2.  Create a feature branch (`git checkout -b feature/YourFeature`).
    
3.  Commit your changes (`git commit -m 'Add YourFeature'`).
    
4.  Push to the branch (`git push origin feature/YourFeature`).
    
5.  Open a Pull Request.

#

Happy hacking! ✨
