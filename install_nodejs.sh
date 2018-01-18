#!/usr/bin/env sh

##### INSTALL NODEJS #####
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh -o install_nvm.sh

chmod +x install_nvm.sh
bash install_nvm.sh

source $PATH_HOME/.profile

nvm install $NVM_VERSION

##### TEST NODEJS #####
node -v
