#!/usr/bin/env sh

##### DEFAULT VALUE (CONFIG) #####
if [ -z "$PATH_HOME" ] 
then
  PATH_HOME=$HOME
fi 

if [ -z "$NVM_VERSION" ] 
then
  NVM_VERSION='8.9.4'
fi 

##### INSTALL NODEJS #####
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh -o install_nvm.sh

chmod +x install_nvm.sh
bash install_nvm.sh

source $PATH_HOME/.profile

nvm install $NVM_VERSION

##### TEST NODEJS #####
node -v

##### SYMLINK #####
sudo ln -sf /usr/bin/nodejs /usr/bin/node
sudo ln -sf /usr/bin/nodejs /usr/sbin/node
