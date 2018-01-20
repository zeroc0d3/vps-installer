#!/usr/bin/env sh

##### RELOAD CONFIGURATION #####
sh ./load_config.sh

##### CLEAN ALL UNUSED PACKAGES #####
sudo apt-get autoremove
sudo apt-get clean