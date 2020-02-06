#! /usr/bin/env bash

if [[ -f "$HOME/bin/dotsync" ]]; then
    rm -f "$HOME/bin/dotsync"
fi

ln -s ~/dev/dotfiles/sync.sh ~/bin/dotsync
echo 'Symlink created!';

