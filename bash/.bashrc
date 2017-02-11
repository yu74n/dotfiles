alias vi='vim'
alias g='git'
alias va='vagrant'
alias ll='ls -l'
alias la='ls -a'
alias l1='ls -1'
alias gc='gcloud'
alias delbr="git branch --merged | grep -vE '^\*|master$|v[0-9]\.[0-9]$' | xargs -I % git branch -D %"
alias pb="pbcopy"
alias svncm='svn commit'
alias svnst='svn status'
alias svnco='svn checkout'
alias d='docker'
alias de='docker exec'
alias di='docker inspect'
alias dp='docker ps -a'
alias dr='docker run'
alias dm='docker-machine'
alias denv='eval $(docker-machine env)'
alias newtag='find * -type d -exec ~/bash/script/dirtags {} \;'
alias oa='open -a /Applications/IntelliJ\ IDEA.app/'
alias act='. ~/env/scraping/bin/activate'
alias dact='deactivate'
alias py='python'
alias b='vi ~/.bashrc'

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
