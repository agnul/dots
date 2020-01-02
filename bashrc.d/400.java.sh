if [ -d "${HOME}/opt/java" ]; then
  export JAVA_HOME="${HOME}/opt/java"
elif [ -d "/opt/${USER}/java" ]; then 
  export JAVA_HOME="/opt/${USER}/java"
fi
export PATH="${PATH}:${JAVA_HOME}/bin"
