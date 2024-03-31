#! /bin/bash

# bash: Copy bash settings file.
if [ -f ~/.bashrc ]; then
    cp ~/.bashrc ~/dev/dotfiles/bashrc.sh
fi
if [ -f ~/.bash_profile ]; then
    cp ~/.bash_profile ~/dev/dotfiles/bash_profile.sh
fi
if [ -f ~/.bash_aliases ]; then
    cp ~/.bash_aliases ~/dev/dotfiles/bash_aliases.sh
fi
echo "bash settings are now synced.";

# git settings
if [ -f ~/.gitconfig ]; then
    cp ~/.gitconfig ~/dev/dotfiles/gitconfig
fi
if [ -f ~/.gitignore_global ]; then
    cp ~/.gitignore_global ~/dev/dotfiles/gitignore_global
fi
echo "git settings are now synced.";

# vim settings
if [ -f ~/.vimrc ]; then
    cp ~/.vimrc ~/dev/dotfiles/vimrc.vim
fi
echo "vim settings are now synced.";

# nginx settings
if [ -f /usr/local/etc/nginx/nginx.conf ]; then
    cp /usr/local/etc/nginx/nginx.conf ~/dev/dotfiles/nginx/nginx.conf
fi
if [ -d /usr/local/etc/nginx/servers/ ]; then
    cp -R /usr/local/etc/nginx/servers/ ~/dev/dotfiles/nginx/servers/
fi
echo "Configuration files from nginx are now synced.";

# sublime text
# cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings ~/dev/dotfiles/subl
# cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap ~/dev/dotfiles/subl
# echo "Copied settings from Sublime Text 3"
# php ~/dev/dotfiles/subl/subl_packages.php

