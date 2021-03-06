#!/bin/sh

## NOTE: You need to enable multiverse and restricted on all the repositories before ROS will install
# Follow the scripts in https://github.com/jetsonhacks/installROSTX2/

## Nvidia CUDA repositories
# Got these using http://warppipe.net/blog/installing-cuda-packages-on-jetson-boards/
wget http://developer.download.nvidia.com/devzone/devcenter/mobile/jetpack_l4t/013/linux-x64/cuda-repo-l4t-8-0-local_8.0.84-1_arm64.deb
wget http://developer.download.nvidia.com/devzone/devcenter/mobile/jetpack_l4t/006/linux-x64/nv-gie-repo-ubuntu1604-6-rc-cuda8.0_1.0.2-1_arm64.deb

sudo dpkg -i cuda-repo-l4t-8-0-local_8.0.84-1_arm64.deb
sudo dpkg -i nv-gie-repo-ubuntu1604-6-rc-cuda8.0_1.0.2-1_arm64.deb
sudo apt install -y cuda-toolkit-8-0

## Zed SDK stuff
# Got this from Stereolab's website
wget https://download.stereolabs.com/zedsdk/2.3/tegrax2
sh ./tegrax2

## Set up a backup directory here for Neovim
# This is mostly optional; I use Neovim as my main text editor, so you can skip
# this step if you plan on using a different text editor
mkdir -p ./nvim_backup

# To install/build OpenCV, run the script in buildOpenCVTX2
# NOTE: this normally installs and builds OpenCV in the home directory instead of in here

## Get PCL library for ZED ROS wrapper
sudo apt install libpcl-dev
# ROS libraries the ZED ROS wrapper uses
sudo apt install -y \
   ros-kinetic-tf2-geometry-msgs \ 
   ros-kinetic-robot-state-publisher \
   ros-kinetic-urdf \
   ros-kinetic-pcl-conversions \
   ros-kinetic-image-transport \
   ros-kinetic-tf2-ros

## Setup fstab to automount the SD card
mkdir -p ~/mnt
sudo sh -c echo '/dev/mmcblk1p1    /home/nvidia/mnt  vfat  defaults,uid=1001   0   2' >> /etc/fstab
