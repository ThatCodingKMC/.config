#!/bin/bash

# TODO
# Add bashrc stuffs so I have my bashrc updated to be pointed to by a bash_profile and put whatever else I want in bash profile.
# autoinstall tmux, nvim, nvim chad stuffs.
# autoinstall nerd font. Maybe add this to bashrc if it works.
# Might need to add this:
# git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
# Needed maybe to get other plugins, I should script the getting of plugins and to installing of them.
# Check for git ahead of running script, either get git or close script.

# Add nvim mkviews for the files to the install so it can come prefolded.


# MUST BE DONE AFTER TMUX IS SET UP
# Install Tmux plugin manager.
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
# Run the plugin installer to get the plugins specified in the configs. 
~/.config/tmux/plugins/tpm/bin/install_plugins







