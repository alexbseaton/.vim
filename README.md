# Installation

Clone this repo to `~/source/.config`. From `~` run,

```
./source/.config/setup.sh
```

to use the dotfiles.

Run `v +PluginInstall +qall` to install the Vundle plugins.
Within tmux, run `Prefix + I` to install the tmux plugins.

## Packages

- xclip

### Neovim

`sudo apt-get install neovim`

Run `nvim`. Follow `:help nvim-from-vim`.

### ssh

`ssh-keygen`
Put key on github -

`cat ~/.ssh/id_rsa.pub | xclip -selection clipboard`

### zsh

```
apt-get install zsh
chsh -s `which zsh`
```

### Terminal

Install `gnome-terminal` and follow https://github.com/arcticicestudio/nord-gnome-terminal
Disable the menu bar and menu mappings (eg don't want alt+H to bring up "Help").
Choose a `source code pro` font in the settings UI.
Note that `gnome-terminal --show-menubar` can bring up the menubar as a one off.

## Keybindings

CapsLock -> Ctrl
C-a-t -> Open terminal window
C-a-w -> Open Chrome

