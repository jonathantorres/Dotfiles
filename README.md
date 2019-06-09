# Dotfiles
Bash settings amongst other things. I just want to type less and have some stuff already pre-configured. Treat this repo as if it's your home directory.

## Installation
Clone the repo anywhere you want. I have it copied on `~/dev/dotfiles`.
```bash
git clone git@github.com:jonathantorres/dotfiles.git
```

## Create symlink
Run the script to create the symlink for the script `sync.sh`.
```bash
./init.sh
```
This script will do the following:
- Sync bash settings
- Sync Sublime Text settings
- Sync git settings
- Sync nginx configuration files

## Run the sync script
```bash
sync
```
