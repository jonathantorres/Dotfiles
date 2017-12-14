#! /usr/bin/env zsh
copy_settings () {
    version='3'
    if [[ -n $1 && $1 == '2' ]]; then
        version='2'
    fi
    cp ~/Library/Application\ Support/Sublime\ Text\ $version/Packages/User/Preferences.sublime-settings .
    cp ~/Library/Application\ Support/Sublime\ Text\ $version/Packages/User/Default\ \(OSX\).sublime-keymap .
    echo "Copied settings from Sublime Text $version"
}

copy_settings $1
