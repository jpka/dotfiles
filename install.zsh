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
