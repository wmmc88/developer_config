#!/usr/bin/env bash

DEV_CONFIG_LINUX_SCRIPT_DIR=$(dirname $BASH_SOURCE)

# Call Shared .bashrc
source $DEV_CONFIG_LINUX_SCRIPT_DIR/../shared/.bashrc

# ROS
source /opt/ros/rolling/setup.bash