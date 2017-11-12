# Dotfiles
My zsh settings. I just want to type less.

## Installation
Clone the repo anywhere you want. I have it copied on `~/dev/dotfiles`.
```bash
git clone git@github.com:jonathantorres/dotfiles.git
```

## Oh my zsh settings
Copy my zsh settings file.
```bash
cp ~/.zshrc ~/dev/dotfiles/.zshrc
```

Copy my custom folder. Here I can store my plugins and my aliases.
```bash
cp -R ~/.oh-my-zsh/custom/ ~/dev/dotfiles/.oh-my-zsh/custom/
```

## Sublime Text settings
Run the `st` script to copy your current Sublime Text setting, and keep them on this repo so that I don't forget them!
```bash
cd ~/dotfiles/st && ./st.sh
```
