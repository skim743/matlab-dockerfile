#/bin/bash

# Make sure that 'xhost +' has been run before this script!!!!

sudo docker run -it \
				--rm \
				--net=host \
				-e DISPLAY=$DISPLAY \
				-v /tmp/.X11-unix/:/tmp/.X11-unix/:rw \
				-v ~/git/robotarium_matlab_backend:/home/matlab/Documents/MATLAB \
				-w /home/matlab/Documents/MATLAB \
				robotarium:matlab_backend_ROS
