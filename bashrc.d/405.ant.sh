if [ -d "${HOME}/opt/ant" ]; then
  export ANT_HOME="${HOME}/opt/ant"
elif [ -d "/opt/${USER}/ant" ]; then 
  export ANT_HOME="/opt/${USER}/ant"
fi
export PATH="${PATH}:${ANT_HOME}/bin"
