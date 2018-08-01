#!/usr/bin/env sh

##### INSTALL pyenv (Python Package Manager) #####
sudo rm -rf $HOME/.pyenv

git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv \
  && mv ~/.bashrc ~/.bashrc_old \
  && mv ~/.zshrc ~/.zshrc_old 
  && cp .zshrc ~/.zshrc \
  && cp .bashrc ~/.bashrc \

exec $SHELL

if [ -z "$PYENV_VERSION" ] 
then
  PYENV_VERSION='2.7.15'
fi 

pyenv install $PYENV_VERSION
pyenv global $PYENV_VERSION
pyenv rehash