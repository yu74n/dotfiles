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
alias dact='deactivate'
alias py='python'
alias b='vi ~/.bashrc'
alias ctags='`brew --prefix`/bin/ctags'
alias js='docker run -it openjdk:13-jdk /bin/jshell'

source ~/.git-prompt.sh
fpath=(~/.zsh $fpath)
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
setopt PROMPT_SUBST
PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '

#encoding
export LANG=en_US.UTF-8
export_JAVA_OPTIONS="-Dfiles.encoding=UTF-8"

#svn setting
export SVN_EDITOR=vim

LOCAL_CONFIG=$HOME/bash/config/local.sh

if [ -f "$LOCAL_CONFIG" ]; then
    . $LOCAL_CONFIG
fi
