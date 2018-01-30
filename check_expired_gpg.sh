#!/usr/bin/env sh

sudo apt-key list | grep expired
###
# pub   2048R/AA7A6805 2015-03-24 [expired: 2017-03-23]
# pub   4096R/A15703C6 2016-01-11 [expired: 2018-01-10]

##### UPDATE GPG #####
# sudo apt-key adv --keyserver keys.gnupg.net --recv-keys AA7A6805 
# sudo apt-key adv --keyserver keys.gnupg.net --recv-keys A15703C6 