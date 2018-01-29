#!/usr/bin/env sh

##### STOP MEMCACHED SERVICE (if exist) #####
ps aux | grep -i memcached | awk {'print $2'} | sudo xargs kill -9

##### REMOVE PREVIOUS MEMCACHED #####
sudo apt-get -y purge memcached

##### INSTALL MEMCACHED #####
sudo apt-get -y update
sudo apt-get -y install memcached

##### START MEMCACHED SERVICE #####
sudo /etc/init.d/memcached restart
# sudo service memcached restart

##### SHOW MEMCACHED STATUS #####
ps aux | grep memcached