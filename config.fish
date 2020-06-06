alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

alias gc='google-chrome'
alias r='ranger'
alias grep='egrep -i'
alias less='less -i'
alias g='git'
alias v='nvim'

alias gpush='git push origin (mybranch)'

set fish_function_path ~/source/.config/functions $fish_function_path

export VISUAL=vim
export editor="$VISUAL"

