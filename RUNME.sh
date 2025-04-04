#!/bin/sh
#!/usr/bin/env bash

# TODO
# Add bashrc stuffs so I have my bashrc updated to be pointed to by a bash_profile and put whatever else I want in bash profile.
# autoinstall tmux, nvim, nvim chad stuffs.
# autoinstall nerd font. Maybe add this to bashrc if it works.
# Might need to add this:
# git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
# Needed maybe to get other plugins, I should script the getting of plugins and to installing of them.
# Check for git ahead of running script, either get git or close script.
# get gdb, gcc, python, pwn tools, etc.
# Add nvim mkviews for the files to the install so it can come prefolded.

# Install line to get pwntools, must do this for all python packages. 
# sudo apt install python3-pwntools



# Find and store the package manager, exit if not found.

echo "Detecting your distros package manager..."

PACKAGE_MANAGER="unknown"
command -v apt-get  && PACKAGE_MANAGER="apt"
command -v yum      && PACKAGE_MANAGER="yum"
command -v dnf      && PACKAGE_MANAGER="dnf"
command -v zypper   && PACKAGE_MANAGER="zypper"
command -v pacman   && PACKAGE_MANAGER="pacman"

if [ "$PACKAGE_MANAGER" = "unknown" ]; then 
  echo "\e[31mERROR: supported package manager not found (apt, yum, dnf, zypper, pacman).\e[0m"
  exit 1
fi

echo "Using detected package manager: $PACKAGE_MANAGER"


# Install softwares using the found package manager.
INSTALL_LIST="tmux neovim gcc gdb"
echo "Installing softwares: $INSTALL_LIST"

case "$PACKAGE_MANAGER" in
    apt)
        sudo apt-get update && sudo apt-get install -y $INSTALL_LIST
        ;;
    yum)
      sudo yum install -y $INSTALL_LIST || (sudo yum install -y epel-release && sudo yum install -y $INSTALL_LIST)
        ;;
    dnf)
        sudo dnf install -y $INSTALL_LIST
        ;;
    zypper)
        sudo zypper install -y $INSTALL_LIST
        ;;
    pacman)
        sudo pacman -S --noconfirm $INSTALL_LIST
        ;;
    *)
        echo "Package manager not compatible: $PACKAGE_MANAGER" # This should never run due to previous filtering.
        exit 1
        ;;
esac


# Install the Tmux plugin manager and run it to install the plugins.
echo "Installing the Tmux plugin manager and running it to install tmux plugins"
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
~/.config/tmux/plugins/tpm/bin/install_plugins


echo "END OF DEVELOPMENT ENVIROMENT SETUP SCRIPT REACHED WITHOUT EXIT"

