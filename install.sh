#!/bin/bash

cp bash/.bashrc ~
cp git/.gitconfig ~
cp -r vim/.vim ~
cp vim/.vimrc ~

BASH_SCRIPT_PATH=$HOME/bash/script
mkdir -p $BASH_SCRIPT_PATH
cp bash/dirtags $BASH_SCRIPT_PATH/dirtags
