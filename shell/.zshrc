if [ -e /usr/bin/ddate ]
then
	ddate >&2
fi
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

unsetopt MULTIBYTE
	# ^ recommended by zkbd
cat >/dev/null <<END
You are using zsh in MULTIBYTE mode to support modern character sets (for
languages other than English).  To use the Meta or Alt keys, you probably
need to revert to single-byte mode with a command such as

    unsetopt MULTIBYTE

If you want to use these extra keys with zsh, try adding the above command
to your /home/nick/.zshrc file.
END

bindkey -e


# These work for xfce4-terminal but not for xterm
# Do they work for linux console?
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char
# It might be easier to look for Debian/Ubuntu's default zshrc which have this sorted

