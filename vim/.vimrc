if has('win32') || has('win64')
  set runtimepath+=$USERPROFILE\Dropbox\vim\vimfiles\*
  let $MYVIMRC ="$USERPROFILE/Dropbox/vim/_vimrc_impl"
  let $MYGVIMRC ="$USERPROFILE/Dropbox/vim/_gvimrc_impl"
else
  set runtimepath+=$HOME/Dropbox/vim/vimfiles/*
  let $MYVIMRC ="$HOME/work/settings/vim/_vimrc_impl"
  let $MYGVIMRC ="$HOME/work/settings/vim/_gvimrc_impl"
endif

source $MYVIMRC
source $MYGVIMRC
