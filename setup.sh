#!/usr/bin/env sh

TITLE="VPS INSTALLATION SCRIPT"      # script name
VER="1.0"                            # script version

get_time() {
    DATE=`date '+%Y-%m-%d %H:%M:%S'`
}

logo() {
    clear
    echo "\033[22;32m==========================================================================\033[0m"
    echo "\033[22;31m  __________                  _________ _______       .___________        \033[0m"
    echo "\033[22;31m  \____    /___________  ____ \_   ___ \\   _  \    __| _/\_____  \  LAB  \033[0m"
    echo "\033[22;31m    /     // __ \_  __ \/  _ \/    \  \//  /_\  \  / __ |   _(__  <       \033[0m"
    echo "\033[22;31m   /     /\  ___/|  | \(  <_> )     \___\  \_/   \/ /_/ |  /       \      \033[0m"
    echo "\033[22;31m  /_______ \___  >__|   \____/ \______  /\_____  /\____ | /______  /      \033[0m"
    echo "\033[22;31m          \/   \/                     \/       \/      \/        \/       \033[0m"
    echo "\033[22;32m--------------------------------------------------------------------------\033[0m"
    echo "\033[22;32m# $TITLE :: ver-$VER                                                      \033[0m"
}

header() {
    logo
    echo "\033[22;32m==========================================================================\033[0m"
    get_time
    echo "\033[22;31m# BEGIN PROCESS..... (Please Wait)  \033[0m"
    echo "\033[22;31m# Start at: $DATE  \033[0m\n"
}

footer() {
    echo "\033[22;32m==========================================================================\033[0m"
    get_time
    echo "\033[22;31m# Finish at: $DATE  \033[0m"
    echo "\033[22;31m# END PROCESS.....  \033[0m\n" 
}

load_cfg() {
    get_time
    echo "--------------------------------------------------------------------------"
    echo "\033[22;34m[ $DATE ] ##### Load Config: \033[0m                           " 
    get_time
    echo "\033[22;32m[ $DATE ]       sh ./load_config.sh                 \033[0m\n  "
    sh ./load_config.sh 
    echo ""  
}

install_packages() {
    get_time
    echo "--------------------------------------------------------------------------"
    echo "\033[22;34m[ $DATE ] ##### Install Core Packages: \033[0m                 " 
    echo "\033[22;32m[ $DATE ]       sh ./install_packages.sh            \033[0m\n  "
    get_time
    echo "--------------------------------------------------------------------------"
    sh ./install_packages.sh 
    echo ""
}

setup_user() {
    get_time
    echo "--------------------------------------------------------------------------"
    echo "\033[22;34m[ $DATE ] ##### Create New User: \033[0m                       " 
    get_time
    echo "\033[22;32m[ $DATE ]       sh ./create_user_deploy.sh          \033[0m\n  "
    sh ./create_user_deploy.sh 
    echo ""  

    get_time
    echo "--------------------------------------------------------------------------"
    echo "\033[22;34m[ $DATE ] ##### Change User Password: \033[0m                  " 
    get_time
    echo "\033[22;32m[ $DATE ]       sh ./change_password.sh             \033[0m\n  "
    sh ./change_password.sh 
    echo ""    
}

check_expired_gpg(){
    get_time
    echo "--------------------------------------------------------------------------"
    echo "\033[22;34m[ $DATE ] ##### Check Expired GPG: \033[0m                     " 
    get_time
    echo "\033[22;32m[ $DATE ]       sh ./check_expired_gpg.sh           \033[0m\n  "
    sh ./check_expired_gpg.sh
    echo ""  
}

configure_bash() {
    get_time
    echo "--------------------------------------------------------------------------"
    echo "\033[22;34m[ $DATE ] ##### Configure Bash: \033[0m                        " 
    get_time
    echo "\033[22;32m[ $DATE ]       sh ./configure_bash.sh              \033[0m\n  "
    sh ./configure_bash.sh
    echo ""  
}

configure_zsh(){
    get_time
    echo "--------------------------------------------------------------------------"
    echo "\033[22;34m[ $DATE ] ##### Configure ZSH: \033[0m                         " 
    get_time
    echo "\033[22;32m[ $DATE ]       sh ./configure_zsh.sh               \033[0m\n  "
    sh ./configure_zsh.sh
    echo ""  
}

install_redis() {
    get_time
    echo "--------------------------------------------------------------------------"
    echo "\033[22;34m[ $DATE ] ##### Install Redis: \033[0m                         " 
    get_time
    echo "\033[22;32m[ $DATE ]       sh ./install_redis.sh               \033[0m\n  "
    sh ./install_redis.sh
    echo ""  
}

install_memcached() {
    get_time
    echo "--------------------------------------------------------------------------"
    echo "\033[22;34m[ $DATE ] ##### Install Memcached: \033[0m                     " 
    get_time
    echo "\033[22;32m[ $DATE ]       sh ./install_memcached.sh           \033[0m\n  "
    sh ./install_memcached.sh
    echo ""      
}

install_mysql() {
    get_time
    echo "--------------------------------------------------------------------------"
    echo "\033[22;34m[ $DATE ] ##### Install MySQL: \033[0m                         " 
    get_time
    echo "\033[22;32m[ $DATE ]       sh ./install_mysql.sh               \033[0m\n  "
    sh ./install_mysql.sh
    echo ""  
}

install_postgresql() {
    get_time
    echo "--------------------------------------------------------------------------"
    echo "\033[22;34m[ $DATE ] ##### Install PostgreSQL: \033[0m                    " 
    get_time
    echo "\033[22;32m[ $DATE ]       sh ./install_postgresql.sh          \033[0m\n  "
    sh ./install_postgresql.sh
    echo "" 
}

install_mongodb() {
    get_time
    echo "--------------------------------------------------------------------------"
    echo "\033[22;34m[ $DATE ] ##### Install MongoDB: \033[0m                       " 
    get_time
    echo "\033[22;32m[ $DATE ]       sh ./install_mongodb.sh             \033[0m\n  "
    sh ./install_mongodb.sh
    echo "" 
}

install_nodejs() {
    get_time
    echo "--------------------------------------------------------------------------"
    echo "\033[22;34m[ $DATE ] ##### Install NodeJS: \033[0m                        " 
    get_time
    echo "\033[22;32m[ $DATE ]       sh ./install_nodejs.sh              \033[0m\n  "
    sh ./install_nodejs.sh
    echo "" 
}

install_docker() {
    get_time
    echo "--------------------------------------------------------------------------"
    echo "\033[22;34m[ $DATE ] ##### Install Docker: \033[0m                        " 
    get_time
    echo "\033[22;32m[ $DATE ]       sh ./install_docker.sh              \033[0m\n  "
    sh ./install_docker.sh
    echo "" 
}

install_ruby() {
    get_time
    echo "--------------------------------------------------------------------------"
    echo "\033[22;34m[ $DATE ] ##### Install Ruby: \033[0m                          " 
    get_time
    echo "\033[22;32m[ $DATE ]       sh ./install_ruby.sh                \033[0m\n  "
    sh ./install_ruby.sh
    echo "" 
}

install_pm2() {
    get_time
    echo "--------------------------------------------------------------------------"
    echo "\033[22;34m[ $DATE ] ##### Install PM2: \033[0m                           " 
    get_time
    echo "\033[22;32m[ $DATE ]       sh ./install_pm2.sh                \033[0m\n   "
    sh ./install_pm2.sh
    echo "" 
}

### AFTER INSTALL ###
after_install() {
    get_time
    echo "--------------------------------------------------------------------------"
    echo "\033[22;34m[ $DATE ] ##### Configure After Install: \033[0m               " 
    get_time
    echo "\033[22;32m[ $DATE ]       sh ./after_install.sh               \033[0m\n  "
    sh ./after_install.sh
    echo "" 
}

main() {
  header
  load_cfg
  install_packages
  setup_user
  check_expired_gpg
  configure_bash
  configure_zsh
  install_memcached
  install_redis
  install_mongodb
  install_mysql
  install_postgresql
  install_nodejs
  install_docker
  install_ruby
  install_pm2
  footer
}

### START HERE ###
main