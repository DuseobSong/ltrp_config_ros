#!/bin/bash

source /opt/ros/noetic/setup.bash
source /home/odroid/catkin_ws/devel/setup.bash

connection_flag=$(iw wlan0 link | grep -w Connected | awk '{print $1}')
cmpr_string="Connected"

until [[ $connection_flag -eq $cmpr_string ]]; do
    sleep 1
    connection_flag=$(iw wlan0 link | grep -w Connected | awk '{print $1}')
done

ip_addr=$(ifconfig | grep -w inet | tail -1 | awk '{print $2}')

export ROS_HOSTNAME=$ip_addr
export ROS_MASTER_URI=http://$ip_addr:11311

roslaunch ltrp_ros ltrp_core.launch