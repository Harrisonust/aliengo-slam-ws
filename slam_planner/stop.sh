#!/bin/bash

export SUDO_ASKPASS=/home/$USER/SLAMSystem/slam_planner/PASSWD

IDsdk=`ps -ef | grep "lcm_server_high" | grep -v "$0" | grep -v "grep" | awk '{print $2}'`
if [ "$IDsdk" != "" ]; then
    sudo -A kill $IDsdk
fi

ID=`ps -ef | grep "slam_planner_online" | grep -v "$0" | grep -v "grep" | awk '{print $2}'`
if [ "$ID" != "" ]; then
    sudo -A kill $ID
fi
