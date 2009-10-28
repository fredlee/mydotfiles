# include .bashrc if it exists
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# Enable bash completion for installed Ports
if [ -f /opt/local/etc/bash_completion ]; then
  . /opt/local/etc/bash_completion
fi

# MacPorts Installer addition on 2009-10-23_at_22:45:25: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/ruby-enterprise-1.8.7-20090928/bin:/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

