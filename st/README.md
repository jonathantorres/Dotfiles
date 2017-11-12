# Sublime Text Settings
My Sublime Text 3 settings.

## Problem
Need to have my sublime text settings on one single place. Hate to have to remember those settings each time I switch from one machine to another. So, now each time I update/change my settings on sublime text, just run the `st` script and they will be copied here, and then push them to github.

## Instalation
Just clone the repository, store it anywhere you want. I chose my home directory.
```bash
cd ~ && git clone git@github.com:jonathantorres/st.git
```

## Run the script
This will copy your sublime text settings on the current directory.
```bash
cd ~/st && ./st.sh
```

## Push changes
Once the settings are copied, store them here.
```bash
git add . && git commit -m "Update st settings." && git push -u origin master
```
