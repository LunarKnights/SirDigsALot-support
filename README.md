# Support files
This contains the contents of the SD card used in the Jetson Tegra TX2, so that in the event of SD card failure, everything can be recovered pretty easily.

Overall, in order to run the ROS packages we use for autonomy, we need to:
- Install CUDA compiled for the Jetson TX2
- Install a lot of packages
- Recompile the kernel with CAN support to talk to the motor controllers
- Recompile ROS OpenCV3 with CUDA support for ORB2-SLAM

