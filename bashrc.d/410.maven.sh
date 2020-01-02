if [ -d "${HOME}/opt/maven" ]; then
  export M2_HOME="${HOME}/opt/maven"
elif [ -d "/opt/${USER}/maven" ]; then 
  export M2_HOME="/opt/${USER}/maven"
fi
export PATH="${PATH}:${M2_HOME}/bin"
