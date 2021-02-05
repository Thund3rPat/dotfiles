# My Dotfiles

This repository contains my dotfiles for my Pop!_OS.
My dotfiles are managed with a bare git repository.

+ OS: [Pop!_OS 20.10](https://pop.system76.com/)
+ Shell: [fish](https://fishshell.com/) + [fisher](https://github.com/jorgebucaran/fisher)
+ Terminal: [kitty](https://github.com/kovidgoyal/kitty) + [dracula theme](https://github.com/dracula/kitty)
+ Terminal Font: [Fira Code Nerd Fonts](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode)

## How to deploy on new machine

```bash
# Clone the repository:
git clone --bare https://github.com/Thund3rPat/dotfiles.git $HOME/.dotfiles

# define alias
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# checkout contents to $HOME
dotfiles checkout
```

## Setup fish

```bash
sudo apt install fish
sudo chsh -s $(which fish)
```

Install fisher: https://github.com/jorgebucaran/fisher

Then do:
```bash
fisher install dracula/fish IlanCosman/tide jethrokuan/z jorgebucaran/spark.fish jorgebucaran/autopair.fish
```

After that run:
```bash
tide configure
```

## Setup lsd
Prerequisite:
```bash
sudo apt install fonts-font-awesome powerline
```
Download Font: [Fira Code Nerd Fonts](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode)

Download lsd deb and install with eddy: https://github.com/Peltoche/lsd/releases


## Install Spacevim
Follow https://spacevim.org/quick-start-guide/#linux-and-macos

## Conky
Add this to autostart.
```
conky -d -c .config/conky/conky.conf
```


## Dracula Skin for Steam
```bash
cd ~/.steam/debian-installation/skins && git clone https://github.com/dracula/steam.git 'Dracula'
cd Dracula && ./install.sh
```
Autostart steam with:
```bash
steam -silent -noverifyfiles
```
