#!/usr/bin/env sh

##### STOP MYSQL SERVICE (if exist) #####
ps aux | grep -i mysql | awk {'print $2'} | sudo xargs kill -9

##### REMOVE PREVIOUS MEMCACHED #####
sudo apt-get -y purge mysql-server*

##### INSTALL MySQL #####
sudo apt-get -y update
sudo apt-get -y install mysql-server

##### CONFIGURE SECURITY MYSQL #####
mysql_secure_installation

##### START MYSQL SERVICE #####
sudo /etc/init.d/mysql restart
# sudo service mysql restart
