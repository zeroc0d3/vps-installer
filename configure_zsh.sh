#!/usr/bin/env sh

##### INSTALL OH-MY-ZSH #####
rm -rf $PATH_HOME/.oh-my-zsh \
  && touch $PATH_HOME/.zshrc \
  && cd $PATH_HOME \
  && git clone https://github.com/robbyrussell/oh-my-zsh.git /opt/.oh-my-zsh \
  && git clone https://github.com/bhilburn/powerlevel9k.git /opt/.oh-my-zsh/custom/themes/powerlevel9k 

##### CONFIGURE OH-MY-ZSH #####
cd /opt \
  && tar zcvf oh-my-zsh.tar.gz .oh-my-zsh \
  && cp /opt/oh-my-zsh.tar.gz $PATH_HOME \
  && cd $PATH_HOME \
  && tar zxvf oh-my-zsh.tar.gz
  