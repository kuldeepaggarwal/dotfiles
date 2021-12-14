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
  gpg --keyserver keys.openpgp.org --recv 29E3E915B231B9F5
fi

