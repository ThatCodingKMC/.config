# ThatOneKMC's Development Environment

This repository has everything that is needed to setup my development environment. This is done by running one command as mentioned in the installation section of this README.

My development environment is composed of nvim, tmux, and soon to be added zsh. Many plugins are used with these tools. Note that I use "space" as my leader for nvim and "Ctrl" + "a" for my tmux leader.

## Installation

For everything to function properly you will need to use a non-Mono [Nerd Font](https://www.nerdfonts.com/font-downloads) for your terminal. This is not included in the one command installation to ensure the scrpt stays wsl compatible. I personally suggest using Hack Nerd Font Regular which is found in the .zip you can download by pressing [this](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Hack.zip). 

Installation requires that you already have git installed. To install and have everything setup as I like it, you just have to run the one bash command below:

```bash
git clone https://github.com/ThatCodingKMC/.config ~/.config && ~/.config/RUNME.sh
```

Note that if you already have contents in your ~/.config folder the command will not run. I suggest simply renaming your folder and rerunning the command. I have not checked for what happens if you have conflicts with the script installing nvim or tmux, the script is meant to run from a bare install of linux.

## Usage

When I get around to it I will list of the commands/hotkeys unique to my setup here and any other usage tips.

- You can reload tmux configs using "leader" + "r"
- Moving between split panels is done with "Ctrl" + vim keys. This works across vim/tmux panel boundaries.

## Contributing

You are welcome to contribute, I encourage any contributions related to bugs and expanding the versatility of the repository. Given this repository is for my personal preference, please open an issue/discussion before submitting a pull request to make sure it is something I would approve of. 

## Contributors & Acknowledgements

- ThatOneKMC
- Anyone who contributed to NvChad, tmux, or nvim.
- [Chris Power (typecraft)](https://github.com/cpow) - Creating great videos for me to learn and steal from.
- [Omer Hamerman (DevOps Toolbox)](https://github.com/johndoe) - Creating great videos for me to learn and steal from.

## License

[MIT](https://choosealicense.com/licenses/mit/)

