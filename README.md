# dotfiles
Linux dotfiles I use

# Requires Vundle
But if you don't want to use plugins you can use .vimrc_minimal instead.

`$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

Launch `vim` and run `:PluginInstall`

# KDE refresh rate
There is a setting in display setting but in order to use it even on lock screen:
- Add `MaxFPS=100` in .config/kwinrc under Compositing section
- Add `xrandr --rate 100` to /usr/share/sddm/scripts/Xsetup
