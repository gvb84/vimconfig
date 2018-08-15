#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
rm -rf $HOME/.vim
mkdir $HOME/.vim
cp -r $DIR/. $HOME/.vim
cd $HOME/.vim
git submodule init
git submodule update
rm -f $HOME/.vimrc $HOME/.gvimrc
ln -s $HOME/.vim/vimrc $HOME/.vimrc
ln -s $HOME/.vim/gvimrc $HOME/.gvimrc
