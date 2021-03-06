#!/bin/bash
pwd_dir=$(pwd)

# Setup
mkdir -p ~/dotfiles/.vim/bundle
ln -s ~/dotfiles/.vim ~/
ln -s ~/dotfiles/.vimrc ~/

if [ ! -e ~/dotfiles/.vim/bundle/vundle ];
then
  git clone https://github.com/gmarik/vundle.git ~/dotfiles/.vim/bundle/vundle
fi

vi -c PluginInstall -c qa
python3 ~/dotfiles/.vim/bundle/YouCompleteMe/install.py --clang-completer