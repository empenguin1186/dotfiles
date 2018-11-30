source /Users/kodaira/git/contrib/completion/git-prompt.sh
source /Users/kodaira/git/contrib/completion/git-completion.bash
 
export PS1='╭ ─ ○  \[\033[32m\]\u@\h\[\033[00m\]\e[36m\](\D{%Y/%m/%d %H:%M:%S})\e[0m\]:\[\033[01;34m\]\w\[\033[35m\]$(__git_ps1)
\[\033[00m\]╰ ─ ○  '

export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

alias gbr='git branch'
alias gad='git add'
alias gcom='git commit -m'
alias gpsh='git push origin'
alias gchk='git checkout'
