#!/usr/bin/env sh

##### INSTALL BASH #####
rm -rf $HOME/.bash_it \
  && touch $HOME/.bashrc \
  && cd $HOME \
  && git clone https://github.com/Bash-it/bash-it.git /opt/.bash_it \
  && git clone https://github.com/speedenator/agnoster-bash.git /opt/.bash_it/themes/agnoster-bash \
  && cd /opt \
  && tar zcvf bash_it.tar.gz .bash_it 

##### CONFIGURE BASH #####
cd /opt \
  && tar zcvf bash_it.tar.gz .bash_it \
  && cp /opt/bash_it.tar.gz $HOME  \
  && cd $HOME \
  && tar zxvf $HOME/bash_it.tar.gz 
  