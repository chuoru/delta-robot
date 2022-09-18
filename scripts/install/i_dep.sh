#!/bin/sh
set -e
basic_dep="git \
           curl \
           tmux \
           nano \
           vim \
           python3-catkin-tools \
	  "

ros_dep="ros-noetic-gazebo-ros-pkgs \
         ros-noetic-gazebo-ros-control \
         ros-noetic-joint-state-controller
          "
apt-get update
apt-get upgrade -y
apt-get install -y $basic_dep
DEBIAN_FRONTEND=noninteractive apt-get install -y $ros_dep
apt-get autoremove -y
apt-get clean -y
update-alternatives --install /usr/bin/python python /usr/bin/python3.8 1
python --version
