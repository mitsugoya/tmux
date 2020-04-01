#!/bin/bash

SESSION="$1"

# If we ask for list of sessions
if [ "Z$1" = "Zls" ] ; then
    tmux -L $USER ls
    exit 0
fi

# Set title of terminator
echo -ne "\033]0;$SESSION\007"

# Check if user config file exits
if [ -e /etc/tmux/tmux-$USER.conf ] ; then
    CONFIG=/etc/tmux/tmux-$USER.conf
else
    CONFIG=/etc/tmux/.tmux.conf
fi

# Check if SESSION exits, if not, create it without connecting to it
check=$(tmux -L $USER ls -F "#{session_name}" | egrep "^$SESSION\$")
if [ "Z${check}" = "Z" ] ; then
    tmux -L $USER -f $CONFIG new -s $SESSION -d
fi

tmux -L $USER -f $CONFIG attach -t $SESSION

