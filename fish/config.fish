# Added for MacPorts
set PATH /opt/local/bin /opt/local/sbin $PATH

# Add /usr/local/bin to PATH
set PATH /usr/local/bin $PATH

# Adds Users local bin dir to path
set PATH $HOME/.local/bin $PATH

set -g fish_greeting

alias ls='ls --color -alh'
alias claer='clear'
alias cls='clear'


starship init fish | source

# Run flashfetch (comes with fastfetch)  on launch.
flashfetch
# Adds bash like functionality for 'sudo !!'

function sudo --description "Replacement for Bash 'sudo !!' command to run last command using sudo."
    if test "$argv" = !!
        echo sudo $history[1]
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end
