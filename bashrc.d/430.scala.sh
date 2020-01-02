if [ -d "${HOME}/opt/scala" ]; then
  export SCALA_HOME="${HOME}/opt/scala"
elif [ -d "/opt/${USER}/scala" ]; then 
  export SCALA_HOME="/opt/${USER}/scala"
fi
export PATH="${PATH}:${SCALA_HOME}/bin"
