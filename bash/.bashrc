code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
export IDEA_CFG_DIR="$HOME/Library/Preferences/IntelliJIdea14"
alias vi='vim'
alias g='git'
alias va='vagrant'
alias ll='ls -l'
PATH=/usr/local/bin:$PATH
source ~/.git-completion.bash
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWSTASHSTATE=1
PS1='\[\e[0;32m\][\u@ \w]$(__git_ps1 " (%s)")\$\[\e[m\] '
