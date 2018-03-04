# Dotfiles
My zsh settings amongst other things. I just want to type less and have some stuff already pre-configured. Treat this repo as if it's your home directory.

## Installation
Clone the repo anywhere you want. I have it copied on `~/dev/dotfiles`.
```bash
git clone git@github.com:jonathantorres/dotfiles.git
```

## Create symlink
Run the script to create the symlink for the script `sync.zsh`.
```bash
./init.zsh
```
This script will do the following:
- Sync oh my zsh settings
- Sync Sublime Text settings
- Sync git settings
- Sync nginx configuration files

## Run the sync script
```bash
sync
```

## To-do's
- Make a script to add a laravel site, it will copy a predefined string and add it to the end of `/usr/local/etc/nginx/servers/laravel.conf`, I should specify the name of the project.
