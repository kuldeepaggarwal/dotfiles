#!/bin/bash

set -ex

echo "Linking gitconfig..."
rm -rf $HOME/.gitconfig
ln -s $PWD/.gitconfig $HOME/.gitconfig

echo "Installing spin specific tools..."
if [ $SPIN ]; then
  echo "source $PWD/.bash_aliases" >> $HOME/.zshrc

  echo "Configure gpg keys..."
  gpgconf --launch dirmngr
  gpg --keyserver keys.openpgp.org --recv C8AEFAF5854C97B50FD9543EAB15AE63F7A9BF69
fi

