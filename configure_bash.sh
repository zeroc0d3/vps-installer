#!/usr/bin/env sh

##### INSTALL BASH #####
rm -rf $PATH_HOME/.bash_it \
  && touch $PATH_HOME/.bashrc \
  && cd $PATH_HOME \
  && git clone https://github.com/Bash-it/bash-it.git /opt/.bash_it \
  && git clone https://github.com/speedenator/agnoster-bash.git /opt/.bash_it/themes/agnoster-bash \
  && cd /opt \
  && tar zcvf bash_it.tar.gz .bash_it 

##### CONFIGURE BASH #####
cd /opt \
  && tar zcvf bash_it.tar.gz .bash_it \
  && cp /opt/bash_it.tar.gz $PATH_HOME  \
  && cd $PATH_HOME \
  && tar zxvf $PATH_HOME/bash_it.tar.gz 
  