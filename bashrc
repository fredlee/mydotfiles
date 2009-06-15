# The terminal display - "user[path](gitbranch)$ " where gitbranch only shows up in a git repo
parse_git_branch(){ git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'; }

YELLOW_GREY="\[\e[33;40m\]"
WHITE_BLACK="\[\e[0m\]"

export PS1="$YELLOW_GREY\u[\w]\$(parse_git_branch)%$WHITE_BLACK "
export PATH=/opt/local/bin:/opt/local/jruby/bin:$PATH

export P4EDITOR="vim"
export P4CONFIG=~/.p4config

export EDITOR="vim"

export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi
