# tmux
Tmux configuration

# How to install

- install tmux from source/repo/pip/brew/...
- Put tmux.conf into /etc/tmux/tmux.conf (or in ~/.tmux.conf if you're not root)
- Put tmux.sh into a folder of your $PATH
- start with tmux.sh [command]

# List of commands

- tmux.sh ls : list tmux session attached to the current user
- tmux.sh $session : attach to $session . If the session does not exist, it will create the session.

# Shortcut inside tmux

## window management

- prefix : Ctrl-A
- new window : prefix + C or F2
- previous window : F3
- next window : F4
- go to last used window : prefix + A
- go to window 0-9 : prefix + [0-9]
- choose window from list : prefix + L
- kill window : prefix + &
- switch window with previous : prefix + F3
- switch window with next : prefix + F4
- rename window : F8

## pane management

- prefix : Ctrl-A
- vertical pane : prefix + V
- horizontal pane : prefix + H
- select left-pane : prefix + left (arrow)
- select right-pane : prefix + right (arrow)
- select upper-pane : prefix + up (arrow)
- select bottom-pane : prefix + down (arrow)
- zoom pane : prefix + Z or F9
- sync pane : prefix + S or F10
- kill pane : prefix + X
- Copy mode (let you scroll inside pane) : prefix + PageUP or F7
