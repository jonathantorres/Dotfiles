# Dotfiles
Bash settings amongst other things. I just want to type less and have some stuff already pre-configured. Treat this repo as if it's your home directory.

## Installation
Clone the repo anywhere you want. I have it copied on `~/dev/dotfiles`.
```bash
git clone git@github.com:jonathantorres/dotfiles.git
```

## Run the sync script
Run this script to sync the settings from your home directory into this repository
```bash
./sync
```

This script will do the following:
- Sync bash settings
- Sync Sublime Text settings
- Sync git settings
- Sync nginx configuration files

If you add the following alias, you can run the sync script from any location on your filesystem
```bash
alias dotsync=~/dev/dotfiles/sync.sh
```
