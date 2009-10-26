# include .bashrc if it exists
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

##
# Your previous /Users/flee1/.bash_profile file was backed up as /Users/flee1/.bash_profile.macports-saved_2009-08-29_at_21:45:52
##

# MacPorts Installer addition on 2009-08-29_at_21:45:52: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/flee1/.bash_profile file was backed up as /Users/flee1/.bash_profile.macports-saved_2009-08-31_at_21:37:55
##

# MacPorts Installer addition on 2009-08-31_at_21:37:55: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Enable bash completion for installed Ports
if [ -f /opt/local/etc/bash_completion ]; then
  . /opt/local/etc/bash_completion
fi


if [ -s ~/.rvm/scripts/rvm ] ; then source ~/.rvm/scripts/rvm ; fi

##
# Your previous /Users/flee1/.bash_profile file was backed up as /Users/flee1/.bash_profile.macports-saved_2009-10-23_at_22:45:25
##

# MacPorts Installer addition on 2009-10-23_at_22:45:25: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

