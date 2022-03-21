#!/bin/bash

set -ex

echo "Linking gitconfig..."
rm -rf $HOME/.gitconfig
ln -s $PWD/.gitconfig $HOME/.gitconfig

echo "Installing spin specific tools..."
if [ $SPIN ]; then
  echo "export EDITOR=vim" >> $HOME/.zshrc
  echo "source $PWD/.bash_aliases" >> $HOME/.zshrc
  echo "source $PWD/.spin_aliases" >> $HOME/.zshrc
fi

