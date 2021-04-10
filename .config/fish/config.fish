### Thund3rPat's fish config ###


set -x fish_greeting
set -x EDITOR "nvim"

neofetch

### Functions for aliases ###
function vim
    nvim $argv
end

# git bare  
function dotfiles
    git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $argv
end

function ls
    lsd $argv
end

function icat
    kitty +kitten icat --align=left $argv
end

# package manager
function u
    sudo apt update; sudo apt upgrade;sudo apt dist-upgrade ; flatpak update
end

function cleanup
    sudo apt autoremove --purge; sudo apt autoclean; flatpak uninstall --unused
end


# youtube-dl
function yta-mp3
    youtube-dl --extract-audio --audio-format mp3 $argv
end


# init starfish
starship init fish | source
