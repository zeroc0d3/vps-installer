#!/usr/bin/env sh

touch $HOME/.bashrc
touch $HOME/.zshrc

cp ./HOME/.bashrc $HOME/.bashrc
cp ./HOME/.zshrc $HOME/.zshrc

cat ./config.cfg >> $HOME/.bashrc
cat ./config.cfg >> $HOME/.zshrc

source $HOME/.profile