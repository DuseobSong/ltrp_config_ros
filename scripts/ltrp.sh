#!/bin/bash

source /opt/ros/noetic/setup.bash
source /home/odroid/catkin_ws/devel/setup.bash

ip_addr=$(ifconfig | grep -w inet | tail -1 | awk '{print $2}')

export ROS_HOSTNAME=$ip_addr
export ROS_MASTER_URI=http://$ROS_HOSTNAME:11311

roslaunch ltrp_ros ltrp_core.launch