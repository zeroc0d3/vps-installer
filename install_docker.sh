#!/usr/bin/env sh

##### DEFAULT VALUE (CONFIG) #####
if [ -z "$USER_NAME" ] 
then
  USER_NAME='ubuntu'
fi 

if [ -z "$DEPLOY_ACCOUNT" ] 
then
  DEPLOY_ACCOUNT='deploy'
fi 

##### STOP DOCKER SERVICE (if exist) #####
ps aux | grep -i docker | awk {'print $2'} | sudo xargs kill -9

##### INSTALL DOCKER #####
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get -y update
apt-cache policy docker-ce

sudo apt-get -y install docker-ce
sudo systemctl status docker

##### INSTALL DOCKER-COMPOSE #####
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

##### CONFIGURE DOCKER #####
sudo usermod -aG docker $USER_NAME
# sudo usermod -aG docker ${USER}
sudo usermod -aG docker $DEPLOY_ACCOUNT

##### START DOCKER SERVICE #####
sudo /etc/init.d/docker restart
# sudo service docker restart

##### TEST DOCKER-COMPOSE #####
# $ docker-compose --version
# >> docker-compose version 1.18.0, build 8dd22a9