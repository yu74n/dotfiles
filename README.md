# dotfiles

## Install
1. `./install.sh`
2. `git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
3. `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
4. `execute `:BundleInstall` on vim`
5. `cd ~/.vim/bundle/vimproc && make`
6. Install git utilities.
  1. `wget -O .git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash`
  2. `wget -O .git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh`
  3. `. .bashrc`
