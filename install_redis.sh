#!/usr/bin/env sh

##### INSTALL REDIS #####
sudo apt-get -y update
sudo apt-get -y install build-essential tcl

cd /tmp
curl -O http://download.redis.io/redis-stable.tar.gz
tar xzvf redis-stable.tar.gz
cd redis-stable
make
make test
sudo make install

sudo mkdir -p /etc/redis
sudo mkdir -p /etc/systemd/system

sudo cp ./etc/redis/redis.conf /etc/redis/redis.conf
sudo cp ./etc/systemd/system/redis.service /etc/systemd/system/redis.service

sudo adduser --system --group --no-create-home redis
sudo mkdir /var/lib/redis
sudo chown redis:redis /var/lib/redis
sudo chmod 770 /var/lib/redis

##### START REDIS SERVICE #####
# sudo systemctl start redis
sudo redis-server --daemonize yes

##### SHOW REDIS STATUS #####
sudo systemctl status redis

##### TEST REDIS #####
# $ redis-cli
# $ 127.0.0.1:6379> ping 
# >> result: PONG
