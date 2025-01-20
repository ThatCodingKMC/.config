#!/bin/bash

# TODO
# Add bashrc stuffs so I have my bashrc updated to be pointed to by a bash_profile and put whatever else I want in bash profile.
# autoinstall tmux, nvim, nvim chad stuffs.
# autoinstall nerd font. Maybe add this to bashrc if it works.

# Define the destination directory for TPM
TPM_DIR="$HOME/.tmux/plugins/tpm"

# Clone TPM if not already installed
if [ -d "$TPM_DIR" ]; then
    echo "TPM is already installed at $TPM_DIR."
else
    echo "Cloning TPM into $TPM_DIR..."
    git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"

    if [ $? -eq 0 ]; then
        echo "TPM successfully installed!"
    else
        echo "Failed to clone TPM. Please check your internet connection or Git setup."
        exit 1
    fi
fi

# Copy the tmux configuration file
TMUX_CONF_SOURCE="./tmux/.tmux.conf"
TMUX_CONF_DEST="$HOME/.tmux.conf"

if [ -f "$TMUX_CONF_SOURCE" ]; then
    echo "Copying $TMUX_CONF_SOURCE to $TMUX_CONF_DEST..."
    cp "$TMUX_CONF_SOURCE" "$TMUX_CONF_DEST"

    if [ $? -eq 0 ]; then
        echo "Configuration file successfully copied to $TMUX_CONF_DEST."
    else
        echo "Failed to copy $TMUX_CONF_SOURCE to $TMUX_CONF_DEST."
        exit 1
    fi
else
    echo "Source configuration file $TMUX_CONF_SOURCE not found. Please make sure it exists."
    exit 1
fi

