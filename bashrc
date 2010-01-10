YELLOW_GREY="\[\e[33;40m\]"
WHITE_BLACK="\[\e[0m\]"

# The terminal display - "user[path](gitbranch)$ " where gitbranch only shows up in a git repo
parse_git_branch(){ git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'; }
# Command Prompt
export PS1="$YELLOW_GREY[\u.\h:\w]\$(parse_git_branch)%$WHITE_BLACK "
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*} [${PWD}]"; echo -ne "\007"'

# PATH
export PATH=/opt/local/bin:/opt/local/sbin:/Users/flee1/.gem/ruby/1.9.1/bin:/opt/mongodb-osx-x86_64-1.2.1/bin/:$PATH
export MANPATH=/opt/local/share/man:$MANPATH

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


shopt -s checkwinsize # After each command, checks the windows size and changes lines and columns

# bash completion settings (actually, these are readline settings)
bind "set completion-ignore-case on" # note: bind is used instead of setting these in .inputrc.  This ignores case in bash completion
bind "set bell-style none" # No bell, because it's damn annoying
bind "set show-all-if-ambiguous On" # this allows you to automatically show completion without double tab-ing

