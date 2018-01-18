#!/usr/bin/env sh

##### CONFIGURE NEW ACCOUNT (deploy) #####
sudo adduser $DEPLOY_ACCOUNT

sudo mkdir -p $PATH_HOME/.ssh
sudo mkdir -p $DEPLOY_HOME/.ssh

##### CONFIGURE PUBLIC-KEY #####
### Generate Public-Key (without password) for Ubuntu
sudo /usr/bin/ssh-keygen -t rsa -b 4096 -C "$USER_NAME@$HOST_NAME" -f $PATH_HOME/.ssh/id_rsa -q -N "";
sudo /usr/bin/openssl rsa -in $PATH_HOME/.ssh/id_rsa -outform pem > id_rsa.pem

### Generate Public-Key (without password) for Deploy
sudo /usr/bin/ssh-keygen -t rsa -b 4096 -C "$DEPLOY_ACCOUNT@$DEPLOY_HOME" -f $DEPLOY_HOME/.ssh/id_rsa -q -N "";
sudo /usr/bin/openssl rsa -in $DEPLOY_HOME/.ssh/id_rsa -outform pem > id_rsa.pem
