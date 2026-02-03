#!/bin/bash

# get crontab
crontab -l > mycron

# current challenge, how to find control path locations
# since we have to give crontab absolute filepath
# append job to the end of crontab

currDir=$(pwd)
echo "* * * * * cd $currDir && $currDir/push.sh " >> mycron

# replace crontab
crontab mycron

# delete file
rm mycron