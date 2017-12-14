# Dotfiles
My zsh settings amongst other things. I just want to type less and have some stuff already pre-configured. Treat this repo as if it's your home directory.

## Installation
Clone the repo anywhere you want. I have it copied on `~/dev/dotfiles`.
```bash
git clone git@github.com:jonathantorres/dotfiles.git
```

## Sync oh my zsh settings
Copy my zsh settings file.
```bash
cp ~/.zshrc ~/dev/dotfiles/.zshrc
```

Copy my custom folder. Here I can store my plugins and my aliases.
```bash
cp -R ~/.oh-my-zsh/custom/ ~/dev/dotfiles/.oh-my-zsh/custom/
```

## Sync Sublime Text settings
Run the `st` script to copy your current Sublime Text settings, and keep them on this repo so that I don't forget them!
```bash
cd ~/dev/dotfiles/st && ./st.sh
```

## Sync git settings
```bash
cp ~/.gitconfig ~/dev/dotfiles/.gitconfig
```

## To-do's
- Make a script to add a laravel site, it will copy a predefined string and add it to the end of `/usr/local/etc/nginx/servers/laravel.conf`, I should specify the name of the project.
- Add a script to sync my `nginx.conf` file and add it to this repo.
- Add a script to sync all the files in `/usr/local/etc/nginx/servers/*` and add them here.
