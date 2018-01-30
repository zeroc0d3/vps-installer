#!/usr/bin/env sh

TITLE="MONITORING SERVICES SCRIPT"   # script name
VER="1.0"                            # script version
ENV="development"                    # (development / production)
SKIP_LOG="0"                         # (0 = create log file / debug, 1 = bypass log file)

SERVICE_PRODUCTION="mysql mongod nginx postgresql puma pushr redis sidekiq unicorn"
SERVICE_DEVELOPMENT="mongod nginx postgresql puma redis sidekiq"

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

check_env() {
  if [ "$ENV" = "development" ]
  then
    SERVICE_ENV="$SERVICE_DEVELOPMENT"
  else
    SERVICE_ENV="$SERVICE_PRODUCTION"
  fi
}

check_service() {
    echo "--------------------------------------------------------------------------"
    get_time
    echo "\033[22;34m[ $DATE ] ##### Check Services: \033[0m                        " 
    echo "\033[22;32m[ $DATE ]       PID   : ps aux | grep -i [\033[22;36m$SERVICE_ENV\033[22;32m] | awk {'print \$2'} \033[0m"
    echo "\033[22;32m[ $DATE ]       Status: sudo service [\033[22;36m$SERVICE_ENV\033[22;32m] status | grep -i [\033[22;36m$SERVICE_ENV\033[22;32m] \033[0m"
    
    for SERVICE in $SERVICE_ENV
    do
      get_time
      cmd_service=`ps aux | grep -i $SERVICE`
      status_service=`sudo service $SERVICE status | grep -i $SERVICE`
      pid_service=`ps aux | grep -i $SERVICE | awk {'print $2'}`
      run_service=`sudo service $SERVICE status | awk {'print $2'}`

      echo "--------------------------------------------------------------------------"
      echo "\033[22;32m[ $DATE ]       PID   : ps aux | grep -i \033[22;36m$SERVICE\033[22;32m | awk {'print \$2'} \033[0m"
      echo "\033[22;32m[ $DATE ]       Status: sudo service \033[22;36m$SERVICE\033[22;32m status | grep -i \033[22;36m$SERVICE \033[0m"
      echo "--------------------------------------------------------------------------"
      echo "Monitoring: \033[22;36m$SERVICE\033[0m"
      echo "Status: $status_service"
      echo ""
      echo "$cmd_service"
    done     
}

main() {
  header
  check_env
  check_service
  footer
}

### START HERE ###
main