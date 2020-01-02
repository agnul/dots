if [ -d "${HOME}/opt/gradle" ]; then
  export GRADLE_HOME="${HOME}/opt/gradle"
elif [ -d "/opt/${USER}/gradle" ]; then 
  export GRADLE_HOME="/opt/${USER}/gradle"
fi
export PATH="${PATH}:${GRADLE_HOME}/bin"
