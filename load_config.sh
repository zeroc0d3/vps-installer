#!/usr/bin/env sh

touch ~/.bashrc
touch ~/.zshrc

cp ./HOME/.bashrc ~/.bashrc
cp ./HOME/.zshrc ~/.bashrc

cat ./config.cfg >> ~/.bashrc
cat ./config.cfg >> ~/.zshrc

source ~/.profile