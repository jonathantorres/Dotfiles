#! /usr/bin/env zsh

# Sync zsh: Copy my zsh settings file.
cp ~/.zshrc ~/dev/dotfiles/.zshrc
# Copy my custom folder. Here I can store my plugins and my aliases.
cp -R ~/.oh-my-zsh/custom/ ~/dev/dotfiles/.oh-my-zsh/custom/
echo "zsh settings are now synced.";

# Sync sublime text
st_version='3'
cp ~/Library/Application\ Support/Sublime\ Text\ $st_version/Packages/User/Preferences.sublime-settings ~/dev/dotfiles/st
cp ~/Library/Application\ Support/Sublime\ Text\ $st_version/Packages/User/Default\ \(OSX\).sublime-keymap ~/dev/dotfiles/st
echo "Copied settings from Sublime Text $st_version"

# Sync nginx
cp /usr/local/etc/nginx/nginx.conf ~/dev/dotfiles/nginx/nginx.conf
cp -R /usr/local/etc/nginx/servers/ ~/dev/dotfiles/nginx/servers/
echo "Configuration files from nginx are now synced.";

# Sync git settings
cp ~/.gitconfig ~/dev/dotfiles/.gitconfig
echo "git settings are now synced.";
