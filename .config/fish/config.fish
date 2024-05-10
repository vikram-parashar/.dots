#
### On launch
#
# theme
eval (starship init fish)
# remove greating
set fish_greeting ''

# Display Pokemon
pokemon-colorscripts --no-title -r 1,3,6

#
### ALIAS
#
# Main

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# listing
alias l='exa -l  --icons'
alias ls='exa -1  --icons'
alias ll='exa -la --icons'
alias ld='exa -lD --icons'

#system
alias in='sudo pacman -S' # install package
alias un='sudo pacman -Rns' # uninstall package
alias up='sudo pacman -Syu' # update system/package/aur
alias pl='pacman -Qs' # list installed package
alias pa='pacman -Ss' # list availabe package
alias pc='sudo pacman -Sc' # remove unused cache
alias po='pacman -Qtdq | sudo pacman -Rns -' # remove unused packages, also try > pacman -Qqd | pacman -Rsu --print -

# program aliases
alias rasm="~/etc/asm-interpreter.sh"
alias v="nvim"
alias sv="sudo nvim"
alias top="btop --utf-force"

# low effort aliases
alias clr="clear ; pokemon-colorscripts --no-title -r 1,3,6"
alias bat="watch -n0 cat /sys/class/power_supply/BAT0/capacity"

# editor aliases
alias vnvim="cd ~/.config/nvim/ && nvim"
alias vfish="cd ~/.config/fish/ && nvim config.fish"
alias vbar="cd ~/.config/waybar/ && nvim config"
alias vhypr="cd ~/.config/hypr/ && nvim"
alias vkitty="cd ~/.config/kitty/ && nvim kitty.conf"
alias vpass="nvim ~/doc/pass"

# dev
alias server="cd ~/dev/mahatejas-innovations-site/;npm run dev"
alias client="cd ~/dev/mahatejas-innovations-site/frontend;npm run dev -- --host"

# Git
alias gr="git restore"
alias gc="git checkout"
alias gp="git push --set-upstream origin"
