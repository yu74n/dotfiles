#!/bin/bash

cp bash/.bashrc ~
cp git/.gitconfig ~
cp -r vim/.vim ~
cp vim/.vimrc ~
cp tmux/.tmux.conf ~
# Please comment in below if you want to enable 'suan/vim-instant-markdown'
#npm -g install instant-markdown-d

BASH_SCRIPT_PATH=$HOME/bash/script
mkdir -p $BASH_SCRIPT_PATH
cp bash/dirtags $BASH_SCRIPT_PATH/dirtags
