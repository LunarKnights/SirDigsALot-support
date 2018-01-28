#!/bin/sh

# You need to enable multiverse and restricted on all the repositories before ROS will install
# Follow the scripts in https://github.com/jetsonhacks/installROSTX2/

## Nvidia CUDA repositories
# Got these using http://warppipe.net/blog/installing-cuda-packages-on-jetson-boards/
wget http://developer.download.nvidia.com/devzone/devcenter/mobile/jetpack_l4t/013/linux-x64/cuda-repo-l4t-8-0-local_8.0.84-1_arm64.deb
wget http://developer.download.nvidia.com/devzone/devcenter/mobile/jetpack_l4t/006/linux-x64/nv-gie-repo-ubuntu1604-6-rc-cuda8.0_1.0.2-1_arm64.deb

# sudo dpkg -i cuda-repo-l4t-8-0-local_8.0.84-1_arm64.deb
# sudo dpkg -i nv-gie-repo-ubuntu1604-6-rc-cuda8.0_1.0.2-1_arm64.deb
# sudo apt install -y cuda-toolkit-8-0

## Zed SDK stuff
# Got this from Stereolab's website
wget https://download.stereolabs.com/zedsdk/2.3/tegrax2
# sh ./tegrax2

# To install/build OpenCV, run the script in buildOpenCVTX2
# NOTE: this normally installs and builds OpenCV in the home directory instead of in here
