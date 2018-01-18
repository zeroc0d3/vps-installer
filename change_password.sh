#!/usr/bin/env sh

##### CHANGE DEPLOY PASSWORD #####
# sudo echo "$DEPLOY_ACCOUNT:$PASSWORD_DEPLOY" | /usr/sbin/chgpasswd 
sudo passwd $DEPLOY_ACCOUNT