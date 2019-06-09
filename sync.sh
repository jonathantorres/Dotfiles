#! /bin/bash

# Sync bash: Copy bash settings file.
cp ~/.bashrc ~/dev/dotfiles/.bashrc
cp ~/.bash_profile ~/dev/dotfiles/.bash_profile
echo "bash settings are now synced.";

# Sync sublime text
st_version='3'
cp ~/Library/Application\ Support/Sublime\ Text\ $st_version/Packages/User/Preferences.sublime-settings ~/dev/dotfiles/st
cp ~/Library/Application\ Support/Sublime\ Text\ $st_version/Packages/User/Default\ \(OSX\).sublime-keymap ~/dev/dotfiles/st
echo "Copied settings from Sublime Text $st_version"
php ~/dev/dotfiles/st/st_packages.php

# Sync nginx
cp /usr/local/etc/nginx/nginx.conf ~/dev/dotfiles/nginx/nginx.conf
cp -R /usr/local/etc/nginx/servers/ ~/dev/dotfiles/nginx/servers/
echo "Configuration files from nginx are now synced.";

# Sync git settings
cp ~/.gitconfig ~/dev/dotfiles/.gitconfig
echo "git settings are now synced.";
