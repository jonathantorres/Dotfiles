#! /usr/bin/env bash

if [[ -f "$HOME/bin/sync" ]]; then
    rm -f "$HOME/bin/sync"
fi

ln -s ~/dev/dotfiles/sync.sh ~/bin/sync
echo 'Symlink created!';

