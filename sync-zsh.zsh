#! /usr/bin/env zsh

# Copy my zsh settings file.
cp ~/.zshrc ~/dev/dotfiles/.zshrc

# Copy my custom folder. Here I can store my plugins and my aliases.
cp -R ~/.oh-my-zsh/custom/ ~/dev/dotfiles/.oh-my-zsh/custom/

echo "zsh settings are now synced.";
