To haved my complete setup by running one command, run:
git clone https://github.com/ThatCodingKMC/.config ~/.config && ~/.config/RUNME.sh

Note: if you already have files in your ~/.config/ folder the command will fail. I suggest either creating a git and merging (make sure to call the RUNME.sh after merged) or renaming the folder to avoid conflicts. Renaming the download destination folder won't work due to absolute pathing in the RUNME.sh.

