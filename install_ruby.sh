#!/usr/bin/env sh

##### INSTALL RUBY #####
sudo chmod 777 /opt

git clone https://github.com/zeroc0d3/ruby-installation.git /opt/ruby-installation \
  && cd /opt/ruby-installation \
  && mv ~/.bashrc ~/.bashrc_old \
  && mv ~/.zshrc ~/.zshrc_old \
  && cp .zshrc ~/.zshrc \
  && cp .bashrc ~/.bashrc \
  && /bin/sh install_ruby.sh \
  && /bin/sh gems.sh
