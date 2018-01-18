#!/usr/bin/env sh

##### STOP POSTGRESQL SERVICE (if exist) #####
ps aux | grep -i postgresql | awk {'print $2'} | sudo xargs kill -9

##### INSTALL POSTGRESQL #####
sudo echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' > /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
  sudo apt-key add -
  
sudo apt-get -y update
sudo apt-get -y install postgresql-$PSQL_VERSION postgresql-client-$PSQL_VERSION postgresql-contrib-$PSQL_VERSION

##### START POSTGRESQL SERVICE #####
sudo /etc/init.d/postgresql restart
# sudo service postgresql restart 