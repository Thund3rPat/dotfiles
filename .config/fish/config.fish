














# Aliases
function dotfiles
   git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $argv
end


function ls
    lsd $argv
end

function icat
    kitty +kitten icat $argv
end

function vim
    nvim $argv
end

function u
    sudo apt update; sudo apt upgrade; flatpak update
end
