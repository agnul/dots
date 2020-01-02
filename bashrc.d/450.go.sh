if [ -d "${HOME}/opt/go" ]; then
  export GOPATH="${HOME}/opt/go"
elif [ -d "/opt/${USER}/go" ]; then 
  export GOPATH="/opt/${USER}/go"
fi
export GOROOT="${HOME}/dev/go"
export PATH="${PATH}:${GOPATH}/bin:${GOROOT}/bin"
