# My Dotfiles

This repository contains my dotfiles for my Pop!_OS.

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

Install fisher: https://github.com/jorgebucaran/fisher

Then do:
```bash
fisher install IlanCosman/tide
fisher install dracula/fish
```

After that run:
```
tide configure
```
