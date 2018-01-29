#!/usr/bin/env sh

##### DEFAULT VALUE (CONFIG) #####
if [ -z "$DEPLOY_ACCOUNT" ] 
then
  DEPLOY_ACCOUNT='deploy'
fi 

##### CHANGE DEPLOY PASSWORD #####
# sudo echo "$DEPLOY_ACCOUNT:$PASSWORD_DEPLOY" | /usr/sbin/chgpasswd 
sudo passwd $DEPLOY_ACCOUNT