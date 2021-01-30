#!/usr/bin/fish

ln -s ~/source/.config/.vimrc
ln -s ~/source/.config/.tmux.conf
ln -s ~/source/.config/.config.fish .config/fish
mkdir -p .config/i3/config 
mkdir -p .config/i3status/config
ln -s ~/source/.config/i3/i3config .config/i3/config
ln -s ~/source/.config/i3/i3statusconfig .config/i3status/config

