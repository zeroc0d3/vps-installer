#!/usr/bin/env sh

TITLE="RUNNING SERVICES SCRIPT"      # script name
VER="1.0"                            # script version

APPS_CURRENT='/home/deploy/apps/current'
APPS_SHARED='/home/deploy/apps/shared'

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

run_pm2() {
    get_time
    echo "--------------------------------------------------------------------------"
    echo "\033[22;34m[ $DATE ] ##### Running Service PM2: \033[0m                   " 
    get_time
    echo "\033[22;32m[ $DATE ]       cd $APPS_CURRENT; pm2 delete 0 && pm2 start app.js     \033[0m\n "
    cd $APPS_CURRENT
    pm2 delete 0 && pm2 start app.js
}

main() {
  header
  run_pm2
  footer
}

### START HERE ###
main
