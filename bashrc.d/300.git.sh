if [ -f /usr/bin/git ]; then
  export GIT_PS1_SHOWDIRTYSTATE=1
  export GIT_PS1_SHOWUNTRACKEDFILES=1
  export GIT_PS1_SHOWCOLORHINTS=1

#   export GIT_PS1_SHOWUPSTREAM=auto
#   PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'

  export PS1=${PS1}'$(__git_ps1 "[%s] ")'

  source ~/.git_completion.sh
  __git_complete g __git_main
fi
