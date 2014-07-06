PATH="/usr/local/bin:$PATH"
PATH="$PATH:$HOME/.rvm/bin" # RVM

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Aliases
alias gulp="gulp --require coffee-script/register"
