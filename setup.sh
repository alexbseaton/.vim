#!/usr/bin/sh

ln -s ~/source/.config/.vimrc ~
ln -s ~/source/.config/.zshrc ~
ln -s ~/source/.config/.tmux.conf ~
mkdir -p ~/.config/i3/config 
mkdir -p ~/.config/i3status/config
ln -s ~/source/.config/i3/i3config ~/.config/i3/config
ln -s ~/source/.config/i3/i3statusconfig ~/.config/i3status/config
git clone https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm

curl -L git.io/antigen > ~/antigen.zsh

