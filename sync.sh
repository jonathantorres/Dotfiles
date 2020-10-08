#! /bin/bash

# Sync bash: Copy bash settings file.
cp ~/.bashrc ~/dev/dotfiles/.bashrc
cp ~/.bash_profile ~/dev/dotfiles/.bash_profile
cp ~/.bash_aliases ~/dev/dotfiles/.bash_aliases
echo "bash settings are now synced.";

# Sync Vim
cp ~/.vimrc ~/dev/dotfiles/.vimrc
cp -R ~/.vim/ ~/dev/dotfiles/.vim/
echo "vim settings are now synced.";

# Sync sublime text
cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings ~/dev/dotfiles/st
cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap ~/dev/dotfiles/st
echo "Copied settings from Sublime Text 3"
php ~/dev/dotfiles/st/st_packages.php

# Sync nginx
cp /usr/local/etc/nginx/nginx.conf ~/dev/dotfiles/nginx/nginx.conf
cp -R /usr/local/etc/nginx/servers/ ~/dev/dotfiles/nginx/servers/
echo "Configuration files from nginx are now synced.";

# Sync git settings
cp ~/.gitconfig ~/dev/dotfiles/.gitconfig
cp ~/.gitignore_global ~/dev/dotfiles/.gitignore_global
echo "git settings are now synced.";
