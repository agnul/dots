if [ -d "${HOME}/opt/go" ]; then
  GOROOT="${HOME}/opt/go"
elif [ -d "/opt/${USER}/go" ]; then 
  GOROOT="/opt/${USER}/go"
fi

if [ -v GOROOT ]; then
  export GOPATH="${HOME}/dev/go"
  export GOFLAGS="-modcacherw"
  export PATH="${PATH}:${GOPATH}/bin:${GOROOT}/bin"

  unset GOROOT
fi
