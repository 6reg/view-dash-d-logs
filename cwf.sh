#!/bin/bash

# Variables
USER="grm216"
HOST="sparc-d.obis.musc.edu"
LOG_FILE="/var/www/rails/sparc-fulfillment/current/log/testing.log"

# SSH into the server, switch to the capistrano user, and tail the log file
ssh -t $USER@$HOST "sudo su -l capistrano -c 'tail -f $LOG_FILE'"
