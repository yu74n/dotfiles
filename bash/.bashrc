code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
alias vi='vim'
alias g='git'
alias va='vagrant'
alias ll='ls -l'
alias la='ls -a'
alias l1='ls -1'
alias gc='gcloud'
alias gdmb="git branch --merged | grep -vE '^\*|master$|v[0-9]\.[0-9]$' | xargs -I % git branch -d %"
alias pb="pbcopy"
alias svncm='svn commit'
alias svnst='svn status'
alias svnco='svn checkout'
alias d='docker'
alias dp='docker ps -a'
alias dr='docker run'
alias dm='docker-machine'
alias di='docker inspect'
alias de='docker exec'
alias newtag='find * -type d -exec ~/bash/script/dirtags {} \;'

source ~/.git-completion.bash
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWSTASHSTATE=1
PS1='\[\e[0;32m\][\u@ \w]$(__git_ps1 " (%s)")\$\[\e[m\] '

export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/work/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

eval $(docker-machine env)

. $HOME/bash/config/local.sh
