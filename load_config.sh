#!/usr/bin/env sh

touch $PATH_HOME/.bashrc
touch $PATH_HOME/.zshrc

cp ./HOME/.bashrc $PATH_HOME/.bashrc
cp ./HOME/.zshrc $PATH_HOME/.bashrc

cat ./config.cfg >> $PATH_HOME/.bashrc
cat ./config.cfg >> $PATH_HOME/.zshrc

source $PATH_HOME/.profile