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
    fish zip figlet cowsay unzip vim golang rust lua
    sqlite nodejs-lts tcpdump ettercap net-tools iproute2
    termux-api ffmpeg imagemagick sox htop tree neofetch
    screen tmux mpv metasploit sqlmap nikto
)

# Display the list of packages
echo -e "\033[93m
Available packages:
"

# Display numbered list of packages
for i in "${!packages[@]}"; do
    printf "[%02d] %s\n" $((i + 1)) "${packages[i]}"
done
echo -e "[00] Exit"

# Prompt user to choose packages to install
while true; do
    echo -e "\033[96mChoose a package to install by entering the number (or 00 to exit):"
    read -p "Enter your choice: " choice

    if [[ "$choice" == "00" ]]; then
        echo -e "\033[91mExiting installation...\033[0m"
        break
    elif [[ "$choice" -ge 1 && "$choice" -le ${#packages[@]} ]]; then
        selected_pkg="${packages[$((choice - 1))]}"
        echo -e "\033[92mInstalling $selected_pkg...\033[0m"
        if apt install -y "$selected_pkg"; then
            echo -e "\033[92m$selected_pkg installed successfully!\033[0m"
        else
            echo -e "\033[91mFailed to install $selected_pkg.\033[0m"
        fi
    else
        echo -e "\033[91mInvalid choice. Please try again.\033[0m"
    fi
done

# Final message
echo -e "\033[95m
+---------------------------------------+
|          Thank you for using DG221    |
|  Ready to explore and create more!    |
+---------------------------------------+
"
read -p "Press Enter to exit."
