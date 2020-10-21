#!/bin/bash

cp bash/.bashrc ~
cp git/.git* ~
cp -r vim/.vim ~
cp vim/.vimrc ~
cp tmux/.tmux.conf ~
# Please comment in below if you want to enable 'suan/vim-instant-markdown'
#npm -g install instant-markdown-d

BASH_SCRIPT_PATH=$HOME/bash/script
mkdir -p $BASH_SCRIPT_PATH
cp bash/dirtags $BASH_SCRIPT_PATH/dirtags

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c 'PluginInstall' -c 'q' -c 'q'
OS_TYPE=$(uname)
if [[ $OS_TYPE == 'Darwin' ]]
then
    brew install wget
elif [[ $OS_TYPE == 'Linux' ]]
then
    if [[ ! $(command -v make > /dev/null 2>&1) ]]
    then
        yum install -y make
    fi
    if [[ ! $(command -v wget > /dev/null 2>&1) ]]
    then
        yum install -y wget
    fi
fi

cd ~/.vim/bundle/vimproc && make
cd ~
wget -O .git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
wget -O .git-completion.zsh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
wget -O .git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

mkdir ~/.zsh
mv .git-completion.zsh ~/.zsh
