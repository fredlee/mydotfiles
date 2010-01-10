# include .bashrc if it exists
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# Enable bash completion for installed Ports
if [ -f /opt/local/etc/bash_completion ]; then
  . /opt/local/etc/bash_completion
fi

