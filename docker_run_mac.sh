#/bin/bash

# Make sure that 'xhost +' has been run before this script!!!!

sudo docker run -it \
				--rm \
				--net=host \
				-e DISPLAY=host.docker.internal:0 \
				-v ~/git/robotarium_matlab_backend:/home/matlab/Documents/MATLAB \
				-w /home/matlab/Documents/MATLAB \
				robotarium:matlab_backend_ROS matlab
