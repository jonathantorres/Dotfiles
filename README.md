# Dotfiles
My zsh settings amongst other things. I just want to type less and have some stuff already pre-configured. Treat this repo as if it's your home directory.

## Installation
Clone the repo anywhere you want. I have it copied on `~/dev/dotfiles`.
```bash
git clone git@github.com:jonathantorres/dotfiles.git
```

## Create symlinks
Run the script to create the symlinks for the scripts that sync my settings.
```bash
./init.zsh
```

## Sync oh my zsh settings
```bash
sync-zsh
```

## Sync Sublime Text settings
```bash
sync-st
```

## Sync git settings
```bash
sync-git
```

## To-do's
- Make a script to add a laravel site, it will copy a predefined string and add it to the end of `/usr/local/etc/nginx/servers/laravel.conf`, I should specify the name of the project.
- Add a script to sync my `nginx.conf` file and add it to this repo.
- Add a script to sync all the files in `/usr/local/etc/nginx/servers/*` and add them here.
