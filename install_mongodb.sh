#!/usr/bin/env sh

##### STOP MONGODB SERVICE (if exist) #####
ps aux | grep -i mongod | awk {'print $2'} | sudo xargs kill -9

##### INSTALL MONGODB #####
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6

echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list

sudo apt-get -y update
sudo apt-get -y install mongodb-org

##### START MONGODB SERVICE #####
sudo mongod --fork --logpath /var/log/mongodb.log
# sudo systemctl start mongod

##### SHOW MONGODB STATUS #####
sudo systemctl status mongod

##### SET MONGODB DAEMON SERVICES #####
sudo systemctl enable mongod
