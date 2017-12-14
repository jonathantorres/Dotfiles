#! /usr/bin/env zsh

cp /usr/local/etc/nginx/nginx.conf ~/dev/dotfiles/nginx/nginx.conf
cp -R /usr/local/etc/nginx/servers/ ~/dev/dotfiles/nginx/servers/

echo "Configuration files from nginx are now synced.";
