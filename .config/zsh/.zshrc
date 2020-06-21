# feels good man
# we like to outsource everything
[[ -f $HOME/.config/zsh/alias ]] && source $HOME/.config/zsh/alias
[[ -r $HOME/.dir_colors ]] && eval $(dircolors ~/.dir_colors)
USZP=/usr/share/zsh/plugins
source $USZP/zsh-autosuggestions/zsh-autosuggestions.zsh
source $USZP/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# we set some variables
HISTFILE=~/.config/zsh/zhistory
HISTSIZE=10000
SAVEHIST=10000

PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{blue}%3~%f%b %# '

hs()
{
	fc -lim "*$@*" 1
}

runc()
{
	clear &&
	time gcc -Wall -Wextra -std=c99 "$@" && ./a.out
}

com()
{
	clear;
	gcc -Wall -Wextra -std=c99 "$@"
}

temp()
{
	while true; do
		clear;
		sensors | sed '1,16d'
		sleep 5;
	done
}
#dont know!
bindkey -e
autoload -U colors && colors
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

setopt auto_cd
# Include hidden files in autocomplete:
_comp_options+=(globdots)

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
	tmux attach -t code || cmux
fi
