#!/bin/zsh

local OHMY=$HOME/.oh-my-zsh

if ! test -d $OHMY
  then wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
fi

local CUSTOM=$OHMY/custom
rm -r $CUSTOM
ln -s -f $PWD/oh-my-zsh $CUSTOM

ln -f .zshrc $HOME/.zshrc

cp z.sh $HOME/.

local ST2C=$HOME/.config/sublime-text-2
rm -r $ST2C
ln -s -f $PWD/sublime-text-2 $ST2C
