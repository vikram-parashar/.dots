zoxide init fish | source

abbr -a ff fastfetch

function fish_greeting
    ~/.config/fish/torii-greeting.sh
end

### ALIAS
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias l='exa -l  --icons always'
alias ls='exa -1  --icons always'
alias ll='exa -la --icons always'
alias ld='exa -lD --icons always'

alias v="nvim"

alias clr="clear; pokemon-colorscripts --no-title -r 1,3,6"

# exports 
export PATH="$HOME/.local/bin:$PATH"
