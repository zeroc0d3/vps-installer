#!/usr/bin/env sh

##### DEFAULT VALUE (CONFIG) #####
if [ -z "$PSQL_VERSION" ] 
then
  PSQL_VERSION='9.6'
fi 

##### STOP POSTGRESQL SERVICE (if exist) #####
ps aux | grep -i postgresql | awk {'print $2'} | sudo xargs kill -9

##### REMOVE OLD SOURCE LIST POSGRESQL #####
sudo rm -f /etc/apt/sources.list.d/pgdg.list

##### INSTALL POSTGRESQL #####
echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
  sudo apt-key add -
  
sudo apt-get -y update
sudo apt-get -y install postgresql-$PSQL_VERSION postgresql-client-$PSQL_VERSION postgresql-contrib-$PSQL_VERSION

##### START POSTGRESQL SERVICE #####
sudo /etc/init.d/postgresql restart
# sudo service postgresql restart 