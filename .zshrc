# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/agnul/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

precmd() {
    [[ -t 1 ]] || return
    
    case $TERM in
    (sun-cmd) 
	print -Pn "\e]l%~\e\\"
	;;
    (*xterm*|rxvt|(dt|k|E)term) 
	print -Pn "\e]2;${USER}@${HOST}: %~\a"
	;;
    esac
}

PS1="[%T] %n@%m:%2~ %# "

if [[ -r ~/.aliasrc ]]; then
    . ~/.aliasrc
fi

export JAVA_HOME=/usr/local/java

typeset -U path
path=($HOME/bin /usr/local/eclipse $JAVA_HOME/bin $path)
