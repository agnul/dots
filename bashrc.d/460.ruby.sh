if [ -d "${HOME}/.rbenv" ]; then
  export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi
