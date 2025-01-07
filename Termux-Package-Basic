#!/bin/bash

# Clear the screen
clear

# Display banner
echo -e "\033[91m
 _____   ____   ____  __  __  _____          __  __ ______ ___  ___  __  
|  __ \ / __ \ / __ \|  \/  |/ ____|   /\   |  \/  |  ____|__ \|__ \/_ |
| |  | | |  | | |  | | \  / | |  __   /  \  | \  / | |__     ) |  ) || |
| |  | | |  | | |  | | |\/| | | |_ | / /\ \ | |\/| |  __|   / /  / / | |
| |__| | |__| | |__| | |  | | |__| |/ ____ \| |  | | |____ / /_ / /_ | |
|_____/ \____/ \____/|_|  |_|\_____/_/    \_\_|  |_|______|____|____||_|
CREATED BY DG221
"

echo -e "\033[93m
+--------------------------------------+
| This Tool Installs All Basic Packages|
+--------------------------------------+
| Coded By DG221 | Version: 2.5        |
+--------------------------------------+
"

# List of packages
packages=(
    python python2 python-dev python3 php java git perl
    bash nano curl openssl openssh wget clang nmap
    w3m hydra ruby macchanger host dnsutils coreutils
    fish zip figlet cowsay unzip vim golang
)

# Display the list of packages
echo -e "\033[93m
[01] python          [11] curl          [21] host
[02] python2         [12] openssl       [22] dnsutils
[03] python-dev      [13] openssh       [23] coreutils
[04] python3         [14] wget          [24] fish
[05] php             [15] clang         [25] zip
[06] java            [16] nmap          [26] figlet
[07] git             [17] w3m           [27] cowsay
[08] perl            [18] hydra         [28] unzip
[09] bash            [19] ruby          [29] vim
[10] nano            [20] macchanger    [30] golang
"

echo -e "\033[96mThis command allows storage access in Termux:"
echo -e "[00] termux-setup-storage"

# Prompt user for installation confirmation
read -p "Do you want to install all packages? [y/n]: " choice

if [[ "$choice" == "n" || "$choice" == "N" ]]; then
    echo -e "\033[91mInstallation aborted.\033[0m"
    exit 0
fi

# Update and upgrade packages
echo -e "\033[92mUpdating and upgrading packages...\033[0m"
apt update && apt upgrade -y

# Install packages
for pkg in "${packages[@]}"; do
    echo -e "\033[93mInstalling $pkg...\033[0m"
    apt install -y "$pkg"
done

# Setup storage access
echo -e "\033[92mAllowing storage access in Termux...\033[0m"
termux-setup-storage

# Final message
echo -e "\033[95m
+---------------------------------------+
|          Welcome To DG221 Tools       |
|  Ready to explore and create more!    |
+---------------------------------------+
"
read -p "Press Enter to exit."
