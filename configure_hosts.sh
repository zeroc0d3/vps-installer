#!/usr/bin/env sh

##### DEFAULT VALUE (CONFIG) #####
if [ -z "$HOST_IP" ] 
then
  HOST_IP='192.168.0.10'
fi 

if [ -z "$HOST_NAME" ] 
then
  HOST_NAME='zeroc0d3lab.io'
fi 

##### SETUP HOST & HOSTNAME###
sudo echo "$HOST_IP   $HOST_NAME" >> /etc/hosts
sudo sysctl kernel.hostname=$HOST_NAME

### TEST HOSTNAME ###
hostname -f