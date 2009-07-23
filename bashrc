YELLOW_GREY="\[\e[33;40m\]"
WHITE_BLACK="\[\e[0m\]"

# The terminal display - "user[path](gitbranch)$ " where gitbranch only shows up in a git repo
parse_git_branch(){ git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'; }
# Command Prompt
export PS1="$YELLOW_GREY[\w]\$(parse_git_branch)%$WHITE_BLACK "
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*} [${PWD}]"; echo -ne "\007"'   

# PATH
export PATH=/opt/local/bin:/opt/local/jruby/bin:$PATH

# P4
export P4CONFIG=~/.p4config

# Editors
export EDITOR="vim"
export P4EDITOR="vim"

# History
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

# Colors
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1 
