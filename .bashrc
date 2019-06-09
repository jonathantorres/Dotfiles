export LANG=en_US.UTF-8
# export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/Users/jonathantorres/.composer/vendor/bin"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:/usr/local/opt/php@7.2/bin"
export PATH="$PATH:/usr/local/opt/php@7.2/sbin"

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# jonathantorres@lethe:~ (master)$
export PS1="\u@\h:\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\]$ "
