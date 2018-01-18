#!/usr/bin/env sh

##### SETUP HOST & HOSTNAME###
sudo echo "$HOST_IP   $HOST_NAME" >> /etc/hosts
sudo sysctl kernel.hostname=$HOST_NAME

### TEST HOSTNAME ###
hostname -f