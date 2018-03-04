#! /usr/bin/env zsh

if [[ -f /usr/local/bin/sync ]]; then
    rm -f /usr/local/bin/sync
fi

ln -s ~/dev/dotfiles/sync.zsh /usr/local/bin/sync
echo 'Symlink created!';
