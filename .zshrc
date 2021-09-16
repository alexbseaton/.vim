source ~/.antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found
antigen bundle pipenv
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen theme robbyrussell

antigen apply

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory autocd extendedglob notify
unsetopt beep nomatch

bindkey -v

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/alex/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

alias gc='google-chrome'
alias r='ranger'
alias grep='egrep -i'
alias less='less -i'
alias g='git'
alias v='nvim'
alias s='cd /scratch/alex'

alias gpush='git push origin HEAD'

export VISUAL=vim
export editor="$VISUAL"

set PATH $HOME/intellij/idea-IU-203.6682.168/bin $PATH
set PATH $HOME/.local/bin $PATH

KEYTIMEOUT=1
bindkey -M viins 'jj' vi-cmd-mode

