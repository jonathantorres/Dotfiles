#! /bin/bash

# bash: Copy bash settings file.
cp ~/.bashrc ~/dev/dotfiles/bashrc.sh
cp ~/.bash_profile ~/dev/dotfiles/bash_profile.sh
cp ~/.bash_aliases ~/dev/dotfiles/bash_aliases.sh
echo "bash settings are now synced.";

# sublime text
cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings ~/dev/dotfiles/subl
cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap ~/dev/dotfiles/subl
echo "Copied settings from Sublime Text 3"
php ~/dev/dotfiles/subl/subl_packages.php

# nginx settings
cp /usr/local/etc/nginx/nginx.conf ~/dev/dotfiles/nginx/nginx.conf
cp -R /usr/local/etc/nginx/servers/ ~/dev/dotfiles/nginx/servers/
echo "Configuration files from nginx are now synced.";

# git settings
cp ~/.gitconfig ~/dev/dotfiles/gitconfig
cp ~/.gitignore_global ~/dev/dotfiles/gitignore_global
echo "git settings are now synced.";

# vim settings
cp ~/.vimrc ~/dev/dotfiles/vimrc.vim
echo "vim settings are now synced.";
