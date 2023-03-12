autoload -U compinit promptinit
compinit
promptinit
prompt gentoo

zstyle ':completion::complete:*' use-cache 1

alias ls="ls --color=auto"

if [ -e "$HOME/.aliases" ]
then
	. "$HOME/.aliases"
fi

bindkey -e
