POWERLINE_HOME=~/.local/lib/python2.7/site-packages/powerline
if [ -r ${POWERLINE_HOME} ] && ! { [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ] || [ "$TERM" == "xterm-256color" ]; }; then

    powerline-daemon -q
    . ${POWERLINE_HOME}/bindings/bash/powerline.sh

fi
