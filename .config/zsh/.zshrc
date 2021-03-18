# feels good man
# we want tmux to take care of scrolling
#if [ -z "$TMUX" ]; then
#    tmux attach -t purnukka || tmux new -s purnukka
#fi

# we like to outsource everything
[[ -f $HOME/.config/zsh/alias ]] && source $HOME/.config/zsh/alias
[[ -r $HOME/.dir_colors ]] && eval $(dircolors ~/.dir_colors)
test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)
USZP=/usr/share/zsh/plugins
source $USZP/zsh-autosuggestions/zsh-autosuggestions.zsh
source $USZP/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

KEYTIMEOUT=5

# we set some variables
HISTFILE=~/.config/zsh/zhistory
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY

# emacs keys, -v for vi
bindkey -e

# how complete shows
zmodload zsh/complist
autoload -U compinit && compinit
# Include hidden files in autocomplete:
_comp_options+=(globdots)
zstyle ':completion:*:*:kill:*:*' menu selection

PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{blue}%3~%f%b %# '

hs()
{
	fc -lim "*$@*" 0
}

runc()
{
	clear &&
	time gcc -Wall -Wextra -std=c99 "$@" && ./a.out
}

runcp()
{
	clear &&
	time g++ -g -std=c++17 -Wall -Wextra "$@" && ./a.out
}

com()
{
	clear;
	gcc -Wall -Wextra -std=c99 "$@"
}

# # ex - archive extractor
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tar.xz)    tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

#dont know!
autoload -U colors && colors

setopt auto_cd
