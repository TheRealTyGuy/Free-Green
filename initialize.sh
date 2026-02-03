#!/bin/bash

# get crontab
crontab -l > mycron

# cron runs from home usually so we need current directory
currDir=$(pwd)
echo "@daily cd $currDir && $currDir/push.sh " >> mycron

# replace crontab
crontab mycron

# delete file
rm mycron