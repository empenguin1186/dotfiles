export PATH=$HOME/bin:/usr/local/bin:$PATH

if [ -f '~/.bash_profile' ]; then source ~/.bash_profile; fi
if [ -f '~/.zprofile' ]; then source ~/.zprofile; fi

function powerline_precmd() {
  PS1="$(powerline-shell --shell zsh $?)
$ "
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi
