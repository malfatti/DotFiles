# Test for an interactive shell. 
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

##=== My config ===##

## Update title with the last command                                          
trap 'echo -ne "\033]2;$(history 1 | sed "s/^[ ]*[0-9]*[ ]*//g")\007"' DEBUG

## Set prompt
PS1="\[\033[1;36m\][\D{%Y%m%d-%H%M%S}]\[\033[0;31m\][\u@\h]\[\033[1;32m\][\w]\$\[\033[0m\] "

## Unlimited history
HISTFILESIZE=
HISTSIZE=
HISTFILE=~/.BashAeternalHistory
HISTTIMEFORMAT='%F %T '
HISTCONTROL=ignoredups

## Force prompt to write history after every command.
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

## Source external files
if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi
if [ -f ~/.Paths ]; then . ~/.Paths; fi

## Start X automatically after login in tty3
if [ $(tty) == /dev/tty3 ]; then
  cowsay -f dragon "Starting X..."
  startx
fi

