#! /usr/bin/env zsh

version='3'
cp ~/Library/Application\ Support/Sublime\ Text\ $version/Packages/User/Preferences.sublime-settings ~/dev/dotfiles/st
cp ~/Library/Application\ Support/Sublime\ Text\ $version/Packages/User/Default\ \(OSX\).sublime-keymap ~/dev/dotfiles/st

echo "Copied settings from Sublime Text $version"
