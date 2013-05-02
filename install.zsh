#!/bin/zsh

local OHMY=$HOME/.oh-my-zsh

if ! test -d $OHMY
  then wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
fi

local CUSTOM=$OHMY/custom
rm -rf $CUSTOM
ln -s -f $PWD/oh-my-zsh $CUSTOM

ln -f .zshrc $HOME/.zshrc
ln -f .vimrc $HOME/.vimrc

cp z.sh $HOME/.

local ST2C=$HOME/.config/sublime-text-2
rm -rf $ST2C
ln -s -f $PWD/sublime-text-2 $ST2C

local VIM=$HOME/.vim
rm -rf $VIM
ln -s -f $PWD/.vim $VIM
